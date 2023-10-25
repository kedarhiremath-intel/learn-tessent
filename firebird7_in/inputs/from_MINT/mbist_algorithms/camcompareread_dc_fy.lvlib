// ^(wD1) // write donot care state
// (cDC2) // compare donot care state
// ^(wD3) // write valid state
// (cVS4) // compare valid state

Algorithm (IntelLVCAMCompareReadLocalDontCareFy){

 TestRegisterSetup {

 OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : Y1CarryOut;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
   AddressRegister (B) {
    ZCarryIn  : None; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : None;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
  }

  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }

 // how many time to compare donot care
  LoadCounterA_EndCount: 10;
 }


 MicroProgram {

// ^(wD1) write donot care state Y0 = 1, Y1 = 1 to all rows
Instruction (M0_W0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   ZAddressCmd             : Increment;
   Y1AddressCmd            : Increment;
   X1AddressCmd            : Increment;
   WriteDataCmd            : One;
   NextConditions {
    Z_EndCount  	   : On; 
    Y1_EndCount 	   : On;
    X1_EndCount            : On;

   }
  }

// (cDC2) // read followed by compare donot care state, expect mismatch
Instruction (TCAM_COMPARE_READ_DC) {
   OperationSelect         : TCamCompareRead;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : InverseDataReg;
   CounterACmd             : Increment;
   NextConditions {
     CounterAEndCount  : On;
  }
 }

Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd :  Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : Zero;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }
 }   
}
