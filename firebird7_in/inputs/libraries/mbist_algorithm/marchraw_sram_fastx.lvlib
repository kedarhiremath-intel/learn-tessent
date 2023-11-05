//MarchRAW (MARCHRAW)
//MarchRAW was developed by fault simulation. The fault model used for the pattern development
//was the Single Port, Simple Dynamic Fault and the test looks for Read After Write (RAW) failures.
//Scoreboarding has shown the pattern to be able to detect unique failures.
// Short Notation: 
// ^(wD1)
// ^(rD2, wD3, rD4, rD5, wI6, rI7)
// ^(rI2, wI3, rI4, rI5, wD6, rD7)
// v(rD2, wD3, rD4, rD5, wI6, rI7)
// v(rI2, wI3, rI4, rI5, wD6, rD7)
// ^(rD8)
// Back-to-back Operations: 3-4, 4-5, 6-7, 7-2, 8-8 

Algorithm (IntelLVMarchRAWFastx){

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

 }

 MicroProgram {

// ^(wD1)
  Instruction (M0_W0) {
   OperationSelect : WriteFastRow;
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

// ^(rD2, wD3, rD4, rD5, wI6, rI7)

  Instruction (M1A_R0_W0) {
   OperationSelect  : ReadModifyWrite; //Actually a ReadWrite 
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }

  Instruction (M1B_R0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  Instruction (M1C_W1_R1) {
   OperationSelect  : WriteRead;
   AddressSelectCmd : Select_A;
   ZAddressCmd   : Increment; 
   Y1AddressCmd  : Increment; 
   X1AddressCmd  : Increment; 
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd  : InverseDataReg;
   BranchToInstruction : M1A_R0_W0;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
    RepeatLoop (a) {
     BranchToInstruction  : M1A_R0_W0;

// ^(rI2, wI3, rI4, rI5, wD6, rD7)
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      InhibitLastAddressCount : On;
     }

// v(rD2, wD3, rD4, rD5, wI6, rI7)
     Repeat {
      AddressSequence     : Inverse;
     }

// v(rI2, wI3, rI4, rI5, wD6, rD7)
     Repeat {
      AddressSequence     : Inverse; 
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse; 
      InhibitLastAddressCount : On;
     }
    }
   }
  }

// ^(rD8)

  Instruction (M5_R0) {
   OperationSelect  : ReadFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    Z_EndCount : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 } 
    
}

