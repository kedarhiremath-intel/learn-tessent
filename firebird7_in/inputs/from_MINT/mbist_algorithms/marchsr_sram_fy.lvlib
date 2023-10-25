// MarchSR (MARCHSR)
// MarchSR was developed by fault simulation. Scoreboarding has shown the pattern to be able to detect
// unique failures.
// Short Notation: 
// v(wD1)
// ^(rD2, wI3, rI4, wD5)
// v(rD6, rD7)
// ^(wD1)
// v(rD2, wI3, rI4, wD5)
// ^(rD6, rD7)
// v(wI1)
// ^(rI2, wD3, rD4, wI5)
// v(rI6, rI7)
// ^(wI1)
// v(rI2, wD3, rD4, wI5)
// ^(rI6, rI7)
//
// Pattern Length: 28N
// Back-to-back Operations: 3-4, 5-2, 6-7-6 

Algorithm (IntelLVMarchSRFy){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    X1CarryIn : Y1CarryOut;
    Y1CarryIn : None;
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

// ^(rD2, wI3, rI4, wD5)

  Instruction (M1_R0_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1_R1_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd : DataReg;
   BranchToInstruction : M1_R0_W0;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }

// v(rD6, rD7)

  Instruction (M2_R2_R2) {
   OperationSelect  : ReadTwo;
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

   RepeatLoop (a) {
    BranchToInstruction : M0_W0;
    
// ^(wD1)
// v(rD2, wI3, rI4, wD5)
// ^(rD6, rD7)

     Repeat {
      AddressSequence : Inverse;
      InhibitLastAddressCount : On;
     }

// v(wI1)
// ^(rI2, wD3, rD4, wI5)
// v(rI6, rI7)

     Repeat {
      WriteDataSequence  : Inverse;
      ExpectDataSequence : Inverse;
      InhibitLastAddressCount : On;
     }

// ^(wI1)
// v(rI2, wD3, rD4, wI5)
// ^(rI6, rI7)

     Repeat {
      WriteDataSequence  : Inverse;
      ExpectDataSequence : Inverse;
      AddressSequence : Inverse;
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
