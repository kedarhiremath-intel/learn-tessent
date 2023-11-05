//--------------------------------------------------------------------------
//
//  Unpublished work. Copyright 2022 Siemens
//
//  This material contains trade secrets or otherwise confidential 
//  information owned by Siemens Industry Software Inc. or its affiliates 
//  (collectively, SISW), or its licensors. Access to and use of this 
//  information is strictly limited as set forth in the Customer's 
//  applicable agreements with SISW.
//
//--------------------------------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Sun Nov  5 08:28:22 PST 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
    CaptureEnPort    CLK  {Attribute function_modifier = "CaptureShiftClock"; Attribute connection_rule_option = "allowed_tied_low";} 
    DataInPort       RSTB {Attribute connection_rule_option = "allowed_tied_low"; Attribute tessent_no_input_constraints = "on"; DefaultLoadValue 1'b1;} 
    DataInPort       MSEL {Attribute connection_rule_option = "allowed_tied_low"; Attribute tessent_no_input_constraints = "on";} 
    ScanInPort       SI   {Attribute connection_rule_option = "allowed_tied_low";}
    ScanOutPort      SO   {Attribute launch_edge = "falling"; Source ShiftReg[0];}
    ShiftEnPort      SE   {Attribute connection_rule_option = "allowed_tied_low";}
    DataOutPort      Q[21:0] { Source ShiftReg[21:0]; Attribute connection_rule_option = "allowed_no_destination"; }
    DataInPort       D[21:0] { Attribute connection_rule_option = "allowed_tied"; }
    Alias            RowSegment_ALL_SE0_RepairEnable = ShiftReg[0];
    Alias            RowSegment_ALL_SE0_Fuse[6:0] = ShiftReg[7],ShiftReg[6],ShiftReg[5],ShiftReg[4],ShiftReg[3],ShiftReg[2],ShiftReg[1];
    Alias            RowSegment_ALL_SE1_RepairEnable = ShiftReg[8];
    Alias            RowSegment_ALL_SE1_Fuse[6:0] = ShiftReg[15],ShiftReg[14],ShiftReg[13],ShiftReg[12],ShiftReg[11],ShiftReg[10],ShiftReg[9];
    Alias            ColumnSegment_All_SE0_RepairEnable = ShiftReg[16];
    Alias            ColumnSegment_All_SE0_FuseMap[4:0] = ShiftReg[21],ShiftReg[20],ShiftReg[19],ShiftReg[18],ShiftReg[17];
    Enum ScanRegisterSymbols {
      allocation_bits_on                 = 22'bxxxxx1xxxxxxx1xxxxxxx1;
      allocation_bits_off                = 22'bxxxxx0xxxxxxx0xxxxxxx0;
      leading_one    = 22'b0000000000000000000001;
      all_zero       = 22'b0000000000000000000000;
      all_one        = 22'b1111111111111111111111;
      all_x          = 22'bxxxxxxxxxxxxxxxxxxxxxx;
      checkerboard   = 22'b1010101010101010101010;
      inverse_checkerboard               = 22'b0101010101010101010101;
    }
    ScanMux RSTB_MUX SelectedBy RSTB {
      1'b1 : SI;
    }
    ScanRegister ShiftReg[21:0] {
        DefaultLoadValue                 all_zero;
        CaptureSource                    D[21:0];
        ScanInSource                     RSTB_MUX;
        RefEnum                          ScanRegisterSymbols;
    }
    ScanInterface bisr {
        Attribute tessent_chain_type   = "bisr";
        Attribute tessent_chain_length = 22;
        Port SI;
        Port SO;
        Port SE;
        Port CLK;
    }
    Attribute tessent_bisr_register_length = 22;
    Attribute tessent_instrument_type = "mentor::memory_bisr";
    Attribute tessent_instrument_container = "firebird7_in_gate1_mbisr";
    Attribute tessent_repair_word_size = 8;
    Attribute tessent_instrument_subtype = "repair_register";
    Attribute tessent_use_in_dft_specification = "false";
    Attribute tessent_signature = "c23ff10f33518a93b3c9b52039878596";
    Attribute tessent_ignore_during_icl_verification = "on";
}
