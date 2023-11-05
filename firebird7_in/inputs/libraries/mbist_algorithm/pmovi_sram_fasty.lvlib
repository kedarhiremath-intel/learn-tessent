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

Algorithm (IntelLVPMOVIFasty){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y0 Y1 -> col, Z -> block
    X1CarryIn : Y1CarryOut;
    Y1CarryIn : None;
    LoadRowAddress : MaxRow;
    LoadColumnAddress : MaxColumn;
    LoadBankAddress : MaxBank;
   }
  }

  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }
} 

 MicroProgram {

// v(wD1)
  Instruction (M0_W0) {
   OperationSelect  : WriteFastColumn;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Decrement;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }

// ^(rD2, wI3, rI4) 
  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWriteRead;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;

// ^(rI5, wD6, rD7)
    RepeatLoop (a) {
     BranchToInstruction  : M1_R0_W1;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      InhibitLastAddressCount : On;
     }

// v(rD8,  wI9,  rI10)
     Repeat {
      AddressSequence     : Inverse;
     }

// v(rI11, wD12, rD13)
     Repeat {
      AddressSequence    : Inverse; 
      WriteDataSequence  : Inverse;
      ExpectDataSequence : Inverse; 
     }
    }
   }
  }

  Instruction (M1_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   ZAddressCmd      : LoadMin;
   Y1AddressCmd     : LoadMin;
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteFastColumn;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 } 
    
}

