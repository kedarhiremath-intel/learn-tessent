// ^(wD1)
// (>cW1) // compare walking 1
// ^(I3)
// (>cW0) // compare walking 0

Algorithm (IntelLVCAMWOZ){

 TestRegisterSetup {

 OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn        : None;
    NumberX0Bits     : 0;
   }
  }
  DataGenerator {
   LoadWriteData     : 4'b0000;
   LoadExpectData     : 4'b0000;
  }

 // Counter for # rotation of shift register
  LoadCounterA_EndCount: 71;
 }

 TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)
Instruction (M0_W0) {
   OperationSelect         : WriteCAMData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   WriteDataCmd            : Zero;
   NextConditions {
    X1_EndCount            : On;
   }
  }

// >cW1
Instruction (CAM_COMPARE_WALKING) {
   OperationSelect         : CamCompareWalking;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : DataReg;
   CounterACmd             : Increment;
   NextConditions {
     CounterAEndCount  : On;
  }
 }

// ^(wI)
Instruction (M0_W1) {
   OperationSelect         : WriteCAMData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   WriteDataCmd            : One;
   NextConditions {
    X1_EndCount            : On;
   }
 }

// >cW0
Instruction (CAM_COMPARE_WALKING1) {
   OperationSelect         : CamCompareWalking;
   WriteDataCmd            : InverseDataReg;
   ExpectDataCmd           : DataReg;
   CounterACmd             : Increment;
   NextConditions {
      CounterAEndCount  : On;
   }
  }
/*
Instruction (M1_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
  }
*/
Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : Zero;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }   
}
