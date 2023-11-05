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

Algorithm (IntelLVWalkDiagFasty){

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
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;

   }
  }

// ^(wIB2), nbdiag(rD3, rIB4, wDB5);

// ^(wIB2),
  Instruction (MOVE_AWAY_WRITE_HOME) {
   OperationSelect : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   CounterACmd  : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (READ_AWAY_DIAGONAL) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   CounterACmd  : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    CounterAEndCount : On;
   }
  }

// rIB4, wDB5)
   Instruction (REWRITE_HOME_CELL) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : MOVE_AWAY_WRITE_HOME;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
  
    RepeatLoop (B) {
// ^(wI1)
// ^(wDB2, nbdiag(rI3, rDB4, wIB5)
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


