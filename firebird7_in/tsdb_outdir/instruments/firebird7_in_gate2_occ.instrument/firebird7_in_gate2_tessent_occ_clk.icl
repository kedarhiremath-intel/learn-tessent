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
//       Created on: Tue Oct 24 19:28:52 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_occ_clk {
   ClockPort fast_clock {
     Attribute icl_extraction_port_trigger_list = "clock_out";
   }
   ToClockPort clock_out {
     Source tck_mux;
     Attribute exclude_from_sdc = "true";
   }
   TCKPort ijtag_tck;
   ScanInPort ijtag_si;
   ScanOutPort ijtag_so {
      Source tdr_sib.scan_out;
   }
   ResetPort ijtag_reset {
      ActivePolarity 0;
   }
   CaptureEnPort ijtag_ce;
   ShiftEnPort ijtag_se;
   UpdateEnPort ijtag_ue;
   SelectPort ijtag_sel;
  
   Instance tdr_sib Of firebird7_in_gate2_tessent_occ_clk_sib_int {
      InputPort clock         = ijtag_tck;
      InputPort reset         = ijtag_reset;
      InputPort scan_in       = ijtag_si;
      InputPort capture_en    = ijtag_ce;
      InputPort shift_en      = ijtag_se;
      InputPort update_en     = ijtag_ue;
      InputPort enable        = ijtag_sel;
      InputPort from_scan_out = tdr[0];
   }
  
   ScanRegister tdr[6:0] {
      ScanInSource  ijtag_si;
      CaptureSource 7'b0000000;
      ResetValue    7'b0000000;
   }
  
   ClockMux tck_mux SelectedBy inject_tck {
     1'b1 : ijtag_tck;
     1'b0 : fast_clock;
   }
 
   Alias test_mode = tdr[0];
   Alias fast_capture_mode = tdr[1];
   Alias active_upstream_parent_occ = tdr[2];
   Alias capture_cycle_width[2:0] = tdr[5:3];
   Alias inject_tck = tdr[6];
  
   Attribute keep_active_during_scan_test = "true";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_instrument_type      = "mentor::occ";
   Attribute tessent_instrument_subtype   = "standard";
   Attribute tessent_instrument_container = "firebird7_in_gate2_occ.instrument";
   Attribute tessent_signature            = "c74b90eca422582a2168fea0a77c3307";
}
 
 
Module firebird7_in_gate2_tessent_occ_clk_sib_int {
   TCKPort clock;
   ResetPort reset {
      ActivePolarity 0;
   }
   ScanInPort scan_in;
   ScanOutPort scan_out { 
      Source sib; 
   }
   CaptureEnPort capture_en;
   ShiftEnPort shift_en;
   UpdateEnPort update_en;
   SelectPort enable;
   ToSelectPort to_scan_en {
      Source to_scan_en_and;
   }
   ScanInPort from_scan_out;
  
   ScanRegister sib {
      ScanInSource  scan_in_mux;
      CaptureSource 1'b0;
      ResetValue    1'b0;
   }
   ScanMux scan_in_mux SelectedBy sib {
       1'b0: scan_in;
       1'b1: from_scan_out;
   }
   LogicSignal to_scan_en_and  {
       (enable, sib) == 2'b11;
   }
   ScanInterface client {
      Port scan_in;
      Port scan_out;
      Port enable;
   }
   ScanInterface host {
      Port from_scan_out;
      Port to_scan_en;
   }
}
 
 
