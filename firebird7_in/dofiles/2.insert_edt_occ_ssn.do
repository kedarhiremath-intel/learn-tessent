// This script is the complete flow to insert EDT, OCC snd SSN using vanilla Tessent.
// This is the 2nd insertion pass. You must run the 1st insertion pass before running this script.

dofile ./dofiles/2nd_pass/1.Load_design.do
dofile ./dofiles/2nd_pass/2.Edit_introspect_design.do
dofile ./dofiles/2nd_pass/3.Specify_verify_dft_requirements.do
dofile ./dofiles/2nd_pass/4.Create_process_dft_specification.do
dofile ./dofiles/2nd_pass/5.Extract_icl.do
dofile ./dofiles/2nd_pass/6.Synthesize_test_logic.do
dofile ./dofiles/2nd_pass/7.Create_process_patterns_specification.do
dofile ./dofiles/2nd_pass/8.Run_check_testbench_simulations.do

exit

