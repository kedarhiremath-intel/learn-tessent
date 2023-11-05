// ArrayWrite_11_sram_fastx
// This is a simple scan-write algorithm that writes each entry of the array
// ^(wD1)
Algorithm (IntelLVArrayWrite11Fastx){

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
   LoadWriteData  : 32'b11111111111111111111111111111111;
   LoadExpectData : 32'b11111111111111111111111111111111;
  }

 }

 MicroProgram {

  Instruction (M0_W0) {
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

