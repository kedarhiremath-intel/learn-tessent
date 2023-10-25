// ArrayWriteAddrRange
// This is a simple scan-write algorithm that writes to the specified addresses of the array (at runtime).  The starting address and LoadCounterA_StartCount values are specified by the user during pattern generation.  Data will be written to the starting address and the address will then be incremented and written N times, where N = LoadCounterA_EndCount - LoadCounterA_StartCount.  

Algorithm (IntelLVArrayWriteAddrRange){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    // Default initial row address
    LoadRowAddress: h0;// Default initial row address
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }
  LoadCounterA_EndCount: 268435455; // EndCount set to 2^28
  // Change block size at run time. Defaults to single location.
 }

 TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   CounterACmd : Increment;
   NextConditions {
    CounterAEndCount : On; // Repeat for N locations
   }
  }

 }
}
