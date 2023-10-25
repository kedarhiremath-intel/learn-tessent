// ArrayDump
// This Array Dump algorithm is pretty much a Scan-Read, Data from the targetted address is compared with 0's. 

Algorithm (IntelLVArrayDAddress){

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
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   ExpectDataCmd : DataReg;
   // Recommended for GOID setup mode to increment address
   X1AddressCmd: Increment;
   NextConditions {
   }
  }

 }
}
