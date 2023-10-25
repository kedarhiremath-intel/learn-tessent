// ^(wD1)
// (>cW1) // compare walking 1
// ^(I3)
// (>cW0) // compare walking 0

Algorithm (IntelLVCAMWOZB2BFy){

 TestRegisterSetup {

 OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : X1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    X1CarryIn : Y1CarryOut;
    Y1CarryIn        : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
   }
  }
  DataGenerator {
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
   InvertDataWithColumnBit: c[0];              
  }

 // Counter for # rotation of shift register
  LoadCounterA_EndCount: 39;
 }

 //TargetMemory: RowOnly;

 MicroProgram {

// ^(wD1)
Instruction (M0_W0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   ZAddressCmd             : Increment;
   Y1AddressCmd            : Increment;
   X1AddressCmd            : Increment;
   WriteDataCmd            : Zero;
   NextConditions {
    Z_EndCount  	   : On; 
    Y1_EndCount 	   : On;
    X1_EndCount            : On;

   }
  }

// >cW1
Instruction (TCAM_COMPARE_WALKING) {
   OperationSelect         : TCamCompareWalking;
   WriteDataCmd            : InverseDataReg;
   ExpectDataCmd           : DataReg;
   NextConditions {
  }
 }

// ^(wI)
Instruction (M0_W1) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   ZAddressCmd  	   : Increment; 
   Y1AddressCmd 	   : Increment;
   X1AddressCmd            : Increment;
   WriteDataCmd            : One;
   NextConditions {
    Z_EndCount             : On;
    Y1_EndCount            : On;
    X1_EndCount            : On;
   }
 }

// >cW0
Instruction (TCAM_COMPARE_WALKING1) {
   OperationSelect         : TCamCompareWalkingNoShift;
   WriteDataCmd            : DataReg;
   ExpectDataCmd           : DataReg;
   CounterACmd             : Increment;
   BranchToInstruction :  M0_W0;
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
