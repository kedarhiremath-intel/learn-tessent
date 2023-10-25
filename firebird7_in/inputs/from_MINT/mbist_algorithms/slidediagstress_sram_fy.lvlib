// Sliding Diagonal is an industry standard algorithm which is more complex than the Marchc- and
// Partial MOVI but less complex than galloping patterns. The sliding diagonal algorithm writes the
// array to a data background, successively writes a base diagonal to data complement, reads the
// entire array, writes the base diagonal to data, and increments the base diagonal.
// Short Notation: 
// ^(wD1)
// arrayDiags(diag(wI2), block(rm3), diag(wD4))
// ^(wI1)
// arrayDiags(diag(wD2), block(rM3), diag(wI4))
//
//
// Alternate Implementation: (Sliding Diagonal Stress)
// (BSLIDEDIAG):
// arrayBlocks(block(wD1), blockDiags(diag(wI2), block(rm3), diag(wD4)))
// arrayBlocks(block(wI1), blockDiags(diag(wD2), block(rM3), diag(wI4)))
// Note: For a single block array the standard and alternate implementations will produce identical tests
// Pattern Length: 2N + 2BD(2L + RC)
// Back-to-back Operations: 2-2, 3-3  
// Writing each diagonal to inverse data should be back-2-back (2-2)
// Reading base diagonal and its neighbors should be back to back (3-3)
//
//
// Modified Algo: 
// Brief description of the sliding diagonal stress algorithm:
// 1. Write Data to all rows, columns and blocks.
// 2. Write the diagonal (starting with base leading diagonal) with inverse data.
// 3. Read base diagonal (Inverse data), read its neighbors (data) and write back the base back to data. Continue till all diagonals on the leading diagonal & its neighbors have been read.
// 4. Increment to next entry (next column for Fy operation) and repeat steps 2-3 till all columns have been covered.
// 5. Continue steps 2-4 for all blocks in the design.
// 6. Repeat the whole sequence with inverse data.

// Writing each diagonal to inverse data should be back-2-back (2-2)
// Reading base diagonal and its neighbors should be back to back (3-3)



Algorithm (IntelLVSlidDiagStressFy){

 TestRegisterSetup {

  // Address A for keeping track of lead diagnonal  
  OperationSetSelect : SyncCustom;
  AddressGenerator {
    AddressRegister (A) {
    ZCarryIn  : None; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }

  // Address B for writing to neighbors and reading base and neighbors  
  AddressRegister (B) {
    ZCarryIn  : None; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
  }
   DataGenerator {
    LoadWriteData  : 32'b00000000000000000000000000000000;
    LoadExpectData : 32'b00000000000000000000000000000000;
   }
 }


 MicroProgram {

// Write data background to all rows,columns and blocks 

  Instruction (WRITE_BACKGROUND_COLUMNS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Y1_EndCount : On;
   }
  }

  Instruction (WRITE_BACKGROUND_REPEAT_ROWS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   BranchToInstruction : WRITE_BACKGROUND_COLUMNS;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (WRITE_BACKGROUND_REPEAT_BLOCKS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   BranchToInstruction : WRITE_BACKGROUND_COLUMNS;
   NextConditions {
    Z_EndCount  : On;
   }
  }

  // Copy lead base diagonal from A to B 
  // <afariza> Remove to keep it 16 instructions
  //Instruction (BASE_DIAG_1) {
  // OperationSelect  : NoOperation;
  // AddressSelectCmd : Select_A_Copy_to_B;
  // NextConditions {
  // }
  //}

 // This write invert operation needs to be B-2-B
  Instruction (WRITE_INVERT_DIAG) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   WriteDataCmd : InverseDataReg;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   NextConditions {
    X1_EndCount : On;
   }
  }

  //<afariza: added 2/12/15 for Row%Col>0)
  Instruction (DOUBLE_CHECK_BASE_DIAG) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   NextConditions {
   }
  } 

  // Reading base diagonal and its neighbors should be B-2-B.

  // READ BASE DIAG
  Instruction (READ_INVERT_DIAG) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   ExpectDataCmd : InverseDataReg;
   Y1AddressCmd  : Increment;     // (X,Y+1): Right
   NextConditions {
   }
  }

  // Read Neighbors:

  // (X,Y+1) : RIGHT
  Instruction (READ_NEIGHBOR_XYp1) {  
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Decrement;
   Y1AddressCmd : Decrement;  // (X-1,Y): TOP
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  // (X-1,Y) : TOP
  Instruction (READ_NEIGHBOR_Xm1Y) {  
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   Y1AddressCmd : Decrement; // (X,Y-1) : LEFT
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  // (X,Y-1) : LEFT 
  Instruction (READ_NEIGHBOR_XYm1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment; // (X+1,Y) : BOTTOM
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  // (X+1,Y) : BOTTOM 
  Instruction (READ_NEIGHBOR_Xp1Y) {  
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   X1AddressCmd  : Decrement;   // Back to base diagonal 
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  Instruction (WRITE_DATA_BASE_DIAG) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   WriteDataCmd : DataReg; 
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;  // Go to next base diagonal
   BranchToInstruction : READ_INVERT_DIAG;
   NextConditions {
    X1_EndCount : On;
   }
  }


  // Go to next base diag location
  Instruction (INC_BASE_DIAG_ADVANCE) {
   OperationSelect : NoOperation;
   //<afariza> added "copy_to_B" to avoid extra instruction
   AddressSelectCmd : Select_A_Copy_to_B;
   Y1AddressCmd : Increment; 
   BranchToInstruction : WRITE_INVERT_DIAG;
   NextConditions {
     Y1_EndCount : On;
   }
  }

// Get RegA and RegB aligned at (0,0) to start with next blocks

  Instruction (GOTO_NEXT_BANKADDRESS) {
   OperationSelect : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   ZAddressCmd : Increment;
   BranchToInstruction : WRITE_INVERT_DIAG;
   NextConditions {
    Z_EndCount : On;
    RepeatLoop (A) {

// ^(wI1)
// arrayDiags(diag(wD2), block(rM3), diag(wI4))
      BranchToInstruction : WRITE_BACKGROUND_COLUMNS;
      Repeat {
        WriteDataSequence  : Inverse;
        ExpectDataSequence :  Inverse;
      }
    }
   }
  }

  Instruction (CLEAR_ROWS) {
   OperationSelect : WriteData;
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


