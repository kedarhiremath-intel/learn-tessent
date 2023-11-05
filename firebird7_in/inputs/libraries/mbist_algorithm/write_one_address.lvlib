// The algorithm is used as experiment to write only one user defiend location 

Algorithm (IntelWriteOneAddress){

 TestRegisterSetup {

  OperationSetSelect : SyncCustom;
  AddressGenerator {
   AddressRegister (A) {
    ZCarryIn  : Y1CarryOut; //X1 -> row; Y1 -> col, Z -> block
    Y1CarryIn : X1CarryOut;
    X1CarryIn : None;
    NumberY0Bits : 0;
    NumberX0Bits : 0;
    LoadRowAddress: h0;//Default initial row address
    LoadColumnAddress: h0;// Default initial column address
    LoadBankAddress: h0;// Default initial bank address

   }
  }
  DataGenerator { 
   LoadWriteData  : 4'b0000; 
  }

 }


 MicroProgram {

  Instruction (MEM_BLOCK_WRITE) {
   OperationSelect   : WriteData;
   BranchToInstruction: MEM_BLOCK_WRITE;
   AddressSelectCmd  : Select_A;
   WriteDataCmd      : DataReg;
   ZAddressCmd          : Increment;
   Y1AddressCmd         : Increment; 
   X1AddressCmd         : Increment;
   NextConditions {
   }
  }

 }
}



