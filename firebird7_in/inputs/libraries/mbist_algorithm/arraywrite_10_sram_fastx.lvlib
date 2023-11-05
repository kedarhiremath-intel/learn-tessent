// ArrayWrite_10_sram_fastx
// This is a simple scan-write algorithm that writes each entry of the array
//^(wD1)
Algorithm (IntelLVArrayWrite10Fastx){

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
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 }
}

