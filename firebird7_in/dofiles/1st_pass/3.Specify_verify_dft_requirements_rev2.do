// This script is a basic demonstration of how to specify the MBIST requirements before creating the DFT Specification.


// Step 1. Set system mode to "setup".
set_system_mode setup


// Step 2. Enable memory BIST and repair.
set_dft_specification_requirements -memory_test on


// Step 3. Load physical layout information.
read_def ./inputs/from_SD/firebird7_in.def.gz


// Step 4. Load power domain information.
read_upf ./inputs/from_Customer/firebird7_in.upf


// Step 5. Change default settings.
read_config_data ./inputs/from_MINT/intel_mbist_defaults.dft_spec
read_config_data ./inputs/from_MINT/user_mbist_defaults.dft_spec


// Step 6. Add clocks.
add_clocks clk -label clk_bbm -period 783ps
report_clocks

// Review the functional clock definitions in the Customer-provided SDC:
// SDC File: ./inputs/from_Customer/firebird7_in.sdc
// create_clock [get_ports clk] -name clk_bbm -period 783


// Step 7. Change memory partitioning.
dofile ./inputs/from_SD/partition_memories.do


// Step 8. Check the design rules.
check_design_rules

