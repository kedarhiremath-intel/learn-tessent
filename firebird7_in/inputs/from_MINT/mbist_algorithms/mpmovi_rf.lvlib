// Moving Inversion Partial Dual Port (MPMOVIPAR)
// Implements a standard Partial moving inversion (pmovi) with two exceptions. 
// First, all reads are done on all ports of a cell simultaneously (only one port is active, though.  The other is a shadow read port. 
// Second, the test is repeated for each write port. 
// The goal of this test is to look at port to port interactions in consecutive memory transactions. All port combinations are used for the Write-Read sequence.
// Short Notation:

// ^(wD1) ^(rD:rD2, wI:N3, rI:rI4) ^(rI:rI5, wD:N6, rD:rD7) v(rD:rD8, wI:N9, rI:rI10) v(rI:rI11, wD:N12, rD:rD13)

// Repeat for all write ports.

// Pattern Length:  P * 13N

// Back-to-back Operations:

// If possible: 3-4, 6-7, 9-10, 12-13

// Preferred: 3-4, 4-2, 6-7, 7-5, 9-10, 10-8, 12-13, 13-11

// Defects Detected:

// Port-to-port interactions in consecutive memory transactions.

// Test Conditions:

// Data background of Row Stripes.
// Addressing Fast-X.

Algorithm (IntelLVMPPmovI){

 TestRegisterSetup {

 OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn        : Y1CarryOut;
    Y1CarryIn        : X1CarryOut;
    X1CarryIn        : None;
    NumberX0Bits     : 0;
    NumberY0Bits     : 0;
   }
  }
  DataGenerator {
   LoadWriteData     : 4'b0000; 
   LoadExpectData    : 4'b0000; 
  }
 }

 //TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   ZAddressCmd             : Increment;
   Y1AddressCmd            : Increment;
   WriteDataCmd            : DataReg;
   NextConditions {
    X1_EndCount            : On;
    Z_EndCount            : On;
    Y1_EndCount            : On;
   }
  }

  Instruction (M1_R0_W1) {
   OperationSelect         : ReadModifyWriteReadDP;
   AddressSelectCmd        : Select_A;
   ExpectDataCmd           : DataReg;
   WriteDataCmd            : InverseDataReg;
   X1AddressCmd           : Increment; 
   ZAddressCmd           : Increment; 
   Y1AddressCmd            : Increment;
   NextConditions {
    X1_EndCount           : On;
    Z_EndCount           : On;
    Y1_EndCount           : On;
    RepeatLoop (a) {
     BranchToInstruction  : M1_R0_W1;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      InhibitLastAddressCount : On;
     }
     Repeat {
      AddressSequence     : Inverse;
     }
     Repeat {
      AddressSequence     : Inverse; 
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse; 
     }
    }
   }
  }

  Instruction (M1_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd     : LoadMin;
   ZAddressCmd     : LoadMin;
   Y1AddressCmd     : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
    Z_EndCount : On;
    Y1_EndCount : On;
   }
  }
 } 
}   
