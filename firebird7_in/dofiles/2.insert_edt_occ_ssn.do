
///////////////////////////////
// Second DFT Insertion Pass //
///////////////////////////////

dofile ./dofiles/2nd_pass/1.Load_Design.do
dofile ./dofiles/2nd_pass/2.Edit_Introspect_Design.do
dofile ./dofiles/2nd_pass/3.Specify_Verify_DFT_Requirements.do
dofile ./dofiles/2nd_pass/4.Create_Process_DFT_Specification.do
dofile ./dofiles/2nd_pass/5.Extract_ICL.do
dofile ./dofiles/2nd_pass/6.Synthesize_Test_Logic.do
dofile ./dofiles/2nd_pass/7.Create_Process_Patterns_Specification.do
dofile ./dofiles/2nd_pass/8.Run_Check_Testbench_Simulations.do

exit

