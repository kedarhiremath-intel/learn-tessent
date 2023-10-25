// The write transition algorithm is used as experiment for Failure Analysis 
// to identify failures caused by write/write inverse transition. 

// Short Notation: 
// ^([WrD, WrI]x50, RdI) 
// Pattern Length: 101N
// Back-to-back Operations:  None 


Algorithm (IntelFIFAWriteTransitionFx_FIFA){

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

  LoadCounterA_EndCount: 49;

 }

 MicroProgram {

  Instruction (WRITEHAMMER0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   NextConditions {
   }
  }

  Instruction (WRITEHAMMER1) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : InverseDataReg;
   CounterACmd       : Increment;
   BranchToInstruction: WRITEHAMMER0;
   NextConditions {
      CounterAEndCount : On;
   }
  }

  Instruction (READ0) {
   OperationSelect      : ReadTwo;
   AddressSelectCmd     : Select_A;
   ZAddressCmd          : Increment;
   Y1AddressCmd         : Increment; 
   X1AddressCmd         : Increment;
   ExpectDataCmd        : InverseDataReg;
   BranchToInstruction : WRITEHAMMER0;
   NextConditions {
      Z_EndCount  : On; 
      Y1_EndCount : On; 
      X1_EndCount : On;
   }
  }

 }
}

