// This script is a basic demonstration of how to add a clock in Tessent.


// Step 1. You must be in "setup" mode to perform the operations in this script.
set_system_mode setup


// Step 2. You must specify the clocks for MBIST and Scan insertion.
// Cross-verify this with the clock definition in the customer-provided SDC.
add_clocks clk -label clk_bbm -period 783

