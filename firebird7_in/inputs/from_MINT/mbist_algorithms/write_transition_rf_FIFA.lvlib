// The write transition algorithm is used as experiment for Failure Analysis 
// to identify failures caused by write/write inverse transition. 

// Short Notation: 
// ^([WrD, WrI]x50, RdI) 
// Pattern Length: 101N
// Back-to-back Operations:  None 


Algorithm (IntelFIFAWriteTransition_FIFA){

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

  LoadCounterA_EndCount: 49;

 }

 TargetMemory: RowOnly;

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
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : WRITEHAMMER0;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}

