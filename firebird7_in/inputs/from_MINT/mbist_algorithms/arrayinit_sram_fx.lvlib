// ArrayInit
// This algorithm is an initialization algorithm that basically writes every entry in the array to 0's.
// ^(wD1)

Algorithm (IntelLVArrayIFx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
  }
  
  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000; 
   LoadExpectData : 32'b00000000000000000000000000000000; 
  }
 }

 MicroProgram {

// ^(wD1)
  Instruction (M0_W0) {
   OperationSelect : WriteData;
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
