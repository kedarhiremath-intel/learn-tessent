// Galloping Write Recovery Column (GALWRECCOL)
// The galloping write recovery column algorithm is implemented the same way as the full version
// except the target cell set is limited to cells in the same column as the base cell.
// Short Notation: 
// ^(wD1) 
// ^(nbCol(rTD2, wTI3, rBD4, wTD5, rBD6, rTD7))
// ^(wI1) ^(nbCol(rTI2, wTD3, rBI4, wTI5, rBI6, rTI7))
// Pattern Length: 2N(6R - 5)
// Pattern Length: 2N + 12N(R - 1) or 2N(6R - 5)
// Back-to-back Operations: 3-4, 5-6

Algorithm (IntelLVGalWRrecCol) {

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
    NumberY0Bits : 0;
   }
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

 }

 TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)

  Instruction (M0_WRITE_BACKGROUND) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A; // Base 
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

// ^(nbCol(rTD2, wTI3, rBD4, wTD5, rBD6, rTD7))
// ^(nbCol(rTI2, wTD3, rBI4, wTI5, rBI6, rTI7))

  Instruction (M1A_READ_WRITE_TARGET) {
   OperationSelect    : ReadModifyWrite;
   AddressSelectCmd   : Select_B; // Target 
   ExpectDataCmd      : DataReg;
   WriteDataCmd       : InverseDataReg;
   Add_reg_a_equals_b : Invert_WriteData; 
   NextConditions {
   }
  }

  Instruction (M1B_READ_BASE) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  Instruction (M1C_WRITE_TARGET) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_B;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }

  Instruction (M1D_READ_BASE) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  Instruction (M1E_READ_TARGET) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_B;
   ExpectDataCmd : DataReg;
   X1AddressCmd : Increment;
   BranchToInstruction : M1A_READ_WRITE_TARGET;
   NextConditions {
    X1_EndCount : On;
    } 
  } 


  Instruction (M1G_INNER_LOOP) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
    BranchToInstruction : M1A_READ_WRITE_TARGET;
    X1AddressCmd : Increment;
    NextConditions {
     X1_EndCount : On;
   }
  }

  Instruction (M1H_OUTER_LOOP) {
   OperationSelect : NoOperation;
   NextConditions {
    RepeatLoop (b) {
     BranchToInstruction : M0_WRITE_BACKGROUND;
      Repeat {
       WriteDataSequence  : Inverse;
       ExpectDataSequence : Inverse;
      }
    }
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
