// ArrayDump
// This Array Dump algorithm is pretty much a Scan-Read, Data is compared with 0's. 
// This algorithm is used in conjunction with Stop-on-Fail or Raster feature to get the data from the targetted address (specified at runtime) in the array
// This algorithms strobes only one read during an operation. This is required for ROM signature dumping as multiple strobes during an operation cause MISR 
// signature accumulation

Algorithm (IntelLVArrayDAddressReadOneFx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
    LoadRowAddress: h0;// actual row address loaded at run time
    LoadColumnAddress: h0;// actual column address also
    LoadBankAddress: h0;// so is actual bank address
   }
  }

  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }

 }

 MicroProgram {

  Instruction (M0_R0) {
   OperationSelect : ReadOne;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : DataReg;
   // Recommended for GOID setup mode to increment address
   X1AddressCmd: Increment;
   Y1AddressCmd: Increment;
   ZAddressCmd  : Increment;
   NextConditions {
   }
  }

 }
}

