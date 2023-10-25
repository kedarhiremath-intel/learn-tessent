// Mats+ (MATSP)

// Description:

// The Mats+ algorithm initializes the array to a known data background and steps through with a read-write sequence. The algorithm is performed with both incrementing and decrementing addressing.

// Short Notations:

// ^(wD)1; ^(rD2,wI3); v(rI4,wD5);

// Back-to-Back Operations:

// 3-2, 5-4

// Preferred: 2-3-2, 4-5-4

// Pattern Length: 5N

// Defects Detected:

// All cell stuck at and addressing faults are detected.

// Normal Usage:

// Fast X and Y addressing with solid background.

Algorithm (IntelLVMatspFy){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y1 -> col, Z -> block  
    X1CarryIn : Y1CarryOut; 
    Y1CarryIn : None;
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

// ^(wD1) 

  Instruction (M0_W0) {
   OperationSelect : WriteData;
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

// v(rI4,wD5)
    RepeatLoop (a) {
     BranchToInstruction : M1_R0_W1;
      Repeat {
       WriteDataSequence : Inverse;
       ExpectDataSequence : Inverse;
       AddressSequence : Inverse;
      }
    }
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
