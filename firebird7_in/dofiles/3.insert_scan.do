// This script is a basic demonstration of how to perform scan insertion.
// This is the third and final pass in the three-pass insertion.

dofile ./dofiles/3rd_pass/1.Circuit_setup.do
dofile ./dofiles/3rd_pass/2.Run_design_rules_checks.do
dofile ./dofiles/3rd_pass/3.Identify_wrapper_cells.do
dofile ./dofiles/3rd_pass/4.Specify_scan_configuration.do
dofile ./dofiles/3rd_pass/5.Analyze_scan_chains.do
dofile ./dofiles/3rd_pass/6.Insert_test_logic.do

exit

