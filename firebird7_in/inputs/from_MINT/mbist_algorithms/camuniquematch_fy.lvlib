// ^wI1  //for each TCAM entry, write inverse data to bit 0, write data to bit 1. write all TCAM entries.
// ^cI2  //compare unique match for each entry
// ^wD3  //for each TCAM entry, write data to bit 0, write inverse data to bit 1. write all TCAM entries.
// ^cD4  //compare unique match for each entry


Algorithm (IntelLVCAMUniqueMatchFy){

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
   InvertDataWithColumnBit: c[0];                 

  }
  
 }


 MicroProgram {

// ^(wI1)
  Instruction (M0_W0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   ZAddressCmd  	   : Increment; 
   Y1AddressCmd 	   : Increment;
   X1AddressCmd            : Increment;
   WriteDataCmd            : InverseDataReg;
   NextConditions {
    Z_EndCount             : On;
    Y1_EndCount            : On;
    X1_EndCount            : On;
   }
 }


// (^cI2)
 Instruction (WRITE_ENRTY) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_B;
   Y1AddressCmd 	   : Increment;
   WriteDataCmd            : DataReg;
   NextConditions {
   }
 }

Instruction (COMPARE_UNIQUE_MATCH) {
   OperationSelect         : TCamCompareUniqueMatch;
   AddressSelectCmd        : Select_B;
   Y1AddressCmd 	   : Increment;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : InverseDataReg;
   NextConditions {
  }
 }

Instruction (WRITE_ENRTY_INVERSE) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_B;
   Y1AddressCmd 	   : Increment;
   WriteDataCmd            : InverseDataReg;
   NextConditions {
   }
 }

Instruction (COMPARE_ALL_MISMATCH) {
   OperationSelect         : TCamCompareMisMatch;
   AddressSelectCmd        : Select_B;
   X1AddressCmd            : Increment;
   Y1AddressCmd 	   : Increment;
   WriteDataCmd            : InverseDataReg;
   ExpectDataCmd           : DataReg;
   BranchToInstruction :  WRITE_ENRTY;
   NextConditions {
     X1_EndCount            : On;

     // ^wD3, ^cD4  
     RepeatLoop (a) {
     BranchToInstruction  : M0_W0;
     Repeat {
      WriteDataSequence   : Inverse;
     }
    } 
                        
  }
 }

Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd :  Increment;
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
