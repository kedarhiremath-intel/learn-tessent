// Galloping Column Neighbor(GALCOLNEIGHBOR)
// The galloping column neighbor algorithm behaves exactly as a full gallop except the target cell set is reduced
// to only those cells that are neighbors of the base cell and are in the same column as the base cell.
//if the base cell is (x,y) then the neighbors are the cells from (x-n,y) to (x+n,y) where n is the maximum distance of a neighbor.
// Short Notation: 
// ^(wD1) 
// ^(wI2, nbColNeighbor(rTD3, rBI4), rBI5, wD6)
// ^(wI1) 
// ^(wD2, nbColNeighbor(rTI3, rBD4), rBD5, wI6)
// Pattern Length: 6N + 4N(R - 1) or 2N(2R + 1)
// Back-to-back Operations: 3-4, 4-3 
// Preferred: 3-4-3

// this modified algorithm only galloping on a number of 
// neighboring target cells in the same column as the base cell
// the number of neighboring rows is defined by CounterA_EndCount
//nbColNeighbor reads the first n neighbors to the right and then first n neighbors to the left in ncreasing order of distance from the base cell
Algorithm (IntelLVGalColumnNeighborFastx){

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
  LoadCounterA_EndCount: 16;
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
  Instruction (WRITE_HOME_CELL) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (AWAY_EQUALS_HOME) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   NextConditions {
   }
  }

  Instruction (CHANGE_AWAY_CELL_ADVANCE_ROW) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   CounterACmd : Increment;
   NextConditions {
   }
  }

  Instruction (READ_AWAY_ROW_AND_HOME) {
   OperationSelect : ReadAddr1ReadAddr2Inv;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   CounterACmd: Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    CounterAEndCount : On;
    RepeatLoop (A) {
    BranchToInstruction: AWAY_EQUALS_HOME;
     Repeat {
      AddressSequence: Inverse;
     }
    }
   }
  }

// Account for base cell read and write after completing last row entry:
   Instruction (REWRITE_HOME_CELL) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : WRITE_HOME_CELL;
   NextConditions {
    Z_EndCount : On;
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

