// MP MarchI1 
// This test should detect coupling within a multiport memory cell. 
// It uses a base cell and a target cell. Target and base addresses are on the same 
// column with the Target being one row less than the base. In the case of the row 0, 
// the Target will be at the maximum row address. The test is done on all columns.
// Address coupling in a cell is detected in the following manner. The base cell is 
// read simultaneously with the target cell being written. If the base cell address 
// couples to the target, the bitline values of the target port will be writing the 
// target cell. Thiswill cause write conditions to exist for the base cell. 
// The base cell is read in the next operation ensuring detection.
// There is one key element of the algorithm which is repeated multiple times with different 
// addressing, data, and ports. This element basically does:
// 1 Simultanous Write target data complement, Read of base expect data.
// 2 Read of base expect data.
// 3 Simultanous Write target data, Read of base expect data.
// 4 Read of base expect data. 

// Short Notation:
// T = Target address = Base with LSB flipped
// ^(wD:N1),
// ^(rD:wTI2,  rD:N3,  rD:wTD4,  rD:N5 ),
// v(rD:wTI6,  rD:N7,  rD:rTD8,  rD:N9 ),
// ^(rD:wTI10, rD:N11, rD:wTD12, rD:N13),
// v(rD:wTI14, rD:N15, rD:wTD16, rD:N17)
// Repeat with complement data.

//Pattern Length: 34N 

Algorithm (IntelLVMPMarchCI1){

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

  // ^(wD:N1),
  Instruction (WRITE_BASE) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd       : Increment;
   NextConditions {
      X1_EndCount    : On;
      Y1_EndCount    : On;
      Z_EndCount     : On;
   }
  }

  // ^(rD:wTI2,  rD:N3,  
  Instruction (READWRITEI_READ_0) {
    OperationSelect  : ReadRead_ShadowWrite;
    AddressSelectCmd : Select_A;
    WriteDataCmd     : InverseDataReg;
    NextConditions {
    } 
  }
  //                    rD:wTD4,  rD:N5 )
  Instruction (READWRITE_READ_0) {
   OperationSelect         : ReadRead_ShadowWrite;
   AddressSelectCmd        : Select_A;
   ExpectDataCmd           : DataReg;
   X1AddressCmd            : Increment;
   Y1AddressCmd            : Increment;
   ZAddressCmd             : Increment;
   BranchToInstruction     : READWRITEI_READ_0;
   InhibitLastAddressCount : On; 
   NextConditions {
      X1_EndCount    : On;
      Y1_EndCount    : On;
      Z_EndCount     : On;
      RepeatLoop (a) {
         BranchToInstruction : READWRITEI_READ_0;

         // v(rD:wTI6,  rD:N7,  rD:rTD8,  rD:N9 ),
         Repeat {
            AddressSequence         : Inverse;
            InhibitLastAddressCount : On; 
         }
      }
    } 
  }

  Instruction (M0_DUMMY) {
   OperationSelect         : NoOperation;
   AddressSelectCmd        : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd            : LoadMin;
   Y1AddressCmd            : LoadMin;
   ZAddressCmd             : LoadMin;
   NextConditions {
   }
  }

  // ^(wI:N18),
  Instruction (WRITEI_BASE) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : InverseDataReg;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd       : Increment;
   NextConditions {
      X1_EndCount    : On;
      Y1_EndCount    : On;
      Z_EndCount     : On;
   }
  }

  // ^(rI:wD19,  rI:N20,  
  Instruction (READIWRITE_READI_1) {
    OperationSelect  : ReadRead_ShadowWrite;
    AddressSelectCmd : Select_A;
    WriteDataCmd     : DataReg;
    ExpectDataCmd    : InverseDataReg;
    NextConditions {
    } 
  }
  //                    rI:wTI21,  rI:N22 )
  Instruction (READIWRITEI_READI_1) {
   OperationSelect         : ReadRead_ShadowWrite;
   AddressSelectCmd        : Select_A;
   ExpectDataCmd           : InverseDataReg;
   WriteDataCmd            : InverseDataReg;
   X1AddressCmd            : Increment;
   Y1AddressCmd            : Increment;
   ZAddressCmd             : Increment;
   BranchToInstruction     : READIWRITE_READI_1;
   InhibitLastAddressCount : On; 
   NextConditions {
      X1_EndCount    : On;
      Y1_EndCount    : On;
      Z_EndCount    : On;
      RepeatLoop (b) {
         BranchToInstruction : READIWRITE_READI_1;

         // v(rI:wTD23,  rI:N24,  rI:rTI25,  rI:N26 ),
         Repeat {
            AddressSequence         : Inverse;
            InhibitLastAddressCount : On; 
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
   ZAddressCmd             : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd       : Increment;
   WriteDataCmd      : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount  : On;
   }
  }

 }
}
