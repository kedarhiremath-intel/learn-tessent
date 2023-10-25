// ArrayWrite
// This algorithm is pretty much a Scan-Write. 

Algorithm (IntelLVArrayWrite11){

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
