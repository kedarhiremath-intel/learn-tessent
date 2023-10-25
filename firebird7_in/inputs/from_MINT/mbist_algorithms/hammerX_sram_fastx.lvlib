// Hammer X (HAMMERX)
// Although the name is similar, this is much simpler than the hammer algorithm. First, all cells in the
// array are hammered. Second, cells are hammered X times instead of 1000. Finally, only a
// read of the hammered cell is performed after the repeated writes instead of all cells in a the
// hammered cell column and row. The increment and decrement should occur in a fast X direction
// to stress a single column repeatedly.
//
// Short Notation: 
// ^(wD1)
// ^(rD2, X(wI3), rI4)
// ^(rI5, X(wD6), rD7)
// v(rD8, X(wI9), rI10)
// v(rI11, X(wD12), rD13)
// Pattern Length: 9N + 4XN
// Back-to-back
// Operations: 3-3, 3-4, 6-6, 6-7, 9-9, 9-10, 12-12, 12-13 

Algorithm (IntelLVHammerXFastx){
 
 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block     
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }
//   LoadRowAddressMin: 8'b00000100;
//   LoadColumnAddressMin: 2'b10;
//   LoadBankAddressMin: 1'b1;	
//   LoadRowAddressMax: 8'b00001000;
//   LoadColumnAddressMax: 2'b10;
//   LoadBankAddressMax: 1'b1;	
  }
 
  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }
  LoadCounterA_EndCount: 20;
 }


 MicroProgram {

// ^(wD1)

  Instruction (M0_W0) {
   OperationSelect  : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On; 
   }
  }

//^(rD2, 10(wI3), rI4)

  Instruction (M1_R0_R0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1A_W1_W1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : InverseDataReg;
   CounterACmd: Increment;
   NextConditions {
	CounterAEndCount : On;
   }
  }

  Instruction (M1_R1) {
   OperationSelect  : WriteRead;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   ExpectDataCmd : InverseDataReg;
   BranchToInstruction : M1_R0_R0;
   NextConditions { 
    Z_EndCount  : On; 
    Y1_EndCount : On; 
    X1_EndCount : On; 

    RepeatLoop (a) { 
     BranchToInstruction  : M1_R0_R0; 
    
// ^(rI5, 10(wD6), rD7)
     Repeat { 
      WriteDataSequence       : Inverse; 
      ExpectDataSequence      : Inverse; 
      InhibitLastAddressCount : On; 
     } 

// v(rD8, 10(wI9), rI10)
     Repeat { 
      AddressSequence : Inverse; 
     } 

// v(rI11, 10(wD12), rD13)
     Repeat { 
      AddressSequence    : Inverse; 
      WriteDataSequence  : Inverse; 
      ExpectDataSequence : Inverse; 
     } 
    } 
   } 
  }

  Instruction (M0_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   ZAddressCmd      : LoadMin;
   Y1AddressCmd     : LoadMin;
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 }

}

