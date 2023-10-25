// ToWalk2 (Towalk2)
// The towalk2 algorithm is similar to the towalk algorithm. 
// The towalk2 algorithm reduced the numerb of consecutive reads from 1000 to 16
// and removes the reading of the base block after the consecutive reads. 
// This greatly shortens the pattern. 
//
// Short Notation: 
// ^(wD1)
// ^(rD2, wI3, 16(rI4), wD5)
// ^(wI1)
// ^(rI2, wD3, 16(rD4), wI5)
// Pattern Length: 40N
// Back-to-back Operations: 2-3, 3-4, 4-4-5


Algorithm (IntelLVTowalk2Fy){
 
 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y1 -> col, Z -> block     
    X1CarryIn : Y1CarryOut;
    Y1CarryIn : None;
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

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }

//^(rD2, wI3, 16(rI4), wI5)

// ^(rD2, wI3, 
  Instruction (M1_R0_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// 16(rI4),
// rI4 <- 2 reads
  Instruction (M2_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M3_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M4_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M5_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M6_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M7_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M8_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// rI4 <- 2 reads
  Instruction (M9_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M10_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   BranchToInstruction : M1_R0_W0;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;

    RepeatLoop (a) {
     BranchToInstruction  : M0_W0;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
     }
    } 
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

