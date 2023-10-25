// Hammer (HAMMER)
// The Hammer algorithm writes repeatedly inverted data to the base cell and then reads other cells 
// in the same column and row as the base cell. The base cell traverses the main diagonal. 
// The test attempts to stimulate write recovery faults.
//
//Short Notation:
//^(wD 1), arrayBlocks(diag(1000(wI) 2, nbRow(rTD) 3, rI 4, nbCol(rTD) 5, rI 6, wD 7)
//^(wI 1), arrayBlocks(diag(1000(wD) 2, nbRow(rTI) 3, rD 4, nbCol(rTI) 5, rD 6, wI 7)
//Pattern Length:
//2N+2BL(1001+R+C)
//Back-to-Back Operations:
//2-2, 2-3, 3-3, 3-4, 5-5, 5-6

Algorithm (IntelLVHammerFastx){
 
 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn        : None; //X0 X1 -> row; Y0 Y1 -> col, Z -> block     
    Y1CarryIn       : None;
    X1CarryIn       : None;
   }
  
   // Address B for tracking TARGET cells
   AddressRegister (B) {
    ZCarryIn        : Y1CarryOut; //X0 X1 -> row; Y0 Y1 -> col, Z -> block
    Y1CarryIn       : None;
    X1CarryIn       : None;
   }
  }

  DataGenerator {
   LoadWriteData    : 32'b00000000000000000000000000000000;
   LoadExpectData   : 32'b00000000000000000000000000000000;
  }
  LoadCounterA_EndCount: 499;
 }


 MicroProgram {

  //init_A and B: set colomn address to 0: needed for 2nd loop when (#bank*#row)%#col != 0
  Instruction (INIT_A) {
	OperationSelect      : NoOperation;
	AddressSelectCmd     : Select_A_Copy_to_B;
	ZAddressCmd          : LoadMin;
	Y1AddressCmd         : LoadMin;
	X1AddressCmd         : LoadMin;
 	NextConditions {
	}
  }

 // ^(wD1)
  Instruction (WRITE_BACKGROUND_ROWS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (WRITE_BACKGROUND_COLUMNS_BLOCKS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_B;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   BranchToInstruction  : WRITE_BACKGROUND_ROWS;
   NextConditions {
    Z_EndCount : On;
    Y1_EndCount : On;
   }
  }

  //arrayBlocks(diag(1000(wI) 2, nbRow(rTD) 3, rI 4, nbCol(rTD) 5, rI 6, wD 7)
  Instruction (HAMMER_WRITE_HOME_CELL) {
   OperationSelect      : WriteData;
   AddressSelectCmd     : Select_A;
   WriteDataCmd         : InverseDataReg;
   CounterACmd          : Increment;
   NextConditions {
	CounterAEndCount    : On;
   }
  }

  // Prior to reading rows, reset X back to start.  
  // Leave Y aligned to Home cell
  Instruction (RESET_X) {
   OperationSelect      : NoOperation;
   AddressSelectCmd     : Select_B;
   X1AddressCmd         : LoadMin;
   NextConditions {
   }
  }

  Instruction (READ_ROW) {
   OperationSelect      : ReadFastRow;
   AddressSelectCmd     : Select_B;
   X1AddressCmd         : Increment;
   ExpectDataCmd        : DataReg;
   Add_reg_a_equals_b   : Invert_ExpectData;
   NextConditions {
    X1_EndCount : On;
   }
  }

  // Added this instruction to realign B with A 
  // (specifically the X address)
  Instruction (AWAY_EQUALS_HOME2) {
   OperationSelect      : NoOperation;
   AddressSelectCmd     : Select_A_Copy_to_B;
   NextConditions {
   }
  }

  // Prior to reading columns, reset Y back to start.  
  // Leave X aligned to Home cell
  Instruction (RESET_Y) {
   OperationSelect      : NoOperation;
   AddressSelectCmd     : Select_B;
   Y1AddressCmd         : LoadMin;
   NextConditions {
   }
  }

  Instruction (READ_COLUMN) {
   OperationSelect      : ReadFastColumn;
   AddressSelectCmd     : Select_B;
   Y1AddressCmd         : Increment;
   ExpectDataCmd        : DataReg;
   Add_reg_a_equals_b   : Invert_ExpectData;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (READINV_WRITE_HOME_CELL) {
   OperationSelect      : ReadModifyWrite;
   AddressSelectCmd     : Select_A;
   ExpectDataCmd        : InverseDataReg;
   WriteDataCmd         : DataReg;
   NextConditions {
   }
  }

  Instruction (CHANGE_HOME_CELL_ADVANCE_DIAG) {
   OperationSelect      : Nooperation;
   AddressSelectCmd     : Select_A_Copy_to_B;
   X1AddressCmd         : Increment;
   Y1AddressCmd         : Increment;
   BranchToInstruction  : HAMMER_WRITE_HOME_CELL;
   NextConditions {
    X1_EndCount : On;
   }
  }

  // Get A and B pointers aligned to start with next block
  Instruction (GOTO_NEXT_BANKADDRESS) {
   OperationSelect      : Nooperation;
   AddressSelectCmd     : Select_A_Copy_to_B;
   ZAddressCmd          : Increment;
   BranchToInstruction  : HAMMER_WRITE_HOME_CELL;
   NextConditions {
    Z_EndCount : On;
    RepeatLoop (B) {

    //^(wI 1), 
    // arrayBlocks(diag(1000(wD) 2, nbRow(rTI) 3, rD 4, nbCol(rTI) 5, rD 6, wI 7)
    // BranchToInstruction: WRITE_BACKGROUND_ROWS;
     BranchToInstruction: INIT_A;
     Repeat {
      WriteDataSequence : Inverse;
      ExpectDataSequence: Inverse;
     }
    }
   }
  }

  //reset colomn address to 0: needed to finish clean when (#bank*#row)%#col != 0
  //has to start from begining for clean finish (DONE signal)
  Instruction (INIT_B) {
	OperationSelect      : NoOperation;
	AddressSelectCmd     : Select_B;
	ZAddressCmd          : LoadMin;
	Y1AddressCmd         : LoadMin;
	X1AddressCmd         : LoadMin;
	NextConditions {
	}
  }

  Instruction (CLEAR_ARRAY_ROWS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAY_COLUMNS_BLOCKS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   BranchToInstruction: CLEAR_ARRAY_ROWS;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
   }
  }

 }  
} 

