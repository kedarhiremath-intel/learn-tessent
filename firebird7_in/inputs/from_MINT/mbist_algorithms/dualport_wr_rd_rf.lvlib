// Dual Port Read Write
// The is a non-ITMH algorithm and the intention is to test simultaneous port interactions in dual port arrays.
// The key is to read from both the ports or write to both ports at the same clock cycle. 
// The writes address on each port should be different (port0 Write Address = port1 Write Address with
// LSB bit flipped). In the case of a simultaneous read, the data from only one port is compared and 
// then  the ports are switched at  the end of  the  test sequence. 
// The port  that  is compared  is called active port and  the other port  is called a shadow port. 
// The algorithm execution  is illustrated as below:

// Short notation:
// port0 = active port and port1 = shadow port 
// ^(wD1,rD2)  
// ^(wI3,rI4) 
// v(wD5,rD6) 
// v(wI7,rI8) 
 
// port1 = active port and port0 = shadow port 
// ^(wD9,rD10)  
// ^(wI11,rI12) 
// v(wD13,rD14) 
// v(wI15,rI16) 


Algorithm (IntelLVDpWrRd){

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
   LoadWriteData  : 4'b0101; 
   LoadExpectData : 4'b0101; 
  }
 }

 //TargetMemory: RowOnly;

 MicroProgram {

   Instruction (M0_W0) {
   OperationSelect         : WriteData;
   AddressSelectCmd        : Select_A;
   X1AddressCmd            : Increment;
   Y1AddressCmd            : Increment;
   ZAddressCmd             : Increment;
   WriteDataCmd            : DataReg;
   NextConditions {
    X1_EndCount            : On;
    Y1_EndCount            : On;
    Z_EndCount             : On;
   }
  }

  Instruction (M1_R0_W0) {
    OperationSelect : WriteReadDP;
    AddressSelectCmd : Select_A;
    WriteDataCmd : DataReg;
    ExpectDataCmd : DataReg;
    X1AddressCmd : Increment;
    Y1AddressCmd : Increment;
    ZAddressCmd : Increment;
    NextConditions {
     X1_EndCount : On;
     Y1_EndCount : On;
     Z_EndCount : On;
  
     RepeatLoop (a) {
      BranchToInstruction : M1_R0_W0;
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

  Instruction (M0_DUMMY) {
   OperationSelect  : NoOperation;
   AddressSelectCmd : Select_A;
   InhibitLastAddressCount : Off;
   X1AddressCmd     : LoadMin;
   Y1AddressCmd     : LoadMin;
   ZAddressCmd     : LoadMin;
   NextConditions {
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
