// Moving Inversion Partial (MOVIPAR)
// Partial MOVI is an industry standard algorithm which is more complex than MarchC-. In the partial
// MOVI the array is initialized to a known data background and then is stepped through with a readwrite-
// read sequence. Both incrementing and decrementing addressing is used in the algorithm.
// Short Notation: 
// v(wD1)
// ^(rD2, wI3, rI4) 
// ^(rI5, wD6, rD7)
// v(rD8,  wI9,  rI10)
// v(rI11, wD12, rD13)
// Pattern Length: 13N
// Back-to-back Operations: 3-4, 6-7, 9-10, 12-13
// Preferred: 4-2, 7-5, 10-8, 13-11

Algorithm (IntelLVPmovI){

 TestRegisterSetup {

 OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn        : None;
    NumberX0Bits     : 0;
   }
  }
  DataGenerator {
   LoadWriteData     : 4'b0000; 
   LoadExpectData    : 4'b0000; 
  }
 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_DUMMY) {
   OperationSelect         : NoOperation;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : LoadMax;
   NextConditions {
   }
  }

  Instruction (M0_W0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Decrement;
   WriteDataCmd            : DataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    X1_EndCount            : On;
   }
  }

  Instruction (M1_R0_W1) {
   OperationSelect         : ReadModifyWriteRead;
   AddressSelectCmd        : Select_A;
   ExpectDataCmd           : DataReg;
   WriteDataCmd            : InverseDataReg;
   X1AddressCmd           : Increment; 
   NextConditions {
    X1_EndCount           : On;
    RepeatLoop (a) {
     BranchToInstruction  : M1_R0_W1;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      InhibitLastAddressCount : On;
     }
     Repeat {
      AddressSequence     : Inverse;
     }
     Repeat {
      AddressSequence     : Inverse; 
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse; 
     }
    }
   }
  }

  Instruction (M1_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

 } 
}   
