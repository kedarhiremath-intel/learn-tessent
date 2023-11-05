// Butterfly Write (BUTTERFLYW)
// The write butterfly algorithm is similar to the butterfly algorithm. 
// The difference is that the four neighbors are written instead of read.
// The order the neighbor cells are accessed is not important to this test.  
// Cells with a distance of 1 are defined as: (x-1,y), (x,y+1), (x+1,y), (x,y-1) with respect to the base cell. 
//
// Short Notation: neighbors[(x-1:y), (x:y+1), (x+1:y), (x:y-1)];
// ^(wD1) 
// ^(wI2, neighbors(wD3), rI4, wD5)
// ^(wI1) 
// ^(wD2, neighbors(wI3), rD4, wI5)
// Pattern Length: 16N
// Back-to-back Operations: 2-3, 3-3, 3-4

Algorithm (IntelLVButterflyWriteFastx){

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

//^(wI2, neighbors(wD3), rI4, wD5)

 
  // Prepare B_addr for (x,y+1)
  // ^(wI2,
   Instruction (M1_W1_W1) {
   OperationSelect  : NoOperationAddr1WriteAddr2;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }


  // neighbors[(x-1:y), (x:y+1), (x+1:y), (x:y-1)];
  // Access order is not important here

  // (x,y+1): RIGHT
  Instruction (M1_NEIGHBOR_XYp1) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Add_Reg_A_Equals_B : Invert_WriteData;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x-1,y) : TOP
  Instruction (M1_NEIGHBOR_Xm1Y) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x,y-1): LEFT
  Instruction (M1_NEIGHBOR_XYm1) {  
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   Add_Reg_A_Equals_B : Invert_WriteData;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x+1,y): DOWN
  Instruction (M1_NEIGHBOR_Xp1Y) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   WriteDataCmd    : DataReg;
   NextConditions {
   }
  }

  // rI4, wD5)

  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A_Copy_To_B;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd : DataReg;
   BranchToInstruction      : M1_W1_W1;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 
    RepeatLoop (a) { 

    // ^(wI1) ^(wD2, neighbors(wI3), rD4, wI5)
     BranchToInstruction      : M0_W0; 
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
      //InhibitLastAddressCount : On; 
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

