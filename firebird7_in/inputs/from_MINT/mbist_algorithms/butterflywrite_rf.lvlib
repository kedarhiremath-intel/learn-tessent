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

Algorithm (IntelLVButterflyWrite){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   // Address A for tracking base cells plus (x+1) neighbor cell
   AddressRegister (A) {
     ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
     Y1CarryIn : X1CarryOut;
     X1CarryIn : None;
     NumberX0Bits : 0;
     NumberY0Bits : 0;
   }

   // Address B for tracking (x-1) neighbor cells
   AddressRegister (B) {
      ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
      Y1CarryIn : X1CarryOut;
      X1CarryIn : None;
      NumberX0Bits : 0;
      NumberY0Bits : 0;
   }
  }

  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }

 }

// TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   ZAddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

//^(wI2, neighbors(wD3), rI4, wD5)

  // Ensure B_addr pointer and A_addr pointer are at the same location
  Instruction (NOP_0) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A_Copy_to_B;
   NextConditions {
   }
  }

  // Prepare B_addr for (x-1) : TOP
  Instruction (NOP_1) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_B;
   X1AddressCmd : Decrement;
   NextConditions {
   }
  }

  // ^(wI2,
  // Also setup A_addr for (x+1) : DOWN
  Instruction (M1_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : InverseDataReg;
   X1AddressCmd : Increment;
   //Y1AddressCmd : Increment;
   //ZAddressCmd : Increment;
   NextConditions {
   }
  }

  // neighbors[(x-1),(x+1)];
  // Access order is not important here

  // (x-1): TOP 
  Instruction (M1_NEIGHBOR_Xm1) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_B;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  // (x+1): DOWN
  Instruction (M1_NEIGHBOR_Xp1) {   
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : DataReg;
   X1AddressCmd : Decrement;
   //Y1AddressCmd : Increment;
   //ZAddressCmd : Increment;
   NextConditions {
   }
  }

  // rI4, wD5)

  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   ZAddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd : DataReg;
   BranchToInstruction      : NOP_0;
   NextConditions { 
    X1_EndCount : On; 
    Y1_EndCount : On; 
    Z_EndCount : On; 
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
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   ZAddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On; 
    Z_EndCount : On; 
   }
  }

 }
}
