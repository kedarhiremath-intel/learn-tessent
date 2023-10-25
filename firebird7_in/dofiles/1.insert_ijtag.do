// This script is a basic demonstration of the first insertion pass in vanilla Tessent, for a block without MBIST.
// We will insert and validate the following DFT features:
// - Spare TDRs
// - Secure SIBs
// - BISOL (We will not insert EDTs, so this is only a partial implementation)

dofile ./dofiles/1st_pass/1.Load_design_rev1.do
dofile ./dofiles/1st_pass/2.Edit_introspect_design.do
dofile ./dofiles/1st_pass/3.Specify_verify_dft_requirements_rev1.do
dofile ./dofiles/1st_pass/4.Create_process_dft_specification_rev1.do
dofile ./dofiles/1st_pass/5.Extract_icl.do
dofile ./dofiles/1st_pass/6.Synthesize_test_logic.do
//dofile ./dofiles/1st_pass/7.Create_process_patterns_specification.do
//dofile ./dofiles/1st_pass/8.Run_simulations.do

