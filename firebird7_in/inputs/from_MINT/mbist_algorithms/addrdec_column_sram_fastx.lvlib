// Address Decode (ADDRDECODE)
// The algorithm contains an outer and inner loop. The inner loop is a simple array increment loop
// that generates a target address. The outer loop identifies a bit that is xored against the target address
// to create a base address. The sequence of write target data, write base data complement, read target
// data is done in the inner loop. Once the inner loop completes the outer loop shifts the bit by one and
// does the next execution of the inner loop.
// EACH OUTER LOOP IS IMPLEMENTED AS A SEPARATE ALGORITHM.
//
// -------------------------------------------------------
// Example with a 2 bit address:
// OuterLoop InnerLoop XOR-ed WrDAddr WrInvAddr ReadDAddr 
// 01        00        01     0       1         0 
// 01        01        00     1       0         1 
// 01        10        11     2       3         2 
// 01        11        10     3       2         3 
// -------------------------------------------------------
// 10        00        10     0       2         0 
// 10        01        11     1       3         1 
// 10        10        00     2       0         2 
// 10        11        01     3       1         3 
//--------------------------------------------------------
// Short Notation: 
// xorABits(^(wTD1, wBI2, rTD3))
// xorABits(^(wTI1, wBD2, rTI3))

// Back-to-back Operations: 1-2-3

// Address register A loops through all addresses
// Address register B shifts through number of column address bits

Algorithm (IntelLVAddrDecodeColumnFastx){
  
 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {

// Address A to keep a track of the TARGET (inner loop)
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X0 X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
   }

// Address B to keep a track of the BASE (outer loop) 
   AddressRegister (B) {
    ZCarryIn  : None;
    Y1CarryIn : None;
    X1CarryIn : None;
    LoadRowAddress : 1'b0;
    LoadColumnAddress : 1'b1;
    LoadBankAddress : 1'b0;
   }
  }
  DataGenerator { 
   LoadWriteData  : 32'b00000000000000000000000000000000;
   LoadExpectData : 32'b00000000000000000000000000000000;
  }
// LoadCounterA_StartCount: 1;
  LoadCounterA_EndCount: NumColumnAddressBits;
 }

 MicroProgram {

  // ^(wD1)
  Instruction (INIT_ARRAYS) {
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

// Set CounterA to 1 before going through the loop to waste extra cycle
// Since LoadCounterA_StartCount is not supported here
 Instruction (INIT_COUNTERA) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_B;
   CounterACmd: Increment;
   NextConditions {
   }
  }

// xorABits(^(wTD1, wBI2, rTD3))
// Write to first Target (inner loop)  
  Instruction (M1_WT0) {
   OperationSelect  : WriteData;
   AddressSelectCmd : Select_A;
   WriteDataCmd : DataReg;
   NextConditions {
   }
  }

// XOR A & B address to create BASE address
  Instruction (M1B_WB1) {
   OperationSelect  : WriteData;
   AddressSelectCmd : A_XOR_B;
   WriteDataCmd : InverseDataReg;
   NextConditions {
   }
  }

  Instruction (M1C_RT0) {
   OperationSelect  : ReadTwo;
   AddressSelectCmd : Select_A;
   ZAddressCmd  : Increment; 
   Y1AddressCmd : Increment; 
   X1AddressCmd : Increment;
   ExpectDataCmd : DataReg;
   BranchToInstruction : M1_WT0;
   NextConditions {
    Z_EndCount  : On; 
    Y1_EndCount : On;
    X1_EndCount : On;

    RepeatLoop (a) {
     BranchToInstruction : M1_WT0;

// xorABits(^(wTI1, wBD2, rTI3))
      Repeat {
       WriteDataSequence : Inverse;
       ExpectDataSequence : Inverse;
       InhibitLastAddressCount : On;
      }
    }
   }
  }
  Instruction (M1_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A_Rotate_B;
   ZAddressCmd      : LoadMin;
   Y1AddressCmd     : LoadMin;
   X1AddressCmd     : LoadMin;
   InhibitLastAddressCount : Off;
   CounterACmd: Increment;
   BranchToInstruction : M1_WT0;
   NextConditions {
       CounterAEndCount: On;
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

