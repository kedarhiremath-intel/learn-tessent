//Purpose is to cause a Vmin shift.  
//Pattern was created based off of findings showing a sensitivity on some pattern combinations.  
//
//^{ for each bank 
//    ^[ For each dword 
//    PART 0
//          ^(wD) 
//          ^(wI, 8 cycle pause, rI, wD) 
//          ^(wI) 
//          ^(wD, 8 cycle pause, rD, wI)  
//          
//          (PAUSE(b)) 
//
//          (VCD) 
//    PART 1 ( This portion is the same as InitBLtstvmi ... NOT part of this lvlib!! )
//          ^(wD, wI, 8 cycle pause, rI, wI) 
//          ^(wI, wD, 8 cycle pause, rD, wD) 
//
//          (VC) 
//       ]
// }
//
//B2B Required: None
//Two Patterns:  DATIN = 0x0000000 and 0xFFFFFFF

Algorithm (IntelLVGalcbltstvmi){

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
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }
  LoadCounterA_EndCount: 3;

 } 

 // TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)
  Instruction (WRITE0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd      : Increment;
   WriteDataCmd      : DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

// ^(wI, 8 cycle pause, rI, wD)
   // wI
  Instruction (WRITEINV) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   NextConditions {
   }
  }

   //8 cycle pause,
  Instruction (NOPS) {
   OperationSelect   : NoOperation;
   AddressSelectCmd  : Select_A;
   CounterACmd       : Increment;
   NextConditions {
	CounterAEndCount : On;
   }
  }

  //rI,wD
  Instruction (READINVWRITE0) {
   OperationSelect      : ReadModifyWrite;
   AddressSelectCmd     : Select_A;
   WriteDataCmd         : DataReg;
   ExpectDataCmd        : InverseDataReg;
   X1AddressCmd         : Increment;
   Y1AddressCmd         : Increment;
   ZAddressCmd         : Increment;
   BranchToInstruction  : WRITEINV;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
    // ^(wI) 
    // ^(wD, 8 cycle pause, rD, wI)  
    RepeatLoop (a) {
     BranchToInstruction  : WRITE0;
     Repeat {
      WriteDataSequence   : Inverse;
      ExpectDataSequence  : Inverse;
      InhibitLastAddressCount : On;
     }
    }
   }
  }
 }
}

