// The scan algorithm is the simplest of algorithmic patterns in terms of defects detected and
// development. Scan writes the array to a specific data background and then reads the entire array.
// Short Notation: 
//^(wD1) 
//^(rD2)
//^(wI3) 
//^(rI4)
// Pattern Length: 4N
// Back-to-back Operations:  2-2, 4-4 
Algorithm (IntelLVScanFastx){

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
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }

 }

 MicroProgram {

// ^(wD1) 
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

// ^(rD2) 
  Instruction (M1_R0) {
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

// ^(wI3)
  Instruction (M2_W1) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
    Z_EndCount  : On; 
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }


// ^(rI4)
  Instruction (M3_R1) {
   OperationSelect : ReadFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
    Z_EndCount  : On; 
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteFastRow;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 }

}

