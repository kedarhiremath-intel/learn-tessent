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
//       Created on: Sun Oct 29 23:50:58 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper {
    CaptureEnPort    CLK  {Attribute function_modifier = "CaptureShiftClock"; Attribute connection_rule_option = "allowed_tied_low";} 
    DataInPort       RSTB {Attribute connection_rule_option = "allowed_tied_low"; Attribute tessent_no_input_constraints = "on"; DefaultLoadValue 1'b1;} 
    DataInPort       MSEL {Attribute connection_rule_option = "allowed_tied_low"; Attribute tessent_no_input_constraints = "on";} 
    ScanInPort       SI   {Attribute connection_rule_option = "allowed_tied_low";}
    ScanOutPort      SO   {Attribute launch_edge = "falling"; Source ShiftReg[0];}
    ShiftEnPort      SE   {Attribute connection_rule_option = "allowed_tied_low";}
    DataOutPort      Q[25:0] { Source ShiftReg[25:0]; Attribute connection_rule_option = "allowed_no_destination"; }
    DataInPort       D[25:0] { Attribute connection_rule_option = "allowed_tied"; }
    Alias            RowSegment_ALL_SE0_RepairEnable = ShiftReg[0];
    Alias            RowSegment_ALL_SE0_Fuse[7:0] = ShiftReg[8],ShiftReg[7],ShiftReg[6],ShiftReg[5],ShiftReg[4],ShiftReg[3],ShiftReg[2],ShiftReg[1];
    Alias            RowSegment_ALL_SE1_RepairEnable = ShiftReg[9];
    Alias            RowSegment_ALL_SE1_Fuse[7:0] = ShiftReg[17],ShiftReg[16],ShiftReg[15],ShiftReg[14],ShiftReg[13],ShiftReg[12],ShiftReg[11],ShiftReg[10];
    Alias            ColumnSegment_All_SE0_RepairEnable = ShiftReg[18];
    Alias            ColumnSegment_All_SE0_FuseMap[6:0] = ShiftReg[25],ShiftReg[24],ShiftReg[23],ShiftReg[22],ShiftReg[21],ShiftReg[20],ShiftReg[19];
    Enum ScanRegisterSymbols {
      allocation_bits_on                 = 26'bxxxxxxx1xxxxxxxx1xxxxxxxx1;
      allocation_bits_off                = 26'bxxxxxxx0xxxxxxxx0xxxxxxxx0;
      leading_one    = 26'b00000000000000000000000001;
      all_zero       = 26'b00000000000000000000000000;
      all_one        = 26'b11111111111111111111111111;
      all_x          = 26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
      checkerboard   = 26'b10101010101010101010101010;
      inverse_checkerboard               = 26'b01010101010101010101010101;
    }
    ScanMux RSTB_MUX SelectedBy RSTB {
      1'b1 : SI;
    }
    ScanRegister ShiftReg[25:0] {
        DefaultLoadValue                 all_zero;
        CaptureSource                    D[25:0];
        ScanInSource                     RSTB_MUX;
        RefEnum                          ScanRegisterSymbols;
    }
    ScanInterface bisr {
        Attribute tessent_chain_type   = "bisr";
        Attribute tessent_chain_length = 26;
        Port SI;
        Port SO;
        Port SE;
        Port CLK;
    }
    Attribute tessent_bisr_register_length = 26;
    Attribute tessent_instrument_type = "mentor::memory_bisr";
    Attribute tessent_instrument_container = "firebird7_in_gate1_mbisr";
    Attribute tessent_repair_word_size = 9;
    Attribute tessent_instrument_subtype = "repair_register";
    Attribute tessent_use_in_dft_specification = "false";
    Attribute tessent_signature = "263ff2f7676bd4c597aad7504f799c7e";
    Attribute tessent_ignore_during_icl_verification = "on";
}
