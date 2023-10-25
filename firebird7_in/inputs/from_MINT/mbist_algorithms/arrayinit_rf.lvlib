// ArrayInit
// THis algorithm is a Scan-Write like algorithm
// Initializes every entry to 0's

Algorithm (IntelLVArrayInit){

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

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}
