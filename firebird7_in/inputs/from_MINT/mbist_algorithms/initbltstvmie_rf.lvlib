//Purpose is to cause a Vmin shift.  
//Pattern was created based on findings showing a sensitivity on some pattern combinations.  
//Very similar to INITBLTSTVMI with the opposite write being different background.
//
//^{ for each bank 
//    ^[ For each dword 
//       ^(wI) 
//
//       (PAUSE(b)) 
//       (VCD) 
//
//       ^(wD, wI, 8 cycle pause, rI, wD) 
//       ^(wI, wD, 8 cycle pause, rD, wI) 
//
//       (VC) 
//    ] 
// }
//
//B2B Required --> None
//Two Patterns:  DATIN = 0x0000000 and 0xFFFFFFF

Algorithm (IntelLVInitbltstvmie){

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
  LoadCounterA_EndCount: 3;

 } 

// TargetMemory: RowOnly;

 MicroProgram {

// ^(wD, wI, 8 cycle pause, rI, wD)
  // wD
  Instruction (WRITE0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }
  // wI
  Instruction (WRITEINV0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
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
  Instruction (READINVWRITE) {
   OperationSelect      : ReadModifyWrite;
   AddressSelectCmd     : Select_A;
   WriteDataCmd         : DataReg;
   ExpectDataCmd        : InverseDataReg;
   X1AddressCmd         : Increment;
   Y1AddressCmd         : Increment;
   ZAddressCmd         : Increment;
   BranchToInstruction  : WRITE0;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
    // ^(wI, wD, 8 cycle pause, rD, wI)
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

