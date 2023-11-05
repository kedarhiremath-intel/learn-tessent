
#---------------------------------------------------------------------------------------------
# Synthesis Setup
#---------------------------------------------------------------------------------------------
# ---> Define the design library for intermediate files
define_design_lib WORK -pat ./synthesis_outdir/synthesis_upm/WORK

# ---> Source the equivalent of the .synopsys_dc.setup
source ./inputs/synthesis/tessent_synthesis_i0s_synopsys_dc.setup

lappend link_library /nfs/site/disks/xne_abc78.arc.proj_archive/arc/i70idvdpmd03m50ashipbm1m3/ip_handoff/ABCA0_ZSC14_VER_001/fe/timing/i70idvdpmd03m50ashipbm1m3_1278d3_tttt_0.65v_t100_tttt.max.ldb
lappend link_library /nfs/site/disks/xne_abc78.arc.proj_archive/arc/i70idvdpmd03m50bshipbm1m3/ip_handoff/ABCA0_ZSC14_VER_001/fe/timing/i70idvdpmd03m50bshipbm1m3_1278d3_tttt_0.65v_t100_tttt.max.ldb
lappend link_library /nfs/site/disks/xne_abc78.arc.proj_archive/arc/i70idvdpmd03m50cshipbm1m3/ip_handoff/ABCA0_ZSC14_VER_001/fe/timing/i70idvdpmd03m50cshipbm1m3_1278d3_tttt_0.65v_t100_tttt.max.ldb
lappend link_library /nfs/site/disks/xne_abc78.arc.proj_archive/arc/i70idvdpmd03m50dshipbm1m3/ip_handoff/ABCA0_ZSC14_VER_001/fe/timing/i70idvdpmd03m50dshipbm1m3_1278d3_tttt_0.65v_t100_tttt.max.ldb


#---------------------------------------------------------------------------------------------
# Analyze and Elaborate the Design
#---------------------------------------------------------------------------------------------
# ---> Define the block name
set block firebird7_in

# ---> Define the IP block name
set ipBlock dteg_upm_top

# ---> HDL Read parameters
set hdlin_autoread_verilog_extensions ""
set hdlin_autoread_sverilog_extensions ".sv .sverilog .vs .v"

# ---> Analyze
analyze -format sverilog -vcs " \
   -f ./inputs/synthesis/upm/rtl_synthesis.f \
   -f ./inputs/synthesis/upm/rtl_opts.f \
   -f ./inputs/synthesis/upm/ctech_files.f \
   -y $search_path
"

# ---> Elaborate
elaborate ${ipBlock} -parameters DFX_UPM_CBB_HIP_TYPE=>"UPM_D_ABCD"
link


#---------------------------------------------------------------------------------------------
# Constraints for Synthesis - Cleaned up Configurable Constraints
#---------------------------------------------------------------------------------------------
# ---> Timing Constraints
source -echo -verbose ./inputs/synthesis/upm/dteg_upm_top_dc.tcl


#---------------------------------------------------------------------------------------------
# Synthesize....
#---------------------------------------------------------------------------------------------
# ---> Compile
compile

# ---> Apply Intel Naming Rules
rename_design [current_design_name] -prefix "${block}_"
set uniquify_naming_style "${block}_%s_%d"
uniquify -force
set_app_var verilogout_no_tri true
change_names -hier -verbose -rules slash
change_names -hier -verbose -rules exclamation_rule
change_names -hier -verbose -rules open_bracket
change_names -hier -verbose -rules close_bracket
change_names -hier -verbose -rules standard_names
change_names -hier -verbose -rules standard_netnames
change_names -hier -verbose -rules reg_names

# ---> Report design results 
report_area > ./reports/${block}_${ipBlock}_synth_area.rpt  
report_constraint -all_violators -verbose > ./reports/${block}_${ipBlock}_all_violators_synth.rpt
report_timing -path full -delay max > ./reports/${block}_${ipBlock}_timing_max_synth.rpt
report_reference > ./reports/${block}_${ipBlock}_references_synth.rpt


# ---> Write the netlist
write -f verilog -hierarchy -o ./inputs/design/verilog/${block}_${ipBlock}.vg


#---------------------------------------------------------------------------------------------
# Exit 
#---------------------------------------------------------------------------------------------
exit [get_message_info -error_count]

