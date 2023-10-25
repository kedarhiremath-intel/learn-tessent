// ^wD1
// ^cD2
// ^wI3
// ^cI4

Algorithm (IntelLVCAMUniqueMatchExt){

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
 }

 TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)
Instruction (CAM_WRITE) {
   OperationSelect         : WriteCAMData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   WriteDataCmd            : DataReg;
   NextConditions {
    X1_EndCount            : On;
   }
  }

// (^cD2)
Instruction (CAM_COMPARE) {
   OperationSelect         : CamCompareUniqueINV;
   AddressSelectCmd        : Select_A;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : DataReg;
   X1AddressCmd            : Increment;
   NextConditions {
     X1_EndCount  : On;
  }
 }

// ^(wI3)
Instruction (CAM_WRITE_INVERSE) {
   OperationSelect         : WriteCAMData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   WriteDataCmd            : InverseDataReg;
   NextConditions {
    X1_EndCount            : On;
   }
 }
// ^(cI4)

Instruction (CAM_COMPARE_UNIQUEINVERSE) {
   OperationSelect         : CamCompareUniqueINV;
   WriteDataCmd            : InverseDataReg;
   ExpectDataCmd           : DataReg;
   X1AddressCmd            : Increment;
   NextConditions {
    X1_EndCount            : On;
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
