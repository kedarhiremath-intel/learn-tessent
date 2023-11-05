// ArrayWriteAddrRange
// This is a simple scan-write algorithm that writes to the specified addresses of the array (at runtime).  The starting address and LoadCounterA_StartCount values are specified by the user during pattern generation.  Data will be written to the starting address and the address will then be incremented and written N times, where N = LoadCounterA_EndCount - LoadCounterA_StartCount. 

Algorithm (IntelLVArrayWriteAddrRangeFx){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    // Default initial row, column, and bank addresses
    LoadRowAddress: h0;// Default initial row address
    LoadColumnAddress: h0;// Default initial column address
    LoadBankAddress: h0;// Default initial bank address
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
  LoadCounterA_EndCount: 268435455; // EndCount set to 2^28
  // Change block size at run time. Defaults to single location.
 }

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect : WriteData;

   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   CounterACmd : Increment;
   NextConditions {
	CounterAEndCount : On; // Repeat for N locations
   }
  }

 }
}
