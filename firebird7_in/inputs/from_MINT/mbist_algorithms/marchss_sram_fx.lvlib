// MarchSS was developed by fault simulation. The fault model used for the pattern development was
// the Single Port, Simple Static (SS) Fault. Scoreboarding has shown the pattern to be able to detect
// unique failures.
// Short Notation: 
// ^(wD1)
// ^(rD2, rD3, wD4, rD5, wI6,)
// ^(rI2, rI3, wI4, rI5, wD6)
// v(rD2, rD3, wD4, rD5, wI6)
// v(rI2, rI3, wI4, rI5, wD6)
// ^(rD7)
// Pattern Length: 22N
// Back-to-back 2-3, 4-5, 6-2 
// Operations:


Algorithm (IntelLVMarchSSFx){

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

//^(wD1)
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

// ^(rD2, rD3, wD4, rD5, wI6,)

// rD2, rD3
  Instruction (M1_R0_R0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   NextConditions {
   }
  }

//  wD4
  Instruction (M1_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }


// rD5, wI6
  Instruction (M1_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd  : InverseDataReg;
   BranchToInstruction : M1_R0_R0;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 

// ^(rI2, rI3, wI4, rI5, wD6)
    RepeatLoop (a) { 
     BranchToInstruction      : M1_R0_R0; 
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
      InhibitLastAddressCount : On; 
     }

// v(rD2, rD3, wD4, rD5, wI6)
     Repeat { 
      AddressSequence : Inverse; 
     } 

// v(rI2, rI3, wI4, rI5, wD6)
     Repeat { 
      AddressSequence    : Inverse; 
      WriteDataSequence  : Inverse; 
      ExpectDataSequence : Inverse; 
      InhibitLastAddressCount : On;  //kjoshi
     } 
    } 
   } 
  }

// kjoshi: Instruction (M0_DUMMY) {           
// kjoshi:  OperationSelect  : NoOperation;
// kjoshi:  AddressSelectCmd : Select_A;
// kjoshi:  ZAddressCmd   : LoadMin;
// kjoshi:  Y1AddressCmd  : LoadMin;
// kjoshi:  X1AddressCmd  : LoadMin;
// kjoshi:  NextConditions {
// kjoshi:  }
// kjoshi:  }

// ^(rD7)
  Instruction (M2_R0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On; 
    Y1_EndCount : On;
    X1_EndCount : On;
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
