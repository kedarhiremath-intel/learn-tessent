// Moving Inversion Partial (MOVIPAR)
// Partial MOVI is an industry standard algorithm which is more complex than MarchC-. In the partial
// MOVI the array is initialized to a known data background and then is stepped through with a readwrite-
// read sequence. Both incrementing and decrementing addressing is used in the algorithm.
// Short Notation: 
// v(wD1)
// ^(rD2, wI3, rI4, NOP, NOP)   {NOP = 2clks}  
// ^(rI5, wD6, rD7, NOP, NOP)   {NOP = 2clks} 
// v(rD8,  wI9,  rI10, NOP, NOP)   {NOP = 2clks} 
// v(rI11, wD12, rD13, NOP, NOP)   {NOP = 2clks} 
// Pattern Length: 13N
// Back-to-back Operations: 3-4, 6-7, 9-10, 12-13
// Preferred: 4-2, 7-5, 10-8, 13-11


Algorithm (IntelLVPMOVIRasterFx_NOCDP){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
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

  Instruction (M0_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd      : LoadMax;
   Y1AddressCmd     : LoadMax; 
   X1AddressCmd     : LoadMax;
   NextConditions {
   }
  }

// v(wD1)
  Instruction (M0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Decrement;
   Y1AddressCmd : Decrement; 
   X1AddressCmd : Decrement;
   WriteDataCmd : DataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }

// ^(rD2, wI3, rI4, NOP, NOP) 
  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWriteNoCDP;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

//Comparing only once on Read operation for deterministic error count (RASTER)
  Instruction (M1_R1_R1) {
   OperationSelect  : ReadOne;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction(M1_DUM) {
   OperationSelect  : NoOperationPipelineDepth;
   AddressSelectCmd : Select_A;
   NextConditions {
   }
  }

  Instruction(M1_DUMM) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   BranchToInstruction : M1_R0_W1;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;


// ^(rI5, wD6, rD7, NOP, NOP) 
    RepeatLoop (a) {
     BranchToInstruction  : M1_R0_W1;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      InhibitLastAddressCount : On;
     }

// v(rD8,  wI9,  rI10, NOP, NOP) 
     Repeat {
      AddressSequence     : Inverse;
     }

// v(rI11, wD12, rD13, NOP, NOP) 
     Repeat {
      AddressSequence    : Inverse; 
      WriteDataSequence  : Inverse;
      ExpectDataSequence : Inverse; 
     }
    }
   }
  }

  Instruction (M1_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   ZAddressCmd      : LoadMin;
   Y1AddressCmd     : LoadMin;
   X1AddressCmd     : LoadMin;
   NextConditions {
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
