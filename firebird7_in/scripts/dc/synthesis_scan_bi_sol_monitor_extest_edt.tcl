
#---------------------------------------------------------------------------------------------
# Synthesis of SCAN Burn-in Signs-of-Life Monitor (scan_bi_sol) Component
#---------------------------------------------------------------------------------------------

# Define the design library for intermediate files
define_design_lib WORK -pat ./synthesis_outdir/synthesis_bisol/WORK

# Source the equivalent of the .synopsys_dc.setup
source ${TEAMAKER_DFT_FLOW_HOME}/library/library_${TEAMAKER_DFT_TECHNOLOGY}/tessent_synthesis_$lib_variant($block)_synopsys_dc.setup

# Add the RTL directory from the DFT Build output to the search path
lappend search_path "$TEAMAKER_DFT_FLOW_HOME/library/soft_macro_library/scan_bi_sol"

# Source the block info file to get some useful variables
source ${TEAMAKER_DFT_FLOW_HOME}/library/library_${TEAMAKER_DFT_TECHNOLOGY}/teamaker_dft_global_variables.tcl
source ../../../block_tessent_design_info.tcl

# Define the IP block name
set ipBlock scan_bi_sol
set componentName extest_edt
set edtOutputBusWidth $extestEdtChannelsOut($block)
puts "***I: Running with parameter componentName=$componentName"
puts "***I: Running with parameter edtOutputBusWidth=$edtOutputBusWidth"


# Define the paramter values for the block used at synthesis time
#      NUM_SOL_INPUTS : Number of scan chains to feed mux/detector (= number of EDT channels)
#      SOLCTR_SIZE    : Number of bits in the threshold counter
set numSolInputs $edtOutputBusWidth
set solctrSize 15


# Analyze and elaborate the full design
set hdlin_autoread_verilog_extensions ""
set hdlin_autoread_sverilog_extensions ".sv .sverilog .vs .v"
analyze -format sverilog $TEAMAKER_DFT_FLOW_HOME/library/soft_macro_library/${ipBlock}/${ipBlock}.sv
elaborate ${ipBlock} -parameters "NUM_SOL_INPUTS=$numSolInputs, SOLCTR_SIZE=$solctrSize"
link


# Constraints for Synthesis
set SCALE_FACTOR 0.93
set INPUT_TIMING_BUDGET 0.15
set OUTPUT_TIMING_BUDGET 0.10

set TOG_CLK tog_clk
set TOG_CLK_UNSCALED_PERIOD 10000.0
set TOG_CLK_UNCERTAINTY 125.0

set tog_clk_period     [expr $TOG_CLK_UNSCALED_PERIOD * $SCALE_FACTOR ]
set tog_clk_waveform   [list 0 [expr $tog_clk_period * 0.5]]
set tog_clk_transition [expr 0.1 * $tog_clk_period]
create_clock -period $tog_clk_period [get_ports $TOG_CLK ] -waveform $tog_clk_waveform
set_clock_uncertainty $TOG_CLK_UNCERTAINTY [get_clocks $TOG_CLK]

set_input_delay [expr $INPUT_TIMING_BUDGET * $tog_clk_period] [filter_collection [get_ports *] "pin_direction == in"] -clock $TOG_CLK
set_input_delay 0 [get_ports $TOG_CLK] -clock $TOG_CLK
set_output_delay [expr $OUTPUT_TIMING_BUDGET * $tog_clk_period] [filter_collection [get_ports *] "pin_direction == out"] -clock $TOG_CLK


# Synthesize....
compile
rename_design [current_design_name] -prefix "${block}_${componentName}_"
set uniquify_naming_style "${block}_${componentName}_%s_%d"
uniquify -force
set_app_var verilogout_no_tri true
change_names -hier -verbose -rules slash
change_names -hier -verbose -rules exclamation_rule
change_names -hier -verbose -rules open_bracket
change_names -hier -verbose -rules close_bracket
change_names -hier -verbose -rules standard_names
change_names -hier -verbose -rules standard_netnames
change_names -hier -verbose -rules reg_names


# Report design results 
report_area > ./${block}_${componentName}_${ipBlock}_synth_area.rpt  
report_constraint -all_violators -verbose > ./${block}_${componentName}_${ipBlock}_all_violators_synth.rpt
report_timing -path full -delay max > ./${block}_${componentName}_${ipBlock}_timing_max_synth.rpt
report_reference > ./${block}_${componentName}_${ipBlock}_references_synth.rpt


# Write the netlist
write -f verilog -hierarchy -o ../../../verilog/${block}_${componentName}_${ipBlock}.vg 


# Procedure to write the bi_sol snippet of DftSpecification for the MBIST (or IJTAG) Step 
source $TEAMAKER_DFT_FLOW_HOME/dft_common_files/proc_create_scan_bi_sol_tdr_dft_spec.tcl
proc_create_scan_bi_sol_tdr_dft_spec $numSolInputs $solctrSize $componentName


# Exit 
exit [get_message_info -error_count]

