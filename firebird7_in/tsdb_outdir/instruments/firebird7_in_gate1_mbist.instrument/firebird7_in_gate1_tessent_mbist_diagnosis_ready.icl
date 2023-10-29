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
//       Created on: Sun Oct 29 14:14:48 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_mbist_diagnosis_ready {
 
  ResetPort     ijtag_reset { ActivePolarity 0; }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so { Source sib; }
  DataInPort    DiagnosisReady_ctl_in {
    Attribute tessent_memory_bist_function = "diagnosis_ready_status";
  }
  Alias DiagnosisReady_ctl_in_enable = tdr;
  DataInPort    DiagnosisReady_aux_in {
    Attribute connection_rule_option = "allowed_tied_high";
    Attribute tessent_memory_bist_function = "diagnosis_ready_status";
  }
  DataOutPort   StableBlock {
    Attribute forced_high_dft_signal_list = "memory_diagnosis_mode";
    Attribute tessent_memory_bist_function = "diagnosis_ready_status";
    Attribute tessent_use_in_dft_specification = "false";
  }
  ScanRegister tdr {
    ScanInSource     ijtag_si;
    CaptureSource    1'b0;
    ResetValue       1'b0;
    DefaultLoadValue 1'b0;
  }
  ScanRegister sib {
    ScanInSource    DiagnosisReadyScanMux;
    CaptureSource    1'bx;
    ResetValue       1'b0;
    DefaultLoadValue 1'b0;
  }
  ScanMux DiagnosisReadyScanMux SelectedBy sib {
    1'b0        :   ijtag_si;
    1'b1        :   tdr;
  }
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::memory_bist";
  Attribute tessent_instrument_subtype       = "memory_diagnosis_logic";
  Attribute tessent_signature                = "b9648940d660dc9b17d4a4eab504024e";
}
