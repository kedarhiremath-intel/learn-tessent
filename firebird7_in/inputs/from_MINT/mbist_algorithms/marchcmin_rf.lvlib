// March C- (MARCHC)
// The MarchC- algorithm initializes the array to a known data background and steps repeatedly
// through the array in both incrementing and decrementing addresses with a read-write sequence.
// This algorithm is designed to exercise the logic of the address decoders.
// Short Notation:
// ^(wD1) 
// ^(rD2, wI3) 
// ^(rI4, wD5) 
// v(rD6, wI7) 
// v(rI8, wD9)
// v(rD10)
// Pattern Length: 10N
// Back-to-back Operations: 3-2, 5-4, 7-6, 9-8
// Preferred : 2-3-2, 4-5-4, 6-7-6, 8-9-8

Algorithm (IntelLVMarchCMinus){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator { 
   LoadWriteData  : 4'b0000; 
   LoadExpectData : 4'b0000; 
  }

 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (M1_R0_W1) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd : InverseDataReg;
   NextConditions {
    X1_EndCount : On;
    RepeatLoop (a) {
     BranchToInstruction : M1_R0_W1;
      Repeat {
       WriteDataSequence : Inverse;
       ExpectDataSequence : Inverse;
       InhibitLastAddressCount : On;
      }
      Repeat {
       AddressSequence : Inverse;
      }
      Repeat {
       AddressSequence : Inverse;
       ExpectDataSequence : Inverse;
       WriteDataSequence : Inverse;
      }
    }
   }
  }

  Instruction (M5_R0) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Decrement;
   ExpectDataCmd : DataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    X1_EndCount : On;
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
