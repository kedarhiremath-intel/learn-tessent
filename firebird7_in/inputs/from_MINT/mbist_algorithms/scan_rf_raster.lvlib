// The scan algorithm is the simplest of algorithmic patterns in terms of defects detected and
// development. Scan writes the array to a specific data background and then reads the entire array.
// Short Notation: 
//^(wD1) 
//^(rD2)
//^(wI3) 
//^(rI4)
// Pattern Length: 4N
// Back-to-back Operations:  2-2, 4-4 

Algorithm (IntelLVScanRaster){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    X1CarryIn : None;
    NumberX0Bits : 0;
   }
  }
  DataGenerator { 
   LoadWriteData  : 4'b0000; 
   LoadExpectData : 4'b0000; 
  }

 }

 TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1) 
  Instruction (M0_W0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

// ^(rD2) 
  Instruction (M1_R0) {
   OperationSelect : ReadOne;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

// ^(wI3)
  Instruction (M2_W1) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }


// ^(rI4)
  Instruction (M3_R1) {
   OperationSelect : ReadOne;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : InverseDataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

 }
}

