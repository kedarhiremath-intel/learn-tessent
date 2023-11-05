
////////////////////////////////////////////////
// Step 1. Set DFT Specification Requirements //
////////////////////////////////////////////////

// Set system mode to "setup".
set_system_mode setup

// Enable MBIST and BISR.
set_dft_specification_requirements -memory_test on

// Exclude the UPM instances during create_dft_specification (Tessent does not add them in correctly, so we will add them in ourselves).
set upm_instances [get_instances -of_module [get_module -of_icl_modules dteg_upm_top]]
set_ijtag_instance_options $upm_instances -use_in_dft_specification off

// Set the design level.
set_design_level physical_block


////////////////////////////////////////////
// Step 2. Add Properties and Constraints //
////////////////////////////////////////////

// Change default settings.
read_config_data ./inputs/dft_spec/intel_mbist_defaults.dft_spec
read_config_data ./inputs/dft_spec/user_mbist_defaults.dft_spec

// Change memory partitioning rules.
dofile ./inputs/dofiles/partition_memories.do


///////////////////////////
// Step 3. Define Clocks //
///////////////////////////

add_clocks clk -label clk_bbm -period 783ps
report_clocks

// Review the functional clock definitions in the Customer-provided SDC:
// SDC File: ./inputs/from_Customer/firebird7_in.sdc
// create_clock [get_ports clk] -name clk_bbm -period 783


/////////////////////
// Step 4. Run DRC //
/////////////////////

check_design_rules

