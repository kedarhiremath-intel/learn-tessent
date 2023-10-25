// ArrayDump
// This Array Dump algorithm is pretty much a Scan-Read, Data on each entry is compared with 0's. 
// This algorithm is used in conjunction with Stop-on-fail/Raster mode to get the data from each entry.

Algorithm (IntelLVArrayDRaster){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }

 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_R0) {
   OperationSelect : ReadOne;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
} 
