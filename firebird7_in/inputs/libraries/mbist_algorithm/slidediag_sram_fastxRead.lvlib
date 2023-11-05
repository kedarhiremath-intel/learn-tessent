// Sliding Diag (SlideDiag_FastRead)
// Sliding Diagonal is an industry standard algorithm which is more complex than the Marchc- and
// Partial MOVI but less complex than galloping patterns. The sliding diagonal algorithm writes the
// array to a data background, successively writes a base diagonal to data complement, reads the
// entire array, writes the base diagonal to data, and increments the base diagonal. The SlideDiag_FastRead is a 
//variation of the SlideDiag in which only the read operations of the  arrayDiags are optimized

// Short Notation:
// ^(wD1)
// arrayDiags(diag(wI2), block(rm3), diag(wD4))
// ^(wI1)
// arrayDiags(diag(wD2), block(rM3), diag(wI4))

Algorithm (IntelLVSlideDiagFastxRead){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
  // Address A for tracking BASE cells
   AddressRegister (A) {
    ZCarryIn  : None; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
   }
  // Address B for tracking TARGET cells
   AddressRegister (B) {
    ZCarryIn  : None; //X1 -> row; Y0Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
   }
  }
  DataGenerator {
    LoadWriteData  : 32'b00000000000000000000000000000000;
    LoadExpectData : 32'b00000000000000000000000000000000;
  }
  LoadCounterA_EndCount: MaxColumn;  //MaxColumn = 3
 //   LoadCounterA_EndCount: 3;  // MaxColumn/2 = 1
}

 MicroProgram {

// ^(wD1)
  Instruction (WRITE_BACKGROUND_ROWS) {
   OperationSelect : WriteFastRow;
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
   OperationSelect : ReadFastColumn;
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
   OperationSelect : WriteFastRow;
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



