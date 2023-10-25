// ArrayReadLoop
// This is an algorithm that reads the specified addresses of the array (at runtime) and loops with max counter set 16 times.
// The starting address is specified by the user during pattern generation.  Data will be written to the starting address N times, where N = LoadCounterA_EndCount for each instruction.  

Algorithm (IntelLVArrayReadLoop_FIFA){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    // Default initial row address
    LoadRowAddress: h0;// Default initial row address
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }
  LoadCounterA_EndCount: 268435455; // EndCount set to 2^28

  // For simulation:
  //LoadCounterA_EndCount: 500; 
  LoadDelayCounter_EndCount:  255; 
 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (READ0) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Hold;
   WriteDataCmd : DataReg;
   CounterACmd : Increment;
   NextConditions {
    CounterAEndCount : On; 
   }
  }

   Instruction (LOOP) {
   OperationSelect : NoOperation;
   DelayCounterCmd : Increment;
   BranchToInstruction: READ0;
   NextConditions {
    DelayCounterEndCount : On;
   }
  }
 }
}
