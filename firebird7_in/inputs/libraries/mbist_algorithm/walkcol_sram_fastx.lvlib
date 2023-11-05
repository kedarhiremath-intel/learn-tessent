// WalkColumn (WalkCol)
// The walking column algorithm "walks" a base cell through the entire array in each state.
// After incrementing the base cell, each cell on the base cell column is read. 
// This pattern is similar to the Galloping Column, the difference is that the base cell read occurs 
// outside of the loop through the column cells. 
// The galloping diagrams can help in showing how the test worked with the noted exception.
//
// Short Notation: 
// ^(wD1)
// ^(wI2, nbCol(rTD3), rI4, wD5)
// ^(wI1)
// ^(wD2, nbCol(rTI3), rD4, wI5)
// Pattern Length: 8N+2N(R-1) or 2N(R+3)
// Back-to-back Operations: 2-3, 3-4
// Preferred: 2-3-4

Algorithm (IntelLVWalkColFastx){

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
  // LoadCounterA_EndCount: MaxRow/2;
}

 MicroProgram {

// ^(wD1)
  Instruction (WRITE_BACKGROUND_ROWS_COLUMNS_BLOCKS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

// ^(wI2, nbCol(rTD3), rI4, wD5)

// ^(wI2,
  Instruction (MOVE_TARGET_WRITE_HOME) {
   OperationSelect : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   CounterACmd: Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// nbCol(rTD3),
  Instruction (READ_AWAY_ROW) {
   //need replace ReadTwo with ReadFastRow 
   //when LoadCounterA_EndCount = MaxRow/2 is supported
   OperationSelect : ReadTwo;    
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   CounterACmd: Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    CounterAEndCount : On;
   }
  }

// rI4, wD5)
// Account for base cell read and write after completing last row entry:
   Instruction (REWRITE_HOME_CELL) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : MOVE_TARGET_WRITE_HOME;
   NextConditions {
    Z_EndCount : On;
    Y1_EndCount : On;
    X1_EndCount : On;

    RepeatLoop (B) {

// ^(wI1)
// ^(wD2, nbCol(rTI3),rBD4, wI5)
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
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }
  
 }

}


