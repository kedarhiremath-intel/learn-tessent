// Galloping ROW (GALROW)
// The galloping row algorithm behaves exactly as a full gallop except the target cell set is reduced
// to only those cells in the same row as the base cell.
// Short Notation: 
// ^(wD1)
// ^(wI2, nbRow(rTD3, rBI4), wD5)
// ^(wI1)
// ^(wD2, nbRow(rTI3, rBD4), wI5)
// Pattern Length: 6N + 4N(C - 1) or 2N(2C + 1)
// Back-to-back Operations: 3-4, 4-3 
// Preferred: 3-4-3

Algorithm (IntelLVGalRowFasty){

 TestRegisterSetup {
  
  OperationSetSelect : SyncCustom;
  AddressGenerator {
  // Address A for tracking BASE cells
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y0 Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : Y1CarryOut;
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
   LoadCounterA_EndCount: MaxColumn;
 }

 MicroProgram {

// ^(wD1)
  Instruction (WRITE_BACKGROUND_COLUMNS_ROWS_BLOCKS) {
   OperationSelect : WriteFastColumn;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    X1_EndCount : On;
    Y1_EndCount : On;
   }
  }

// ^(wI2, nbCol(rTD3, rBI4), wD5)
  
  //wI2
  Instruction (MOVE_TARGET_WRITE_HOME) {
   OperationSelect  : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   CounterACmd  : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }
  
  // nbCol(rTD3, rBI4)
  Instruction (READ_AWAY_COLUMN_AND_HOME) {
   OperationSelect  : ReadAddr1ReadAddr2Inv;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   CounterACmd  : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    CounterAEndCount : On;
   }
  }

  //wD5 
  Instruction (REWRITE_HOME_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd  : Increment;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   BranchToInstruction : MOVE_TARGET_WRITE_HOME;
   NextConditions {
    Z_EndCount  : On;
    X1_EndCount : On;
    Y1_EndCount : On;
 
    RepeatLoop (B) {
// ^(wI1)
// ^(wD2, nbCol(rTI3, rBD4), wI5)

     BranchToInstruction: WRITE_BACKGROUND_COLUMNS_ROWS_BLOCKS;
     Repeat {
      WriteDataSequence: Inverse;
      ExpectDataSequence: Inverse;
     }
    }
   }
  }

  Instruction (CLEAR_COLUMNS_ROWS_BLOCKS) {
   OperationSelect : WriteFastColumn;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    X1_EndCount : On;
    Y1_EndCount : On;

   }
  }

 }
}

