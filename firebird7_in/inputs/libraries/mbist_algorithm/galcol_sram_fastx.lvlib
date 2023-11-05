// Galloping Column (GALCOL)
// The galloping column algorithm behaves exactly as a full gallop except the target cell set is reduced
// to only those cells in the same column as the base cell.
// Short Notation: 
// ^(wD1) 
// ^(wI2, nbCol(rTD3, rBI4), wD5)
// ^(wI1) 
// ^(wD2, nbCol(rTI3, rBD4), wI5)
// Pattern Length: 6N + 4N(R - 1) or 2N(2R + 1)
// Back-to-back Operations: 3-4, 4-3 
// Preferred: 3-4-3

Algorithm (IntelLVGalColumnFastx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
  // Address A for tracking BASE cells
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }
  // Address B for tracking TARGET cells
   AddressRegister (B) {
    ZCarryIn  : None; //X0 X1 -> row; Y0 Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
   }
  }
  DataGenerator {
    LoadWriteData  : 32'b00000000000000000000000000000000;
    LoadExpectData : 32'b00000000000000000000000000000000;
  }
  LoadCounterA_EndCount: MaxRow;
}

 MicroProgram {

// ^(wD1)
  Instruction (WRITE_BACKGROUND_ROWS_COLUMNS_BLOCKS) {
   OperationSelect : WriteFastRow;
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

// ^(wI2, nbCol(rTD3, rBI4), wD5)
  Instruction (MOVE_TARGET_WRITE_HOME) {
   OperationSelect : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   X1AddressCmd  : Increment;
   CounterACmd   : Increment;
   WriteDataCmd  : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (READ_AWAY_ROW_AND_HOME) {
   OperationSelect : ReadAddr1ReadAddr2Inv;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   CounterACmd  : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    CounterAEndCount : On;
   }
  }

// Account for base cell read and write after completing last row entry:
   Instruction (REWRITE_HOME_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   BranchToInstruction : MOVE_TARGET_WRITE_HOME;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
       
    RepeatLoop (B) {

// ^(wI1)
// ^(wD2, nbCol(rTI3, rBD4), wI5)
     BranchToInstruction: WRITE_BACKGROUND_ROWS_COLUMNS_BLOCKS;
     Repeat {
      WriteDataSequence: Inverse;
      ExpectDataSequence: Inverse;
     }
    }
   }
  }

  Instruction (CLEAR_ROWS_COLUMNS_BLOCKS) {
   OperationSelect : WriteFastRow;
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

