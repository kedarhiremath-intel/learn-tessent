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

Algorithm (IntelLVMarchCMinusFastx){

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
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }

 }

 MicroProgram {

// ^(wD1) 

  Instruction (M0_W0) {
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


// ^(rD2, wI3) 
  Instruction (M1_R0_W1) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd : InverseDataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;

// ^(rI4, wD5)
    RepeatLoop (a) {
     BranchToInstruction : M1_R0_W1;
      Repeat {
       WriteDataSequence : Inverse;
       ExpectDataSequence : Inverse;
       InhibitLastAddressCount : On;
      }

// v(rD6, wI7) 
      Repeat {
       AddressSequence : Inverse;
      }

// v(rI8, wD9) 
      Repeat {
       AddressSequence : Inverse;
       ExpectDataSequence : Inverse;
       WriteDataSequence : Inverse;
      }
    }
   }
  }

// v(rD10)

  Instruction (M5_R0) {
   OperationSelect : ReadFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Decrement;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   ExpectDataCmd : DataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 }

}

