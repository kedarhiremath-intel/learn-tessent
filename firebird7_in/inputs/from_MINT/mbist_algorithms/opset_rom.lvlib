OperationSet (ROM_SyncCustom) {
    PipeliningStages (StrobeDataOut) : 1;    // Only use for synchronous ROMs i.e. with clock input
    Operation (Read) {
     Tick { Select: On; OutputEnable: On; ReadEnable: On; ColumnAddressCount: On; StrobeDataOut; } //RowAddressCount: on;
     Tick { Select: On; OutputEnable: On; ReadEnable: On; ColumnAddressCount: On;  StrobeDataOut; } //RowAddressCount: On;
    } //Read
    Operation (COMPAREMISR) { 
     Tick { Select: on; ReadEnable: On; } 
     Tick { Select: on; ReadEnable: On; } 
     } //COMPAREMISR 
    Operation (NOOPERATION) { 
     Tick { Select: on; } 
     Tick { Select: on; } 
     Tick { Select: on; } 
     Tick { Select: on; } 
     } //NOOPERATION 
}

