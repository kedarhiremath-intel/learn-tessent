// March C- Dual Port (MPMARCHC)
// This algorithm is implemented like a standard March C- with the exception that all ports of a cell are required for reads and the algorithm is repeated for each of the write ports. 
// The goal of this test is to verify writes and reads for each port. Dual reads from both ports are done to force a worst case read condition.

// Short Notation:

// ^(wD:N1) ^(rD:rD2, wI:N3) ^(rI:rI4, wD:N5) v(rD:rD6, wI:N7) v(rI:rI8, wD:N9) ^(rD:rD10)

// Repeat for all write ports.

// Pattern Length:

// P * 10N

// Back-to-back Operations:

// If possible: 3-2, 5-4, 7-6, 9-8

// Defects Detected:

// Basic neighborhood and address decode faults on different ports

// Test Conditions:

// Data background of Solids.

// Addressing Fast-X.

Algorithm (IntelLVMPMarchCMinus){

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
   LoadWriteData  : 4'b0000; 
   LoadExpectData : 4'b0000; 
  }

 }

//TargetMemory: RowOnly;

 MicroProgram {

  Instruction (M0_W0) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   ZAddressCmd : Increment;
   WriteDataCmd : DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

  Instruction (M1_R0_W1) {
   OperationSelect : ReadModifyWriteDP;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   ZAddressCmd : Increment;
   ExpectDataCmd : DataReg;
   WriteDataCmd : InverseDataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
    RepeatLoop (a) {
     BranchToInstruction : M1_R0_W1;
      Repeat {
       WriteDataSequence : Inverse;
       ExpectDataSequence : Inverse;
       InhibitLastAddressCount : On;
      }
      Repeat {
       AddressSequence : Inverse;
      }
      Repeat {
       AddressSequence : Inverse;
       ExpectDataSequence : Inverse;
       WriteDataSequence : Inverse;
      }
    }
   }
  }

  Instruction (M5_R0) {
   OperationSelect : ReadTwoDP;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Decrement;
   Y1AddressCmd : Decrement;
   ZAddressCmd : Decrement;
   ExpectDataCmd : DataReg;
   InhibitLastAddressCount : On;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

  Instruction (CLEAR_ARRAYS) {
   OperationSelect : WriteData;
   AddressSelectCmd : Select_A;
   X1AddressCmd : Increment;
   Y1AddressCmd : Increment;
   ZAddressCmd : Increment;
   WriteDataCmd : Reset_DataReg;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }

 }

}
