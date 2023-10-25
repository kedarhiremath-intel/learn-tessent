//Purpose of this test is to cause a false write in the bad cell.  
//    Basically you are writing the array to a known value.  
//    After the pause and voltage change, the algorithm for each column one at a time 
//    will write the max set in the column to inverse data and then read rest of the 
//    cells in the column, except the aggressor.  
//
// ^[ for each bank 
//    ^{ For each dword 
//       ^(wD1) 
//
//       (PAUSE(a)) 
//       (VCD) 
//
//       ^( for each column 
//          (wI(a)2) 
//          ^(rD4) 
//       ) 
//
//       (VC) 
//
//    }
// ] 
//
//B2B Required          =  None
//Aggressor address (a) = Minimum set in the same column.
//Two Patterns:   DATIN = 0x0000000 and 0xFFFFFFF


Algorithm (IntelLVBlreadstrss2){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {

   AddressRegister (A) {
      LoadRowAddress : MinRow; 
      X1CarryIn : None;
      NumberX0Bits : 0;
   }

   AddressRegister (B) {
      X1CarryIn : None;
      Y1CarryIn : X1CarryOut;
      ZCarryIn : Y1CarryOut;
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

   /* For validation only
   // Write Data with a known background 
   // This is done in a different pattern before lowering voltage

     Instruction (WRITE) {
      OperationSelect  : WriteData;
      X1AddressCmd     : Increment;
      Y1AddressCmd     : Increment;
      ZAddressCmd     : Increment;
      AddressSelectCmd : Select_B;
      WriteDataCmd     : DataReg;
      NextConditions {
         X1_EndCount : On;
         Y1_EndCount : On;
         Z_EndCount : On;
      }
     }
   */
   

   //end of valition only 

   // (wI(a)2) 
  Instruction (MIN_WRITEINV) {
   OperationSelect   : WriteData;
   AddressSelectCmd  : Select_A;
   ExpectDataCmd     : DataReg;
   WriteDataCmd      : InverseDataReg;
   X1AddressCmd      : Hold;
   NextConditions {
   }
  }

   //  ^(rD4) 
  Instruction (READ) {
   OperationSelect      : ReadTwo;
   AddressSelectCmd     : Select_B;
   ExpectDataCmd         : DataReg;
   X1AddressCmd         : Increment;
   Y1AddressCmd         : Increment;
   ZAddressCmd         : Increment;
   Add_reg_a_equals_b   : Invert_ExpectData;
   NextConditions {
    X1_EndCount : On;
    Y1_EndCount : On;
    Z_EndCount : On;
   }
  }
 }
}
