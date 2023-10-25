// ArrayRead
// This algorithm is pretty much a Scan-Read, Data is compared with 0's. 

Algorithm (IntelLVArrayRead){

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
   OperationSelect : ReadTwo;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}
