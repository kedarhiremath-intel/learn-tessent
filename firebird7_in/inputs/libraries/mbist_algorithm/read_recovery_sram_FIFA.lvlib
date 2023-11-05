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


Algorithm (IntelFIFAReadRecoveryFx_FIFA){

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
   ZAddressCmd          : Increment;
   Y1AddressCmd         : Increment; 
   X1AddressCmd         : Increment;
   BranchToInstruction  : WRITE0;

   NextConditions {
      Z_EndCount  : On; 
      Y1_EndCount : On; 
      X1_EndCount : On;
   }
  }
 }
}

