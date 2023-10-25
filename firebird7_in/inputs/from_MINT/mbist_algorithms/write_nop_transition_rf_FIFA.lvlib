// The read transition algorithm is used as experiment for Failure Analysis 
// to space out Write from Read followed by Inverse Data Write/Read
// Intended to use ReadIgnore after Nop cycles, which would require 
// additional operation set.

// Short Notation: 
// ^(WrD, Nopx50, Rdignore, WrI, RdI) 
// Pattern Length: 54N
// Back-to-back Operations:  None 


Algorithm (IntelFIFAWriteNOPTransition_FIFA){

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
   X1AddressCmd      : Increment;
   ExpectDataCmd     : DataReg;
   WriteDataCmd      : InverseDataReg;
   BranchToInstruction : WRITE0;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}

