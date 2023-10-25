// MatspDW 
// In short notation, each_word () means repeat the data words sufficient to cover all I/O pairings
// For example, an 8 bit data word requires the following words
// and their complements, 00000000, 10101010, 11001100, and 11110000. Complements are
// accomplished in the algorithm.
// Short Notation:
// ^(wD1) 
// ^(rD2, wI3) 
// v(rI4, wD5)
// Back-2-Back: 3-2, 5-4
// Preferred: 2-3-2, 4-5-4

Algorithm (IntelLVMatspDWSixFastx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }
  }

  DataGenerator {
   LoadWriteData  : 32'b00000000000000001111111111111111;
   LoadExpectData : 32'b00000000000000001111111111111111;
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

// ^(rD2, wI3) 
  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd  : InverseDataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
    RepeatLoop (a) { 
     BranchToInstruction   : M1_R0_W1; 

// v(rI4, wD5)
      Repeat { 
       AddressSequence     : Inverse; 
       WriteDataSequence   : Inverse; 
       ExpectDataSequence  : Inverse; 
      } 
    }
   }
  }

  Instruction (M0_DUMMY) {
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

