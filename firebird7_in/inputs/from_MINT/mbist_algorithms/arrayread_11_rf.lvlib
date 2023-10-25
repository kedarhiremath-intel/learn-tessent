// ArrayRead
// This algorithm is pretty much a Scan-Read, Data is compared with expected data. 

Algorithm (IntelLVArrayRead11){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b1111;
   LoadExpectData : 4'b1111;
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
