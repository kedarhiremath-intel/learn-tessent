//Purpose of this test is to see a Vmin shift.  
//Even though WBL is strong enough to write the bit cell, 
//without WBL# the Vmin required to do the write will be higher.  
//With this test, a Vmin shift is wanting to be seen.  
//
//^{ for each bank 
//    ^[ For each dword 
//       
//       ^(wD1) 
//
//       (PAUSE(a)) 
//       (VCD) 
//
//       ^(wI2,wD3,rD4,wD5) 
//
//       (VC) 
//    ] 
// }
//
//B2B required : 3 to 4
//DATIN        : All 0s and 1s
//Failure      : Vmin shift between KS and this pattern.  
//Two Patterns :   DATIN = 0x0000000 and 0xFFFFFFF

Algorithm (IntelLVBltstvm){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
     ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
     Y1CarryIn : X1CarryOut;
     X1CarryIn : None;
     NumberX0Bits : 0;
     NumberY0Bits : 0;
   }
  }
  
  DataGenerator {
   LoadWriteData  : 4'b0000;
   LoadExpectData : 4'b0000;
  }

 } 

// TargetMemory: RowOnly;

 MicroProgram {

// ^(wI2,wD3,rD4,wD5)
   // wI2
  Instruction (WRITEINV) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : InverseDataReg;
   NextConditions {
   }
  }

   //wD3,rD4 B2B and min cycle op required
  Instruction (WRITE_READ) {
   OperationSelect   : WriteRead;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   ExpectDataCmd     : DataReg;
   NextConditions {
   }
  }

  //wD5
  Instruction (WRITE) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   X1AddressCmd      : Increment;
   Y1AddressCmd      : Increment;
   ZAddressCmd      : Increment;
   WriteDataCmd      : DataReg;
   BranchToInstruction  : WRITEINV;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }
 }
}
