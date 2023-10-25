// WalkRow (WalkRow)
// The walking row algorithm is the same as the walking column except all cells in the base cell row 
// are read instead of the cells in the column. 
// This pattern is similar to the Galloping Row, the difference is that the base cell read occurs 
// outside of the loop through the row cells. 
// The galloping diagrams can help in showing how the test works with the noted exception.
//
// Short Notation:
// ^(wD1)
// ^(wI2, nbRow(rTD3), rI4, wD5)
// ^(wI1)
// ^(wD2, nbRow(rTI3), rD4, wI5)
// Pattern Length: 8N+2N(C-1) or 2N(C+3)
// Back-to-back Operations: 2-3, 3-4
// Preferred: 2-3-3-4

Algorithm (IntelLVWalkRowFy) {

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
  Instruction (WRITE_BACKGROUND_COLUMNS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (WRITE_BACKGROUND_REPEAT_ROWS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   BranchToInstruction : WRITE_BACKGROUND_COLUMNS;
   NextConditions {
    X1_EndCount : On;
   }
  }


  Instruction (WRITE_BACKGROUND_REPEAT_BLOCKS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   BranchToInstruction : WRITE_BACKGROUND_COLUMNS;
   NextConditions {
    Z_EndCount : On;
   }
  }

// ^(wI2, nbCol(rTD3), rBI4, wD5)

// ^(wI2,
  Instruction (WRITE_HOME_CELL) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// nbCol(rTD3),
  Instruction (READ_AWAY_COLUMN) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   Y1AddressCmd  : Increment;
   ExpectDataCmd : DataReg;
   Add_reg_a_equals_b  : Invert_ExpectData;
   NextConditions {
    Y1_EndCount : On;
   }
  }

//  rBI4, wD5)
// Account for base cell read and write after completing last column entry:
  Instruction (REWRITE_HOME_CELL) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : WRITE_HOME_CELL;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (CHANGE_AWAY_CELL_ADVANCE_ROW) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   NextConditions {
   }
}

  Instruction (CHANGE_HOME_CELL_ADVANCE_ROW) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   BranchToInstruction : WRITE_HOME_CELL;
   NextConditions {
    X1_EndCount : On;
   }
}

// Get A and B pointers aligned to start with next block
  Instruction (GOTO_NEXT_BANKADDRESS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   ZAddressCmd : Increment;
   BranchToInstruction : WRITE_HOME_CELL;
   NextConditions {
    Z_EndCount : On;
    RepeatLoop (B) {
// ^(wI1)
// ^(wD2, nbCol(rTI3, rBD4), wI5)

     BranchToInstruction: WRITE_BACKGROUND_COLUMNS;
     Repeat {
      WriteDataSequence: Inverse;
      ExpectDataSequence: Inverse;
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

