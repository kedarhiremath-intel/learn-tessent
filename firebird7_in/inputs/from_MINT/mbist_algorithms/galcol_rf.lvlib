// Galloping Column (GALCOL)
// The galloping column algorithm behaves exactly as a full gallop except the target cell set is reduced
// to only those cells in the same column as the base cell.
// Short Notation: 
// ^(wD1)
// ^(wI2, nbCol(rTD3, rBI4), wD5)
// ^(wI1) ^(wD2, nbCol(rTI3, rBD4), wI5)
// Pattern Length: 6N + 4N(R - 1) or 2N(2R + 1)
// Back-to-back Operations: 3-4, 4-3 
// Preferred: 3-4-3

Algorithm (IntelLVGalColumn) {

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

  Instruction (WRITE_BACKGROUND) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (WRITE_HOME_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (READ_HOME_CELL) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (READ_AWAY_COLUMN) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   Add_reg_a_equals_b : Invert_ExpectData;
   BranchToInstruction : READ_HOME_CELL;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (ADVANCE_AWAY_COLUMN_POINTER) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_B;
   NextConditions {
   }
  }

  Instruction (REWRITE_HOME_CELL_AND_ADVANCE) {
   OperationSelect : Readmodifywrite;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : WRITE_HOME_CELL;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (GOTO_NEXT_BANKADDRESS) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   BranchToInstruction : WRITE_BACKGROUND;
   NextConditions {
    RepeatLoop (B) {
     BranchToInstruction: WRITE_BACKGROUND;
     Repeat {
      WriteDataSequence: Inverse;
      ExpectDataSequence: Inverse;
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
