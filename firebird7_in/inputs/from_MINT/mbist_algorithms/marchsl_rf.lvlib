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

Algorithm (IntelLVMarchSL){

 TestRegisterSetup {

 OperationSetSelect : SyncCustom;
  AddressGenerator {
  AddressRegister (A) {
  X1CarryIn     : None;
   NumberX0Bits  : 0;
  }
 }
  DataGenerator {
   LoadWriteData  : 4'b0000; 
   LoadExpectData : 4'b0000; 
  }
 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd     : Increment;
   WriteDataCmd     : DataReg;
   NextConditions {
    X1_EndCount     : On;
   }
  }

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
   X1AddressCmd     : Increment;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   BranchToInstruction      : M1_R0_R0;
   NextConditions { 
    X1_EndCount     : On; 
    RepeatLoop (a) { 
     BranchToInstruction      : M1_R0_R0; 
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
      InhibitLastAddressCount : On; 
     } 
     Repeat { 
      AddressSequence         : Inverse; 
     } 
     Repeat { 
      AddressSequence         : Inverse; 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
     } 
    } 
   } 
  }

  Instruction (M0_DUMMY) {
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
