// ArrayWriteReadLoop
// This is an algorithm that writes/reads and writeInverse/ReadInverse the specified addresses of the array (at runtime) and loops with max counter 4 times.  
// The starting address is specified by the user during pattern generation.  Data will be written to the starting address N times, where N = LoadCounterA_EndCount.  

Algorithm (IntelLVArrayWriteReadLoop_FIFA){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    // Default initial row address
    LoadRowAddress: h0;// Default initial row address
    X1CarryIn : None;
    NumberX0Bits : 0;
    NumberY0Bits : 0;
   }
  // Address B for repeat loops
   AddressRegister (B) {
    X1CarryIn : None;
    NumberX0Bits : 0;
    NumberY0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }
  LoadCounterA_EndCount: 268435455; // EndCount set to 2^28

  // For simulation:
  //LoadCounterA_EndCount: 500; 
  LoadDelayCounter_EndCount: 255; 
 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (WRITE0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Hold;
   WriteDataCmd : DataReg;
   NextConditions {
      // Unconditional exit. Only one address read.
      // Address counter incremented by 1
   }
  }

  Instruction (READ0) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Hold;
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  Instruction (WRITE_INVERSE0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Hold;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (READ_INVERSE0) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Hold;
   CounterACmd : Increment;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : WRITE0;
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

