// The read recovery algorithm is half of loadread algorithmic with
// enphasis on reads x100 for read margin Failure Analysis

// The load-read algorithm is a basic algorithm intended to detect the simplest array failures. 
// The pattern is used for data collection purposes, distinguishing simple failures from 
// “interesting failures”. It is intended to be used in the first full array test prior to 
// enteringa force flow section of a test tape when used as partof a scoreboarding exercise

// Short Notation: 
//^(wD, 100(rD))  
// Pattern Length: 101N
// Back-to-back Operations:  None 


Algorithm (IntelFIFAReadRecovery_FIFA){

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
  LoadDelayCounter_EndCount:  255; 

 }

 TargetMemory: RowOnly;

 MicroProgram {

   Instruction (NOOPS) {
      OperationSelect : NoOperation;
      DelayCounterCmd : Increment;
      BranchToInstruction: NOOPS;
      NextConditions {
       DelayCounterEndCount : On;
      }
  }


// ^(wD1, 100(rD))
  Instruction (WRITE0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   NextConditions {
   }
  }

  Instruction (READHAMMER0) {
   OperationSelect      : ReadTwo;
   AddressSelectCmd     : Select_A;
   ExpectDataCmd        : DataReg;
   CounterACmd          : Increment;
   BranchToInstruction  : READHAMMER0;
   NextConditions {
      CounterAEndCount  : On;
   }
  }

  Instruction (LOOP) {
   OperationSelect      : NoOperation;
   AddressSelectCmd     : Select_A;
   X1AddressCmd         : Increment;
   BranchToInstruction  : WRITE0;

   NextConditions {
      X1_EndCount       : On;
   }
  }
 }
}

