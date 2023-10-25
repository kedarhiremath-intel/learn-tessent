// Segment Select
// THis algorithm is a Scan like algorithm
// First Initializes the Segments 0,1,2,3 with unique data with Segment Select ON
// Then  tries to Re-Initialize(with INVERT Data) the segmnents 0,1,2,3 with Segment Select OFF
// These two steps ensures that the Segment Selects are not Stuck-at-0 or 1
// Then Read Unique Data from each segment

Algorithm (IntelLVSegSel){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b1001;
   LoadExpectData : 4'b1001;
  }

 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0_SEL_ALL_SEG_ON) {
   OperationSelect : WriteAllSegOn;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Hold;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  Instruction (M0_W0_SEL_ALL_SEG_OFF) {
   DisableMemoriesWithoutGroupWriteEnable: On;
   OperationSelect : WriteAllSegOff;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   BranchToInstruction : M0_W0_SEL_ALL_SEG_ON;
   NextConditions { 
    X1_EndCount : On; 
   } 
  } 

  Instruction (M0_R0) {
   OperationSelect : ReadSeg;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}
