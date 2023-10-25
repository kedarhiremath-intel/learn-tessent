// The read transition algorithm is used as experiment for Failure Analysis 
// to space out Write from Read followed by Inverse Data Write/Read
// Intended to use ReadIgnore after Nop cycles, which would require 
// additional operation set.

// Short Notation: 
// ^(WrD, Nopx50, Rdignore, WrI, RdI) 
// Pattern Length: 54N
// Back-to-back Operations:  None 


Algorithm (IntelFIFAWriteNOPTransitionFx_FIFA){

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

  Instruction (WRITE0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   NextConditions {
   }
  }

  Instruction (NOP) {
   OperationSelect   : NoOperation;
   AddressSelectCmd  : Select_A;
   CounterACmd       : Increment;
   BranchToInstruction: NOP;
   NextConditions {
      CounterAEndCount : On;
   }
  }

  Instruction (READ_MODIFY_WRITEREAD0) {
   OperationSelect   : ReadModifyWriteRead;
   AddressSelectCmd  : Select_A;
   ZAddressCmd       : Increment;
   Y1AddressCmd      : Increment; 
   X1AddressCmd      : Increment;
   ExpectDataCmd     : DataReg;
   WriteDataCmd      : InverseDataReg;
   BranchToInstruction : WRITE0;
   NextConditions {
      Z_EndCount  : On; 
      Y1_EndCount : On; 
      X1_EndCount : On;
   }
  }

 }
}

