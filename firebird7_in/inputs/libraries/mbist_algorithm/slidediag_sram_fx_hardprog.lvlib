// Sliding Diag (SlideDiag)
// The Sliding Diag algorithm behaves exactly as a full Slidelop except the target cell set is reduced
// to only those cells in the same Diag as the base cell.
// Short Notation: 
// ^(wD1) 
// ^(wI2, nbDiag(rTD3, rBI4), wD5)
// ^(wI1) 
// ^(wD2, nbDiag(rTI3, rBD4), wI5)
// Pattern Length: 6N + 4N(R - 1) or 2N(2R + 1)
// Back-to-back Operations: 3-4, 4-3 
// Preferred: 3-4-3

Algorithm (IntelLVSlideDiagFx) {

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
  LoadCounterA_EndCount: MaxColumn;

}

 MicroProgram {

// ^(wD1)
  Instruction (WRITE_BACKGROUND_ROWS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (WRITE_BACKGROUND_REPEAT_COLUMNS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   BranchToInstruction : WRITE_BACKGROUND_ROWS;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (WRITE_BACKGROUND_REPEAT_BLOCKS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   BranchToInstruction : WRITE_BACKGROUND_ROWS;
   NextConditions {
    Z_EndCount : On;
   }
  }

// ^(wI2, nbDiag(rTD3, rBI4), wD5)
  Instruction (WRITE_DIAG_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
      X1_EndCount : On;
   }
  }

// cmleon:  Added copying of Address B to Address A

Instruction (Align_A_to_B) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_B_Copy_to_A;
   NextConditions {
   }
  }
  
  Instruction (READ_AWAY_ROW) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   CounterACmd: Increment;
   ExpectDataCmd : DataReg;
   Add_reg_a_equals_b : Invert_ExpectData;
   NextConditions {
    CounterAEndCount: On;
   }
  }

  
  Instruction (INCREMENT_HOME_CELL_ADVANCE_DIAG) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   NextConditions {
   }
  }  
  
  Instruction (INCREMENT_AWAY_CELL_ADVANCE_COLUMN) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   BranchToInstruction : READ_AWAY_ROW;
   NextConditions {
    X1_EndCount : On;
   }
  }

// cmleon:  Added copying of Address B to Address A

Instruction (Align_A_to_B_2) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_B_Copy_to_A;
   NextConditions {
   }
  }

// Account for base cell read and write after completing last row entry:
   Instruction (REWRITE_HOME_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
       X1_EndCount:On;
   }
  }

  Instruction (CHANGE_HOME_CELL_ADVANCE_COLUMN) {
   OperationSelect : Nooperation;
   // cmleon:  Changed to Address B and copy B to A
   AddressSelectCmd : Select_B_Copy_to_A;
   Y1AddressCmd : Increment;
   BranchToInstruction : WRITE_DIAG_CELL;
   NextConditions {
    Y1_EndCount : On;
   }
  }

// Get A and B pointers aligned to start with next block

  Instruction (GOTO_NEXT_BANKADDRESS) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_B_Copy_to_A;
   ZAddressCmd : Increment;
   BranchToInstruction : WRITE_DIAG_CELL;
   NextConditions {
    Z_EndCount : On;
    RepeatLoop (B) {

// ^(wI1)
// ^(wD2, nbCol(rTI3, rBD4), wI5)
     BranchToInstruction: WRITE_BACKGROUND_ROWS;
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

