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

Algorithm (IntelLVTowalk2Fastx){
 
 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block     
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }
  }
 
  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }
   LoadCounterA_EndCount: 6;
 }


 MicroProgram {

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteFastRow;
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

//^(rD2, wI3, 16(rI4), wD5)

// ^(rD2, wI3, 
  Instruction (M1_R0_W0) {
   OperationSelect  : ReadModifyWriteRead;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// 14(rI4),
  Instruction (M2_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   CounterACmd      : Increment;
   NextConditions {
        CounterAEndCount    : On;
   }
  }
// rI4, wD5
  Instruction (M10_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
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
   OperationSelect : WriteFastRow;
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

