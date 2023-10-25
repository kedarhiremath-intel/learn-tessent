// ArrayDump
// This Array Dump algorithm is pretty much a Scan-Read, Data on each entry is compared with 0's. 
// This algorithm is used in conjunction with Stop-on-fail/Raster mode to get the data from the targetted address (selected at runtime) for each entry.

Algorithm (IntelLVArrayDAddressRaster){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
    LoadRowAddress: h0;// actual row address loaded at run time
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
   ExpectDataCmd : DataReg;
   // Recommended for GOID setup mode to increment address
   X1AddressCmd : Increment;
   NextConditions {
   }
  }

 }
} 
