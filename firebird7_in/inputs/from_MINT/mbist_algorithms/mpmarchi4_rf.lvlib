// MP MarchI4 
// Test concurrent port interactions in 1r1w port arrays.
// The key is to write to a different target address while reading the base at the
// same clock cycle. It then also reads the target address while writing the
// base. Base address = target Address with LSB bit flipped). 

// Short Notation:
// B = Base address
// T = Target address = Base with LSB flipped

// ^(wD:N1,  rD:wTD2,  wI:rTD3,  rI:N4) )
// ^(wI:N5,  rI:wTI6,  wD:rTI7,  rD:N8) )
// v(wD:N9,  rD:wTD10, wI,rTD11, rI:N12 )
// v(wI:N13, rI:wTI14, wD:rTI15, rD:N16 )
//Pattern Length: 16N

Algorithm (IntelLVMPMarchCI4){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    Y1CarryIn : X1CarryOut;
    ZCarryIn : Y1CarryOut;
    NumberX0Bits : 0;
    NumberY0Bits : 0;
   }
  }
  DataGenerator { 
   LoadWriteData  : 4'b0000; 
   LoadExpectData : 4'b0000; 
  }
 }

//TargetMemory: RowOnly;

 MicroProgram {

  Instruction (WRITE_BASE) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   NextConditions {
   }
  }

  Instruction (CONCURRENT_OP) {
    OperationSelect  : ReadWrite_ShadowWriteRead;
    AddressSelectCmd : Select_A;
    WriteDataCmd     : DataReg;
    NextConditions {
    } 
  }

  Instruction (READ_BASE) {
   OperationSelect         : ReadTwo;
   AddressSelectCmd        : Select_A;
   ExpectDataCmd           : InverseDataReg;
   X1AddressCmd            : Increment;
   Y1AddressCmd            : Increment;
   ZAddressCmd            : Increment;
   BranchToInstruction     : WRITE_BASE;
   NextConditions {
      X1_EndCount    : On;
      Y1_EndCount    : On;
      Z_EndCount     : On;
      RepeatLoop (a) {
         BranchToInstruction : WRITE_BASE;
         Repeat {
            WriteDataSequence       : Inverse;
            ExpectDataSequence      : Inverse;
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
   OperationSelect         : NoOperation;
   AddressSelectCmd        : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd            : LoadMin;
   Y1AddressCmd            : LoadMin;
   ZAddressCmd            : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd      : Increment;
   WriteDataCmd      : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

 }
}
