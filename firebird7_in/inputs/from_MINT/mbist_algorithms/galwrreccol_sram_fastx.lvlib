// Galloping Write Recovery Column (GALWRECCOL)
// The galloping write recovery column algorithm is implemented the same way as the full version
// except the target cell set is limited to cells in the same column as the base cell.
// Short Notation: 
// ^(wD1)
// ^(nbCol(rTD2, wTI3, rBD4, wTD5, rBD6, rTD7))
// ^(wI1)
// ^(nbCol(rTI2, wTD3, rBI4, wTI5, rBI6, rTI7))
// Pattern Length: 2N(6R - 5)
// Pattern Length: 2N + 12N(R - 1) or 2N(6R - 5)
// Back-to-back Operations: 3-4,5-6

Algorithm (IntelLVGalWRrecColFastx){

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

  Instruction (M0_WRITE_BACKGROUND_ROWS_COLUMNS_BLOCKS) {
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

// ^(nbCol(rTD2, wTI3, rBD4, wTD5, rBD6, rTD7))
  
  Instruction (CHANGE_TARGET_CELL_ADVANCE_ROW) {
   OperationSelect : Nooperation;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   CounterACmd : Increment;
   NextConditions {
   }
  }

 // rTD2, wTI3,
  Instruction (M1A_READ_WRITE_TARGET) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_B; // Target 
   ExpectDataCmd : DataReg;
   WriteDataCmd : InverseDataReg;
   //Add_reg_a_equals_b : Invert_WriteData; 
   NextConditions {
   }
  }

// rBD4, wTD5
  Instruction (M1B_READ_BASE_WRITE_TARGET) {
   OperationSelect  : ReadAddr1WriteAddr2;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : DataReg;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

// rTD6, rBD7
  Instruction (M1E_READ_TARGET_READ_BASE) {
   OperationSelect  : ReadAddr1ReadAddr2;
   AddressSelectCmd : Select_B;
   ExpectDataCmd : DataReg;
   X1AddressCmd  : Increment;
   CounterACmd: Increment;
   BranchToInstruction : M1A_READ_WRITE_TARGET;
   NextConditions {
     CounterAEndCount: On;
    } 
  } 

// Change BASE cell
  Instruction (MOVE_HOME_CELL) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd  : Increment;
   BranchToInstruction : CHANGE_TARGET_CELL_ADVANCE_ROW;
   NextConditions {
    Z_EndCount : On;
    Y1_EndCount : On;
    X1_EndCount : On;
    
    RepeatLoop (b) {
    // ^(wI1)
    // ^(nbCol(rTI2, wTD3, rBI4, wTI5, rBI6, rTI7))

     BranchToInstruction : M0_WRITE_BACKGROUND_ROWS_COLUMNS_BLOCKS;
      Repeat {
       WriteDataSequence  : Inverse;
       ExpectDataSequence : Inverse;
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

