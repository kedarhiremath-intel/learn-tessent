//MarchG (MARCHG)
//The MarchG algorithm extends the MarchC- algorithm by adding additional read-write elements
//with the intention of further stressing the address decode speed paths. The pauses elements in some
//descriptions of the algorithm have been removed since data retention testing is done separately.
//Short Notation:
//^(wD1)
//^(rD2, wI3, rI4, wD5, rD6, wI7)
//^(rI8, wD9, wI10)
//v(rI11, wD12, wI13, wD14)
//v(rD15, wI16, wD17)
//^(rD18, wI19, rI20)
//^(rI21, wD22, rD23)
//Pattern Length: 23N
//Back-to-back
//Operations:
//3-4, 5-6, 7-2, 14-11, 20-18

Algorithm (IntelLVMarchGFx){

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

//^(wD1)
  Instruction (M0_W0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   ZAddressCmd   : Increment;
   Y1AddressCmd  : Increment; 
   X1AddressCmd  : Increment;
   WriteDataCmd  : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }


//^(rD2, wI3, rI4, wD5, rD6, wI7)

  Instruction (M1A_R0_W1) {
   OperationSelect        : ReadModifyWrite;
   AddressSelectCmd       : Select_A;
   ExpectDataCmd          : DataReg;
   WriteDataCmd           : InverseDataReg;
   NextConditions {
   }
  }


  Instruction (M1B_R1_W0) {
   OperationSelect        : ReadModifyWrite;
   AddressSelectCmd       : Select_A;
   ExpectDataCmd          : InverseDataReg;
   WriteDataCmd           : DataReg;
   NextConditions {
   }
  }


  Instruction (M1C_R0_W1) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : DataReg;
   WriteDataCmd     : InverseDataReg;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   BranchToInstruction  : M1A_R0_W1;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }
 
//^(rI8, wD9, wI10)

  Instruction (M2A_R1_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : InverseDataReg;
   WriteDataCmd     : DataReg;
   NextConditions {
   }	
  } 

  Instruction (M2B_W1) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   BranchToInstruction     : M2A_R1_W0;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }
    


//v(rI11, wD12, wI13, wD14)

  Instruction (M3A_R1_W0) {
   OperationSelect  : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ExpectDataCmd    : InverseDataReg;
   WriteDataCmd     : DataReg;
   NextConditions {
   }
  }

  Instruction (M3B_W1) {
   OperationSelect  : WriteData;
 	 AddressSelectCmd : Select_A;
   WriteDataCmd   : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M3C_W0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   ZAddressCmd     : Decrement;
   Y1AddressCmd    : Decrement; 
   X1AddressCmd    : Decrement;
   WriteDataCmd    : DataReg;
   BranchToInstruction  : M3A_R1_W0;
   NextConditions {
     Z_EndCount  : On;
     Y1_EndCount : On; 
     X1_EndCount : On;
   }
  }

//v(rD15, wI16, wD17)
  Instruction (M4A_R0_W1) {
 	OperationSelect     : ReadModifyWrite;
   AddressSelectCmd  : Select_A;
   ExpectDataCmd     : DataReg;
   WriteDataCmd      : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M4B_W0) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   ZAddressCmd       : Decrement;
   Y1AddressCmd      : Decrement; 
   X1AddressCmd      : Decrement;
   WriteDataCmd      : DataReg;
   InhibitLastAddressCount : On;
   BranchToInstruction     : M4A_R0_W1;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;
   }
  }

//^(rD18, wI19, rI20)

  Instruction (M5A_R0_W1) {
   OperationSelect   : ReadModifyWrite;
   AddressSelectCmd  : Select_A;
   ExpectDataCmd     : DataReg;
   WriteDataCmd      : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M5B_R1) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ZAddressCmd      : Increment;
   Y1AddressCmd     : Increment; 
   X1AddressCmd     : Increment;
   ExpectDataCmd    : InverseDataReg;
   BranchToInstruction  : M5A_R0_W1;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On; 
    X1_EndCount : On;

//^(rI21, wD22, rD23)
     RepeatLoop (a) {
      BranchToInstruction  : M5A_R0_W1;
        Repeat {
         WriteDataSequence   : Inverse;
         ExpectDataSequence  : Inverse;
        }
      }
    }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
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


