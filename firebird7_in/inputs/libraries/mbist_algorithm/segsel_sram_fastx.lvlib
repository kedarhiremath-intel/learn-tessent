// Segment Select:
// ===============
// The main intent of the algorithm is to check for Stuck at 0 or Stuck at 1 faults on the segment select decoder.
// This algorithm is a Scan like algorithm
// First Initializes the Segments 0,1,2,3 with unique data with Segment Select ON
// Then  tries to Re-Initialize(with INVERT Data) the segments 0,1,2,3 with Segment Select OFF
// These two steps ensures that the Segment Selects are not Stuck-at-0 or 1
// Then Read Unique Data from each segment
// Short Notation:
//^(w_segD1) 
//^(r_segD2)
// Pattern Length: 2N
//w_seg: write data in one cycle with the segment select on, write data in the next cycle with segment select off
//r_seg: read data in one cycle with segment select on, read in the next cycle with segment select off

Algorithm (IntelLVSegSelFastx){

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
   LoadWriteData  : 32'b00001000000010010000101000001011;
   LoadExpectData : 32'b00001000000010010000101000001011;
  }
 }

 MicroProgram {

  Instruction (M0_W0_SEL_ALL_SEG_ON) {
   OperationSelect : WriteAllSegOn;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Hold;
   Y1AddressCmd : Hold;
   X1AddressCmd : Hold;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

  Instruction (M0_W0_SEL_ALL_SEG_OFF) {
   DisableMemoriesWithoutGroupWriteEnable: On;
   OperationSelect : WriteAllSegOff;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   WriteDataCmd : InverseDataReg;
   BranchToInstruction : M0_W0_SEL_ALL_SEG_ON;
   NextConditions { 
    Z_EndCount : On; 
    Y1_EndCount : On; 
    X1_EndCount : On;
   } 
  } 

  Instruction (M0_R0) {
   OperationSelect : ReadSeg;
   AddressSelectCmd : Select_A;
   ZAddressCmd : Increment;
   Y1AddressCmd : Increment;
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   NextConditions {
    Z_EndCount : On;
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
   ExpectDataCmd : Reset_DataReg;
   NextConditions {
    Z_EndCount  : On;
    Y1_EndCount : On;
    X1_EndCount : On;
   }
  }

 }
}

