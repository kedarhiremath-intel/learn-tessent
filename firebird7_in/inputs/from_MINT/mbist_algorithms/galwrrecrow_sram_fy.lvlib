// Galloping Write Recovery Row (GALWRECROW)
// The galloping write recovery row algorithm is implemented the same way as the full version
// except the target cell set is limited to cells in the same row as the base cell.
// Short Notation: 
// ^(wD1)
// ^(nbRow(rTD2, wTI3, rBD4, wTD5, rBD6, rTD7))
// ^(wI1)
// ^(nbRow(rTI2, wTD3, rBI4, wTI5, rBI6, rTI7))
//
// Pattern Length: 2N(6R - 5)
// Pattern Length: 2N + 12N(R - 1) or 2N(6R - 5)
// Back-to-back operations: 3-4, 5-6

Algorithm (IntelLVGalWRrecRowFy){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
  // Address A for tracking BASE cells
   AddressRegister (A) {
    ZCarryIn  : None; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
  // Address B for tracking TARGET cells
   AddressRegister (B) {
    ZCarryIn  : None; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
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

  Instruction (M0_WRITE_BACKGROUND_COLUMNS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (M0_WRITE_BACKGROUND_REPEAT_ROWS) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   BranchToInstruction : M0_WRITE_BACKGROUND_COLUMNS;
   NextConditions {
    X1_EndCount : On;
   }
  }


  Instruction (M0_WRITE_BACKGROUND_REPEAT_BLOCKS) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   BranchToInstruction : M0_WRITE_BACKGROUND_COLUMNS;
   NextConditions {
    Z_EndCount : On;
   }
  }

// ^(nbCol(rTD2, wTI3, rBD4, wTD5, rBD6, rTD7))

// rTD2, wTI3,
  Instruction (M1A_READ_WRITE_TARGET) {
   OperationSelect    : ReadModifyWrite;
   AddressSelectCmd   : Select_B; // Target 
   ExpectDataCmd      : DataReg;
   WriteDataCmd       : InverseDataReg;
   NextConditions {
   }
  }

// rBD4
  Instruction (M1B_READ_BASE) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   Add_reg_a_equals_b : Invert_ExpectData; 
   NextConditions {
   }
  }

// wTD5
  Instruction (M1C_WRITE_TARGET) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_B;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }

// rBD6
  Instruction (M1D_READ_BASE) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

// rTD7
  Instruction (M1E_READ_TARGET) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_B;
   ExpectDataCmd : DataReg;
   Y1AddressCmd  : Increment;
   BranchToInstruction : M1A_READ_WRITE_TARGET;
   // Continue till all column cells in given row are targets
   NextConditions {
    Y1_EndCount : On;
    } 
  } 


// Change BASE cell to next COLUMN 
  Instruction (M1F_REWRITE_HOME_CELL) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : M1A_READ_WRITE_TARGET;
   NextConditions {
   // Continue till all column cells in a given ROW has been a BASE cell 
    Y1_EndCount : On;
   }
  }

// Advance Address_B (TARGET cell) to next row
  Instruction (M1G_CHANGE_AWAY_CELL_ADVANCE_ROW) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   NextConditions {
   }
}

// Advance Address_A (BASE cell) to next row
  Instruction (M1H_CHANGE_HOME_CELL_ADVANCE_ROW) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   BranchToInstruction : M1A_READ_WRITE_TARGET;
   NextConditions {
   // Continue till all ROW cells have been BASE 
    X1_EndCount : On;
   }
}

  Instruction (M2_OUTER_LOOP) {
   OperationSelect : NoOperation;
   // Ensure Address_A and B are back to 0,0
   AddressSelectCmd : Select_A_Copy_to_B;
   ZAddressCmd : Increment;
   BranchToInstruction : M1A_READ_WRITE_TARGET;
   NextConditions {
   // Cover all Block addresses
    Z_EndCount : On;
    RepeatLoop (b) {
    // ^(wI1)
    // ^(nbRow(rTI2, wTD3, rBI4, wTI5, rBI6, rTI7))

     BranchToInstruction : M0_WRITE_BACKGROUND_COLUMNS;
      Repeat {
       WriteDataSequence  : Inverse;
       ExpectDataSequence : Inverse;
      }
    }
   }
  }

  Instruction (CLEAR_ROWS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_REPEAT_COLUMNS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   BranchToInstruction : CLEAR_ROWS;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (CLEAR_REPEAT_BLOCKS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   BranchToInstruction : CLEAR_ROWS;
   NextConditions {
    Z_EndCount : On;
   }
  }

}
}
