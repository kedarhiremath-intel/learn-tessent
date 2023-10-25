//Purpose is to cause a Vmin shift.  
// Pattern was created based off of findings showing a sensitivity on some pattern combinations.
// Very similar to INITBFLYI except the write back is to DATA instead of inverse. 
//
//^{ for each bank 
//    ^[ For each dword 
//
//       ^(wI) 
//       
//       (PAUSE(b)) (VCD) 
//
//       ^(wI) 
//       ^(wD, 8 cycle pause, rD, wD) 
//
//       (VC) 
//    ] 
// }
//
//B2B Required --> None
//Two Patterns:  DATIN = 0x0000000 and 0xFFFFFFF

Algorithm (IntelLVInitbflyI){

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

// ^(wI1)
  Instruction (WRITEINV0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd      : Increment;
   WriteDataCmd      : InverseDataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

// ^(wD, 8 cycle pause, rD, wI)
  Instruction (WRITE0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd     : DataReg;
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

  //rD,wD
  Instruction (READWRITE0) {
   OperationSelect      : ReadModifyWrite;
   AddressSelectCmd     : Select_A;
   ExpectDataCmd        : DataReg;
   WriteDataCmd         : DataReg;
   X1AddressCmd         : Increment;
   Y1AddressCmd         : Increment;
   ZAddressCmd         : Increment;
   BranchToInstruction  : WRITE0;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }
 }
}

