// ArrayWriteInv2Data
// Part of BLTSTWT1
// Purpose of this test is to cause a false write in the bad cell.  
// The initial write is a little different then BLREADSTRSS, 
// which causes some additional units to fail.  
// Basically you are writing the array to a known value

Algorithm (IntelLVArrayWriteInv2Data){

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
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }

 }

 MicroProgram {

  Instruction (WRITE_INV) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd      : Increment;
   WriteDataCmd      : InverseDataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

  Instruction (WRITE_DATA) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd      : Increment;
   WriteDataCmd      : DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

 }
}

