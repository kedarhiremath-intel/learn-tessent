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
<<<<<<< HEAD
//       Created on: Sun Oct 29 23:49:37 PDT 2023
=======
//       Created on: Sun Oct 29 14:14:09 PDT 2023
>>>>>>> 4e4549e56b67a7b4dea437b7120c3145ada194bf
//--------------------------------------------------------------------------

Module ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper {
  DataInPort                             adr[8:0] { 
    Attribute connection_rule_option = "allowed_no_source"; 
    Attribute tessent_memory_bist_function = "address";
  }
  ClockPort                              clk;
  DataInPort                             row_repair_in[25:0] { Attribute connection_rule_option = "allowed_no_source"; }
  DataInPort                             col_repair_in[12:0] { Attribute connection_rule_option = "allowed_no_source"; }
  Attribute tessent_use_in_dft_specification = "false"; 
  Attribute keep_active_during_scan_test     = "false"; 
  Attribute tessent_memory_module            = "without_internal_scan_logic";
}
