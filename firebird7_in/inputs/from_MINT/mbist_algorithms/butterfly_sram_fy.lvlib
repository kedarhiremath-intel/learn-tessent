// Butterfly (BUTTERFLY)
// Butterfly action reads the neighboring cells with distance of 1 from a base cell. 
// Cells with a distance of 1 are defined as: (x-1,y), (x,y+1), (x+1,y), (x,y-1) with respect to the base cell. 
// The order the neighbor cells are accessed is not important to this test.
// Short Notation: neighbors[(x-1:y), (x:y+1), (x+1:y), (x:y-1)];
// ^(wD1) 
// ^(wI2, neighbors(rD3), rI4, wD5)
// ^(wI1) 
// ^(wD2, neighbors(rI3), rD4, wI5)
// Pattern Length: 16N
// Back-to-back Operations: 2-3, 3-3, 3-4

Algorithm (IntelLVButterflyFy){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   // Address A for tracking base cells
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    X1CarryIn : Y1CarryOut;
    Y1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }

   // Address B for tracking neighbor cells
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

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteData;
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

//^(wI2, neighbors(rD3), rI4, wD5)

  // Ensure B_addr pointer and A_addr pointer are at the same location
  Instruction (NOP_0) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   NextConditions {
   }
  }

  // Prepare B_addr for (x,y+1)
  Instruction (NOP_1) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   NextConditions {
   }
  }

  // ^(wI2,
  Instruction (M1_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  // neighbors[(x-1:y), (x:y+1), (x+1:y), (x:y-1)];
  // Access order is not important here

  // (x,y+1): RIGHT
  Instruction (M1_NEIGHBOR_XYp1) {   
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x-1,y) : TOP
  Instruction (M1_NEIGHBOR_Xm1Y) {   
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x,y-1): LEFT
  Instruction (M1_NEIGHBOR_XYm1) {  
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x+1,y): DOWN
  Instruction (M1_NEIGHBOR_Xp1Y) {   
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_B;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

  // rI4, wD5)

  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd : DataReg;
   BranchToInstruction      : NOP_0;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 
    RepeatLoop (a) { 

    // ^(wI1) ^(wD2, neighbors(rI3), rD4, wI5)
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
   OperationSelect : WriteData;
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
