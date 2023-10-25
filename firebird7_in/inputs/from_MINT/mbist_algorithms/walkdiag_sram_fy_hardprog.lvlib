// Walking Diagonal (WalkDiag)

//The walking diagonal algorithm is the same as the walking column algorithm except the target cell set is reduced to only those cells in the same diagonal as the base cell. i.e. all cells in the base cell diagonal are read instead of the cells in the column.

//Short Notation:

//^(wD1); ^(wIB2), nbdiag(rD3, rIB4, wDB5);

//^(wI1); ^(wDB2), nbdiag(rI3, rDB4, wIB5);

//Back-to-Back Operations:

//2-3, 3-4

//Preferred: 2-3-4

//Pattern Length:

//2N(L+3)

//Defects Detected:

//All cell stuck at, addressing, coupling, transition faults and slow sense amplifier recovery faults are detected.

//Normal Usage:

//Fast Y addressing with solid background.

Algorithm (IntelLVWalkDiagFy){

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

// ^(wIB2), nbdiag(rD3, rIB4, wDB5);

// ^(wIB2),
  Instruction (WRITE_HOME_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// nbdiag(rD3),
  Instruction (AWAY_EQUALS_HOME) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   NextConditions {
   }
  }

  Instruction (READ_AWAY_COLUMN) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   CounterACmd: Increment;
   ExpectDataCmd : DataReg;
   Add_reg_a_equals_b : Invert_ExpectData;
//   BranchToInstruction : READ_HOME_CELL;
   NextConditions {
    CounterAEndCount : On;
   }
  }

// rIB4, wDB5)
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

// Continue till all rows are covered
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
// ^(wDB2, nbdiag(rI3, rDB4, wIB5)
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

