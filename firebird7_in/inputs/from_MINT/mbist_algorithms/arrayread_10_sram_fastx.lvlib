// ArrayRead
// This is a simple scan-read algorithm that reads each entry of the array
//^(rD1)
Algorithm (IntelLVArrayRead10Fastx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }
  }

  DataGenerator {
   LoadWriteData  : 32'b10101010101010101010101010101010;
   LoadExpectData : 32'b10101010101010101010101010101010;
  }

 }

 MicroProgram {

  Instruction (M0_R0) {
   OperationSelect : ReadFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 }
}
