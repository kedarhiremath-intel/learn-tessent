//--------------------------------------------------------------------------------
//
//  Unpublished work. Copyright 2022 Siemens
//
//  This material contains trade secrets or otherwise confidential 
//  information owned by Siemens Industry Software Inc. or its affiliates 
//  (collectively, SISW), or its licensors. Access to and use of this 
//  information is strictly limited as set forth in the Customer's 
//  applicable agreements with SISW.
//
//--------------------------------------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Sun Oct 29 14:37:28 PDT 2023
//--------------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_edt_extest_edt {
   DataInPort edt_low_power_shift_en {
      RefEnum OnOffTable;
      Attribute tessent_no_input_constraints = "on";
   }
   DataInPort edt_bypass {
      RefEnum OnOffTable;
      Attribute tessent_no_input_constraints = "on";
   }

   Enum OnOffTable {
      off = 1'b0;
      on  = 1'b1;
   }

   Attribute keep_active_during_scan_test = "true";

   Attribute tessent_instrument_type = "mentor::edt";
   Attribute tessent_signature = "7ecb095f1bb55ff65a753355841decfa";
}

