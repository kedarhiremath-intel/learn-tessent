// MarchSL (MARCHSL)
// MarchSL was developed by fault simulation. The fault model used for the pattern development was
// the Single Port, Static Linked Fault (SL). Scoreboarding has shown the pattern to be able to detect
// unique failures.
// Short Notation: 
// ^(wD1)
// ^(rD2, rD3, wI4, wI5, rI6, rI7, wD8, wD9, rD10, wI11)
// ^(rI2, rI3, wD4, wD5, rD6, rD7, wI8, wI9, rI10, wD11)
// v(rD2, rD3, wI4, wI5, rI6, rI7, wD8, wD9, rD10, wI11)
// v(rI2, rI3, wD4, wD5, rD6, rD7, wI8, wI9, rI10, wD11)
// Pattern Length: 41N
// Back-to-back Operations: 2-3, 5-6-7, 9-10, 11-2 
// Preferred: 2-3, 4-5, 5-6-7, 8-9, 9-10, 11-2

Algorithm (IntelLVMarchSLFx){

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

// ^(rD2, rD3, wI4, wI5, rI6, rI7, wD8, wD9, rD10, wI11)

  Instruction (M1_R0_R0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  Instruction (M1_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1_R1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1_W0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }

  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd   : Increment;
   Y1AddressCmd  : Increment; 
   X1AddressCmd  : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd  : InverseDataReg;
   BranchToInstruction  : M1_R0_R0;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 
    
    RepeatLoop (a) { 
     BranchToInstruction      : M1_R0_R0; 
// ^(rI2, rI3, wD4, wD5, rD6, rD7, wI8, wI9, rI10, wD11)
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
      InhibitLastAddressCount : On; 
     } 
     
// v(rD2, rD3, wI4, wI5, rI6, rI7, wD8, wD9, rD10, wI11)
     Repeat { 
      AddressSequence         : Inverse; 
     }

// v(rI2, rI3, wD4, wD5, rD6, rD7, wI8, wI9, rI10, wD11)
     Repeat { 
      AddressSequence    : Inverse; 
      WriteDataSequence  : Inverse; 
      ExpectDataSequence : Inverse; 
     } 
    } 
   } 
  }

  Instruction (M0_DUMMY) {
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
