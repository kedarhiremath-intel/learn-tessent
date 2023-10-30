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
//       Created on: Sun Oct 29 23:49:35 PDT 2023
=======
//       Created on: Sun Oct 29 14:14:07 PDT 2023
>>>>>>> 4e4549e56b67a7b4dea437b7120c3145ada194bf
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_sib_spare_insysbist {
 
   ResetPort     ijtag_reset            { ActivePolarity 0;      }
   SelectPort    ijtag_sel;
   ScanInPort    ijtag_si;
   CaptureEnPort ijtag_ce;
   ShiftEnPort   ijtag_se;
   UpdateEnPort  ijtag_ue;
   TCKPort       ijtag_tck;
   ScanOutPort   ijtag_so               { Source sib;            }
   ToSelectPort  ijtag_to_sel           { 
     Attribute connection_rule_option = "allowed_no_destination"; 
   }
   ScanInPort    ijtag_from_so          { 
     Attribute connection_rule_option = "allowed_no_source"; 
   }
 
   ScanInterface client { 
     Port ijtag_si; 
     Port ijtag_so; 
     Port ijtag_sel;
   }
   ScanInterface host   { 
     Port ijtag_from_so; 
     Port ijtag_to_sel; 
   }
  
   Attribute keep_active_during_scan_test = "true";
  
   ScanRegister sib {
     ScanInSource    scan_in_mux;
     CaptureSource   1'b0;
     ResetValue      1'b0;
   }
 
   ScanMux scan_in_mux SelectedBy sib {
     1'b0 : ijtag_si;
     1'b1 : ijtag_from_so;
   }
 
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_instrument_type          = "mentor::ijtag_node";
   Attribute tessent_signature                = "6000e4e11b9857c873244c920f07738b";
}
