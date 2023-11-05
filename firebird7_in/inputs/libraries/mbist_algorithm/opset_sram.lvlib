OperationSet (SyncCustom) {

  PipeliningStages (StrobeDataOut) : 1;

  Operation (NoOperation) {
   Tick { }
   Tick { }
  } // NoOperation
  
  Operation (NoOperationPipelineDepth) {
   Tick { }
   Tick { }
  } // NoOperationPipelineDepth

  Operation (WriteData) {
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; } // Addr0
  } // Write

  Operation (ReadOne) {
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;  StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;                 RowAddressCount : Off; } // Addr0
  } // Read

  Operation (ReadOne_stretched) {
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;  StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;                 RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: On; }
   Tick { Select: On; WriteEnable: Off; ReadEnable: On; }
  } // Read_stretched

  Operation (ReadTwo) {
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;  StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;  StrobeDataOut; RowAddressCount : Off; } // Addr0
  } // Read

  Operation (ReadModifyWrite) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                RowAddressCount : Off; } // Addr0
  } // ReadModifyWrite

  Operation (ReadModifyWrite_stretched) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: On;  WriteEnable: Off; }
   Tick { Select: On; ReadEnable: On;  WriteEnable: Off; }
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                RowAddressCount : Off; } // Addr0
  } // ReadModifyWrite_stretched


  Operation (ReadModifyWriteRead) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; InvertExpectData: On; StrobeDataOut; RowAddressCount : Off; } // Addr0
  } // ReadModifyWriteRead

  Operation (WriteRead) {
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                 RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut;  RowAddressCount : Off; } // Addr0
  } // WriteRead

  Operation (WriteAllSegOn) { 
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; EvenGroupWriteEnable: On ; OddGroupWriteEnable: On ; } // Addr0 
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; EvenGroupWriteEnable: On ; OddGroupWriteEnable: On ; } // Addr0 
  } // WriteSeg 
 
  Operation (WriteSegEvenOdd) { 
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; EvenGroupWriteEnable: On ; OddGroupWriteEnable: Off ; } // Addr0 
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; EvenGroupWriteEnable: On ; OddGroupWriteEnable: Off ; } // Addr0 
  } // WriteSeg 
 
  Operation (WriteAllSegOff) { 
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; EvenGroupWriteEnable: Off; OddGroupWriteEnable: Off; } // Addr0 
   Tick { Select: On; WriteEnable: On; ReadEnable: Off;  RowAddressCount : Off; EvenGroupWriteEnable: Off; OddGroupWriteEnable: Off; } // Addr0 
  } // WriteSeg 
 
  Operation (ReadSeg) { 
   Tick { Select: On; WriteEnable: Off; ReadEnable: On ;  StrobeDataOut; EvenGroupWriteEnable: Off; OddGroupWriteEnable: Off; } // Addr0 
   Tick { Select: On; WriteEnable: Off; ReadEnable: Off;                 EvenGroupWriteEnable: Off; OddGroupWriteEnable: Off; } // Addr0 
  } // ReadSeg 

  Operation (ReadWrite_ShadowWriteRead) {
   Tick { Select: On; ReadEnable: On;  WriteEnable: Off; OutputEnable: On;  ConcurrentWriteRowAddress: On;  StrobeDataout; }
   Tick {             ReadEnable: Off; WriteEnable: On;InvertWriteData: On; ConcurrentWriteRowAddress: Off; StrobeDataout; ShadowReadEnable: On; ShadowReadAddress: On; }
  } // ReadWrite_ShadowWriteRead 

  Operation (ReadRead_ShadowWrite) {
   Tick { Select: On; ReadEnable: On; WriteEnable: Off; OutputEnable: On;  ConcurrentWriteRowAddress: On;  StrobeDataout; }
   Tick {             ReadEnable: On; WriteEnable: Off;                    ConcurrentWriteRowAddress: Off; StrobeDataout; }
  } // ReadRead_ShadowWrite 
// -- Opset specifically for RF dual port algorithm
  Operation (WriteReadDP) {
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                 RowAddressCount : Off; ShadowReadEnable: Off; ShadowReadAddress: Off; ConcurrentWriteRowAddress: On;} // Addr0
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut;  RowAddressCount : Off; ShadowReadEnable: On; ShadowReadAddress: On; } // Addr0
  } // WriteRead

  Operation (ReadModifyWriteDP) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut; RowAddressCount : Off; ShadowReadEnable: On; ShadowReadAddress: Off; } // Addr0
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ; ShadowReadEnable: Off; RowAddressCount : Off; } // Addr0
  } // ReadModifyWriteDP

  Operation (ReadModifyWriteReadDP) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut; RowAddressCount : Off; ShadowReadEnable: On; ShadowReadAddress: Off; } // Addr0
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ; ShadowReadEnable: Off; RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; InvertExpectData: On; StrobeDataOut; ShadowReadEnable: On; RowAddressCount : Off; } // Addr0
  } // ReadModifyWriteReadDP

  Operation (ReadTwoDP) {
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;  StrobeDataOut; RowAddressCount : Off; ShadowReadEnable: On; ShadowReadAddress: Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: On;  StrobeDataOut; RowAddressCount : Off; ShadowReadEnable: On; } // Addr0
  } // ReadDP

