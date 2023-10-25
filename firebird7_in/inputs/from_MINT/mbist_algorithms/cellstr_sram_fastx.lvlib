// Cell Stress (CELLSTR)
// The cell stress algorithm forces the bit lines of a base cell to their lowest level and then performs
// various operations around that base cell intended to detect defects that degrade cell stability.
// 1 The algorithm presents two precursor writes before reading each cell in the array:
// 2 writing the same column to the OPPOSITE state driven by the base cell read, and
// 3 writing the adjacent column to both states immediately prior to the base cell read.
// The pattern realizes that bitline coupling from the adjacent bitlines can affect a read. By adding the
// first precursor write of opposite polarity on the same column of the base cell, a worst case read is
// set up. Access order for the neighbor cells is critical for the correct implementation of this test.
// Short Notation: 
// neighbors1[(x:y+1), (x-1:y), (x-1:y), (x:y+1)];
// neighbors2[(x+1:y), (x: y-1)];
// ^(wD1)
// ^(wI2, neighbors1(wD3), rI4, neighbors2(wD5), rI6, rI7, wD8)
// ^(wI1)
// ^(wD2, neighbors1(wI3), rD4, neighbors2(wD5), rD6, rD7, wI8)
// ^(wD9)
// ^(wD10, neighbors1(wD11), rD12, neighbors2(wD13), rD14, rD15, wD16)
// ^(wI9)
// ^(wI10, neighbors1(wI11), rI12, neighbors2(wI13), rI14, rI15, wI16)
// Pattern Length: 48N
// Back-to-back Operations:  3-4, 5-6, 11-12, 13-14 

Algorithm (IntelLVCellStrFastx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   // Address A for tracking base cells
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }
   
   // Address B for tracking neighbor cells
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
 }

 MicroProgram {

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteFastRow;
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


// ^(wI2, neighbors1(wD3), rI4, neighbors2(wD5), rI6, rI7, wD8)
 
 // move B to (x,y+1) RIGHT
 // ^(wI2,
  Instruction (M1_W1_W1) {
   OperationSelect  : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

// neighbors1[(x:y+1), (x-1:y), (x-1:y), (x:y+1)];

  // wD3 (x,y+1): RIGHT 
  Instruction (M1_NEIGHBOR1_XYp1) {  
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // wD3 (x-1:y) (x-1:y) : TOP
  Instruction (M1_NEIGHBOR1_Xm1Y) { 
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // wD3 (x,y+1): RIGHT
  // rI4
  // move B to (x+1, y) DOWN
  Instruction (M1_NEIGHBOR1_XYp1_1) {   
   OperationSelect  : WriteAddr1ReadAddr2Inv;
   AddressSelectCmd : Select_B;
   WriteDataCmd     : DataReg;
   ExpectDataCmd    : DataReg;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Increment;
   NextConditions {
   }
  }

// neighbors2[(x+1:y), (x: y-1)]

  // wD5 (x+1,y): DOWN
  Instruction (M1_NEIGHBOR2_Xp1Y) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // wD5 (x,y-1): LEFT
  // rI6
  Instruction (M1_NEIGHBOR2_XYm1) {  
   OperationSelect  : WriteAddr1ReadAddr2Inv;
   AddressSelectCmd : Select_B;
   WriteDataCmd     : DataReg;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  // rI7, wD8
  Instruction (M1_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A_Copy_to_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : M1_W1_W1;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 

    RepeatLoop (a) { 

    // ^(wI1)
    // ^(wD2, neighbors1(wI3), rD4, neighbors2(wD5), rD6, rD7, wI8)
     BranchToInstruction      : M0_W0; 
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
     } 
    } 
   } 
  }

// ---------------
// ^(wD9)

  Instruction (M0B_W0) {
   OperationSelect  : WriteFastRow;
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


// ^(wD10, neighbors1(wD11), rD12, neighbors2(wD13), rD14, rD15, wD16)

  // ^(wD10,
  // Move B to (x,y+1): RIGHT
  Instruction (M1B_W1_W1) {
   OperationSelect  : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }
  
// neighbors1(wD11)
// neighbors1[(x:y+1), (x-1:y), (x-1:y), (x:y+1)];

  // wD11 (x,y+1): RIGHT 
  Instruction (M1B_NEIGHBOR1_XYp1) {  
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // wD11 (x-1:y),(x-1:y) : TOP
  Instruction (M1B_NEIGHBOR1_Xm1Y) { 
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // wD11 (x,y+1): RIGHT 
  // rD12 (read base)
  // Move B to (x+1,y) : DOWN
  Instruction (M1B_NEIGHBOR1_XYp1_1) {   
   OperationSelect  : WriteAddr1ReadAddr2;
   AddressSelectCmd : Select_B;
   X1AddressCmd     : Increment;
   Y1AddressCmd     : Decrement;
   WriteDataCmd     : DataReg;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

// neighbors2(wD13)
// neighbors2[(x+1:y), (x: y-1)]

  // wD13 (x+1,y): DOWN
  Instruction (M1B_NEIGHBOR2_Xp1Y) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // wD13 (x,y-1): LEFT
  // rD14
  Instruction (M1B_NEIGHBOR2_XYm1) {  
   OperationSelect  : WriteAddr1ReadAddr2;
   AddressSelectCmd : Select_B;
   WriteDataCmd     : DataReg;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  // rD15, wD16
  Instruction (M1B_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A_Copy_to_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   ExpectDataCmd : DataReg;
   BranchToInstruction : M1B_W1_W1;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 

    RepeatLoop (b) { 

    // ^(wI9)
    // ^(wI10, neighbors1(wI11), rI12, neighbors2(wI13), rI14, rI15, wI16)
     BranchToInstruction      : M0B_W0; 
    // ^(wI10, neighbors1(wI11), rI12, neighbors2(wI13), rI14, rI15, wI16)
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
     } 
    } 
   } 
  }

  Instruction (CLEAR_ARRAYS) {
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

