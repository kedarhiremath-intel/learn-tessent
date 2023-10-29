// This script is a basic demonstration of how to add clocks in Tessent.


// Step 1. Set system mode to "setup".
set_system_mode setup


// Step 2. Add clocks.
add_clocks clk -label clk_bbm -period 783ps
report_clocks

// Review the functional clock definitions in the Customer-provided SDC:
// SDC File: ./inputs/from_Customer/firebird7_in.sdc
// create_clock [get_ports clk] -name clk_bbm -period 783


// Step 3. Check the design rules.
check_design_rules

// Note: The "check_design_rules" command is equivalent to "set_system_mode analysis".

