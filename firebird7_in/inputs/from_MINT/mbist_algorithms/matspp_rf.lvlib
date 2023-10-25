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

Algorithm (IntelLVMatspp){

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


// ^(rD2, wI3) 
  Instruction (M1_R0_W1) {
   OperationSelect : ReadModifyWrite;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd : InverseDataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    X1_EndCount : On;
   }
  }
// v(rI4,wD5, rD6,)
  Instruction (M1_R0_W1_R1) {
   OperationSelect : ReadModifyWriteRead;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Decrement;
   ExpectDataCmd : InverseDataReg;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
   }
  }

  Instruction (M0_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd     : LoadMin;
   NextConditions {
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
