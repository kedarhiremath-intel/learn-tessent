// The write recovery algorithm is half of loadread algorithmic with
// enphasis on writes x100 for write margin Failure Analysis

// The load-read algorithm is a basic algorithm intended to detect the simplest array failures. 
// The pattern is used for data collection purposes, distinguishing simple failures from 
// “interesting failures”. It is intended to be used in the first full array test prior to 
// enteringa force flow section of a test tape when used as partof a scoreboarding exercise

// Short Notation: 
//^(100(wD), rD)  
// Pattern Length: 101N
// Back-to-back Operations:  None 


Algorithm (IntelFIFAWriteRecovery_FIFA){

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

// ^(100 (wD1), rD)
  Instruction (WRITEHAMMER0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   CounterACmd       : Increment;
   NextConditions {
      CounterAEndCount : On;
   }
  }

  Instruction (READ0) {
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   BranchToInstruction : WRITEHAMMER0;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}

