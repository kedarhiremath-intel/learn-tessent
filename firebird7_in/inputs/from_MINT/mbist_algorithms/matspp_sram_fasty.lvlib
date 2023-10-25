// Mats++ (MATSPP)

// Description:

// The Mats++ algorithm extends the mats+ algorithm by adding a read after write in the final march element.

// Short Notation:

// ^(wD)1; ^(rD2,wI3); v(rI4,wD5, rD6,);

// Pattern Length: 6N

// Back-to-Back Operations:

// 3-2, 5-6

// Preferred: 2-3-2, 4-5-6-4

// Defects Detected:

// All cell stuck at, addressing faults and transition faults are detected.

// Normal Usage:

// Fast-X and Fast-Y addressing with solid background.
Algorithm (IntelLVMatsppFasty){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y0 Y1 -> col, Z -> block  
    X1CarryIn : Y1CarryOut; 
    Y1CarryIn : None;
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
   OperationSelect : WriteFastColumn;
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


// ^(rD2, wI3) 
  Instruction (M1_R0_W1) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd : InverseDataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }
// v(rI4,wD5, rD6,)
  Instruction (M1_R0_W1_R1) {
   OperationSelect : ReadModifyWriteRead;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Decrement;
   Y1AddressCmd : Decrement;
   X1AddressCmd : Decrement;
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd : DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

  Instruction (M0_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   ZAddressCmd      : LoadMin;
   Y1AddressCmd     : LoadMin;
   X1AddressCmd     : LoadMin;
   NextConditions {
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteFastColumn;
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

