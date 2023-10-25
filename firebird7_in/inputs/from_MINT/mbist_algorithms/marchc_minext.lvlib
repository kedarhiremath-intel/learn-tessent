// Moving Inversion Partial (MARCHCEXT)
// Short Notation: 
// ^(wD1)
// ^(rD2, wI3, rI4) 
// ^(rI5, wD6)
// v(rD7, w8)
// v(r9, wD10, rD11)
// ^(rD12)
// Pattern Length: 12N

Algorithm (IntelLVPmarchCExt){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
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
} 

 MicroProgram {

  Instruction (M0_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd      : LoadMax;
   Y1AddressCmd     : LoadMax; 
   X1AddressCmd     : LoadMax;
   NextConditions {
   }
  }

// v(wD1)
  Instruction (M0_W0) {
   OperationSelect  : WriteData;
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
  Instruction (M1_R0_W1_R1) {
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
    }
  }

// ^(rI5, wD6)
  Instruction (M2_R1_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : InverseDataReg;
   WriteDataCmd     : DataReg;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;

  //v(rD7, wI8)
    RepeatLoop (a) {
     BranchToInstruction  : M2_R1_W0;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      AddressSequence    : Inverse; 
     }
    }
   }
  }

// v(rI9, wD10, rD11) 
  Instruction (M3_R1_W0_R0) {
   OperationSelect  : ReadModifyWriteRead;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : InverseDataReg;
   WriteDataCmd     : DataReg;
   ZAddressCmd  : Decrement; 
   Y1AddressCmd : Decrement; 
   X1AddressCmd : Decrement;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
    }
  }

 Instruction (M4_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   ZAddressCmd      : LoadMin;
   Y1AddressCmd     : LoadMin; 
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
 }

// ^(wD12)
  Instruction (M5_R0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }

Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
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
