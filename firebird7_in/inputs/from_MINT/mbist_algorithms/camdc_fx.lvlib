// ^(wD1) // write donot care state
// (cDC2) // compare donot care state
// ^(wD3) // write valid state
// (cVS4) // compare valid state

Algorithm (IntelLVCAMLocalDontCareFx){

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

// (cDC2) // compare donot care state
Instruction (TCAM_DC_STATE_CHECK) {
   OperationSelect         : TCamCompareDc;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : DataReg;
   CounterACmd             : Increment;
   NextConditions {
     CounterAEndCount  : On;
  }
 }

// ^(wD3) write valid state Y0 = 0, Y1 = 1 to all rows
 Instruction (WRITE_ENRTY0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_B;
   Y1AddressCmd 	   : Increment;
   WriteDataCmd            : DataReg;
   NextConditions {
   }
 }

 Instruction (WRITE_ENRTY1_INVERSE) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_B;
   Y1AddressCmd 	   : Increment;
   X1AddressCmd            : Increment;
   WriteDataCmd            : InverseDataReg;
   BranchToInstruction :  WRITE_ENRTY0;
   NextConditions {
       X1_EndCount         : On;
   }
 }
 
 Instruction (WRITE_BANKS) {
   OperationSelect         : NoOperation;
   AddressSelectCmd        : Select_B;
   ZAddressCmd             : Increment;
   BranchToInstruction     :  WRITE_ENRTY0;
   NextConditions {
     Z_EndCount           : On;
   }
}


// (cVS4) // compare valid state
Instruction (TCAM_VALID_STATE_CHECK) {
   OperationSelect         : TCamCompareDcValid;
   AddressSelectCmd        : Select_A;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : DataReg;
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
