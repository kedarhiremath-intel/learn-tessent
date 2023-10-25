// ArrayWriteLoop
// This is an algorithm that writes the specified addresses of the array (at runtime) and loops with max counter set for 16 instructions.
// The starting address is specified by the user during pattern generation.  Data will be written to the starting address N times, where N = LoadCounterA_EndCount for each instruction (16 instructions used).  

Algorithm (IntelLVArrayWriteLoopFx_FIFA){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    LoadRowAddress: h0;// Default initial row address
    LoadColumnAddress: h0;// Default initial column address
    LoadBankAddress: h0;// Default initial bank address
    ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }
  LoadCounterA_EndCount: 268435455; // EndCount set to 2^28

  // For simulation:
  //LoadCounterA_EndCount: 100; 
  LoadDelayCounter_EndCount: 255;

  // Change block size at run time. Defaults to single location.
 }

 MicroProgram {

  Instruction (WRITE0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Hold;
   Y1AddressCmd : Hold;
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
   BranchToInstruction: WRITE0;
   NextConditions {
       DelayCounterEndCount : On;
   }
  }
 }
}
