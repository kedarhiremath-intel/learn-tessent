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

Algorithm (IntelLVWalkRowFasty){

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
   //LoadCounterA_EndCount: MaxColumn/2;
 }

 MicroProgram {

// ^(wD1)
  Instruction (WRITE_BACKGROUND_COLUMNS_ROWS_BLOCKS) {
   OperationSelect : WriteFastColumn;
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

// ^(wI2, nbCol(rTD3), rBI4, wD5)

// ^(wI2,
  Instruction (MOVE_TARGET_WRITE_HOME) {
   OperationSelect  : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   CounterACmd  : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// nbCol(rTD3),
  Instruction (READ_AWAY_COLUMN) {
   //need to replace with ReadFastColumn
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   Y1AddressCmd  : Increment;
   CounterACmd   : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    CounterAEndCount : On;
   }
  }

//  rBI4, wD5)
  Instruction (REWRITE_HOME_CELL) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : MOVE_TARGET_WRITE_HOME;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
 
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

