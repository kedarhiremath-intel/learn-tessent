// Hammer 10 (HAMMER10)
// Although the name is similar, this is much simpler than the hammer algorithm. First, all cells in the
// array are hammered. Second, cells are hammered only 10 times instead of 1000. Finally, only a
// read of the hammered cell is performed after the repeated writes instead of all cells in a the
// hammered cell row. The increment and decrement should occur in a fast X direction
// to stress a single column repeatedly.
//
// Short Notation: 
// ^(wD1)
// ^(rD2, 10(wI3), rI4)
// ^(rI5, 10(wD6), rD7)
// v(rD8, 10(wI9), rI10)
// v(rI11, 10(wD12), rD13)
// Pattern Length: 49N
// Back-to-back
// Operations: 3-3, 3-4, 6-6, 6-7, 9-9, 9-10, 12-12, 12-13 


Algorithm (IntelLVHammer10){
 
 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0; 
   }
  }
 
  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }

 }


 TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

//^(rD2, 10(wI3), rI4)

  Instruction (M1_R0_R0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  Instruction (M1A_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1B_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1C_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1D_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1E_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : M1_R0_R0;
   NextConditions { 
    X1_EndCount : On; 
    RepeatLoop (a) { 
     BranchToInstruction  : M1_R0_R0; 
    
// ^(rI5, 10(wD6), rD7)
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
      InhibitLastAddressCount : On; 
     } 

// v(rD8, 10(wI9), rI10)
     Repeat { 
      AddressSequence : Inverse; 
     } 

// v(rI11, 10(wD12), rD13)
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
