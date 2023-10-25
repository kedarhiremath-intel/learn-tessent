// MatspDW 
// each_word(^(wD1) ^(rD2, wI3) v(rI4, wD5))
// For example, an 8 bit data word requires the following words
// and their complements, 00000000, 10101010, 11001100, and 11110000. Complements are
// accomplished in the algorithm.

Algorithm (IntelLVMatspDWTwo){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn     : None;
    NumberX0Bits  : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b1010;
   LoadExpectData : 4'b1010;
  }

 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd     : Increment;
   WriteDataCmd     : DataReg;
   NextConditions {
    X1_EndCount     : On;
   }
  }

  Instruction (M1_R0_W1) {
   OperationSelect         : ReadModifyWrite;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   ExpectDataCmd           : DataReg;
   WriteDataCmd            : InverseDataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    X1_EndCount            : On;
    RepeatLoop (a) { 
     BranchToInstruction   : M1_R0_W1; 
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
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }
  
 }

}