// New opsets to support programmable MBIST

  Operation (NoOperation2) {
   Tick { WriteEnable: Off; ReadEnable: Off; }
   Tick { }
  } // NoOperation2

  Operation (NoOperationRead) {
   Tick { Select: On; WriteEnable: Off; ReadEnable: Off; }
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut;  RowAddressCount : Off; } // Addr0
  } // NoOperationRead

  Operation (NoOperationWrite) {
   Tick { Select: On; WriteEnable: Off; ReadEnable: Off; }
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                 RowAddressCount : Off; } // Addr0
  } // NoOperationWrite

  Operation (ReadNoOperation) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut;  RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: Off; }
  } // ReadNoOperation

  Operation (WriteNoOperation) {
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                 RowAddressCount : Off; } // Addr0
   Tick { Select: On; WriteEnable: Off; ReadEnable: Off; }
  } // WriteNoOperation

// single cycle opsets
  Operation(WriteFastColumn) {
    Tick {Select: On; EvenGroupWriteEnable: On; OddGroupWriteEnable: On; WriteEnable: On; RowAddressCount: Off; ColumnAddressCount: On; }
    Tick {Select: On; EvenGroupWriteEnable: On; OddGroupWriteEnable: On; WriteEnable: On; RowAddressCount: Off; ColumnAddressCount: On; }
  }
      
  Operation(WriteFastRow) {
   Tick {Select: On; EvenGroupWriteEnable: On; OddGroupWriteEnable: On; WriteEnable: On; RowAddressCount: On; ColumnAddressCount: Off; }
   Tick {Select: On; EvenGroupWriteEnable: On; OddGroupWriteEnable: On; WriteEnable: On; RowAddressCount: On; ColumnAddressCount: Off; }
  }

  Operation(WriteFastDiag) {
   Tick {Select: On; EvenGroupWriteEnable: On; OddGroupWriteEnable: On; WriteEnable: On; RowAddressCount: On; ColumnAddressCount: On; }
   Tick {Select: On; EvenGroupWriteEnable: On; OddGroupWriteEnable: On; WriteEnable: On; RowAddressCount: On; ColumnAddressCount: On; }
  }

  Operation(ReadFastColumn) {      
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; RowAddressCount: Off ; ColumnAddressCount: On; }   
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; RowAddressCount: Off ; ColumnAddressCount: On; }
  }   
 
  Operation(ReadFastRow) {      
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; RowAddressCount: On; ColumnAddressCount: Off; }
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; RowAddressCount: On; ColumnAddressCount: Off; }
  }

  Operation (NoOperationFastColumn) {
   Tick {Select: On; RowAddressCount: Off; ColumnAddressCount: On; }
   Tick {Select: On; RowAddressCount: Off; ColumnAddressCount: On; }
  } 
  
  Operation(NoOperationAddr1WriteAddr2) {      
   Tick {Select: On; WriteEnable: Off; ReadEnable: Off; }   
   Tick {Select: On; WriteEnable: On; ReadEnable: Off; SwitchAddressRegister: On; }
  }
 
  Operation(ReadAddr1WriteAddr2) {      
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; }   
   Tick {Select: On; WriteEnable: On; ReadEnable: Off; SwitchAddressRegister: On; }
  }

  Operation(WriteAddr1ReadAddr2) {      
   Tick {Select: On; WriteEnable: On; ReadEnable: Off; }   
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; SwitchAddressRegister: On; StrobeDataOut; }
  }
 
  Operation(WriteAddr1ReadAddr2Inv) {      
   Tick {Select: On; WriteEnable: On; ReadEnable: Off; }   
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; InvertExpectData: On; SwitchAddressRegister: On; StrobeDataOut; }
  }

  Operation(ReadAddr1ReadAddr2) {      
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; }   
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; SwitchAddressRegister: On; StrobeDataOut; }
  }

  Operation(ReadAddr1ReadAddr2Inv) {      
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; StrobeDataOut; }   
   Tick {Select: On; WriteEnable: Off; ReadEnable: On; InvertExpectData: On; SwitchAddressRegister: On; StrobeDataOut; }
  }

  Operation (ReadModifyWriteNoCDP) {
   Tick { Select: On; ReadEnable: On ; WriteEnable: Off; StrobeDataOut; RowAddressCount : Off; } // Addr0
   Tick { Select: On; ReadEnable: Off; WriteEnable: On ;                RowAddressCount : Off; } // Addr0
  } // ReadModifyWrite

}


