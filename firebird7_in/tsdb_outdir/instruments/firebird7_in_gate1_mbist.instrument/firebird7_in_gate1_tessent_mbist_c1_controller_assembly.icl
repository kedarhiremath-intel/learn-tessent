//-------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Sun Nov  5 08:29:02 PST 2023
//-------------------------------------------------


Module firebird7_in_gate1_tessent_mbist_c1_controller_assembly {
   // Created by ICL extraction
   DataOutPort BIST_DONE {
      Source firebird7_in_gate1_tessent_mbist_c1_controller_inst.MBISTPG_DONE;
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataOutPort BIST_GO {
      Source firebird7_in_gate1_tessent_mbist_c1_controller_inst.MBISTPG_GO;
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort LV_TM {
      DefaultLoadValue 1'b0;
      Attribute tessent_timing = "scan_reconfiguration";
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataOutPort MBISTPG_STABLE {
      Source MBISTPG_STABLE_ohg;
      Attribute forced_high_dft_signal_list = "memory_diagnosis_mode";
      Attribute connection_rule_option = "auxiliary_data_inverse";
      Attribute tessent_memory_bist_function = "diagnosis_ready_status";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort bisr_clear {
      DefaultLoadValue 1'b1;
      Attribute tessent_timing = "scan_reconfiguration";
      Attribute tessent_no_input_constraints = "on";
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_use_in_dft_specification = "false";
      Attribute associated_scan_interface = "bisr_chain";
      Attribute tessent_bisr_function = "Reset";
   }
   CaptureEnPort bisr_clock {
      Attribute function_modifier = "CaptureShiftClock";
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   ShiftEnPort bisr_se {
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   ScanInPort bisr_si {
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   ScanOutPort bisr_so {
      Source c1_gate1_m40_bisr_inst.SO;
      Attribute tessent_use_in_dft_specification = "false";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   CaptureEnPort capture_en;
   ClockPort clk_clk_bbm {
      Attribute tessent_clock_domain_labels = "clk_clk_bbm clk_clk_bbm";
      Attribute tessent_clock_periods = "all 0.783ns";
   }
   SelectPort ijtag_select;
   DataInPort m10_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m10_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m11_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m12_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m13_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m14_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m15_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m16_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m17_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m18_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m19_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m1_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m20_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m21_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m22_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m23_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m24_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m25_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m26_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m27_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m28_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m29_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m2_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m30_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m31_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m32_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m33_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m34_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m35_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m36_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m37_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m38_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m39_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m3_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m40_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m4_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m5_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m6_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m7_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m8_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[7] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_col_repair_in[6] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[25] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[24] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[23] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[22] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[21] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[12] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[11] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[10] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[9] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   DataInPort m9_inst_row_repair_in[8] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_use_in_dft_specification = "false";
   }
   ResetPort reset {
      ActivePolarity 0;
   }
   ShiftEnPort shift_en;
   ScanInPort si;
   ScanOutPort so {
      Source firebird7_in_gate1_tessent_mbist_bap_inst.so;
   }
   TCKPort tck;
   UpdateEnPort update_en;
   ScanInterface bisr_chain {
      Attribute tessent_chain_length = 896;
      Port bisr_clock;
      Port bisr_se;
      Port bisr_si;
      Port bisr_so;
   }
   ScanInterface C0 {
      Port si;
      Port so;
      Port ijtag_select;
      Port shift_en;
      Port capture_en;
      Port update_en;
      Port reset;
      Port tck;
   }
   Attribute tessent_design_format = "verilog_2001";
   Attribute test_setup_procfile = "";
   Attribute forced_low_input_port_list = 
       "{MCP_BOUNDING_EN} {MEM_BYPASS_EN} {m10_inst_async_rst} {m10_inst_deepsleep} "
       ,"{m10_inst_fastsleep} {m10_inst_global_rrow_en_in[0]} ",
       "{m10_inst_global_rrow_en_in[1]} {m10_inst_isolation_control_in} {m10_inst_mce} "
       ,
       "{m10_inst_ra[0]} {m10_inst_ra[1]} {m10_inst_rmce[0]} {m10_inst_rmce[1]} "
       ,
       "{m10_inst_rmce[2]} {m10_inst_rmce[3]} {m10_inst_sbc[0]} {m10_inst_sbc[1]} "
       ,"{m10_inst_shutoff} {m10_inst_stbyp} {m10_inst_wa[0]} {m10_inst_wa[1]} ",
       "{m10_inst_wa[2]} {m10_inst_wa_disable} {m10_inst_wmce[0]} {m10_inst_wmce[1]} "
       ,"{m10_inst_wpulse[0]} {m10_inst_wpulse[1]} {m11_inst_async_rst} ",
       "{m11_inst_deepsleep} {m11_inst_fastsleep} {m11_inst_global_rrow_en_in[0]} "
       ,
       "{m11_inst_global_rrow_en_in[1]} {m11_inst_isolation_control_in} {m11_inst_mce} "
       ,
       "{m11_inst_ra[0]} {m11_inst_ra[1]} {m11_inst_rmce[0]} {m11_inst_rmce[1]} "
       ,
       "{m11_inst_rmce[2]} {m11_inst_rmce[3]} {m11_inst_sbc[0]} {m11_inst_sbc[1]} "
       ,"{m11_inst_shutoff} {m11_inst_stbyp} {m11_inst_wa[0]} {m11_inst_wa[1]} ",
       "{m11_inst_wa[2]} {m11_inst_wa_disable} {m11_inst_wmce[0]} {m11_inst_wmce[1]} "
       ,"{m11_inst_wpulse[0]} {m11_inst_wpulse[1]} {m12_inst_async_rst} ",
       "{m12_inst_deepsleep} {m12_inst_fastsleep} {m12_inst_global_rrow_en_in[0]} "
       ,
       "{m12_inst_global_rrow_en_in[1]} {m12_inst_isolation_control_in} {m12_inst_mce} "
       ,
       "{m12_inst_ra[0]} {m12_inst_ra[1]} {m12_inst_rmce[0]} {m12_inst_rmce[1]} "
       ,
       "{m12_inst_rmce[2]} {m12_inst_rmce[3]} {m12_inst_sbc[0]} {m12_inst_sbc[1]} "
       ,"{m12_inst_shutoff} {m12_inst_stbyp} {m12_inst_wa[0]} {m12_inst_wa[1]} ",
       "{m12_inst_wa[2]} {m12_inst_wa_disable} {m12_inst_wmce[0]} {m12_inst_wmce[1]} "
       ,"{m12_inst_wpulse[0]} {m12_inst_wpulse[1]} {m13_inst_async_rst} ",
       "{m13_inst_deepsleep} {m13_inst_fastsleep} {m13_inst_global_rrow_en_in[0]} "
       ,
       "{m13_inst_global_rrow_en_in[1]} {m13_inst_isolation_control_in} {m13_inst_mce} "
       ,
       "{m13_inst_ra[0]} {m13_inst_ra[1]} {m13_inst_rmce[0]} {m13_inst_rmce[1]} "
       ,
       "{m13_inst_rmce[2]} {m13_inst_rmce[3]} {m13_inst_sbc[0]} {m13_inst_sbc[1]} "
       ,"{m13_inst_shutoff} {m13_inst_stbyp} {m13_inst_wa[0]} {m13_inst_wa[1]} ",
       "{m13_inst_wa[2]} {m13_inst_wa_disable} {m13_inst_wmce[0]} {m13_inst_wmce[1]} "
       ,"{m13_inst_wpulse[0]} {m13_inst_wpulse[1]} {m14_inst_async_rst} ",
       "{m14_inst_deepsleep} {m14_inst_fastsleep} {m14_inst_global_rrow_en_in[0]} "
       ,
       "{m14_inst_global_rrow_en_in[1]} {m14_inst_isolation_control_in} {m14_inst_mce} "
       ,
       "{m14_inst_ra[0]} {m14_inst_ra[1]} {m14_inst_rmce[0]} {m14_inst_rmce[1]} "
       ,
       "{m14_inst_rmce[2]} {m14_inst_rmce[3]} {m14_inst_sbc[0]} {m14_inst_sbc[1]} "
       ,"{m14_inst_shutoff} {m14_inst_stbyp} {m14_inst_wa[0]} {m14_inst_wa[1]} ",
       "{m14_inst_wa[2]} {m14_inst_wa_disable} {m14_inst_wmce[0]} {m14_inst_wmce[1]} "
       ,"{m14_inst_wpulse[0]} {m14_inst_wpulse[1]} {m15_inst_async_rst} ",
       "{m15_inst_deepsleep} {m15_inst_fastsleep} {m15_inst_global_rrow_en_in[0]} "
       ,
       "{m15_inst_global_rrow_en_in[1]} {m15_inst_isolation_control_in} {m15_inst_mce} "
       ,
       "{m15_inst_ra[0]} {m15_inst_ra[1]} {m15_inst_rmce[0]} {m15_inst_rmce[1]} "
       ,
       "{m15_inst_rmce[2]} {m15_inst_rmce[3]} {m15_inst_sbc[0]} {m15_inst_sbc[1]} "
       ,"{m15_inst_shutoff} {m15_inst_stbyp} {m15_inst_wa[0]} {m15_inst_wa[1]} ",
       "{m15_inst_wa[2]} {m15_inst_wa_disable} {m15_inst_wmce[0]} {m15_inst_wmce[1]} "
       ,"{m15_inst_wpulse[0]} {m15_inst_wpulse[1]} {m16_inst_async_rst} ",
       "{m16_inst_deepsleep} {m16_inst_fastsleep} {m16_inst_global_rrow_en_in[0]} "
       ,
       "{m16_inst_global_rrow_en_in[1]} {m16_inst_isolation_control_in} {m16_inst_mce} "
       ,
       "{m16_inst_ra[0]} {m16_inst_ra[1]} {m16_inst_rmce[0]} {m16_inst_rmce[1]} "
       ,
       "{m16_inst_rmce[2]} {m16_inst_rmce[3]} {m16_inst_sbc[0]} {m16_inst_sbc[1]} "
       ,"{m16_inst_shutoff} {m16_inst_stbyp} {m16_inst_wa[0]} {m16_inst_wa[1]} ",
       "{m16_inst_wa[2]} {m16_inst_wa_disable} {m16_inst_wmce[0]} {m16_inst_wmce[1]} "
       ,"{m16_inst_wpulse[0]} {m16_inst_wpulse[1]} {m17_inst_async_rst} ",
       "{m17_inst_deepsleep} {m17_inst_fastsleep} {m17_inst_global_rrow_en_in[0]} "
       ,
       "{m17_inst_global_rrow_en_in[1]} {m17_inst_isolation_control_in} {m17_inst_mce} "
       ,
       "{m17_inst_ra[0]} {m17_inst_ra[1]} {m17_inst_rmce[0]} {m17_inst_rmce[1]} "
       ,
       "{m17_inst_rmce[2]} {m17_inst_rmce[3]} {m17_inst_sbc[0]} {m17_inst_sbc[1]} "
       ,"{m17_inst_shutoff} {m17_inst_stbyp} {m17_inst_wa[0]} {m17_inst_wa[1]} ",
       "{m17_inst_wa[2]} {m17_inst_wa_disable} {m17_inst_wmce[0]} {m17_inst_wmce[1]} "
       ,"{m17_inst_wpulse[0]} {m17_inst_wpulse[1]} {m18_inst_async_rst} ",
       "{m18_inst_deepsleep} {m18_inst_fastsleep} {m18_inst_global_rrow_en_in[0]} "
       ,
       "{m18_inst_global_rrow_en_in[1]} {m18_inst_isolation_control_in} {m18_inst_mce} "
       ,
       "{m18_inst_ra[0]} {m18_inst_ra[1]} {m18_inst_rmce[0]} {m18_inst_rmce[1]} "
       ,
       "{m18_inst_rmce[2]} {m18_inst_rmce[3]} {m18_inst_sbc[0]} {m18_inst_sbc[1]} "
       ,"{m18_inst_shutoff} {m18_inst_stbyp} {m18_inst_wa[0]} {m18_inst_wa[1]} ",
       "{m18_inst_wa[2]} {m18_inst_wa_disable} {m18_inst_wmce[0]} {m18_inst_wmce[1]} "
       ,"{m18_inst_wpulse[0]} {m18_inst_wpulse[1]} {m19_inst_async_rst} ",
       "{m19_inst_deepsleep} {m19_inst_fastsleep} {m19_inst_global_rrow_en_in[0]} "
       ,
       "{m19_inst_global_rrow_en_in[1]} {m19_inst_isolation_control_in} {m19_inst_mce} "
       ,
       "{m19_inst_ra[0]} {m19_inst_ra[1]} {m19_inst_rmce[0]} {m19_inst_rmce[1]} "
       ,
       "{m19_inst_rmce[2]} {m19_inst_rmce[3]} {m19_inst_sbc[0]} {m19_inst_sbc[1]} "
       ,"{m19_inst_shutoff} {m19_inst_stbyp} {m19_inst_wa[0]} {m19_inst_wa[1]} ",
       "{m19_inst_wa[2]} {m19_inst_wa_disable} {m19_inst_wmce[0]} {m19_inst_wmce[1]} "
       ,"{m19_inst_wpulse[0]} {m19_inst_wpulse[1]} {m1_inst_async_rst} ",
       "{m1_inst_deepsleep} {m1_inst_fastsleep} {m1_inst_global_rrow_en_in[0]} ",
       "{m1_inst_global_rrow_en_in[1]} {m1_inst_isolation_control_in} {m1_inst_mce} "
       ,"{m1_inst_ra[0]} {m1_inst_ra[1]} {m1_inst_rmce[0]} {m1_inst_rmce[1]} ",
       "{m1_inst_rmce[2]} {m1_inst_rmce[3]} {m1_inst_sbc[0]} {m1_inst_sbc[1]} ",
       "{m1_inst_shutoff} {m1_inst_stbyp} {m1_inst_wa[0]} {m1_inst_wa[1]} ",
       "{m1_inst_wa[2]} {m1_inst_wa_disable} {m1_inst_wmce[0]} {m1_inst_wmce[1]} "
       ,"{m1_inst_wpulse[0]} {m1_inst_wpulse[1]} {m20_inst_async_rst} ",
       "{m20_inst_deepsleep} {m20_inst_fastsleep} {m20_inst_global_rrow_en_in[0]} "
       ,
       "{m20_inst_global_rrow_en_in[1]} {m20_inst_isolation_control_in} {m20_inst_mce} "
       ,
       "{m20_inst_ra[0]} {m20_inst_ra[1]} {m20_inst_rmce[0]} {m20_inst_rmce[1]} "
       ,
       "{m20_inst_rmce[2]} {m20_inst_rmce[3]} {m20_inst_sbc[0]} {m20_inst_sbc[1]} "
       ,"{m20_inst_shutoff} {m20_inst_stbyp} {m20_inst_wa[0]} {m20_inst_wa[1]} ",
       "{m20_inst_wa[2]} {m20_inst_wa_disable} {m20_inst_wmce[0]} {m20_inst_wmce[1]} "
       ,"{m20_inst_wpulse[0]} {m20_inst_wpulse[1]} {m21_inst_async_rst} ",
       "{m21_inst_deepsleep} {m21_inst_fastsleep} {m21_inst_global_rrow_en_in[0]} "
       ,
       "{m21_inst_global_rrow_en_in[1]} {m21_inst_isolation_control_in} {m21_inst_mce} "
       ,
       "{m21_inst_ra[0]} {m21_inst_ra[1]} {m21_inst_rmce[0]} {m21_inst_rmce[1]} "
       ,
       "{m21_inst_rmce[2]} {m21_inst_rmce[3]} {m21_inst_sbc[0]} {m21_inst_sbc[1]} "
       ,"{m21_inst_shutoff} {m21_inst_stbyp} {m21_inst_wa[0]} {m21_inst_wa[1]} ",
       "{m21_inst_wa[2]} {m21_inst_wa_disable} {m21_inst_wmce[0]} {m21_inst_wmce[1]} "
       ,"{m21_inst_wpulse[0]} {m21_inst_wpulse[1]} {m22_inst_async_rst} ",
       "{m22_inst_deepsleep} {m22_inst_fastsleep} {m22_inst_global_rrow_en_in[0]} "
       ,
       "{m22_inst_global_rrow_en_in[1]} {m22_inst_isolation_control_in} {m22_inst_mce} "
       ,
       "{m22_inst_ra[0]} {m22_inst_ra[1]} {m22_inst_rmce[0]} {m22_inst_rmce[1]} "
       ,
       "{m22_inst_rmce[2]} {m22_inst_rmce[3]} {m22_inst_sbc[0]} {m22_inst_sbc[1]} "
       ,"{m22_inst_shutoff} {m22_inst_stbyp} {m22_inst_wa[0]} {m22_inst_wa[1]} ",
       "{m22_inst_wa[2]} {m22_inst_wa_disable} {m22_inst_wmce[0]} {m22_inst_wmce[1]} "
       ,"{m22_inst_wpulse[0]} {m22_inst_wpulse[1]} {m23_inst_async_rst} ",
       "{m23_inst_deepsleep} {m23_inst_fastsleep} {m23_inst_global_rrow_en_in[0]} "
       ,
       "{m23_inst_global_rrow_en_in[1]} {m23_inst_isolation_control_in} {m23_inst_mce} "
       ,
       "{m23_inst_ra[0]} {m23_inst_ra[1]} {m23_inst_rmce[0]} {m23_inst_rmce[1]} "
       ,
       "{m23_inst_rmce[2]} {m23_inst_rmce[3]} {m23_inst_sbc[0]} {m23_inst_sbc[1]} "
       ,"{m23_inst_shutoff} {m23_inst_stbyp} {m23_inst_wa[0]} {m23_inst_wa[1]} ",
       "{m23_inst_wa[2]} {m23_inst_wa_disable} {m23_inst_wmce[0]} {m23_inst_wmce[1]} "
       ,"{m23_inst_wpulse[0]} {m23_inst_wpulse[1]} {m24_inst_async_rst} ",
       "{m24_inst_deepsleep} {m24_inst_fastsleep} {m24_inst_global_rrow_en_in[0]} "
       ,
       "{m24_inst_global_rrow_en_in[1]} {m24_inst_isolation_control_in} {m24_inst_mce} "
       ,
       "{m24_inst_ra[0]} {m24_inst_ra[1]} {m24_inst_rmce[0]} {m24_inst_rmce[1]} "
       ,
       "{m24_inst_rmce[2]} {m24_inst_rmce[3]} {m24_inst_sbc[0]} {m24_inst_sbc[1]} "
       ,"{m24_inst_shutoff} {m24_inst_stbyp} {m24_inst_wa[0]} {m24_inst_wa[1]} ",
       "{m24_inst_wa[2]} {m24_inst_wa_disable} {m24_inst_wmce[0]} {m24_inst_wmce[1]} "
       ,"{m24_inst_wpulse[0]} {m24_inst_wpulse[1]} {m25_inst_async_rst} ",
       "{m25_inst_deepsleep} {m25_inst_fastsleep} {m25_inst_global_rrow_en_in[0]} "
       ,
       "{m25_inst_global_rrow_en_in[1]} {m25_inst_isolation_control_in} {m25_inst_mce} "
       ,
       "{m25_inst_ra[0]} {m25_inst_ra[1]} {m25_inst_rmce[0]} {m25_inst_rmce[1]} "
       ,
       "{m25_inst_rmce[2]} {m25_inst_rmce[3]} {m25_inst_sbc[0]} {m25_inst_sbc[1]} "
       ,"{m25_inst_shutoff} {m25_inst_stbyp} {m25_inst_wa[0]} {m25_inst_wa[1]} ",
       "{m25_inst_wa[2]} {m25_inst_wa_disable} {m25_inst_wmce[0]} {m25_inst_wmce[1]} "
       ,"{m25_inst_wpulse[0]} {m25_inst_wpulse[1]} {m26_inst_async_rst} ",
       "{m26_inst_deepsleep} {m26_inst_fastsleep} {m26_inst_global_rrow_en_in[0]} "
       ,
       "{m26_inst_global_rrow_en_in[1]} {m26_inst_isolation_control_in} {m26_inst_mce} "
       ,
       "{m26_inst_ra[0]} {m26_inst_ra[1]} {m26_inst_rmce[0]} {m26_inst_rmce[1]} "
       ,
       "{m26_inst_rmce[2]} {m26_inst_rmce[3]} {m26_inst_sbc[0]} {m26_inst_sbc[1]} "
       ,"{m26_inst_shutoff} {m26_inst_stbyp} {m26_inst_wa[0]} {m26_inst_wa[1]} ",
       "{m26_inst_wa[2]} {m26_inst_wa_disable} {m26_inst_wmce[0]} {m26_inst_wmce[1]} "
       ,"{m26_inst_wpulse[0]} {m26_inst_wpulse[1]} {m27_inst_async_rst} ",
       "{m27_inst_deepsleep} {m27_inst_fastsleep} {m27_inst_global_rrow_en_in[0]} "
       ,
       "{m27_inst_global_rrow_en_in[1]} {m27_inst_isolation_control_in} {m27_inst_mce} "
       ,
       "{m27_inst_ra[0]} {m27_inst_ra[1]} {m27_inst_rmce[0]} {m27_inst_rmce[1]} "
       ,
       "{m27_inst_rmce[2]} {m27_inst_rmce[3]} {m27_inst_sbc[0]} {m27_inst_sbc[1]} "
       ,"{m27_inst_shutoff} {m27_inst_stbyp} {m27_inst_wa[0]} {m27_inst_wa[1]} ",
       "{m27_inst_wa[2]} {m27_inst_wa_disable} {m27_inst_wmce[0]} {m27_inst_wmce[1]} "
       ,"{m27_inst_wpulse[0]} {m27_inst_wpulse[1]} {m28_inst_async_rst} ",
       "{m28_inst_deepsleep} {m28_inst_fastsleep} {m28_inst_global_rrow_en_in[0]} "
       ,
       "{m28_inst_global_rrow_en_in[1]} {m28_inst_isolation_control_in} {m28_inst_mce} "
       ,
       "{m28_inst_ra[0]} {m28_inst_ra[1]} {m28_inst_rmce[0]} {m28_inst_rmce[1]} "
       ,
       "{m28_inst_rmce[2]} {m28_inst_rmce[3]} {m28_inst_sbc[0]} {m28_inst_sbc[1]} "
       ,"{m28_inst_shutoff} {m28_inst_stbyp} {m28_inst_wa[0]} {m28_inst_wa[1]} ",
       "{m28_inst_wa[2]} {m28_inst_wa_disable} {m28_inst_wmce[0]} {m28_inst_wmce[1]} "
       ,"{m28_inst_wpulse[0]} {m28_inst_wpulse[1]} {m29_inst_async_rst} ",
       "{m29_inst_deepsleep} {m29_inst_fastsleep} {m29_inst_global_rrow_en_in[0]} "
       ,
       "{m29_inst_global_rrow_en_in[1]} {m29_inst_isolation_control_in} {m29_inst_mce} "
       ,
       "{m29_inst_ra[0]} {m29_inst_ra[1]} {m29_inst_rmce[0]} {m29_inst_rmce[1]} "
       ,
       "{m29_inst_rmce[2]} {m29_inst_rmce[3]} {m29_inst_sbc[0]} {m29_inst_sbc[1]} "
       ,"{m29_inst_shutoff} {m29_inst_stbyp} {m29_inst_wa[0]} {m29_inst_wa[1]} ",
       "{m29_inst_wa[2]} {m29_inst_wa_disable} {m29_inst_wmce[0]} {m29_inst_wmce[1]} "
       ,"{m29_inst_wpulse[0]} {m29_inst_wpulse[1]} {m2_inst_async_rst} ",
       "{m2_inst_deepsleep} {m2_inst_fastsleep} {m2_inst_global_rrow_en_in[0]} ",
       "{m2_inst_global_rrow_en_in[1]} {m2_inst_isolation_control_in} {m2_inst_mce} "
       ,"{m2_inst_ra[0]} {m2_inst_ra[1]} {m2_inst_rmce[0]} {m2_inst_rmce[1]} ",
       "{m2_inst_rmce[2]} {m2_inst_rmce[3]} {m2_inst_sbc[0]} {m2_inst_sbc[1]} ",
       "{m2_inst_shutoff} {m2_inst_stbyp} {m2_inst_wa[0]} {m2_inst_wa[1]} ",
       "{m2_inst_wa[2]} {m2_inst_wa_disable} {m2_inst_wmce[0]} {m2_inst_wmce[1]} "
       ,"{m2_inst_wpulse[0]} {m2_inst_wpulse[1]} {m30_inst_async_rst} ",
       "{m30_inst_deepsleep} {m30_inst_fastsleep} {m30_inst_global_rrow_en_in[0]} "
       ,
       "{m30_inst_global_rrow_en_in[1]} {m30_inst_isolation_control_in} {m30_inst_mce} "
       ,
       "{m30_inst_ra[0]} {m30_inst_ra[1]} {m30_inst_rmce[0]} {m30_inst_rmce[1]} "
       ,
       "{m30_inst_rmce[2]} {m30_inst_rmce[3]} {m30_inst_sbc[0]} {m30_inst_sbc[1]} "
       ,"{m30_inst_shutoff} {m30_inst_stbyp} {m30_inst_wa[0]} {m30_inst_wa[1]} ",
       "{m30_inst_wa[2]} {m30_inst_wa_disable} {m30_inst_wmce[0]} {m30_inst_wmce[1]} "
       ,"{m30_inst_wpulse[0]} {m30_inst_wpulse[1]} {m31_inst_async_rst} ",
       "{m31_inst_deepsleep} {m31_inst_fastsleep} {m31_inst_global_rrow_en_in[0]} "
       ,
       "{m31_inst_global_rrow_en_in[1]} {m31_inst_isolation_control_in} {m31_inst_mce} "
       ,
       "{m31_inst_ra[0]} {m31_inst_ra[1]} {m31_inst_rmce[0]} {m31_inst_rmce[1]} "
       ,
       "{m31_inst_rmce[2]} {m31_inst_rmce[3]} {m31_inst_sbc[0]} {m31_inst_sbc[1]} "
       ,"{m31_inst_shutoff} {m31_inst_stbyp} {m31_inst_wa[0]} {m31_inst_wa[1]} ",
       "{m31_inst_wa[2]} {m31_inst_wa_disable} {m31_inst_wmce[0]} {m31_inst_wmce[1]} "
       ,"{m31_inst_wpulse[0]} {m31_inst_wpulse[1]} {m32_inst_async_rst} ",
       "{m32_inst_deepsleep} {m32_inst_fastsleep} {m32_inst_global_rrow_en_in[0]} "
       ,
       "{m32_inst_global_rrow_en_in[1]} {m32_inst_isolation_control_in} {m32_inst_mce} "
       ,
       "{m32_inst_ra[0]} {m32_inst_ra[1]} {m32_inst_rmce[0]} {m32_inst_rmce[1]} "
       ,
       "{m32_inst_rmce[2]} {m32_inst_rmce[3]} {m32_inst_sbc[0]} {m32_inst_sbc[1]} "
       ,"{m32_inst_shutoff} {m32_inst_stbyp} {m32_inst_wa[0]} {m32_inst_wa[1]} ",
       "{m32_inst_wa[2]} {m32_inst_wa_disable} {m32_inst_wmce[0]} {m32_inst_wmce[1]} "
       ,"{m32_inst_wpulse[0]} {m32_inst_wpulse[1]} {m33_inst_async_rst} ",
       "{m33_inst_deepsleep} {m33_inst_fastsleep} {m33_inst_global_rrow_en_in[0]} "
       ,
       "{m33_inst_global_rrow_en_in[1]} {m33_inst_isolation_control_in} {m33_inst_mce} "
       ,
       "{m33_inst_ra[0]} {m33_inst_ra[1]} {m33_inst_rmce[0]} {m33_inst_rmce[1]} "
       ,
       "{m33_inst_rmce[2]} {m33_inst_rmce[3]} {m33_inst_sbc[0]} {m33_inst_sbc[1]} "
       ,"{m33_inst_shutoff} {m33_inst_stbyp} {m33_inst_wa[0]} {m33_inst_wa[1]} ",
       "{m33_inst_wa[2]} {m33_inst_wa_disable} {m33_inst_wmce[0]} {m33_inst_wmce[1]} "
       ,"{m33_inst_wpulse[0]} {m33_inst_wpulse[1]} {m34_inst_async_rst} ",
       "{m34_inst_deepsleep} {m34_inst_fastsleep} {m34_inst_global_rrow_en_in[0]} "
       ,
       "{m34_inst_global_rrow_en_in[1]} {m34_inst_isolation_control_in} {m34_inst_mce} "
       ,
       "{m34_inst_ra[0]} {m34_inst_ra[1]} {m34_inst_rmce[0]} {m34_inst_rmce[1]} "
       ,
       "{m34_inst_rmce[2]} {m34_inst_rmce[3]} {m34_inst_sbc[0]} {m34_inst_sbc[1]} "
       ,"{m34_inst_shutoff} {m34_inst_stbyp} {m34_inst_wa[0]} {m34_inst_wa[1]} ",
       "{m34_inst_wa[2]} {m34_inst_wa_disable} {m34_inst_wmce[0]} {m34_inst_wmce[1]} "
       ,"{m34_inst_wpulse[0]} {m34_inst_wpulse[1]} {m35_inst_async_rst} ",
       "{m35_inst_deepsleep} {m35_inst_fastsleep} {m35_inst_global_rrow_en_in[0]} "
       ,
       "{m35_inst_global_rrow_en_in[1]} {m35_inst_isolation_control_in} {m35_inst_mce} "
       ,
       "{m35_inst_ra[0]} {m35_inst_ra[1]} {m35_inst_rmce[0]} {m35_inst_rmce[1]} "
       ,
       "{m35_inst_rmce[2]} {m35_inst_rmce[3]} {m35_inst_sbc[0]} {m35_inst_sbc[1]} "
       ,"{m35_inst_shutoff} {m35_inst_stbyp} {m35_inst_wa[0]} {m35_inst_wa[1]} ",
       "{m35_inst_wa[2]} {m35_inst_wa_disable} {m35_inst_wmce[0]} {m35_inst_wmce[1]} "
       ,"{m35_inst_wpulse[0]} {m35_inst_wpulse[1]} {m36_inst_async_rst} ",
       "{m36_inst_deepsleep} {m36_inst_fastsleep} {m36_inst_global_rrow_en_in[0]} "
       ,
       "{m36_inst_global_rrow_en_in[1]} {m36_inst_isolation_control_in} {m36_inst_mce} "
       ,
       "{m36_inst_ra[0]} {m36_inst_ra[1]} {m36_inst_rmce[0]} {m36_inst_rmce[1]} "
       ,
       "{m36_inst_rmce[2]} {m36_inst_rmce[3]} {m36_inst_sbc[0]} {m36_inst_sbc[1]} "
       ,"{m36_inst_shutoff} {m36_inst_stbyp} {m36_inst_wa[0]} {m36_inst_wa[1]} ",
       "{m36_inst_wa[2]} {m36_inst_wa_disable} {m36_inst_wmce[0]} {m36_inst_wmce[1]} "
       ,"{m36_inst_wpulse[0]} {m36_inst_wpulse[1]} {m37_inst_async_rst} ",
       "{m37_inst_deepsleep} {m37_inst_fastsleep} {m37_inst_global_rrow_en_in[0]} "
       ,
       "{m37_inst_global_rrow_en_in[1]} {m37_inst_isolation_control_in} {m37_inst_mce} "
       ,
       "{m37_inst_ra[0]} {m37_inst_ra[1]} {m37_inst_rmce[0]} {m37_inst_rmce[1]} "
       ,
       "{m37_inst_rmce[2]} {m37_inst_rmce[3]} {m37_inst_sbc[0]} {m37_inst_sbc[1]} "
       ,"{m37_inst_shutoff} {m37_inst_stbyp} {m37_inst_wa[0]} {m37_inst_wa[1]} ",
       "{m37_inst_wa[2]} {m37_inst_wa_disable} {m37_inst_wmce[0]} {m37_inst_wmce[1]} "
       ,"{m37_inst_wpulse[0]} {m37_inst_wpulse[1]} {m38_inst_async_rst} ",
       "{m38_inst_deepsleep} {m38_inst_fastsleep} {m38_inst_global_rrow_en_in[0]} "
       ,
       "{m38_inst_global_rrow_en_in[1]} {m38_inst_isolation_control_in} {m38_inst_mce} "
       ,
       "{m38_inst_ra[0]} {m38_inst_ra[1]} {m38_inst_rmce[0]} {m38_inst_rmce[1]} "
       ,
       "{m38_inst_rmce[2]} {m38_inst_rmce[3]} {m38_inst_sbc[0]} {m38_inst_sbc[1]} "
       ,"{m38_inst_shutoff} {m38_inst_stbyp} {m38_inst_wa[0]} {m38_inst_wa[1]} ",
       "{m38_inst_wa[2]} {m38_inst_wa_disable} {m38_inst_wmce[0]} {m38_inst_wmce[1]} "
       ,"{m38_inst_wpulse[0]} {m38_inst_wpulse[1]} {m39_inst_async_rst} ",
       "{m39_inst_deepsleep} {m39_inst_fastsleep} {m39_inst_global_rrow_en_in[0]} "
       ,
       "{m39_inst_global_rrow_en_in[1]} {m39_inst_isolation_control_in} {m39_inst_mce} "
       ,
       "{m39_inst_ra[0]} {m39_inst_ra[1]} {m39_inst_rmce[0]} {m39_inst_rmce[1]} "
       ,
       "{m39_inst_rmce[2]} {m39_inst_rmce[3]} {m39_inst_sbc[0]} {m39_inst_sbc[1]} "
       ,"{m39_inst_shutoff} {m39_inst_stbyp} {m39_inst_wa[0]} {m39_inst_wa[1]} ",
       "{m39_inst_wa[2]} {m39_inst_wa_disable} {m39_inst_wmce[0]} {m39_inst_wmce[1]} "
       ,"{m39_inst_wpulse[0]} {m39_inst_wpulse[1]} {m3_inst_async_rst} ",
       "{m3_inst_deepsleep} {m3_inst_fastsleep} {m3_inst_global_rrow_en_in[0]} ",
       "{m3_inst_global_rrow_en_in[1]} {m3_inst_isolation_control_in} {m3_inst_mce} "
       ,"{m3_inst_ra[0]} {m3_inst_ra[1]} {m3_inst_rmce[0]} {m3_inst_rmce[1]} ",
       "{m3_inst_rmce[2]} {m3_inst_rmce[3]} {m3_inst_sbc[0]} {m3_inst_sbc[1]} ",
       "{m3_inst_shutoff} {m3_inst_stbyp} {m3_inst_wa[0]} {m3_inst_wa[1]} ",
       "{m3_inst_wa[2]} {m3_inst_wa_disable} {m3_inst_wmce[0]} {m3_inst_wmce[1]} "
       ,"{m3_inst_wpulse[0]} {m3_inst_wpulse[1]} {m40_inst_async_rst} ",
       "{m40_inst_deepsleep} {m40_inst_fastsleep} {m40_inst_global_rrow_en_in[0]} "
       ,
       "{m40_inst_global_rrow_en_in[1]} {m40_inst_isolation_control_in} {m40_inst_mce} "
       ,
       "{m40_inst_ra[0]} {m40_inst_ra[1]} {m40_inst_rmce[0]} {m40_inst_rmce[1]} "
       ,
       "{m40_inst_rmce[2]} {m40_inst_rmce[3]} {m40_inst_sbc[0]} {m40_inst_sbc[1]} "
       ,"{m40_inst_shutoff} {m40_inst_stbyp} {m40_inst_wa[0]} {m40_inst_wa[1]} ",
       "{m40_inst_wa[2]} {m40_inst_wa_disable} {m40_inst_wmce[0]} {m40_inst_wmce[1]} "
       ,"{m40_inst_wpulse[0]} {m40_inst_wpulse[1]} {m4_inst_async_rst} ",
       "{m4_inst_deepsleep} {m4_inst_fastsleep} {m4_inst_global_rrow_en_in[0]} ",
       "{m4_inst_global_rrow_en_in[1]} {m4_inst_isolation_control_in} {m4_inst_mce} "
       ,"{m4_inst_ra[0]} {m4_inst_ra[1]} {m4_inst_rmce[0]} {m4_inst_rmce[1]} ",
       "{m4_inst_rmce[2]} {m4_inst_rmce[3]} {m4_inst_sbc[0]} {m4_inst_sbc[1]} ",
       "{m4_inst_shutoff} {m4_inst_stbyp} {m4_inst_wa[0]} {m4_inst_wa[1]} ",
       "{m4_inst_wa[2]} {m4_inst_wa_disable} {m4_inst_wmce[0]} {m4_inst_wmce[1]} "
       ,
       "{m4_inst_wpulse[0]} {m4_inst_wpulse[1]} {m5_inst_async_rst} {m5_inst_deepsleep} "
       ,"{m5_inst_fastsleep} {m5_inst_global_rrow_en_in[0]} ",
       "{m5_inst_global_rrow_en_in[1]} {m5_inst_isolation_control_in} {m5_inst_mce} "
       ,"{m5_inst_ra[0]} {m5_inst_ra[1]} {m5_inst_rmce[0]} {m5_inst_rmce[1]} ",
       "{m5_inst_rmce[2]} {m5_inst_rmce[3]} {m5_inst_sbc[0]} {m5_inst_sbc[1]} ",
       "{m5_inst_shutoff} {m5_inst_stbyp} {m5_inst_wa[0]} {m5_inst_wa[1]} ",
       "{m5_inst_wa[2]} {m5_inst_wa_disable} {m5_inst_wmce[0]} {m5_inst_wmce[1]} "
       ,
       "{m5_inst_wpulse[0]} {m5_inst_wpulse[1]} {m6_inst_async_rst} {m6_inst_deepsleep} "
       ,"{m6_inst_fastsleep} {m6_inst_global_rrow_en_in[0]} ",
       "{m6_inst_global_rrow_en_in[1]} {m6_inst_isolation_control_in} {m6_inst_mce} "
       ,"{m6_inst_ra[0]} {m6_inst_ra[1]} {m6_inst_rmce[0]} {m6_inst_rmce[1]} ",
       "{m6_inst_rmce[2]} {m6_inst_rmce[3]} {m6_inst_sbc[0]} {m6_inst_sbc[1]} ",
       "{m6_inst_shutoff} {m6_inst_stbyp} {m6_inst_wa[0]} {m6_inst_wa[1]} ",
       "{m6_inst_wa[2]} {m6_inst_wa_disable} {m6_inst_wmce[0]} {m6_inst_wmce[1]} "
       ,
       "{m6_inst_wpulse[0]} {m6_inst_wpulse[1]} {m7_inst_async_rst} {m7_inst_deepsleep} "
       ,"{m7_inst_fastsleep} {m7_inst_global_rrow_en_in[0]} ",
       "{m7_inst_global_rrow_en_in[1]} {m7_inst_isolation_control_in} {m7_inst_mce} "
       ,"{m7_inst_ra[0]} {m7_inst_ra[1]} {m7_inst_rmce[0]} {m7_inst_rmce[1]} ",
       "{m7_inst_rmce[2]} {m7_inst_rmce[3]} {m7_inst_sbc[0]} {m7_inst_sbc[1]} ",
       "{m7_inst_shutoff} {m7_inst_stbyp} {m7_inst_wa[0]} {m7_inst_wa[1]} ",
       "{m7_inst_wa[2]} {m7_inst_wa_disable} {m7_inst_wmce[0]} {m7_inst_wmce[1]} "
       ,
       "{m7_inst_wpulse[0]} {m7_inst_wpulse[1]} {m8_inst_async_rst} {m8_inst_deepsleep} "
       ,"{m8_inst_fastsleep} {m8_inst_global_rrow_en_in[0]} ",
       "{m8_inst_global_rrow_en_in[1]} {m8_inst_isolation_control_in} {m8_inst_mce} "
       ,"{m8_inst_ra[0]} {m8_inst_ra[1]} {m8_inst_rmce[0]} {m8_inst_rmce[1]} ",
       "{m8_inst_rmce[2]} {m8_inst_rmce[3]} {m8_inst_sbc[0]} {m8_inst_sbc[1]} ",
       "{m8_inst_shutoff} {m8_inst_stbyp} {m8_inst_wa[0]} {m8_inst_wa[1]} ",
       "{m8_inst_wa[2]} {m8_inst_wa_disable} {m8_inst_wmce[0]} {m8_inst_wmce[1]} "
       ,
       "{m8_inst_wpulse[0]} {m8_inst_wpulse[1]} {m9_inst_async_rst} {m9_inst_deepsleep} "
       ,"{m9_inst_fastsleep} {m9_inst_global_rrow_en_in[0]} ",
       "{m9_inst_global_rrow_en_in[1]} {m9_inst_isolation_control_in} {m9_inst_mce} "
       ,"{m9_inst_ra[0]} {m9_inst_ra[1]} {m9_inst_rmce[0]} {m9_inst_rmce[1]} ",
       "{m9_inst_rmce[2]} {m9_inst_rmce[3]} {m9_inst_sbc[0]} {m9_inst_sbc[1]} ",
       "{m9_inst_shutoff} {m9_inst_stbyp} {m9_inst_wa[0]} {m9_inst_wa[1]} ",
       "{m9_inst_wa[2]} {m9_inst_wa_disable} {m9_inst_wmce[0]} {m9_inst_wmce[1]} "
       ,"{m9_inst_wpulse[0]} {m9_inst_wpulse[1]}";
   Attribute partially_forced_input_port_list = 
       "{m10_inst_global_rrow_en_in[1:0]} {m10_inst_ra[1:0]} {m10_inst_rmce[3:0]} "
       ,"{m10_inst_sbc[1:0]} {m10_inst_wa[2:0]} {m10_inst_wmce[1:0]} ",
       "{m10_inst_wpulse[1:0]} {m11_inst_global_rrow_en_in[1:0]} {m11_inst_ra[1:0]} "
       ,"{m11_inst_rmce[3:0]} {m11_inst_sbc[1:0]} {m11_inst_wa[2:0]} ",
       "{m11_inst_wmce[1:0]} {m11_inst_wpulse[1:0]} {m12_inst_global_rrow_en_in[1:0]} "
       ,
       "{m12_inst_ra[1:0]} {m12_inst_rmce[3:0]} {m12_inst_sbc[1:0]} {m12_inst_wa[2:0]} "
       ,
       "{m12_inst_wmce[1:0]} {m12_inst_wpulse[1:0]} {m13_inst_global_rrow_en_in[1:0]} "
       ,
       "{m13_inst_ra[1:0]} {m13_inst_rmce[3:0]} {m13_inst_sbc[1:0]} {m13_inst_wa[2:0]} "
       ,
       "{m13_inst_wmce[1:0]} {m13_inst_wpulse[1:0]} {m14_inst_global_rrow_en_in[1:0]} "
       ,
       "{m14_inst_ra[1:0]} {m14_inst_rmce[3:0]} {m14_inst_sbc[1:0]} {m14_inst_wa[2:0]} "
       ,
       "{m14_inst_wmce[1:0]} {m14_inst_wpulse[1:0]} {m15_inst_global_rrow_en_in[1:0]} "
       ,
       "{m15_inst_ra[1:0]} {m15_inst_rmce[3:0]} {m15_inst_sbc[1:0]} {m15_inst_wa[2:0]} "
       ,
       "{m15_inst_wmce[1:0]} {m15_inst_wpulse[1:0]} {m16_inst_global_rrow_en_in[1:0]} "
       ,
       "{m16_inst_ra[1:0]} {m16_inst_rmce[3:0]} {m16_inst_sbc[1:0]} {m16_inst_wa[2:0]} "
       ,
       "{m16_inst_wmce[1:0]} {m16_inst_wpulse[1:0]} {m17_inst_global_rrow_en_in[1:0]} "
       ,
       "{m17_inst_ra[1:0]} {m17_inst_rmce[3:0]} {m17_inst_sbc[1:0]} {m17_inst_wa[2:0]} "
       ,
       "{m17_inst_wmce[1:0]} {m17_inst_wpulse[1:0]} {m18_inst_global_rrow_en_in[1:0]} "
       ,
       "{m18_inst_ra[1:0]} {m18_inst_rmce[3:0]} {m18_inst_sbc[1:0]} {m18_inst_wa[2:0]} "
       ,
       "{m18_inst_wmce[1:0]} {m18_inst_wpulse[1:0]} {m19_inst_global_rrow_en_in[1:0]} "
       ,
       "{m19_inst_ra[1:0]} {m19_inst_rmce[3:0]} {m19_inst_sbc[1:0]} {m19_inst_wa[2:0]} "
       ,
       "{m19_inst_wmce[1:0]} {m19_inst_wpulse[1:0]} {m1_inst_global_rrow_en_in[1:0]} "
       ,
       "{m1_inst_ra[1:0]} {m1_inst_rmce[3:0]} {m1_inst_sbc[1:0]} {m1_inst_wa[2:0]} "
       ,
       "{m1_inst_wmce[1:0]} {m1_inst_wpulse[1:0]} {m20_inst_global_rrow_en_in[1:0]} "
       ,
       "{m20_inst_ra[1:0]} {m20_inst_rmce[3:0]} {m20_inst_sbc[1:0]} {m20_inst_wa[2:0]} "
       ,
       "{m20_inst_wmce[1:0]} {m20_inst_wpulse[1:0]} {m21_inst_global_rrow_en_in[1:0]} "
       ,
       "{m21_inst_ra[1:0]} {m21_inst_rmce[3:0]} {m21_inst_sbc[1:0]} {m21_inst_wa[2:0]} "
       ,
       "{m21_inst_wmce[1:0]} {m21_inst_wpulse[1:0]} {m22_inst_global_rrow_en_in[1:0]} "
       ,
       "{m22_inst_ra[1:0]} {m22_inst_rmce[3:0]} {m22_inst_sbc[1:0]} {m22_inst_wa[2:0]} "
       ,
       "{m22_inst_wmce[1:0]} {m22_inst_wpulse[1:0]} {m23_inst_global_rrow_en_in[1:0]} "
       ,
       "{m23_inst_ra[1:0]} {m23_inst_rmce[3:0]} {m23_inst_sbc[1:0]} {m23_inst_wa[2:0]} "
       ,
       "{m23_inst_wmce[1:0]} {m23_inst_wpulse[1:0]} {m24_inst_global_rrow_en_in[1:0]} "
       ,
       "{m24_inst_ra[1:0]} {m24_inst_rmce[3:0]} {m24_inst_sbc[1:0]} {m24_inst_wa[2:0]} "
       ,
       "{m24_inst_wmce[1:0]} {m24_inst_wpulse[1:0]} {m25_inst_global_rrow_en_in[1:0]} "
       ,
       "{m25_inst_ra[1:0]} {m25_inst_rmce[3:0]} {m25_inst_sbc[1:0]} {m25_inst_wa[2:0]} "
       ,
       "{m25_inst_wmce[1:0]} {m25_inst_wpulse[1:0]} {m26_inst_global_rrow_en_in[1:0]} "
       ,
       "{m26_inst_ra[1:0]} {m26_inst_rmce[3:0]} {m26_inst_sbc[1:0]} {m26_inst_wa[2:0]} "
       ,
       "{m26_inst_wmce[1:0]} {m26_inst_wpulse[1:0]} {m27_inst_global_rrow_en_in[1:0]} "
       ,
       "{m27_inst_ra[1:0]} {m27_inst_rmce[3:0]} {m27_inst_sbc[1:0]} {m27_inst_wa[2:0]} "
       ,
       "{m27_inst_wmce[1:0]} {m27_inst_wpulse[1:0]} {m28_inst_global_rrow_en_in[1:0]} "
       ,
       "{m28_inst_ra[1:0]} {m28_inst_rmce[3:0]} {m28_inst_sbc[1:0]} {m28_inst_wa[2:0]} "
       ,
       "{m28_inst_wmce[1:0]} {m28_inst_wpulse[1:0]} {m29_inst_global_rrow_en_in[1:0]} "
       ,
       "{m29_inst_ra[1:0]} {m29_inst_rmce[3:0]} {m29_inst_sbc[1:0]} {m29_inst_wa[2:0]} "
       ,
       "{m29_inst_wmce[1:0]} {m29_inst_wpulse[1:0]} {m2_inst_global_rrow_en_in[1:0]} "
       ,
       "{m2_inst_ra[1:0]} {m2_inst_rmce[3:0]} {m2_inst_sbc[1:0]} {m2_inst_wa[2:0]} "
       ,
       "{m2_inst_wmce[1:0]} {m2_inst_wpulse[1:0]} {m30_inst_global_rrow_en_in[1:0]} "
       ,
       "{m30_inst_ra[1:0]} {m30_inst_rmce[3:0]} {m30_inst_sbc[1:0]} {m30_inst_wa[2:0]} "
       ,
       "{m30_inst_wmce[1:0]} {m30_inst_wpulse[1:0]} {m31_inst_global_rrow_en_in[1:0]} "
       ,
       "{m31_inst_ra[1:0]} {m31_inst_rmce[3:0]} {m31_inst_sbc[1:0]} {m31_inst_wa[2:0]} "
       ,
       "{m31_inst_wmce[1:0]} {m31_inst_wpulse[1:0]} {m32_inst_global_rrow_en_in[1:0]} "
       ,
       "{m32_inst_ra[1:0]} {m32_inst_rmce[3:0]} {m32_inst_sbc[1:0]} {m32_inst_wa[2:0]} "
       ,
       "{m32_inst_wmce[1:0]} {m32_inst_wpulse[1:0]} {m33_inst_global_rrow_en_in[1:0]} "
       ,
       "{m33_inst_ra[1:0]} {m33_inst_rmce[3:0]} {m33_inst_sbc[1:0]} {m33_inst_wa[2:0]} "
       ,
       "{m33_inst_wmce[1:0]} {m33_inst_wpulse[1:0]} {m34_inst_global_rrow_en_in[1:0]} "
       ,
       "{m34_inst_ra[1:0]} {m34_inst_rmce[3:0]} {m34_inst_sbc[1:0]} {m34_inst_wa[2:0]} "
       ,
       "{m34_inst_wmce[1:0]} {m34_inst_wpulse[1:0]} {m35_inst_global_rrow_en_in[1:0]} "
       ,
       "{m35_inst_ra[1:0]} {m35_inst_rmce[3:0]} {m35_inst_sbc[1:0]} {m35_inst_wa[2:0]} "
       ,
       "{m35_inst_wmce[1:0]} {m35_inst_wpulse[1:0]} {m36_inst_global_rrow_en_in[1:0]} "
       ,
       "{m36_inst_ra[1:0]} {m36_inst_rmce[3:0]} {m36_inst_sbc[1:0]} {m36_inst_wa[2:0]} "
       ,
       "{m36_inst_wmce[1:0]} {m36_inst_wpulse[1:0]} {m37_inst_global_rrow_en_in[1:0]} "
       ,
       "{m37_inst_ra[1:0]} {m37_inst_rmce[3:0]} {m37_inst_sbc[1:0]} {m37_inst_wa[2:0]} "
       ,
       "{m37_inst_wmce[1:0]} {m37_inst_wpulse[1:0]} {m38_inst_global_rrow_en_in[1:0]} "
       ,
       "{m38_inst_ra[1:0]} {m38_inst_rmce[3:0]} {m38_inst_sbc[1:0]} {m38_inst_wa[2:0]} "
       ,
       "{m38_inst_wmce[1:0]} {m38_inst_wpulse[1:0]} {m39_inst_global_rrow_en_in[1:0]} "
       ,
       "{m39_inst_ra[1:0]} {m39_inst_rmce[3:0]} {m39_inst_sbc[1:0]} {m39_inst_wa[2:0]} "
       ,
       "{m39_inst_wmce[1:0]} {m39_inst_wpulse[1:0]} {m3_inst_global_rrow_en_in[1:0]} "
       ,
       "{m3_inst_ra[1:0]} {m3_inst_rmce[3:0]} {m3_inst_sbc[1:0]} {m3_inst_wa[2:0]} "
       ,
       "{m3_inst_wmce[1:0]} {m3_inst_wpulse[1:0]} {m40_inst_global_rrow_en_in[1:0]} "
       ,
       "{m40_inst_ra[1:0]} {m40_inst_rmce[3:0]} {m40_inst_sbc[1:0]} {m40_inst_wa[2:0]} "
       ,
       "{m40_inst_wmce[1:0]} {m40_inst_wpulse[1:0]} {m4_inst_global_rrow_en_in[1:0]} "
       ,
       "{m4_inst_ra[1:0]} {m4_inst_rmce[3:0]} {m4_inst_sbc[1:0]} {m4_inst_wa[2:0]} "
       ,
       "{m4_inst_wmce[1:0]} {m4_inst_wpulse[1:0]} {m5_inst_global_rrow_en_in[1:0]} "
       ,
       "{m5_inst_ra[1:0]} {m5_inst_rmce[3:0]} {m5_inst_sbc[1:0]} {m5_inst_wa[2:0]} "
       ,
       "{m5_inst_wmce[1:0]} {m5_inst_wpulse[1:0]} {m6_inst_global_rrow_en_in[1:0]} "
       ,
       "{m6_inst_ra[1:0]} {m6_inst_rmce[3:0]} {m6_inst_sbc[1:0]} {m6_inst_wa[2:0]} "
       ,
       "{m6_inst_wmce[1:0]} {m6_inst_wpulse[1:0]} {m7_inst_global_rrow_en_in[1:0]} "
       ,
       "{m7_inst_ra[1:0]} {m7_inst_rmce[3:0]} {m7_inst_sbc[1:0]} {m7_inst_wa[2:0]} "
       ,
       "{m7_inst_wmce[1:0]} {m7_inst_wpulse[1:0]} {m8_inst_global_rrow_en_in[1:0]} "
       ,
       "{m8_inst_ra[1:0]} {m8_inst_rmce[3:0]} {m8_inst_sbc[1:0]} {m8_inst_wa[2:0]} "
       ,
       "{m8_inst_wmce[1:0]} {m8_inst_wpulse[1:0]} {m9_inst_global_rrow_en_in[1:0]} "
       ,
       "{m9_inst_ra[1:0]} {m9_inst_rmce[3:0]} {m9_inst_sbc[1:0]} {m9_inst_wa[2:0]} "
       ,"{m9_inst_wmce[1:0]} {m9_inst_wpulse[1:0]}";
   Attribute icl_extraction_date = "Sun Nov  5 08:29:00 PST 2023";
   Attribute created_by_tessent_icl_extract = "true";
   Attribute tessent_design_id = "rtl";
   OneHotDataGroup MBISTPG_STABLE_ohg {
      Port firebird7_in_gate1_tessent_mbist_c1_controller_inst.MBISTPG_STABLE;
   }
   Instance c1_gate1_m10_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m9_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m10_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m10_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m10_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m10_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m10_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m10_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m10_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m10_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m10_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m10_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m10_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m11_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m10_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m11_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m11_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m11_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m11_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m11_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m11_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m11_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m11_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m11_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m11_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m11_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m12_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m11_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m12_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m12_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m12_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m12_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m12_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m12_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m12_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m12_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m12_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m12_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m12_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m13_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m12_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m13_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m13_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m13_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m13_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m13_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m13_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m13_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m13_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m13_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m13_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m13_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m14_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m13_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m14_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m14_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m14_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m14_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m14_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m14_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m14_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m14_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m14_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m14_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m14_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m15_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m14_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m15_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m15_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m15_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m15_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m15_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m15_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m15_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m15_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m15_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m15_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m15_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m16_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m15_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m16_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m16_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m16_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m16_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m16_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m16_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m16_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m16_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m16_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m16_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m16_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m17_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m16_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m17_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m17_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m17_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m17_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m17_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m17_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m17_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m17_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m17_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m17_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m17_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m18_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m17_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m18_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m18_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m18_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m18_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m18_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m18_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m18_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m18_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m18_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m18_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m18_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m19_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m18_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m19_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m19_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m19_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m19_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m19_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m19_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m19_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m19_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m19_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m19_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m19_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m1_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = bisr_si;
      InputPort SE = bisr_se;
      InputPort D[21] = m1_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m1_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m1_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m1_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m1_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m1_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m1_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m1_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m1_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m1_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m1_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m20_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m19_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m20_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m20_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m20_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m20_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m20_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m20_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m20_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m20_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m20_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m20_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m20_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m21_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m20_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m21_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m21_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m21_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m21_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m21_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m21_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m21_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m21_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m21_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m21_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m21_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m22_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m21_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m22_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m22_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m22_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m22_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m22_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m22_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m22_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m22_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m22_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m22_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m22_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m23_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m22_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m23_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m23_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m23_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m23_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m23_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m23_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m23_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m23_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m23_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m23_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m23_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m24_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m23_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m24_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m24_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m24_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m24_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m24_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m24_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m24_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m24_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m24_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m24_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m24_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m25_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m24_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m25_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m25_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m25_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m25_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m25_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m25_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m25_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m25_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m25_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m25_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m25_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m26_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m25_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m26_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m26_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m26_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m26_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m26_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m26_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m26_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m26_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m26_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m26_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m26_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m27_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m26_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m27_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m27_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m27_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m27_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m27_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m27_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m27_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m27_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m27_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m27_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m27_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m28_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m27_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m28_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m28_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m28_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m28_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m28_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m28_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m28_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m28_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m28_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m28_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m28_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m29_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m28_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m29_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m29_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m29_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m29_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m29_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m29_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m29_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m29_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m29_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m29_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m29_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m2_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m1_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m2_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m2_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m2_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m2_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m2_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m2_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m2_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m2_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m2_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m2_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m2_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m30_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m29_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m30_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m30_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m30_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m30_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m30_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m30_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m30_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m30_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m30_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m30_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m30_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m31_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m30_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m31_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m31_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m31_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m31_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m31_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m31_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m31_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m31_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m31_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m31_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m31_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m32_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m31_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m32_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m32_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m32_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m32_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m32_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m32_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m32_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m32_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m32_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m32_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m32_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m33_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m32_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[25] = m33_interface_instance.All_SCOL0_FUSE_REG[6];
      InputPort D[24] = m33_interface_instance.All_SCOL0_FUSE_REG[5];
      InputPort D[23] = m33_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[22] = m33_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[21] = m33_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[20] = m33_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[19] = m33_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[18] = m33_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[17] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[7];
      InputPort D[16] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[15] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[14] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[13] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[12] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[11] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[10] = m33_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[9] = m33_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[8] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[7];
      InputPort D[7] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m33_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m33_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m33_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m34_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m33_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[25] = m34_interface_instance.All_SCOL0_FUSE_REG[6];
      InputPort D[24] = m34_interface_instance.All_SCOL0_FUSE_REG[5];
      InputPort D[23] = m34_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[22] = m34_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[21] = m34_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[20] = m34_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[19] = m34_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[18] = m34_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[17] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[7];
      InputPort D[16] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[15] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[14] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[13] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[12] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[11] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[10] = m34_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[9] = m34_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[8] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[7];
      InputPort D[7] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m34_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m34_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m34_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m35_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m34_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[25] = m35_interface_instance.All_SCOL0_FUSE_REG[6];
      InputPort D[24] = m35_interface_instance.All_SCOL0_FUSE_REG[5];
      InputPort D[23] = m35_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[22] = m35_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[21] = m35_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[20] = m35_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[19] = m35_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[18] = m35_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[17] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[7];
      InputPort D[16] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[15] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[14] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[13] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[12] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[11] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[10] = m35_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[9] = m35_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[8] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[7];
      InputPort D[7] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m35_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m35_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m35_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m36_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m35_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[25] = m36_interface_instance.All_SCOL0_FUSE_REG[6];
      InputPort D[24] = m36_interface_instance.All_SCOL0_FUSE_REG[5];
      InputPort D[23] = m36_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[22] = m36_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[21] = m36_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[20] = m36_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[19] = m36_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[18] = m36_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[17] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[7];
      InputPort D[16] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[15] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[14] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[13] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[12] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[11] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[10] = m36_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[9] = m36_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[8] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[7];
      InputPort D[7] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m36_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m36_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m36_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m37_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m36_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m37_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m37_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m37_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m37_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m37_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m37_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m37_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m37_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m37_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m37_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m37_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m38_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m37_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m38_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m38_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m38_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m38_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m38_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m38_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m38_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m38_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m38_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m38_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m38_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m39_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m38_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m39_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m39_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m39_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m39_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m39_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m39_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m39_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m39_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m39_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m39_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m39_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m3_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m2_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m3_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m3_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m3_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m3_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m3_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m3_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m3_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m3_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m3_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m3_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m3_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m40_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m39_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m40_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m40_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m40_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m40_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m40_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m40_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m40_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m40_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m40_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m40_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m40_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m4_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m3_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m4_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m4_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m4_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m4_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m4_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m4_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m4_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m4_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m4_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m4_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m4_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m5_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m4_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m5_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m5_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m5_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m5_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m5_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m5_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m5_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m5_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m5_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m5_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m5_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m6_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m5_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m6_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m6_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m6_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m6_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m6_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m6_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m6_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m6_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m6_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m6_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m6_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m7_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m6_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m7_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m7_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m7_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m7_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m7_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m7_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m7_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m7_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m7_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m7_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m7_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m8_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m7_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m8_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m8_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m8_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m8_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m8_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m8_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m8_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m8_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m8_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m8_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m8_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance c1_gate1_m9_bisr_inst Of 
       firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
       {
      InputPort CLK = bisr_clock;
      InputPort RSTB = bisr_clear;
      InputPort MSEL = 'b0;
      InputPort SI = c1_gate1_m8_bisr_inst.SO;
      InputPort SE = bisr_se;
      InputPort D[21] = m9_interface_instance.All_SCOL0_FUSE_REG[4];
      InputPort D[20] = m9_interface_instance.All_SCOL0_FUSE_REG[3];
      InputPort D[19] = m9_interface_instance.All_SCOL0_FUSE_REG[2];
      InputPort D[18] = m9_interface_instance.All_SCOL0_FUSE_REG[1];
      InputPort D[17] = m9_interface_instance.All_SCOL0_FUSE_REG[0];
      InputPort D[16] = m9_interface_instance.All_SCOL0_ALLOC_REG;
      InputPort D[15] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[6];
      InputPort D[14] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[5];
      InputPort D[13] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[4];
      InputPort D[12] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[3];
      InputPort D[11] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[2];
      InputPort D[10] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[1];
      InputPort D[9] = m9_interface_instance.ALL_SROW1_FUSE_ADD_REG[0];
      InputPort D[8] = m9_interface_instance.ALL_SROW1_ALLOC_REG;
      InputPort D[7] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[6];
      InputPort D[6] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[5];
      InputPort D[5] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[4];
      InputPort D[4] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[3];
      InputPort D[3] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[2];
      InputPort D[2] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[1];
      InputPort D[1] = m9_interface_instance.ALL_SROW0_FUSE_ADD_REG[0];
      InputPort D[0] = m9_interface_instance.ALL_SROW0_ALLOC_REG;
      Attribute tessent_design_instance = "c1_gate1_m9_bisr_inst";
      Attribute tessent_bisr_power_domain_name = "-";
   }
   Instance firebird7_in_gate1_tessent_mbist_bap_inst Of 
       firebird7_in_gate1_tessent_mbist_bap {
      InputPort reset = reset;
      InputPort ijtag_select = ijtag_select;
      InputPort si = si;
      InputPort capture_en = capture_en;
      InputPort shift_en = shift_en;
      InputPort update_en = update_en;
      InputPort tck = tck;
      InputPort memory_bypass_en = 'b0;
      InputPort mcp_bounding_en = 'b0;
      InputPort ltest_en = LV_TM;
      InputPort fromBist[0] = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MBISTPG_SO;
      InputPort MBISTPG_GO[0] = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MBISTPG_GO;
      InputPort MBISTPG_DONE[0] = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MBISTPG_DONE;
      Attribute tessent_design_instance = 
          "firebird7_in_gate1_tessent_mbist_bap_inst";
   }
   Instance firebird7_in_gate1_tessent_mbist_c1_controller_inst Of 
       firebird7_in_gate1_tessent_mbist_c1_controller {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort MBISTPG_EN = firebird7_in_gate1_tessent_mbist_bap_inst.bistEn[0];

      InputPort LV_TM = firebird7_in_gate1_tessent_mbist_bap_inst.ltest_to_en;
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort MBIST_RA_PRSRV_FUSE_VAL = 
          firebird7_in_gate1_tessent_mbist_bap_inst.PRESERVE_FUSE_REGISTER;
      InputPort MBISTPG_BIRA_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIRA_EN;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort MBISTPG_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort MBISTPG_DIAG_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_DIAG_EN;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP[1] = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP[0] = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MBISTPG_REDUCED_ADDR_CNT_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.REDUCED_ADDRESS_COUNT;
      InputPort MBISTPG_MEM_RST = 
          firebird7_in_gate1_tessent_mbist_bap_inst.ENABLE_MEM_RESET;
      InputPort MBISTPG_TESTDATA_SELECT = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SELECT_TEST_DATA;
      InputPort MBISTPG_MEM_ARRAY_DUMP_MODE = 
          firebird7_in_gate1_tessent_mbist_bap_inst.MEM_ARRAY_DUMP_MODE;
      InputPort FL_CNT_MODE[1] = 
          firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE1;
      InputPort FL_CNT_MODE[0] = 
          firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE0;
      InputPort MBISTPG_ALGO_MODE[1] = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE1;
      InputPort MBISTPG_ALGO_MODE[0] = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE0;
      InputPort TCK = tck;
      InputPort BIST_SI = firebird7_in_gate1_tessent_mbist_bap_inst.toBist[0];
      InputPort BIST_HOLD = firebird7_in_gate1_tessent_mbist_bap_inst.BIST_HOLD;
      InputPort MEM0_BIST_COLLAR_SO = m1_interface_instance.BIST_SO;
      InputPort MEM1_BIST_COLLAR_SO = m2_interface_instance.BIST_SO;
      InputPort MEM2_BIST_COLLAR_SO = m3_interface_instance.BIST_SO;
      InputPort MEM3_BIST_COLLAR_SO = m4_interface_instance.BIST_SO;
      InputPort MEM4_BIST_COLLAR_SO = m5_interface_instance.BIST_SO;
      InputPort MEM5_BIST_COLLAR_SO = m6_interface_instance.BIST_SO;
      InputPort MEM6_BIST_COLLAR_SO = m7_interface_instance.BIST_SO;
      InputPort MEM7_BIST_COLLAR_SO = m8_interface_instance.BIST_SO;
      InputPort MEM8_BIST_COLLAR_SO = m9_interface_instance.BIST_SO;
      InputPort MEM9_BIST_COLLAR_SO = m10_interface_instance.BIST_SO;
      InputPort MEM10_BIST_COLLAR_SO = m11_interface_instance.BIST_SO;
      InputPort MEM11_BIST_COLLAR_SO = m12_interface_instance.BIST_SO;
      InputPort MEM12_BIST_COLLAR_SO = m13_interface_instance.BIST_SO;
      InputPort MEM13_BIST_COLLAR_SO = m14_interface_instance.BIST_SO;
      InputPort MEM14_BIST_COLLAR_SO = m15_interface_instance.BIST_SO;
      InputPort MEM15_BIST_COLLAR_SO = m16_interface_instance.BIST_SO;
      InputPort MEM16_BIST_COLLAR_SO = m17_interface_instance.BIST_SO;
      InputPort MEM17_BIST_COLLAR_SO = m18_interface_instance.BIST_SO;
      InputPort MEM18_BIST_COLLAR_SO = m19_interface_instance.BIST_SO;
      InputPort MEM19_BIST_COLLAR_SO = m20_interface_instance.BIST_SO;
      InputPort MEM20_BIST_COLLAR_SO = m21_interface_instance.BIST_SO;
      InputPort MEM21_BIST_COLLAR_SO = m22_interface_instance.BIST_SO;
      InputPort MEM22_BIST_COLLAR_SO = m23_interface_instance.BIST_SO;
      InputPort MEM23_BIST_COLLAR_SO = m24_interface_instance.BIST_SO;
      InputPort MEM24_BIST_COLLAR_SO = m25_interface_instance.BIST_SO;
      InputPort MEM25_BIST_COLLAR_SO = m26_interface_instance.BIST_SO;
      InputPort MEM26_BIST_COLLAR_SO = m27_interface_instance.BIST_SO;
      InputPort MEM27_BIST_COLLAR_SO = m28_interface_instance.BIST_SO;
      InputPort MEM28_BIST_COLLAR_SO = m29_interface_instance.BIST_SO;
      InputPort MEM29_BIST_COLLAR_SO = m30_interface_instance.BIST_SO;
      InputPort MEM30_BIST_COLLAR_SO = m31_interface_instance.BIST_SO;
      InputPort MEM31_BIST_COLLAR_SO = m32_interface_instance.BIST_SO;
      InputPort MEM32_BIST_COLLAR_SO = m33_interface_instance.BIST_SO;
      InputPort MEM33_BIST_COLLAR_SO = m34_interface_instance.BIST_SO;
      InputPort MEM34_BIST_COLLAR_SO = m35_interface_instance.BIST_SO;
      InputPort MEM35_BIST_COLLAR_SO = m36_interface_instance.BIST_SO;
      InputPort MEM36_BIST_COLLAR_SO = m37_interface_instance.BIST_SO;
      InputPort MEM37_BIST_COLLAR_SO = m38_interface_instance.BIST_SO;
      InputPort MEM38_BIST_COLLAR_SO = m39_interface_instance.BIST_SO;
      InputPort MEM39_BIST_COLLAR_SO = m40_interface_instance.BIST_SO;
      Attribute tessent_design_instance = 
          "firebird7_in_gate1_tessent_mbist_c1_controller_inst";
   }
   Instance m10_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m10_interface_instance.adr[9];
      InputPort adr[8] = m10_interface_instance.adr[8];
      InputPort adr[7] = m10_interface_instance.adr[7];
      InputPort adr[6] = m10_interface_instance.adr[6];
      InputPort adr[5] = m10_interface_instance.adr[5];
      InputPort adr[4] = m10_interface_instance.adr[4];
      InputPort adr[3] = m10_interface_instance.adr[3];
      InputPort adr[2] = m10_interface_instance.adr[2];
      InputPort adr[1] = m10_interface_instance.adr[1];
      InputPort adr[0] = m10_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m10_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m10_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m10_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m10_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m10_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m10_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m10_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m10_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m10_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m10_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m10_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m10_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m10_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m10_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m10_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m10_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m10_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m10_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m10_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m10_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m10_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m10_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m10_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m10_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m10_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m10_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m10_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m10_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m10_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m10_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m10_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m10_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m10_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m10_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m10_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m10_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m10_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m10_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m10_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m10_inst";
   }
   Instance m10_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m10 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN9;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM9_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m10_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m10_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m10_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m10_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m10_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m10_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m10_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m10_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m10_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m10_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m10_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m10_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m10_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m10_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m10_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m10_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m10_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m10_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m10_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m10_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m10_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m10_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m10_interface_instance";
   }
   Instance m11_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m11_interface_instance.adr[9];
      InputPort adr[8] = m11_interface_instance.adr[8];
      InputPort adr[7] = m11_interface_instance.adr[7];
      InputPort adr[6] = m11_interface_instance.adr[6];
      InputPort adr[5] = m11_interface_instance.adr[5];
      InputPort adr[4] = m11_interface_instance.adr[4];
      InputPort adr[3] = m11_interface_instance.adr[3];
      InputPort adr[2] = m11_interface_instance.adr[2];
      InputPort adr[1] = m11_interface_instance.adr[1];
      InputPort adr[0] = m11_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m11_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m11_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m11_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m11_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m11_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m11_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m11_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m11_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m11_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m11_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m11_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m11_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m11_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m11_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m11_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m11_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m11_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m11_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m11_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m11_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m11_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m11_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m11_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m11_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m11_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m11_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m11_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m11_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m11_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m11_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m11_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m11_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m11_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m11_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m11_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m11_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m11_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m11_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m11_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m11_inst";
   }
   Instance m11_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m11 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN10;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM10_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m11_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m11_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m11_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m11_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m11_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m11_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m11_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m11_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m11_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m11_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m11_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m11_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m11_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m11_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m11_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m11_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m11_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m11_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m11_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m11_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m11_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m11_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m11_interface_instance";
   }
   Instance m12_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m12_interface_instance.adr[9];
      InputPort adr[8] = m12_interface_instance.adr[8];
      InputPort adr[7] = m12_interface_instance.adr[7];
      InputPort adr[6] = m12_interface_instance.adr[6];
      InputPort adr[5] = m12_interface_instance.adr[5];
      InputPort adr[4] = m12_interface_instance.adr[4];
      InputPort adr[3] = m12_interface_instance.adr[3];
      InputPort adr[2] = m12_interface_instance.adr[2];
      InputPort adr[1] = m12_interface_instance.adr[1];
      InputPort adr[0] = m12_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m12_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m12_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m12_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m12_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m12_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m12_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m12_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m12_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m12_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m12_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m12_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m12_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m12_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m12_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m12_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m12_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m12_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m12_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m12_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m12_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m12_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m12_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m12_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m12_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m12_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m12_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m12_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m12_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m12_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m12_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m12_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m12_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m12_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m12_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m12_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m12_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m12_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m12_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m12_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m12_inst";
   }
   Instance m12_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m12 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN11;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM11_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m12_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m12_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m12_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m12_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m12_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m12_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m12_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m12_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m12_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m12_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m12_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m12_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m12_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m12_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m12_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m12_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m12_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m12_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m12_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m12_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m12_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m12_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m12_interface_instance";
   }
   Instance m13_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m13_interface_instance.adr[9];
      InputPort adr[8] = m13_interface_instance.adr[8];
      InputPort adr[7] = m13_interface_instance.adr[7];
      InputPort adr[6] = m13_interface_instance.adr[6];
      InputPort adr[5] = m13_interface_instance.adr[5];
      InputPort adr[4] = m13_interface_instance.adr[4];
      InputPort adr[3] = m13_interface_instance.adr[3];
      InputPort adr[2] = m13_interface_instance.adr[2];
      InputPort adr[1] = m13_interface_instance.adr[1];
      InputPort adr[0] = m13_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m13_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m13_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m13_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m13_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m13_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m13_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m13_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m13_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m13_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m13_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m13_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m13_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m13_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m13_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m13_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m13_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m13_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m13_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m13_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m13_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m13_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m13_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m13_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m13_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m13_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m13_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m13_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m13_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m13_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m13_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m13_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m13_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m13_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m13_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m13_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m13_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m13_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m13_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m13_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m13_inst";
   }
   Instance m13_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m13 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN12;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM12_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m13_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m13_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m13_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m13_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m13_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m13_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m13_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m13_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m13_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m13_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m13_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m13_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m13_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m13_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m13_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m13_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m13_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m13_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m13_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m13_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m13_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m13_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m13_interface_instance";
   }
   Instance m14_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m14_interface_instance.adr[9];
      InputPort adr[8] = m14_interface_instance.adr[8];
      InputPort adr[7] = m14_interface_instance.adr[7];
      InputPort adr[6] = m14_interface_instance.adr[6];
      InputPort adr[5] = m14_interface_instance.adr[5];
      InputPort adr[4] = m14_interface_instance.adr[4];
      InputPort adr[3] = m14_interface_instance.adr[3];
      InputPort adr[2] = m14_interface_instance.adr[2];
      InputPort adr[1] = m14_interface_instance.adr[1];
      InputPort adr[0] = m14_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m14_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m14_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m14_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m14_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m14_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m14_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m14_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m14_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m14_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m14_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m14_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m14_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m14_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m14_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m14_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m14_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m14_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m14_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m14_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m14_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m14_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m14_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m14_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m14_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m14_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m14_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m14_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m14_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m14_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m14_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m14_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m14_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m14_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m14_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m14_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m14_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m14_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m14_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m14_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m14_inst";
   }
   Instance m14_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m14 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN13;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM13_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m14_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m14_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m14_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m14_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m14_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m14_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m14_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m14_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m14_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m14_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m14_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m14_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m14_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m14_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m14_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m14_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m14_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m14_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m14_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m14_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m14_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m14_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m14_interface_instance";
   }
   Instance m15_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m15_interface_instance.adr[9];
      InputPort adr[8] = m15_interface_instance.adr[8];
      InputPort adr[7] = m15_interface_instance.adr[7];
      InputPort adr[6] = m15_interface_instance.adr[6];
      InputPort adr[5] = m15_interface_instance.adr[5];
      InputPort adr[4] = m15_interface_instance.adr[4];
      InputPort adr[3] = m15_interface_instance.adr[3];
      InputPort adr[2] = m15_interface_instance.adr[2];
      InputPort adr[1] = m15_interface_instance.adr[1];
      InputPort adr[0] = m15_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m15_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m15_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m15_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m15_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m15_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m15_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m15_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m15_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m15_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m15_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m15_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m15_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m15_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m15_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m15_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m15_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m15_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m15_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m15_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m15_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m15_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m15_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m15_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m15_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m15_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m15_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m15_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m15_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m15_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m15_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m15_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m15_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m15_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m15_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m15_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m15_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m15_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m15_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m15_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m15_inst";
   }
   Instance m15_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m15 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN14;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM14_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m15_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m15_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m15_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m15_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m15_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m15_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m15_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m15_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m15_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m15_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m15_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m15_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m15_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m15_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m15_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m15_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m15_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m15_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m15_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m15_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m15_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m15_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m15_interface_instance";
   }
   Instance m16_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m16_interface_instance.adr[9];
      InputPort adr[8] = m16_interface_instance.adr[8];
      InputPort adr[7] = m16_interface_instance.adr[7];
      InputPort adr[6] = m16_interface_instance.adr[6];
      InputPort adr[5] = m16_interface_instance.adr[5];
      InputPort adr[4] = m16_interface_instance.adr[4];
      InputPort adr[3] = m16_interface_instance.adr[3];
      InputPort adr[2] = m16_interface_instance.adr[2];
      InputPort adr[1] = m16_interface_instance.adr[1];
      InputPort adr[0] = m16_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m16_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m16_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m16_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m16_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m16_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m16_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m16_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m16_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m16_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m16_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m16_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m16_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m16_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m16_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m16_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m16_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m16_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m16_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m16_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m16_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m16_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m16_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m16_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m16_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m16_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m16_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m16_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m16_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m16_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m16_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m16_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m16_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m16_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m16_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m16_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m16_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m16_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m16_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m16_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m16_inst";
   }
   Instance m16_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m16 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN15;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM15_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m16_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m16_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m16_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m16_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m16_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m16_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m16_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m16_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m16_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m16_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m16_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m16_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m16_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m16_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m16_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m16_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m16_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m16_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m16_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m16_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m16_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m16_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m16_interface_instance";
   }
   Instance m17_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m17_interface_instance.adr[9];
      InputPort adr[8] = m17_interface_instance.adr[8];
      InputPort adr[7] = m17_interface_instance.adr[7];
      InputPort adr[6] = m17_interface_instance.adr[6];
      InputPort adr[5] = m17_interface_instance.adr[5];
      InputPort adr[4] = m17_interface_instance.adr[4];
      InputPort adr[3] = m17_interface_instance.adr[3];
      InputPort adr[2] = m17_interface_instance.adr[2];
      InputPort adr[1] = m17_interface_instance.adr[1];
      InputPort adr[0] = m17_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m17_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m17_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m17_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m17_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m17_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m17_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m17_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m17_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m17_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m17_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m17_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m17_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m17_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m17_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m17_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m17_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m17_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m17_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m17_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m17_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m17_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m17_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m17_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m17_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m17_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m17_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m17_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m17_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m17_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m17_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m17_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m17_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m17_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m17_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m17_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m17_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m17_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m17_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m17_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m17_inst";
   }
   Instance m17_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m17 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN16;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM16_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m17_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m17_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m17_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m17_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m17_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m17_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m17_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m17_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m17_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m17_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m17_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m17_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m17_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m17_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m17_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m17_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m17_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m17_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m17_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m17_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m17_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m17_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m17_interface_instance";
   }
   Instance m18_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m18_interface_instance.adr[9];
      InputPort adr[8] = m18_interface_instance.adr[8];
      InputPort adr[7] = m18_interface_instance.adr[7];
      InputPort adr[6] = m18_interface_instance.adr[6];
      InputPort adr[5] = m18_interface_instance.adr[5];
      InputPort adr[4] = m18_interface_instance.adr[4];
      InputPort adr[3] = m18_interface_instance.adr[3];
      InputPort adr[2] = m18_interface_instance.adr[2];
      InputPort adr[1] = m18_interface_instance.adr[1];
      InputPort adr[0] = m18_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m18_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m18_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m18_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m18_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m18_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m18_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m18_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m18_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m18_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m18_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m18_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m18_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m18_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m18_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m18_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m18_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m18_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m18_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m18_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m18_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m18_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m18_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m18_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m18_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m18_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m18_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m18_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m18_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m18_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m18_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m18_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m18_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m18_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m18_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m18_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m18_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m18_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m18_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m18_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m18_inst";
   }
   Instance m18_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m18 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN17;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM17_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m18_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m18_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m18_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m18_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m18_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m18_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m18_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m18_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m18_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m18_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m18_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m18_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m18_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m18_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m18_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m18_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m18_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m18_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m18_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m18_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m18_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m18_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m18_interface_instance";
   }
   Instance m19_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m19_interface_instance.adr[9];
      InputPort adr[8] = m19_interface_instance.adr[8];
      InputPort adr[7] = m19_interface_instance.adr[7];
      InputPort adr[6] = m19_interface_instance.adr[6];
      InputPort adr[5] = m19_interface_instance.adr[5];
      InputPort adr[4] = m19_interface_instance.adr[4];
      InputPort adr[3] = m19_interface_instance.adr[3];
      InputPort adr[2] = m19_interface_instance.adr[2];
      InputPort adr[1] = m19_interface_instance.adr[1];
      InputPort adr[0] = m19_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m19_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m19_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m19_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m19_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m19_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m19_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m19_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m19_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m19_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m19_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m19_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m19_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m19_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m19_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m19_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m19_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m19_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m19_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m19_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m19_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m19_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m19_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m19_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m19_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m19_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m19_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m19_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m19_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m19_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m19_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m19_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m19_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m19_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m19_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m19_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m19_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m19_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m19_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m19_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m19_inst";
   }
   Instance m19_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m19 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN18;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM18_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m19_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m19_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m19_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m19_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m19_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m19_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m19_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m19_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m19_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m19_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m19_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m19_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m19_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m19_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m19_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m19_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m19_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m19_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m19_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m19_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m19_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m19_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m19_interface_instance";
   }
   Instance m1_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m1_interface_instance.adr[9];
      InputPort adr[8] = m1_interface_instance.adr[8];
      InputPort adr[7] = m1_interface_instance.adr[7];
      InputPort adr[6] = m1_interface_instance.adr[6];
      InputPort adr[5] = m1_interface_instance.adr[5];
      InputPort adr[4] = m1_interface_instance.adr[4];
      InputPort adr[3] = m1_interface_instance.adr[3];
      InputPort adr[2] = m1_interface_instance.adr[2];
      InputPort adr[1] = m1_interface_instance.adr[1];
      InputPort adr[0] = m1_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m1_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m1_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m1_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m1_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m1_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m1_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m1_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m1_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m1_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m1_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m1_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m1_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m1_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m1_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m1_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m1_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m1_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m1_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m1_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m1_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m1_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m1_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m1_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m1_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m1_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m1_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m1_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m1_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m1_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m1_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m1_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m1_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m1_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m1_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m1_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m1_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m1_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m1_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m1_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m1_inst";
   }
   Instance m1_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m1 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN0;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM0_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m1_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m1_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m1_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m1_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m1_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m1_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m1_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m1_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m1_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m1_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m1_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m1_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m1_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m1_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m1_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m1_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m1_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m1_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m1_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m1_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m1_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m1_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m1_interface_instance";
   }
   Instance m20_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m20_interface_instance.adr[9];
      InputPort adr[8] = m20_interface_instance.adr[8];
      InputPort adr[7] = m20_interface_instance.adr[7];
      InputPort adr[6] = m20_interface_instance.adr[6];
      InputPort adr[5] = m20_interface_instance.adr[5];
      InputPort adr[4] = m20_interface_instance.adr[4];
      InputPort adr[3] = m20_interface_instance.adr[3];
      InputPort adr[2] = m20_interface_instance.adr[2];
      InputPort adr[1] = m20_interface_instance.adr[1];
      InputPort adr[0] = m20_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m20_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m20_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m20_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m20_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m20_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m20_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m20_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m20_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m20_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m20_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m20_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m20_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m20_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m20_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m20_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m20_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m20_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m20_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m20_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m20_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m20_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m20_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m20_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m20_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m20_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m20_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m20_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m20_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m20_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m20_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m20_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m20_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m20_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m20_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m20_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m20_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m20_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m20_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m20_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m20_inst";
   }
   Instance m20_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m20 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN19;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM19_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m20_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m20_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m20_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m20_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m20_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m20_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m20_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m20_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m20_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m20_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m20_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m20_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m20_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m20_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m20_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m20_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m20_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m20_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m20_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m20_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m20_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m20_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m20_interface_instance";
   }
   Instance m21_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m21_interface_instance.adr[9];
      InputPort adr[8] = m21_interface_instance.adr[8];
      InputPort adr[7] = m21_interface_instance.adr[7];
      InputPort adr[6] = m21_interface_instance.adr[6];
      InputPort adr[5] = m21_interface_instance.adr[5];
      InputPort adr[4] = m21_interface_instance.adr[4];
      InputPort adr[3] = m21_interface_instance.adr[3];
      InputPort adr[2] = m21_interface_instance.adr[2];
      InputPort adr[1] = m21_interface_instance.adr[1];
      InputPort adr[0] = m21_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m21_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m21_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m21_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m21_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m21_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m21_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m21_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m21_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m21_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m21_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m21_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m21_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m21_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m21_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m21_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m21_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m21_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m21_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m21_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m21_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m21_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m21_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m21_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m21_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m21_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m21_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m21_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m21_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m21_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m21_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m21_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m21_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m21_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m21_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m21_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m21_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m21_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m21_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m21_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m21_inst";
   }
   Instance m21_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m21 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN20;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM20_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m21_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m21_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m21_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m21_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m21_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m21_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m21_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m21_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m21_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m21_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m21_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m21_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m21_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m21_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m21_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m21_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m21_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m21_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m21_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m21_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m21_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m21_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m21_interface_instance";
   }
   Instance m22_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m22_interface_instance.adr[9];
      InputPort adr[8] = m22_interface_instance.adr[8];
      InputPort adr[7] = m22_interface_instance.adr[7];
      InputPort adr[6] = m22_interface_instance.adr[6];
      InputPort adr[5] = m22_interface_instance.adr[5];
      InputPort adr[4] = m22_interface_instance.adr[4];
      InputPort adr[3] = m22_interface_instance.adr[3];
      InputPort adr[2] = m22_interface_instance.adr[2];
      InputPort adr[1] = m22_interface_instance.adr[1];
      InputPort adr[0] = m22_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m22_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m22_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m22_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m22_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m22_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m22_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m22_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m22_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m22_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m22_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m22_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m22_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m22_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m22_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m22_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m22_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m22_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m22_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m22_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m22_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m22_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m22_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m22_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m22_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m22_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m22_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m22_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m22_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m22_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m22_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m22_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m22_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m22_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m22_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m22_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m22_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m22_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m22_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m22_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m22_inst";
   }
   Instance m22_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m22 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN21;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM21_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m22_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m22_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m22_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m22_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m22_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m22_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m22_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m22_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m22_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m22_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m22_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m22_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m22_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m22_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m22_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m22_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m22_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m22_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m22_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m22_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m22_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m22_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m22_interface_instance";
   }
   Instance m23_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m23_interface_instance.adr[9];
      InputPort adr[8] = m23_interface_instance.adr[8];
      InputPort adr[7] = m23_interface_instance.adr[7];
      InputPort adr[6] = m23_interface_instance.adr[6];
      InputPort adr[5] = m23_interface_instance.adr[5];
      InputPort adr[4] = m23_interface_instance.adr[4];
      InputPort adr[3] = m23_interface_instance.adr[3];
      InputPort adr[2] = m23_interface_instance.adr[2];
      InputPort adr[1] = m23_interface_instance.adr[1];
      InputPort adr[0] = m23_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m23_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m23_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m23_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m23_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m23_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m23_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m23_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m23_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m23_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m23_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m23_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m23_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m23_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m23_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m23_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m23_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m23_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m23_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m23_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m23_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m23_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m23_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m23_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m23_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m23_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m23_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m23_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m23_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m23_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m23_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m23_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m23_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m23_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m23_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m23_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m23_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m23_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m23_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m23_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m23_inst";
   }
   Instance m23_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m23 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN22;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM22_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m23_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m23_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m23_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m23_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m23_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m23_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m23_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m23_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m23_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m23_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m23_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m23_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m23_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m23_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m23_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m23_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m23_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m23_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m23_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m23_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m23_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m23_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m23_interface_instance";
   }
   Instance m24_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m24_interface_instance.adr[9];
      InputPort adr[8] = m24_interface_instance.adr[8];
      InputPort adr[7] = m24_interface_instance.adr[7];
      InputPort adr[6] = m24_interface_instance.adr[6];
      InputPort adr[5] = m24_interface_instance.adr[5];
      InputPort adr[4] = m24_interface_instance.adr[4];
      InputPort adr[3] = m24_interface_instance.adr[3];
      InputPort adr[2] = m24_interface_instance.adr[2];
      InputPort adr[1] = m24_interface_instance.adr[1];
      InputPort adr[0] = m24_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m24_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m24_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m24_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m24_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m24_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m24_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m24_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m24_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m24_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m24_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m24_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m24_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m24_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m24_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m24_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m24_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m24_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m24_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m24_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m24_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m24_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m24_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m24_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m24_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m24_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m24_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m24_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m24_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m24_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m24_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m24_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m24_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m24_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m24_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m24_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m24_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m24_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m24_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m24_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m24_inst";
   }
   Instance m24_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m24 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN23;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM23_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m24_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m24_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m24_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m24_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m24_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m24_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m24_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m24_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m24_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m24_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m24_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m24_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m24_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m24_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m24_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m24_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m24_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m24_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m24_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m24_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m24_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m24_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m24_interface_instance";
   }
   Instance m25_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m25_interface_instance.adr[9];
      InputPort adr[8] = m25_interface_instance.adr[8];
      InputPort adr[7] = m25_interface_instance.adr[7];
      InputPort adr[6] = m25_interface_instance.adr[6];
      InputPort adr[5] = m25_interface_instance.adr[5];
      InputPort adr[4] = m25_interface_instance.adr[4];
      InputPort adr[3] = m25_interface_instance.adr[3];
      InputPort adr[2] = m25_interface_instance.adr[2];
      InputPort adr[1] = m25_interface_instance.adr[1];
      InputPort adr[0] = m25_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m25_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m25_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m25_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m25_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m25_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m25_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m25_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m25_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m25_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m25_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m25_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m25_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m25_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m25_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m25_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m25_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m25_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m25_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m25_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m25_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m25_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m25_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m25_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m25_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m25_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m25_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m25_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m25_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m25_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m25_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m25_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m25_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m25_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m25_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m25_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m25_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m25_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m25_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m25_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m25_inst";
   }
   Instance m25_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m25 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN24;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM24_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m25_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m25_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m25_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m25_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m25_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m25_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m25_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m25_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m25_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m25_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m25_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m25_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m25_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m25_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m25_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m25_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m25_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m25_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m25_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m25_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m25_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m25_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m25_interface_instance";
   }
   Instance m26_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m26_interface_instance.adr[9];
      InputPort adr[8] = m26_interface_instance.adr[8];
      InputPort adr[7] = m26_interface_instance.adr[7];
      InputPort adr[6] = m26_interface_instance.adr[6];
      InputPort adr[5] = m26_interface_instance.adr[5];
      InputPort adr[4] = m26_interface_instance.adr[4];
      InputPort adr[3] = m26_interface_instance.adr[3];
      InputPort adr[2] = m26_interface_instance.adr[2];
      InputPort adr[1] = m26_interface_instance.adr[1];
      InputPort adr[0] = m26_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m26_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m26_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m26_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m26_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m26_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m26_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m26_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m26_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m26_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m26_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m26_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m26_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m26_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m26_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m26_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m26_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m26_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m26_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m26_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m26_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m26_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m26_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m26_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m26_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m26_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m26_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m26_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m26_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m26_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m26_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m26_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m26_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m26_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m26_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m26_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m26_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m26_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m26_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m26_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m26_inst";
   }
   Instance m26_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m26 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN25;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM25_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m26_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m26_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m26_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m26_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m26_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m26_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m26_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m26_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m26_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m26_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m26_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m26_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m26_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m26_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m26_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m26_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m26_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m26_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m26_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m26_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m26_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m26_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m26_interface_instance";
   }
   Instance m27_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m27_interface_instance.adr[9];
      InputPort adr[8] = m27_interface_instance.adr[8];
      InputPort adr[7] = m27_interface_instance.adr[7];
      InputPort adr[6] = m27_interface_instance.adr[6];
      InputPort adr[5] = m27_interface_instance.adr[5];
      InputPort adr[4] = m27_interface_instance.adr[4];
      InputPort adr[3] = m27_interface_instance.adr[3];
      InputPort adr[2] = m27_interface_instance.adr[2];
      InputPort adr[1] = m27_interface_instance.adr[1];
      InputPort adr[0] = m27_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m27_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m27_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m27_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m27_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m27_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m27_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m27_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m27_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m27_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m27_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m27_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m27_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m27_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m27_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m27_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m27_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m27_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m27_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m27_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m27_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m27_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m27_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m27_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m27_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m27_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m27_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m27_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m27_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m27_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m27_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m27_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m27_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m27_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m27_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m27_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m27_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m27_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m27_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m27_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m27_inst";
   }
   Instance m27_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m27 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN26;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM26_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m27_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m27_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m27_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m27_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m27_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m27_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m27_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m27_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m27_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m27_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m27_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m27_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m27_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m27_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m27_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m27_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m27_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m27_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m27_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m27_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m27_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m27_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m27_interface_instance";
   }
   Instance m28_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m28_interface_instance.adr[9];
      InputPort adr[8] = m28_interface_instance.adr[8];
      InputPort adr[7] = m28_interface_instance.adr[7];
      InputPort adr[6] = m28_interface_instance.adr[6];
      InputPort adr[5] = m28_interface_instance.adr[5];
      InputPort adr[4] = m28_interface_instance.adr[4];
      InputPort adr[3] = m28_interface_instance.adr[3];
      InputPort adr[2] = m28_interface_instance.adr[2];
      InputPort adr[1] = m28_interface_instance.adr[1];
      InputPort adr[0] = m28_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m28_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m28_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m28_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m28_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m28_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m28_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m28_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m28_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m28_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m28_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m28_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m28_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m28_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m28_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m28_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m28_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m28_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m28_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m28_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m28_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m28_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m28_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m28_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m28_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m28_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m28_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m28_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m28_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m28_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m28_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m28_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m28_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m28_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m28_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m28_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m28_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m28_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m28_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m28_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m28_inst";
   }
   Instance m28_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m28 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN27;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM27_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m28_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m28_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m28_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m28_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m28_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m28_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m28_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m28_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m28_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m28_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m28_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m28_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m28_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m28_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m28_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m28_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m28_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m28_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m28_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m28_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m28_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m28_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m28_interface_instance";
   }
   Instance m29_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m29_interface_instance.adr[9];
      InputPort adr[8] = m29_interface_instance.adr[8];
      InputPort adr[7] = m29_interface_instance.adr[7];
      InputPort adr[6] = m29_interface_instance.adr[6];
      InputPort adr[5] = m29_interface_instance.adr[5];
      InputPort adr[4] = m29_interface_instance.adr[4];
      InputPort adr[3] = m29_interface_instance.adr[3];
      InputPort adr[2] = m29_interface_instance.adr[2];
      InputPort adr[1] = m29_interface_instance.adr[1];
      InputPort adr[0] = m29_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m29_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m29_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m29_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m29_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m29_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m29_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m29_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m29_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m29_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m29_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m29_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m29_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m29_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m29_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m29_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m29_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m29_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m29_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m29_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m29_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m29_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m29_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m29_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m29_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m29_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m29_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m29_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m29_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m29_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m29_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m29_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m29_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m29_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m29_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m29_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m29_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m29_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m29_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m29_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m29_inst";
   }
   Instance m29_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m29 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN28;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM28_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m29_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m29_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m29_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m29_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m29_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m29_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m29_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m29_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m29_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m29_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m29_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m29_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m29_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m29_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m29_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m29_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m29_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m29_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m29_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m29_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m29_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m29_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m29_interface_instance";
   }
   Instance m2_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m2_interface_instance.adr[9];
      InputPort adr[8] = m2_interface_instance.adr[8];
      InputPort adr[7] = m2_interface_instance.adr[7];
      InputPort adr[6] = m2_interface_instance.adr[6];
      InputPort adr[5] = m2_interface_instance.adr[5];
      InputPort adr[4] = m2_interface_instance.adr[4];
      InputPort adr[3] = m2_interface_instance.adr[3];
      InputPort adr[2] = m2_interface_instance.adr[2];
      InputPort adr[1] = m2_interface_instance.adr[1];
      InputPort adr[0] = m2_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m2_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m2_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m2_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m2_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m2_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m2_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m2_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m2_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m2_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m2_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m2_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m2_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m2_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m2_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m2_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m2_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m2_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m2_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m2_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m2_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m2_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m2_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m2_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m2_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m2_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m2_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m2_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m2_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m2_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m2_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m2_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m2_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m2_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m2_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m2_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m2_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m2_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m2_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m2_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m2_inst";
   }
   Instance m2_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m2 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN1;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM1_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m2_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m2_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m2_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m2_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m2_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m2_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m2_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m2_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m2_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m2_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m2_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m2_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m2_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m2_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m2_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m2_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m2_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m2_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m2_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m2_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m2_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m2_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m2_interface_instance";
   }
   Instance m30_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m30_interface_instance.adr[9];
      InputPort adr[8] = m30_interface_instance.adr[8];
      InputPort adr[7] = m30_interface_instance.adr[7];
      InputPort adr[6] = m30_interface_instance.adr[6];
      InputPort adr[5] = m30_interface_instance.adr[5];
      InputPort adr[4] = m30_interface_instance.adr[4];
      InputPort adr[3] = m30_interface_instance.adr[3];
      InputPort adr[2] = m30_interface_instance.adr[2];
      InputPort adr[1] = m30_interface_instance.adr[1];
      InputPort adr[0] = m30_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m30_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m30_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m30_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m30_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m30_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m30_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m30_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m30_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m30_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m30_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m30_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m30_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m30_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m30_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m30_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m30_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m30_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m30_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m30_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m30_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m30_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m30_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m30_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m30_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m30_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m30_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m30_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m30_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m30_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m30_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m30_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m30_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m30_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m30_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m30_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m30_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m30_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m30_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m30_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m30_inst";
   }
   Instance m30_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m30 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN29;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM29_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m30_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m30_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m30_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m30_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m30_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m30_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m30_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m30_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m30_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m30_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m30_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m30_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m30_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m30_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m30_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m30_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m30_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m30_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m30_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m30_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m30_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m30_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m30_interface_instance";
   }
   Instance m31_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m31_interface_instance.adr[9];
      InputPort adr[8] = m31_interface_instance.adr[8];
      InputPort adr[7] = m31_interface_instance.adr[7];
      InputPort adr[6] = m31_interface_instance.adr[6];
      InputPort adr[5] = m31_interface_instance.adr[5];
      InputPort adr[4] = m31_interface_instance.adr[4];
      InputPort adr[3] = m31_interface_instance.adr[3];
      InputPort adr[2] = m31_interface_instance.adr[2];
      InputPort adr[1] = m31_interface_instance.adr[1];
      InputPort adr[0] = m31_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m31_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m31_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m31_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m31_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m31_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m31_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m31_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m31_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m31_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m31_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m31_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m31_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m31_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m31_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m31_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m31_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m31_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m31_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m31_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m31_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m31_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m31_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m31_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m31_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m31_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m31_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m31_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m31_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m31_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m31_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m31_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m31_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m31_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m31_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m31_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m31_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m31_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m31_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m31_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m31_inst";
   }
   Instance m31_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m31 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN30;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM30_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m31_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m31_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m31_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m31_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m31_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m31_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m31_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m31_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m31_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m31_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m31_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m31_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m31_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m31_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m31_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m31_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m31_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m31_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m31_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m31_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m31_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m31_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m31_interface_instance";
   }
   Instance m32_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m32_interface_instance.adr[9];
      InputPort adr[8] = m32_interface_instance.adr[8];
      InputPort adr[7] = m32_interface_instance.adr[7];
      InputPort adr[6] = m32_interface_instance.adr[6];
      InputPort adr[5] = m32_interface_instance.adr[5];
      InputPort adr[4] = m32_interface_instance.adr[4];
      InputPort adr[3] = m32_interface_instance.adr[3];
      InputPort adr[2] = m32_interface_instance.adr[2];
      InputPort adr[1] = m32_interface_instance.adr[1];
      InputPort adr[0] = m32_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m32_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m32_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m32_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m32_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m32_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m32_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m32_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m32_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m32_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m32_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m32_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m32_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m32_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m32_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m32_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m32_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m32_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m32_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m32_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m32_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m32_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m32_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m32_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m32_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m32_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m32_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m32_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m32_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m32_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m32_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m32_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m32_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m32_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m32_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m32_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m32_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m32_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m32_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m32_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m32_inst";
   }
   Instance m32_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m32 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN31;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM31_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m32_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m32_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m32_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m32_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m32_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m32_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m32_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m32_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m32_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m32_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m32_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m32_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m32_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m32_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m32_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m32_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m32_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m32_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m32_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m32_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m32_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m32_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m32_interface_instance";
   }
   Instance m33_inst Of ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m33_interface_instance.adr[9];
      InputPort adr[8] = m33_interface_instance.adr[8];
      InputPort adr[7] = m33_interface_instance.adr[7];
      InputPort adr[6] = m33_interface_instance.adr[6];
      InputPort adr[5] = m33_interface_instance.adr[5];
      InputPort adr[4] = m33_interface_instance.adr[4];
      InputPort adr[3] = m33_interface_instance.adr[3];
      InputPort adr[2] = m33_interface_instance.adr[2];
      InputPort adr[1] = m33_interface_instance.adr[1];
      InputPort adr[0] = m33_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m33_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m33_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m33_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m33_inst_row_repair_in[22];
      InputPort row_repair_in[21] = c1_gate1_m33_bisr_inst.Q[17];
      InputPort row_repair_in[20] = c1_gate1_m33_bisr_inst.Q[16];
      InputPort row_repair_in[19] = c1_gate1_m33_bisr_inst.Q[15];
      InputPort row_repair_in[18] = c1_gate1_m33_bisr_inst.Q[14];
      InputPort row_repair_in[17] = c1_gate1_m33_bisr_inst.Q[13];
      InputPort row_repair_in[16] = c1_gate1_m33_bisr_inst.Q[12];
      InputPort row_repair_in[15] = c1_gate1_m33_bisr_inst.Q[11];
      InputPort row_repair_in[14] = c1_gate1_m33_bisr_inst.Q[10];
      InputPort row_repair_in[13] = c1_gate1_m33_bisr_inst.Q[9];
      InputPort row_repair_in[12] = m33_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m33_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m33_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m33_inst_row_repair_in[9];
      InputPort row_repair_in[8] = c1_gate1_m33_bisr_inst.Q[8];
      InputPort row_repair_in[7] = c1_gate1_m33_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m33_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m33_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m33_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m33_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m33_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m33_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m33_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m33_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m33_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m33_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m33_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m33_inst_col_repair_in[8];
      InputPort col_repair_in[7] = c1_gate1_m33_bisr_inst.Q[25];
      InputPort col_repair_in[6] = c1_gate1_m33_bisr_inst.Q[24];
      InputPort col_repair_in[5] = c1_gate1_m33_bisr_inst.Q[23];
      InputPort col_repair_in[4] = c1_gate1_m33_bisr_inst.Q[22];
      InputPort col_repair_in[3] = c1_gate1_m33_bisr_inst.Q[21];
      InputPort col_repair_in[2] = c1_gate1_m33_bisr_inst.Q[20];
      InputPort col_repair_in[1] = c1_gate1_m33_bisr_inst.Q[19];
      InputPort col_repair_in[0] = c1_gate1_m33_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m33_inst";
   }
   Instance m33_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m33 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN32;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM32_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7] = 
          c1_gate1_m33_bisr_inst.Q[8];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m33_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m33_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m33_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m33_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m33_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m33_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m33_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m33_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7] = 
          c1_gate1_m33_bisr_inst.Q[17];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m33_bisr_inst.Q[16];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m33_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m33_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m33_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m33_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m33_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m33_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m33_bisr_inst.Q[9];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[6] = c1_gate1_m33_bisr_inst.Q[25];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[5] = c1_gate1_m33_bisr_inst.Q[24];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m33_bisr_inst.Q[23];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m33_bisr_inst.Q[22];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m33_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m33_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m33_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m33_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m33_interface_instance";
   }
   Instance m34_inst Of ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m34_interface_instance.adr[9];
      InputPort adr[8] = m34_interface_instance.adr[8];
      InputPort adr[7] = m34_interface_instance.adr[7];
      InputPort adr[6] = m34_interface_instance.adr[6];
      InputPort adr[5] = m34_interface_instance.adr[5];
      InputPort adr[4] = m34_interface_instance.adr[4];
      InputPort adr[3] = m34_interface_instance.adr[3];
      InputPort adr[2] = m34_interface_instance.adr[2];
      InputPort adr[1] = m34_interface_instance.adr[1];
      InputPort adr[0] = m34_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m34_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m34_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m34_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m34_inst_row_repair_in[22];
      InputPort row_repair_in[21] = c1_gate1_m34_bisr_inst.Q[17];
      InputPort row_repair_in[20] = c1_gate1_m34_bisr_inst.Q[16];
      InputPort row_repair_in[19] = c1_gate1_m34_bisr_inst.Q[15];
      InputPort row_repair_in[18] = c1_gate1_m34_bisr_inst.Q[14];
      InputPort row_repair_in[17] = c1_gate1_m34_bisr_inst.Q[13];
      InputPort row_repair_in[16] = c1_gate1_m34_bisr_inst.Q[12];
      InputPort row_repair_in[15] = c1_gate1_m34_bisr_inst.Q[11];
      InputPort row_repair_in[14] = c1_gate1_m34_bisr_inst.Q[10];
      InputPort row_repair_in[13] = c1_gate1_m34_bisr_inst.Q[9];
      InputPort row_repair_in[12] = m34_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m34_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m34_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m34_inst_row_repair_in[9];
      InputPort row_repair_in[8] = c1_gate1_m34_bisr_inst.Q[8];
      InputPort row_repair_in[7] = c1_gate1_m34_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m34_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m34_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m34_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m34_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m34_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m34_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m34_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m34_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m34_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m34_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m34_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m34_inst_col_repair_in[8];
      InputPort col_repair_in[7] = c1_gate1_m34_bisr_inst.Q[25];
      InputPort col_repair_in[6] = c1_gate1_m34_bisr_inst.Q[24];
      InputPort col_repair_in[5] = c1_gate1_m34_bisr_inst.Q[23];
      InputPort col_repair_in[4] = c1_gate1_m34_bisr_inst.Q[22];
      InputPort col_repair_in[3] = c1_gate1_m34_bisr_inst.Q[21];
      InputPort col_repair_in[2] = c1_gate1_m34_bisr_inst.Q[20];
      InputPort col_repair_in[1] = c1_gate1_m34_bisr_inst.Q[19];
      InputPort col_repair_in[0] = c1_gate1_m34_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m34_inst";
   }
   Instance m34_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m34 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN33;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM33_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7] = 
          c1_gate1_m34_bisr_inst.Q[8];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m34_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m34_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m34_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m34_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m34_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m34_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m34_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m34_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7] = 
          c1_gate1_m34_bisr_inst.Q[17];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m34_bisr_inst.Q[16];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m34_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m34_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m34_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m34_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m34_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m34_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m34_bisr_inst.Q[9];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[6] = c1_gate1_m34_bisr_inst.Q[25];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[5] = c1_gate1_m34_bisr_inst.Q[24];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m34_bisr_inst.Q[23];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m34_bisr_inst.Q[22];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m34_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m34_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m34_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m34_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m34_interface_instance";
   }
   Instance m35_inst Of ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m35_interface_instance.adr[9];
      InputPort adr[8] = m35_interface_instance.adr[8];
      InputPort adr[7] = m35_interface_instance.adr[7];
      InputPort adr[6] = m35_interface_instance.adr[6];
      InputPort adr[5] = m35_interface_instance.adr[5];
      InputPort adr[4] = m35_interface_instance.adr[4];
      InputPort adr[3] = m35_interface_instance.adr[3];
      InputPort adr[2] = m35_interface_instance.adr[2];
      InputPort adr[1] = m35_interface_instance.adr[1];
      InputPort adr[0] = m35_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m35_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m35_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m35_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m35_inst_row_repair_in[22];
      InputPort row_repair_in[21] = c1_gate1_m35_bisr_inst.Q[17];
      InputPort row_repair_in[20] = c1_gate1_m35_bisr_inst.Q[16];
      InputPort row_repair_in[19] = c1_gate1_m35_bisr_inst.Q[15];
      InputPort row_repair_in[18] = c1_gate1_m35_bisr_inst.Q[14];
      InputPort row_repair_in[17] = c1_gate1_m35_bisr_inst.Q[13];
      InputPort row_repair_in[16] = c1_gate1_m35_bisr_inst.Q[12];
      InputPort row_repair_in[15] = c1_gate1_m35_bisr_inst.Q[11];
      InputPort row_repair_in[14] = c1_gate1_m35_bisr_inst.Q[10];
      InputPort row_repair_in[13] = c1_gate1_m35_bisr_inst.Q[9];
      InputPort row_repair_in[12] = m35_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m35_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m35_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m35_inst_row_repair_in[9];
      InputPort row_repair_in[8] = c1_gate1_m35_bisr_inst.Q[8];
      InputPort row_repair_in[7] = c1_gate1_m35_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m35_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m35_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m35_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m35_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m35_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m35_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m35_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m35_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m35_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m35_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m35_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m35_inst_col_repair_in[8];
      InputPort col_repair_in[7] = c1_gate1_m35_bisr_inst.Q[25];
      InputPort col_repair_in[6] = c1_gate1_m35_bisr_inst.Q[24];
      InputPort col_repair_in[5] = c1_gate1_m35_bisr_inst.Q[23];
      InputPort col_repair_in[4] = c1_gate1_m35_bisr_inst.Q[22];
      InputPort col_repair_in[3] = c1_gate1_m35_bisr_inst.Q[21];
      InputPort col_repair_in[2] = c1_gate1_m35_bisr_inst.Q[20];
      InputPort col_repair_in[1] = c1_gate1_m35_bisr_inst.Q[19];
      InputPort col_repair_in[0] = c1_gate1_m35_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m35_inst";
   }
   Instance m35_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m35 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN34;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM34_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7] = 
          c1_gate1_m35_bisr_inst.Q[8];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m35_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m35_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m35_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m35_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m35_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m35_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m35_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m35_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7] = 
          c1_gate1_m35_bisr_inst.Q[17];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m35_bisr_inst.Q[16];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m35_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m35_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m35_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m35_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m35_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m35_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m35_bisr_inst.Q[9];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[6] = c1_gate1_m35_bisr_inst.Q[25];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[5] = c1_gate1_m35_bisr_inst.Q[24];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m35_bisr_inst.Q[23];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m35_bisr_inst.Q[22];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m35_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m35_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m35_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m35_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m35_interface_instance";
   }
   Instance m36_inst Of ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m36_interface_instance.adr[9];
      InputPort adr[8] = m36_interface_instance.adr[8];
      InputPort adr[7] = m36_interface_instance.adr[7];
      InputPort adr[6] = m36_interface_instance.adr[6];
      InputPort adr[5] = m36_interface_instance.adr[5];
      InputPort adr[4] = m36_interface_instance.adr[4];
      InputPort adr[3] = m36_interface_instance.adr[3];
      InputPort adr[2] = m36_interface_instance.adr[2];
      InputPort adr[1] = m36_interface_instance.adr[1];
      InputPort adr[0] = m36_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m36_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m36_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m36_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m36_inst_row_repair_in[22];
      InputPort row_repair_in[21] = c1_gate1_m36_bisr_inst.Q[17];
      InputPort row_repair_in[20] = c1_gate1_m36_bisr_inst.Q[16];
      InputPort row_repair_in[19] = c1_gate1_m36_bisr_inst.Q[15];
      InputPort row_repair_in[18] = c1_gate1_m36_bisr_inst.Q[14];
      InputPort row_repair_in[17] = c1_gate1_m36_bisr_inst.Q[13];
      InputPort row_repair_in[16] = c1_gate1_m36_bisr_inst.Q[12];
      InputPort row_repair_in[15] = c1_gate1_m36_bisr_inst.Q[11];
      InputPort row_repair_in[14] = c1_gate1_m36_bisr_inst.Q[10];
      InputPort row_repair_in[13] = c1_gate1_m36_bisr_inst.Q[9];
      InputPort row_repair_in[12] = m36_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m36_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m36_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m36_inst_row_repair_in[9];
      InputPort row_repair_in[8] = c1_gate1_m36_bisr_inst.Q[8];
      InputPort row_repair_in[7] = c1_gate1_m36_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m36_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m36_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m36_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m36_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m36_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m36_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m36_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m36_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m36_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m36_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m36_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m36_inst_col_repair_in[8];
      InputPort col_repair_in[7] = c1_gate1_m36_bisr_inst.Q[25];
      InputPort col_repair_in[6] = c1_gate1_m36_bisr_inst.Q[24];
      InputPort col_repair_in[5] = c1_gate1_m36_bisr_inst.Q[23];
      InputPort col_repair_in[4] = c1_gate1_m36_bisr_inst.Q[22];
      InputPort col_repair_in[3] = c1_gate1_m36_bisr_inst.Q[21];
      InputPort col_repair_in[2] = c1_gate1_m36_bisr_inst.Q[20];
      InputPort col_repair_in[1] = c1_gate1_m36_bisr_inst.Q[19];
      InputPort col_repair_in[0] = c1_gate1_m36_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m36_inst";
   }
   Instance m36_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m36 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN35;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM35_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7] = 
          c1_gate1_m36_bisr_inst.Q[8];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m36_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m36_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m36_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m36_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m36_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m36_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m36_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m36_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7] = 
          c1_gate1_m36_bisr_inst.Q[17];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m36_bisr_inst.Q[16];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m36_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m36_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m36_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m36_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m36_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m36_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m36_bisr_inst.Q[9];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[6] = c1_gate1_m36_bisr_inst.Q[25];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[5] = c1_gate1_m36_bisr_inst.Q[24];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m36_bisr_inst.Q[23];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m36_bisr_inst.Q[22];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m36_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m36_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m36_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m36_bisr_inst.Q[18];
      Attribute tessent_design_instance = "m36_interface_instance";
   }
   Instance m37_inst Of ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[8] = m37_interface_instance.adr[8];
      InputPort adr[7] = m37_interface_instance.adr[7];
      InputPort adr[6] = m37_interface_instance.adr[6];
      InputPort adr[5] = m37_interface_instance.adr[5];
      InputPort adr[4] = m37_interface_instance.adr[4];
      InputPort adr[3] = m37_interface_instance.adr[3];
      InputPort adr[2] = m37_interface_instance.adr[2];
      InputPort adr[1] = m37_interface_instance.adr[1];
      InputPort adr[0] = m37_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m37_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m37_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m37_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m37_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m37_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m37_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m37_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m37_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m37_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m37_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m37_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m37_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m37_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m37_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m37_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m37_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m37_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m37_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m37_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m37_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m37_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m37_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m37_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m37_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m37_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m37_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m37_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m37_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m37_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m37_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m37_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m37_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m37_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m37_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m37_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m37_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m37_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m37_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m37_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m37_inst";
   }
   Instance m37_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m37 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN36;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM36_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m37_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m37_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m37_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m37_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m37_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m37_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m37_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m37_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m37_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m37_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m37_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m37_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m37_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m37_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m37_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m37_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m37_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m37_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m37_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m37_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m37_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m37_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m37_interface_instance";
   }
   Instance m38_inst Of ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[8] = m38_interface_instance.adr[8];
      InputPort adr[7] = m38_interface_instance.adr[7];
      InputPort adr[6] = m38_interface_instance.adr[6];
      InputPort adr[5] = m38_interface_instance.adr[5];
      InputPort adr[4] = m38_interface_instance.adr[4];
      InputPort adr[3] = m38_interface_instance.adr[3];
      InputPort adr[2] = m38_interface_instance.adr[2];
      InputPort adr[1] = m38_interface_instance.adr[1];
      InputPort adr[0] = m38_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m38_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m38_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m38_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m38_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m38_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m38_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m38_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m38_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m38_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m38_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m38_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m38_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m38_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m38_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m38_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m38_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m38_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m38_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m38_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m38_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m38_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m38_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m38_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m38_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m38_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m38_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m38_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m38_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m38_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m38_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m38_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m38_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m38_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m38_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m38_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m38_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m38_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m38_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m38_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m38_inst";
   }
   Instance m38_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m38 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN37;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM37_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m38_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m38_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m38_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m38_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m38_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m38_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m38_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m38_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m38_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m38_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m38_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m38_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m38_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m38_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m38_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m38_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m38_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m38_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m38_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m38_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m38_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m38_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m38_interface_instance";
   }
   Instance m39_inst Of ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[8] = m39_interface_instance.adr[8];
      InputPort adr[7] = m39_interface_instance.adr[7];
      InputPort adr[6] = m39_interface_instance.adr[6];
      InputPort adr[5] = m39_interface_instance.adr[5];
      InputPort adr[4] = m39_interface_instance.adr[4];
      InputPort adr[3] = m39_interface_instance.adr[3];
      InputPort adr[2] = m39_interface_instance.adr[2];
      InputPort adr[1] = m39_interface_instance.adr[1];
      InputPort adr[0] = m39_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m39_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m39_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m39_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m39_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m39_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m39_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m39_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m39_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m39_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m39_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m39_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m39_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m39_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m39_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m39_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m39_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m39_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m39_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m39_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m39_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m39_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m39_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m39_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m39_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m39_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m39_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m39_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m39_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m39_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m39_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m39_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m39_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m39_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m39_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m39_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m39_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m39_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m39_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m39_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m39_inst";
   }
   Instance m39_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m39 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN38;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM38_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m39_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m39_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m39_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m39_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m39_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m39_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m39_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m39_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m39_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m39_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m39_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m39_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m39_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m39_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m39_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m39_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m39_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m39_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m39_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m39_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m39_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m39_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m39_interface_instance";
   }
   Instance m3_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m3_interface_instance.adr[9];
      InputPort adr[8] = m3_interface_instance.adr[8];
      InputPort adr[7] = m3_interface_instance.adr[7];
      InputPort adr[6] = m3_interface_instance.adr[6];
      InputPort adr[5] = m3_interface_instance.adr[5];
      InputPort adr[4] = m3_interface_instance.adr[4];
      InputPort adr[3] = m3_interface_instance.adr[3];
      InputPort adr[2] = m3_interface_instance.adr[2];
      InputPort adr[1] = m3_interface_instance.adr[1];
      InputPort adr[0] = m3_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m3_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m3_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m3_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m3_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m3_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m3_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m3_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m3_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m3_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m3_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m3_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m3_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m3_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m3_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m3_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m3_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m3_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m3_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m3_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m3_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m3_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m3_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m3_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m3_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m3_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m3_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m3_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m3_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m3_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m3_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m3_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m3_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m3_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m3_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m3_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m3_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m3_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m3_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m3_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m3_inst";
   }
   Instance m3_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m3 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN2;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM2_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m3_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m3_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m3_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m3_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m3_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m3_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m3_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m3_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m3_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m3_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m3_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m3_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m3_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m3_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m3_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m3_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m3_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m3_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m3_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m3_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m3_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m3_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m3_interface_instance";
   }
   Instance m40_inst Of ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[8] = m40_interface_instance.adr[8];
      InputPort adr[7] = m40_interface_instance.adr[7];
      InputPort adr[6] = m40_interface_instance.adr[6];
      InputPort adr[5] = m40_interface_instance.adr[5];
      InputPort adr[4] = m40_interface_instance.adr[4];
      InputPort adr[3] = m40_interface_instance.adr[3];
      InputPort adr[2] = m40_interface_instance.adr[2];
      InputPort adr[1] = m40_interface_instance.adr[1];
      InputPort adr[0] = m40_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m40_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m40_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m40_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m40_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m40_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m40_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m40_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m40_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m40_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m40_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m40_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m40_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m40_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m40_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m40_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m40_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m40_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m40_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m40_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m40_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m40_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m40_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m40_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m40_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m40_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m40_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m40_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m40_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m40_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m40_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m40_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m40_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m40_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m40_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m40_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m40_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m40_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m40_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m40_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m40_inst";
   }
   Instance m40_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m40 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN39;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM39_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = 
          c1_gate1_m40_bisr_inst.Q[7];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = 
          c1_gate1_m40_bisr_inst.Q[6];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = 
          c1_gate1_m40_bisr_inst.Q[5];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = 
          c1_gate1_m40_bisr_inst.Q[4];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = 
          c1_gate1_m40_bisr_inst.Q[3];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = 
          c1_gate1_m40_bisr_inst.Q[2];
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = 
          c1_gate1_m40_bisr_inst.Q[1];
      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m40_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m40_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m40_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m40_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m40_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m40_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m40_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = 
          c1_gate1_m40_bisr_inst.Q[9];
      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m40_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m40_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m40_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m40_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m40_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m40_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m40_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m40_interface_instance";
   }
   Instance m4_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m4_interface_instance.adr[9];
      InputPort adr[8] = m4_interface_instance.adr[8];
      InputPort adr[7] = m4_interface_instance.adr[7];
      InputPort adr[6] = m4_interface_instance.adr[6];
      InputPort adr[5] = m4_interface_instance.adr[5];
      InputPort adr[4] = m4_interface_instance.adr[4];
      InputPort adr[3] = m4_interface_instance.adr[3];
      InputPort adr[2] = m4_interface_instance.adr[2];
      InputPort adr[1] = m4_interface_instance.adr[1];
      InputPort adr[0] = m4_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m4_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m4_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m4_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m4_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m4_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m4_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m4_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m4_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m4_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m4_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m4_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m4_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m4_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m4_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m4_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m4_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m4_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m4_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m4_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m4_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m4_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m4_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m4_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m4_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m4_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m4_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m4_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m4_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m4_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m4_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m4_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m4_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m4_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m4_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m4_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m4_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m4_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m4_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m4_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m4_inst";
   }
   Instance m4_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m4 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN3;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM3_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m4_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m4_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m4_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m4_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m4_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m4_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m4_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m4_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m4_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m4_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m4_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m4_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m4_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m4_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m4_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m4_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m4_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m4_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m4_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m4_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m4_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m4_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m4_interface_instance";
   }
   Instance m5_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m5_interface_instance.adr[9];
      InputPort adr[8] = m5_interface_instance.adr[8];
      InputPort adr[7] = m5_interface_instance.adr[7];
      InputPort adr[6] = m5_interface_instance.adr[6];
      InputPort adr[5] = m5_interface_instance.adr[5];
      InputPort adr[4] = m5_interface_instance.adr[4];
      InputPort adr[3] = m5_interface_instance.adr[3];
      InputPort adr[2] = m5_interface_instance.adr[2];
      InputPort adr[1] = m5_interface_instance.adr[1];
      InputPort adr[0] = m5_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m5_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m5_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m5_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m5_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m5_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m5_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m5_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m5_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m5_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m5_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m5_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m5_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m5_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m5_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m5_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m5_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m5_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m5_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m5_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m5_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m5_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m5_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m5_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m5_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m5_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m5_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m5_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m5_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m5_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m5_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m5_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m5_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m5_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m5_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m5_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m5_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m5_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m5_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m5_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m5_inst";
   }
   Instance m5_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m5 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN4;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM4_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m5_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m5_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m5_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m5_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m5_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m5_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m5_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m5_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m5_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m5_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m5_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m5_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m5_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m5_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m5_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m5_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m5_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m5_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m5_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m5_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m5_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m5_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m5_interface_instance";
   }
   Instance m6_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m6_interface_instance.adr[9];
      InputPort adr[8] = m6_interface_instance.adr[8];
      InputPort adr[7] = m6_interface_instance.adr[7];
      InputPort adr[6] = m6_interface_instance.adr[6];
      InputPort adr[5] = m6_interface_instance.adr[5];
      InputPort adr[4] = m6_interface_instance.adr[4];
      InputPort adr[3] = m6_interface_instance.adr[3];
      InputPort adr[2] = m6_interface_instance.adr[2];
      InputPort adr[1] = m6_interface_instance.adr[1];
      InputPort adr[0] = m6_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m6_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m6_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m6_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m6_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m6_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m6_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m6_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m6_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m6_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m6_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m6_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m6_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m6_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m6_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m6_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m6_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m6_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m6_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m6_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m6_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m6_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m6_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m6_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m6_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m6_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m6_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m6_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m6_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m6_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m6_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m6_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m6_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m6_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m6_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m6_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m6_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m6_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m6_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m6_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m6_inst";
   }
   Instance m6_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m6 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN5;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM5_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m6_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m6_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m6_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m6_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m6_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m6_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m6_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m6_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m6_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m6_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m6_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m6_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m6_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m6_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m6_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m6_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m6_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m6_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m6_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m6_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m6_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m6_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m6_interface_instance";
   }
   Instance m7_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m7_interface_instance.adr[9];
      InputPort adr[8] = m7_interface_instance.adr[8];
      InputPort adr[7] = m7_interface_instance.adr[7];
      InputPort adr[6] = m7_interface_instance.adr[6];
      InputPort adr[5] = m7_interface_instance.adr[5];
      InputPort adr[4] = m7_interface_instance.adr[4];
      InputPort adr[3] = m7_interface_instance.adr[3];
      InputPort adr[2] = m7_interface_instance.adr[2];
      InputPort adr[1] = m7_interface_instance.adr[1];
      InputPort adr[0] = m7_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m7_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m7_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m7_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m7_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m7_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m7_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m7_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m7_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m7_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m7_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m7_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m7_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m7_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m7_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m7_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m7_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m7_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m7_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m7_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m7_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m7_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m7_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m7_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m7_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m7_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m7_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m7_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m7_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m7_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m7_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m7_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m7_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m7_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m7_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m7_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m7_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m7_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m7_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m7_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m7_inst";
   }
   Instance m7_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m7 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN6;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM6_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m7_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m7_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m7_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m7_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m7_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m7_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m7_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m7_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m7_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m7_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m7_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m7_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m7_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m7_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m7_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m7_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m7_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m7_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m7_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m7_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m7_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m7_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m7_interface_instance";
   }
   Instance m8_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m8_interface_instance.adr[9];
      InputPort adr[8] = m8_interface_instance.adr[8];
      InputPort adr[7] = m8_interface_instance.adr[7];
      InputPort adr[6] = m8_interface_instance.adr[6];
      InputPort adr[5] = m8_interface_instance.adr[5];
      InputPort adr[4] = m8_interface_instance.adr[4];
      InputPort adr[3] = m8_interface_instance.adr[3];
      InputPort adr[2] = m8_interface_instance.adr[2];
      InputPort adr[1] = m8_interface_instance.adr[1];
      InputPort adr[0] = m8_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m8_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m8_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m8_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m8_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m8_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m8_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m8_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m8_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m8_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m8_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m8_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m8_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m8_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m8_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m8_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m8_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m8_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m8_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m8_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m8_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m8_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m8_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m8_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m8_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m8_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m8_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m8_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m8_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m8_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m8_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m8_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m8_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m8_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m8_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m8_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m8_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m8_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m8_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m8_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m8_inst";
   }
   Instance m8_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m8 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN7;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM7_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m8_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m8_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m8_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m8_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m8_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m8_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m8_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m8_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m8_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m8_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m8_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m8_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m8_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m8_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m8_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m8_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m8_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m8_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m8_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m8_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m8_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m8_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m8_interface_instance";
   }
   Instance m9_inst Of ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
      InputPort adr[9] = m9_interface_instance.adr[9];
      InputPort adr[8] = m9_interface_instance.adr[8];
      InputPort adr[7] = m9_interface_instance.adr[7];
      InputPort adr[6] = m9_interface_instance.adr[6];
      InputPort adr[5] = m9_interface_instance.adr[5];
      InputPort adr[4] = m9_interface_instance.adr[4];
      InputPort adr[3] = m9_interface_instance.adr[3];
      InputPort adr[2] = m9_interface_instance.adr[2];
      InputPort adr[1] = m9_interface_instance.adr[1];
      InputPort adr[0] = m9_interface_instance.adr[0];
      InputPort clk = clk_clk_bbm;
      InputPort row_repair_in[25] = m9_inst_row_repair_in[25];
      InputPort row_repair_in[24] = m9_inst_row_repair_in[24];
      InputPort row_repair_in[23] = m9_inst_row_repair_in[23];
      InputPort row_repair_in[22] = m9_inst_row_repair_in[22];
      InputPort row_repair_in[21] = m9_inst_row_repair_in[21];
      InputPort row_repair_in[20] = c1_gate1_m9_bisr_inst.Q[15];
      InputPort row_repair_in[19] = c1_gate1_m9_bisr_inst.Q[14];
      InputPort row_repair_in[18] = c1_gate1_m9_bisr_inst.Q[13];
      InputPort row_repair_in[17] = c1_gate1_m9_bisr_inst.Q[12];
      InputPort row_repair_in[16] = c1_gate1_m9_bisr_inst.Q[11];
      InputPort row_repair_in[15] = c1_gate1_m9_bisr_inst.Q[10];
      InputPort row_repair_in[14] = c1_gate1_m9_bisr_inst.Q[9];
      InputPort row_repair_in[13] = c1_gate1_m9_bisr_inst.Q[8];
      InputPort row_repair_in[12] = m9_inst_row_repair_in[12];
      InputPort row_repair_in[11] = m9_inst_row_repair_in[11];
      InputPort row_repair_in[10] = m9_inst_row_repair_in[10];
      InputPort row_repair_in[9] = m9_inst_row_repair_in[9];
      InputPort row_repair_in[8] = m9_inst_row_repair_in[8];
      InputPort row_repair_in[7] = c1_gate1_m9_bisr_inst.Q[7];
      InputPort row_repair_in[6] = c1_gate1_m9_bisr_inst.Q[6];
      InputPort row_repair_in[5] = c1_gate1_m9_bisr_inst.Q[5];
      InputPort row_repair_in[4] = c1_gate1_m9_bisr_inst.Q[4];
      InputPort row_repair_in[3] = c1_gate1_m9_bisr_inst.Q[3];
      InputPort row_repair_in[2] = c1_gate1_m9_bisr_inst.Q[2];
      InputPort row_repair_in[1] = c1_gate1_m9_bisr_inst.Q[1];
      InputPort row_repair_in[0] = c1_gate1_m9_bisr_inst.Q[0];
      InputPort col_repair_in[12] = m9_inst_col_repair_in[12];
      InputPort col_repair_in[11] = m9_inst_col_repair_in[11];
      InputPort col_repair_in[10] = m9_inst_col_repair_in[10];
      InputPort col_repair_in[9] = m9_inst_col_repair_in[9];
      InputPort col_repair_in[8] = m9_inst_col_repair_in[8];
      InputPort col_repair_in[7] = m9_inst_col_repair_in[7];
      InputPort col_repair_in[6] = m9_inst_col_repair_in[6];
      InputPort col_repair_in[5] = c1_gate1_m9_bisr_inst.Q[21];
      InputPort col_repair_in[4] = c1_gate1_m9_bisr_inst.Q[20];
      InputPort col_repair_in[3] = c1_gate1_m9_bisr_inst.Q[19];
      InputPort col_repair_in[2] = c1_gate1_m9_bisr_inst.Q[18];
      InputPort col_repair_in[1] = c1_gate1_m9_bisr_inst.Q[17];
      InputPort col_repair_in[0] = c1_gate1_m9_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m9_inst";
   }
   Instance m9_interface_instance Of 
       firebird7_in_gate1_tessent_mbist_c1_interface_m9 {
      InputPort BIST_CLK = clk_clk_bbm;
      InputPort BIST_COLLAR_EN = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_COLLAR_EN8;
      InputPort BIST_ASYNC_RESETN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET;
      InputPort BIST_SI = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.MEM8_BIST_COLLAR_SI;

      InputPort BIST_SHIFT_COLLAR = 
          firebird7_in_gate1_tessent_mbist_c1_controller_inst.BIST_SHIFT_COLLAR;
      InputPort BIST_SETUP2 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[2];
      InputPort BIST_SETUP1 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[1];
      InputPort BIST_SETUP0 = 
          firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP[0];
      InputPort MEM_BYPASS_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.memory_bypass_to_en;
      InputPort MCP_BOUNDING_EN = 
          firebird7_in_gate1_tessent_mbist_bap_inst.mcp_bounding_to_en;
      InputPort INCLUDE_MEM_RESULTS_REG = 
          firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG;
      InputPort CHECK_REPAIR_NEEDED = 
          firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED;
      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6] = c1_gate1_m9_bisr_inst.Q[7];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[5] = c1_gate1_m9_bisr_inst.Q[6];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[4] = c1_gate1_m9_bisr_inst.Q[5];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[3] = c1_gate1_m9_bisr_inst.Q[4];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[2] = c1_gate1_m9_bisr_inst.Q[3];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[1] = c1_gate1_m9_bisr_inst.Q[2];

      InputPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[0] = c1_gate1_m9_bisr_inst.Q[1];

      InputPort FROM_BISR_ALL_SROW0_ALLOC_REG = c1_gate1_m9_bisr_inst.Q[0];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6] = 
          c1_gate1_m9_bisr_inst.Q[15];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[5] = 
          c1_gate1_m9_bisr_inst.Q[14];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[4] = 
          c1_gate1_m9_bisr_inst.Q[13];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[3] = 
          c1_gate1_m9_bisr_inst.Q[12];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[2] = 
          c1_gate1_m9_bisr_inst.Q[11];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[1] = 
          c1_gate1_m9_bisr_inst.Q[10];
      InputPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[0] = c1_gate1_m9_bisr_inst.Q[9];

      InputPort FROM_BISR_ALL_SROW1_ALLOC_REG = c1_gate1_m9_bisr_inst.Q[8];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[4] = c1_gate1_m9_bisr_inst.Q[21];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[3] = c1_gate1_m9_bisr_inst.Q[20];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[2] = c1_gate1_m9_bisr_inst.Q[19];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[1] = c1_gate1_m9_bisr_inst.Q[18];
      InputPort FROM_BISR_All_SCOL0_FUSE_REG[0] = c1_gate1_m9_bisr_inst.Q[17];
      InputPort FROM_BISR_All_SCOL0_ALLOC_REG = c1_gate1_m9_bisr_inst.Q[16];
      Attribute tessent_design_instance = "m9_interface_instance";
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m10_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m11_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m12_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m13_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m14_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m15_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m16_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m17_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m18_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m19_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m1_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m20_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m21_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m22_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m23_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m24_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m25_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m26_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m27_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m28_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m29_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m2_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m30_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m31_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m32_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m3_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m4_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m5_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m6_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m7_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m8_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m9_bisr_inst
Module 
    firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper 
    {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbisr.instrument/firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper.icl'
   CaptureEnPort CLK {
      Attribute function_modifier = "CaptureShiftClock";
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort RSTB {
      DefaultLoadValue 1'b1;
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_no_input_constraints = "on";
   }
   DataInPort MSEL {
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_no_input_constraints = "on";
   }
   ScanInPort SI {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   ScanOutPort SO {
      Source ShiftReg[0];
      Attribute launch_edge = "falling";
   }
   ShiftEnPort SE {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort Q[21:0] {
      Source ShiftReg[21:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort D[21:0] {
      Attribute connection_rule_option = "allowed_tied";
   }
   ScanInterface bisr {
      Attribute tessent_chain_type = "bisr";
      Attribute tessent_chain_length = 22;
      Port SI;
      Port SO;
      Port SE;
      Port CLK;
   }
   Attribute tessent_bisr_register_length = 22;
   Attribute tessent_instrument_type = "mentor::memory_bisr";
   Attribute tessent_instrument_container = "firebird7_in_gate1_mbisr";
   Attribute tessent_repair_word_size = "8";
   Attribute tessent_instrument_subtype = "repair_register";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_signature = "c23ff10f33518a93b3c9b52039878596";
   Attribute tessent_ignore_during_icl_verification = "on";
   Alias RowSegment_ALL_SE0_RepairEnable = ShiftReg[0] {
   }
   Alias RowSegment_ALL_SE0_Fuse[6:0] = ShiftReg[7], ShiftReg[6], ShiftReg[5], 
       ShiftReg[4], ShiftReg[3], ShiftReg[2], ShiftReg[1] {
   }
   Alias RowSegment_ALL_SE1_RepairEnable = ShiftReg[8] {
   }
   Alias RowSegment_ALL_SE1_Fuse[6:0] = ShiftReg[15], ShiftReg[14], ShiftReg[13],
   ShiftReg[12], ShiftReg[11], ShiftReg[10], ShiftReg[9] {
   }
   Alias ColumnSegment_All_SE0_RepairEnable = ShiftReg[16] {
   }
   Alias ColumnSegment_All_SE0_FuseMap[4:0] = ShiftReg[21], ShiftReg[20], 
       ShiftReg[19], ShiftReg[18], ShiftReg[17] {
   }
   Enum ScanRegisterSymbols {
      allocation_bits_on = 22'bxxxxx1xxxxxxx1xxxxxxx1;
      allocation_bits_off = 22'bxxxxx0xxxxxxx0xxxxxxx0;
      leading_one = 22'b0000000000000000000001;
      all_zero = 22'b0000000000000000000000;
      all_one = 22'b1111111111111111111111;
      all_x = 22'bxxxxxxxxxxxxxxxxxxxxxx;
      checkerboard = 22'b1010101010101010101010;
      inverse_checkerboard = 22'b0101010101010101010101;
   }
   ScanRegister ShiftReg[21:0] {
      ScanInSource RSTB_MUX;
      CaptureSource D[21:0];
      DefaultLoadValue all_zero;
      RefEnum ScanRegisterSymbols;
   }
   ScanMux RSTB_MUX SelectedBy RSTB {
      1'b1 : SI;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m33_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m34_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m35_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m36_bisr_inst
Module 
    firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper 
    {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbisr.instrument/firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper.icl'
   CaptureEnPort CLK {
      Attribute function_modifier = "CaptureShiftClock";
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort RSTB {
      DefaultLoadValue 1'b1;
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_no_input_constraints = "on";
   }
   DataInPort MSEL {
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_no_input_constraints = "on";
   }
   ScanInPort SI {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   ScanOutPort SO {
      Source ShiftReg[0];
      Attribute launch_edge = "falling";
   }
   ShiftEnPort SE {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort Q[25:0] {
      Source ShiftReg[25:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort D[25:0] {
      Attribute connection_rule_option = "allowed_tied";
   }
   ScanInterface bisr {
      Attribute tessent_chain_type = "bisr";
      Attribute tessent_chain_length = 26;
      Port SI;
      Port SO;
      Port SE;
      Port CLK;
   }
   Attribute tessent_bisr_register_length = 26;
   Attribute tessent_instrument_type = "mentor::memory_bisr";
   Attribute tessent_instrument_container = "firebird7_in_gate1_mbisr";
   Attribute tessent_repair_word_size = "9";
   Attribute tessent_instrument_subtype = "repair_register";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_signature = "263ff2f7676bd4c597aad7504f799c7e";
   Attribute tessent_ignore_during_icl_verification = "on";
   Alias RowSegment_ALL_SE0_RepairEnable = ShiftReg[0] {
   }
   Alias RowSegment_ALL_SE0_Fuse[7:0] = ShiftReg[8], ShiftReg[7], ShiftReg[6], 
       ShiftReg[5], ShiftReg[4], ShiftReg[3], ShiftReg[2], ShiftReg[1] {
   }
   Alias RowSegment_ALL_SE1_RepairEnable = ShiftReg[9] {
   }
   Alias RowSegment_ALL_SE1_Fuse[7:0] = ShiftReg[17], ShiftReg[16], ShiftReg[15],
   ShiftReg[14], ShiftReg[13], ShiftReg[12], ShiftReg[11], ShiftReg[10] {
   }
   Alias ColumnSegment_All_SE0_RepairEnable = ShiftReg[18] {
   }
   Alias ColumnSegment_All_SE0_FuseMap[6:0] = ShiftReg[25], ShiftReg[24], 
       ShiftReg[23], ShiftReg[22], ShiftReg[21], ShiftReg[20], ShiftReg[19] {
   }
   Enum ScanRegisterSymbols {
      allocation_bits_on = 26'bxxxxxxx1xxxxxxxx1xxxxxxxx1;
      allocation_bits_off = 26'bxxxxxxx0xxxxxxxx0xxxxxxxx0;
      leading_one = 26'b00000000000000000000000001;
      all_zero = 26'b00000000000000000000000000;
      all_one = 26'b11111111111111111111111111;
      all_x = 26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
      checkerboard = 26'b10101010101010101010101010;
      inverse_checkerboard = 26'b01010101010101010101010101;
   }
   ScanRegister ShiftReg[25:0] {
      ScanInSource RSTB_MUX;
      CaptureSource D[25:0];
      DefaultLoadValue all_zero;
      RefEnum ScanRegisterSymbols;
   }
   ScanMux RSTB_MUX SelectedBy RSTB {
      1'b1 : SI;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m37_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m38_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m39_bisr_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.c1_gate1_m40_bisr_inst
Module 
    firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper 
    {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbisr.instrument/firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper.icl'
   CaptureEnPort CLK {
      Attribute function_modifier = "CaptureShiftClock";
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort RSTB {
      DefaultLoadValue 1'b1;
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_no_input_constraints = "on";
   }
   DataInPort MSEL {
      Attribute connection_rule_option = "allowed_tied_low";
      Attribute tessent_no_input_constraints = "on";
   }
   ScanInPort SI {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   ScanOutPort SO {
      Source ShiftReg[0];
      Attribute launch_edge = "falling";
   }
   ShiftEnPort SE {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort Q[21:0] {
      Source ShiftReg[21:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort D[21:0] {
      Attribute connection_rule_option = "allowed_tied";
   }
   ScanInterface bisr {
      Attribute tessent_chain_type = "bisr";
      Attribute tessent_chain_length = 22;
      Port SI;
      Port SO;
      Port SE;
      Port CLK;
   }
   Attribute tessent_bisr_register_length = 22;
   Attribute tessent_instrument_type = "mentor::memory_bisr";
   Attribute tessent_instrument_container = "firebird7_in_gate1_mbisr";
   Attribute tessent_repair_word_size = "8";
   Attribute tessent_instrument_subtype = "repair_register";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_signature = "2cfecdb1d0d1e33227b60fd87fb5a1f6";
   Attribute tessent_ignore_during_icl_verification = "on";
   Alias RowSegment_ALL_SE0_RepairEnable = ShiftReg[0] {
   }
   Alias RowSegment_ALL_SE0_Fuse[6:0] = ShiftReg[7], ShiftReg[6], ShiftReg[5], 
       ShiftReg[4], ShiftReg[3], ShiftReg[2], ShiftReg[1] {
   }
   Alias RowSegment_ALL_SE1_RepairEnable = ShiftReg[8] {
   }
   Alias RowSegment_ALL_SE1_Fuse[6:0] = ShiftReg[15], ShiftReg[14], ShiftReg[13],
   ShiftReg[12], ShiftReg[11], ShiftReg[10], ShiftReg[9] {
   }
   Alias ColumnSegment_All_SE0_RepairEnable = ShiftReg[16] {
   }
   Alias ColumnSegment_All_SE0_FuseMap[4:0] = ShiftReg[21], ShiftReg[20], 
       ShiftReg[19], ShiftReg[18], ShiftReg[17] {
   }
   Enum ScanRegisterSymbols {
      allocation_bits_on = 22'bxxxxx1xxxxxxx1xxxxxxx1;
      allocation_bits_off = 22'bxxxxx0xxxxxxx0xxxxxxx0;
      leading_one = 22'b0000000000000000000001;
      all_zero = 22'b0000000000000000000000;
      all_one = 22'b1111111111111111111111;
      all_x = 22'bxxxxxxxxxxxxxxxxxxxxxx;
      checkerboard = 22'b1010101010101010101010;
      inverse_checkerboard = 22'b0101010101010101010101;
   }
   ScanRegister ShiftReg[21:0] {
      ScanInSource RSTB_MUX;
      CaptureSource D[21:0];
      DefaultLoadValue all_zero;
      RefEnum ScanRegisterSymbols;
   }
   ScanMux RSTB_MUX SelectedBy RSTB {
      1'b1 : SI;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.firebird7_in_gate1_tessent_mbist_bap_inst
Module firebird7_in_gate1_tessent_mbist_bap {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_bap.icl'
   ResetPort reset {
      ActivePolarity 0;
   }
   SelectPort ijtag_select;
   ScanInPort si;
   CaptureEnPort capture_en;
   ShiftEnPort shift_en;
   ToShiftEnPort BIST_HOLD {
      Attribute connection_rule_option = "allowed_no_destination";
   }
   UpdateEnPort update_en;
   TCKPort tck;
   DataInPort memory_bypass_en {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort memory_bypass_to_en {
      Source memory_bypass_en;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort mcp_bounding_en {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort mcp_bounding_to_en {
      Source mcp_bounding_en;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort ltest_en {
      DefaultLoadValue 1'b0;
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ltest_to_en {
      Source ltest_en;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   ScanOutPort so {
      Source ctl_group_sib;
   }
   ScanOutPort toBist[0:0] {
      Source toBist_int;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   ScanInPort fromBist[0:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MBISTPG_GO[0:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   DataInPort MBISTPG_DONE[0:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   DataOutPort bistEn[0:0] {
      Source bistEn_int[0:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ENABLE_MEM_RESET {
      Source ENABLE_MEM_RESET_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort REDUCED_ADDRESS_COUNT {
      Source REDUCED_ADDRESS_COUNT_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_SELECT_TEST_DATA {
      Source BIST_SELECT_TEST_DATA_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_ALGO_MODE0 {
      Source BIST_ALGO_MODE0_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_ALGO_MODE1 {
      Source BIST_ALGO_MODE1_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort MEM_ARRAY_DUMP_MODE {
      Source MEM_ARRAY_DUMP_MODE_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIRA_EN {
      Source BIRA_EN_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_DIAG_EN {
      Source BIST_DIAG_EN_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort PRESERVE_FUSE_REGISTER {
      Source PRESERVE_FUSE_REGISTER_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort CHECK_REPAIR_NEEDED {
      Source CHECK_REPAIR_NEEDED_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_ASYNC_RESET {
      Source BIST_ASYNC_RESET_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort FL_CNT_MODE0 {
      Source FL_CNT_MODE0_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort FL_CNT_MODE1 {
      Source FL_CNT_MODE1_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort INCLUDE_MEM_RESULTS_REG {
      Source INCLUDE_MEM_RESULTS_REG_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort CHAIN_BYPASS_EN {
      Source CHAIN_BYPASS_EN_tdr;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort TCK_MODE {
      Source TCK_MODE_tdr;
      RefEnum OnOff;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_SETUP[2:0] {
      Source BIST_SETUP_tdr[2:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   ScanInterface client {
      Port si;
      Port so;
      Port ijtag_select;
   }
   ScanInterface host_0 {
      Port toBist[0];
      Port fromBist[0];
      Port BIST_HOLD;
   }
   Attribute ijtag_logical_connection = 
       "{tck to_interfaces_tck} {tck to_controllers_tck}";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "bist_access_port";
   Attribute tessent_signature = "70cea201f3cd7e5ff7f1f09528a89d92";
   Alias tdr[18:0] = BIST_SETUP_tdr[2:0], TCK_MODE_tdr, CHAIN_BYPASS_EN_tdr, 
       INCLUDE_MEM_RESULTS_REG_tdr, FL_CNT_MODE1_tdr, FL_CNT_MODE0_tdr, 
       BIST_ASYNC_RESET_tdr, CHECK_REPAIR_NEEDED_tdr, PRESERVE_FUSE_REGISTER_tdr,
       BIST_DIAG_EN_tdr, BIRA_EN_tdr, MEM_ARRAY_DUMP_MODE_tdr, 
       BIST_ALGO_MODE1_tdr, BIST_ALGO_MODE0_tdr, BIST_SELECT_TEST_DATA_tdr, 
       REDUCED_ADDRESS_COUNT_tdr, ENABLE_MEM_RESET_tdr {
      RefEnum tdr_symbols;
   }
   Alias ChainBypassMode = CHAIN_BYPASS_EN_tdr {
   }
   Alias bistEn_int[0:0] = mbist_go_0 {
   }
   Alias toBist_int[0:0] = tdr_bypass_sib_inst {
   }
   Enum OnOff {
      ON = 1'b1;
      OFF = 1'b0;
   }
   Enum tdr_symbols {
      idle = 19'b0000100010000000100;
      ignore = 19'bxxxxxxxxxxxxxxxxxxx;
      mbist_async_reset = 19'b0000100000000000000;
   }
   ScanRegister BIST_SETUP_tdr[2:0] {
      ScanInSource si;
      CaptureSource BIST_SETUP_tdr[2], BIST_SETUP_tdr[1], BIST_SETUP_tdr[0];
      DefaultLoadValue 3'b000;
      ResetValue 3'b000;
   }
   ScanRegister TCK_MODE_tdr {
      ScanInSource BIST_SETUP_tdr[0];
      CaptureSource TCK_MODE_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister CHAIN_BYPASS_EN_tdr {
      ScanInSource TCK_MODE_tdr;
      CaptureSource CHAIN_BYPASS_EN_tdr;
      DefaultLoadValue 1'b1;
      ResetValue 1'b1;
   }
   ScanRegister INCLUDE_MEM_RESULTS_REG_tdr {
      ScanInSource CHAIN_BYPASS_EN_tdr;
      CaptureSource INCLUDE_MEM_RESULTS_REG_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister FL_CNT_MODE1_tdr {
      ScanInSource INCLUDE_MEM_RESULTS_REG_tdr;
      CaptureSource FL_CNT_MODE1_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister FL_CNT_MODE0_tdr {
      ScanInSource FL_CNT_MODE1_tdr;
      CaptureSource FL_CNT_MODE0_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister BIST_ASYNC_RESET_tdr {
      ScanInSource FL_CNT_MODE0_tdr;
      CaptureSource BIST_ASYNC_RESET_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister CHECK_REPAIR_NEEDED_tdr {
      ScanInSource BIST_ASYNC_RESET_tdr;
      CaptureSource CHECK_REPAIR_NEEDED_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister PRESERVE_FUSE_REGISTER_tdr {
      ScanInSource CHECK_REPAIR_NEEDED_tdr;
      CaptureSource PRESERVE_FUSE_REGISTER_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister BIST_DIAG_EN_tdr {
      ScanInSource PRESERVE_FUSE_REGISTER_tdr;
      CaptureSource BIST_DIAG_EN_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister BIRA_EN_tdr {
      ScanInSource BIST_DIAG_EN_tdr;
      CaptureSource BIRA_EN_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister MEM_ARRAY_DUMP_MODE_tdr {
      ScanInSource BIRA_EN_tdr;
      CaptureSource MEM_ARRAY_DUMP_MODE_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister BIST_ALGO_MODE1_tdr {
      ScanInSource MEM_ARRAY_DUMP_MODE_tdr;
      CaptureSource BIST_ALGO_MODE1_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister BIST_ALGO_MODE0_tdr {
      ScanInSource BIST_ALGO_MODE1_tdr;
      CaptureSource BIST_ALGO_MODE0_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister BIST_SELECT_TEST_DATA_tdr {
      ScanInSource BIST_ALGO_MODE0_tdr;
      CaptureSource BIST_SELECT_TEST_DATA_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister REDUCED_ADDRESS_COUNT_tdr {
      ScanInSource BIST_SELECT_TEST_DATA_tdr;
      CaptureSource REDUCED_ADDRESS_COUNT_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister ENABLE_MEM_RESET_tdr {
      ScanInSource REDUCED_ADDRESS_COUNT_tdr;
      CaptureSource ENABLE_MEM_RESET_tdr;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister tdr_bypass_sib_inst {
      ScanInSource tdr_bypass_sib_mux_inst;
      CaptureSource 1'b0;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister mbist_done_0 {
      ScanInSource fromBistMux_0;
      CaptureSource MBISTPG_DONE[0];
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister mbist_go_0 {
      ScanInSource mbist_done_0;
      CaptureSource MBISTPG_GO[0];
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanRegister ctl_group_sib {
      ScanInSource ctl_sib_mux_inst;
      CaptureSource 1'b0;
      DefaultLoadValue 1'b0;
      ResetValue 1'b0;
   }
   ScanMux tdr_bypass_sib_mux_inst SelectedBy tdr_bypass_sib_inst {
      1'b0 : si;
      1'b1 : ENABLE_MEM_RESET_tdr;
   }
   ScanMux fromBistMux_0 SelectedBy bistEn_int[0], BIST_SETUP_tdr[1], 
       ChainBypassMode {
      3'b100 : fromBist[0];
      3'bxxx : tdr_bypass_sib_inst;
   }
   ScanMux ctl_sib_mux_inst SelectedBy ctl_group_sib {
      1'b0 : tdr_bypass_sib_inst;
      1'b1 : mbist_go_0;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.firebird7_in_gate1_tessent_mbist_c1_controller_inst
Module firebird7_in_gate1_tessent_mbist_c1_controller {
   // ICL module read from source on or near line 26 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_controller.icl'
   ClockPort BIST_CLK;
   DataInPort MBISTPG_EN;
   DataInPort LV_TM {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MBIST_RA_PRSRV_FUSE_VAL {
      RefEnum OnOff;
   }
   DataInPort MBISTPG_BIRA_EN {
      RefEnum OnOff;
   }
   DataInPort CHECK_REPAIR_NEEDED {
      RefEnum OnOff;
   }
   DataInPort MBISTPG_ASYNC_RESETN {
      RefEnum AsyncResetN;
   }
   DataInPort MBISTPG_DIAG_EN;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP[1:0];
   DataInPort MBISTPG_REDUCED_ADDR_CNT_EN {
      RefEnum OnOff;
   }
   DataInPort MBISTPG_MEM_RST {
      RefEnum OnOff;
   }
   DataInPort MBISTPG_TESTDATA_SELECT {
      RefEnum OnOff;
   }
   DataInPort MBISTPG_MEM_ARRAY_DUMP_MODE {
      RefEnum OnOff;
   }
   DataInPort FL_CNT_MODE[1:0];
   DataInPort MBISTPG_ALGO_MODE[1:0];
   DataOutPort MBISTPG_STABLE {
      Enable MBISTPG_EN;
      Attribute connection_rule_option = "auxiliary_data_inverse";
      Attribute tessent_memory_bist_function = "diagnosis_ready_status";
      Attribute forced_high_dft_signal_list = "memory_diagnosis_mode";
   }
   DataOutPort MBISTPG_GO {
      RefEnum PassFail;
   }
   DataOutPort MBISTPG_DONE {
      RefEnum PassFail;
   }
   TCKPort TCK;
   ScanInPort BIST_SI;
   ScanOutPort MBISTPG_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_HOLD;
   ToShiftEnPort BIST_SHIFT_COLLAR {
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort BIST_COLLAR_EN0 {
      Attribute tessent_memory_alias = "m1";
   }
   ScanOutPort MEM0_BIST_COLLAR_SI {
      Source MEM0_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM0_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN1 {
      Attribute tessent_memory_alias = "m2";
   }
   ScanOutPort MEM1_BIST_COLLAR_SI {
      Source MEM1_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM1_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN2 {
      Attribute tessent_memory_alias = "m3";
   }
   ScanOutPort MEM2_BIST_COLLAR_SI {
      Source MEM2_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM2_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN3 {
      Attribute tessent_memory_alias = "m4";
   }
   ScanOutPort MEM3_BIST_COLLAR_SI {
      Source MEM3_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM3_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN4 {
      Attribute tessent_memory_alias = "m5";
   }
   ScanOutPort MEM4_BIST_COLLAR_SI {
      Source MEM4_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM4_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN5 {
      Attribute tessent_memory_alias = "m6";
   }
   ScanOutPort MEM5_BIST_COLLAR_SI {
      Source MEM5_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM5_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN6 {
      Attribute tessent_memory_alias = "m7";
   }
   ScanOutPort MEM6_BIST_COLLAR_SI {
      Source MEM6_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM6_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN7 {
      Attribute tessent_memory_alias = "m8";
   }
   ScanOutPort MEM7_BIST_COLLAR_SI {
      Source MEM7_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM7_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN8 {
      Attribute tessent_memory_alias = "m9";
   }
   ScanOutPort MEM8_BIST_COLLAR_SI {
      Source MEM8_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM8_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN9 {
      Attribute tessent_memory_alias = "m10";
   }
   ScanOutPort MEM9_BIST_COLLAR_SI {
      Source MEM9_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM9_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN10 {
      Attribute tessent_memory_alias = "m11";
   }
   ScanOutPort MEM10_BIST_COLLAR_SI {
      Source MEM10_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM10_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN11 {
      Attribute tessent_memory_alias = "m12";
   }
   ScanOutPort MEM11_BIST_COLLAR_SI {
      Source MEM11_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM11_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN12 {
      Attribute tessent_memory_alias = "m13";
   }
   ScanOutPort MEM12_BIST_COLLAR_SI {
      Source MEM12_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM12_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN13 {
      Attribute tessent_memory_alias = "m14";
   }
   ScanOutPort MEM13_BIST_COLLAR_SI {
      Source MEM13_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM13_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN14 {
      Attribute tessent_memory_alias = "m15";
   }
   ScanOutPort MEM14_BIST_COLLAR_SI {
      Source MEM14_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM14_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN15 {
      Attribute tessent_memory_alias = "m16";
   }
   ScanOutPort MEM15_BIST_COLLAR_SI {
      Source MEM15_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM15_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN16 {
      Attribute tessent_memory_alias = "m17";
   }
   ScanOutPort MEM16_BIST_COLLAR_SI {
      Source MEM16_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM16_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN17 {
      Attribute tessent_memory_alias = "m18";
   }
   ScanOutPort MEM17_BIST_COLLAR_SI {
      Source MEM17_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM17_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN18 {
      Attribute tessent_memory_alias = "m19";
   }
   ScanOutPort MEM18_BIST_COLLAR_SI {
      Source MEM18_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM18_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN19 {
      Attribute tessent_memory_alias = "m20";
   }
   ScanOutPort MEM19_BIST_COLLAR_SI {
      Source MEM19_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM19_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN20 {
      Attribute tessent_memory_alias = "m21";
   }
   ScanOutPort MEM20_BIST_COLLAR_SI {
      Source MEM20_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM20_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN21 {
      Attribute tessent_memory_alias = "m22";
   }
   ScanOutPort MEM21_BIST_COLLAR_SI {
      Source MEM21_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM21_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN22 {
      Attribute tessent_memory_alias = "m23";
   }
   ScanOutPort MEM22_BIST_COLLAR_SI {
      Source MEM22_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM22_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN23 {
      Attribute tessent_memory_alias = "m24";
   }
   ScanOutPort MEM23_BIST_COLLAR_SI {
      Source MEM23_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM23_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN24 {
      Attribute tessent_memory_alias = "m25";
   }
   ScanOutPort MEM24_BIST_COLLAR_SI {
      Source MEM24_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM24_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN25 {
      Attribute tessent_memory_alias = "m26";
   }
   ScanOutPort MEM25_BIST_COLLAR_SI {
      Source MEM25_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM25_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN26 {
      Attribute tessent_memory_alias = "m27";
   }
   ScanOutPort MEM26_BIST_COLLAR_SI {
      Source MEM26_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM26_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN27 {
      Attribute tessent_memory_alias = "m28";
   }
   ScanOutPort MEM27_BIST_COLLAR_SI {
      Source MEM27_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM27_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN28 {
      Attribute tessent_memory_alias = "m29";
   }
   ScanOutPort MEM28_BIST_COLLAR_SI {
      Source MEM28_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM28_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN29 {
      Attribute tessent_memory_alias = "m30";
   }
   ScanOutPort MEM29_BIST_COLLAR_SI {
      Source MEM29_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM29_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN30 {
      Attribute tessent_memory_alias = "m31";
   }
   ScanOutPort MEM30_BIST_COLLAR_SI {
      Source MEM30_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM30_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN31 {
      Attribute tessent_memory_alias = "m32";
   }
   ScanOutPort MEM31_BIST_COLLAR_SI {
      Source MEM31_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM31_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN32 {
      Attribute tessent_memory_alias = "m33";
   }
   ScanOutPort MEM32_BIST_COLLAR_SI {
      Source MEM32_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM32_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN33 {
      Attribute tessent_memory_alias = "m34";
   }
   ScanOutPort MEM33_BIST_COLLAR_SI {
      Source MEM33_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM33_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN34 {
      Attribute tessent_memory_alias = "m35";
   }
   ScanOutPort MEM34_BIST_COLLAR_SI {
      Source MEM34_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM34_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN35 {
      Attribute tessent_memory_alias = "m36";
   }
   ScanOutPort MEM35_BIST_COLLAR_SI {
      Source MEM35_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM35_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN36 {
      Attribute tessent_memory_alias = "m37";
   }
   ScanOutPort MEM36_BIST_COLLAR_SI {
      Source MEM36_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM36_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN37 {
      Attribute tessent_memory_alias = "m38";
   }
   ScanOutPort MEM37_BIST_COLLAR_SI {
      Source MEM37_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM37_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN38 {
      Attribute tessent_memory_alias = "m39";
   }
   ScanOutPort MEM38_BIST_COLLAR_SI {
      Source MEM38_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM38_BIST_COLLAR_SO;
   DataOutPort BIST_COLLAR_EN39 {
      Attribute tessent_memory_alias = "m40";
   }
   ScanOutPort MEM39_BIST_COLLAR_SI {
      Source MEM39_BIST_COLLAR_SI_INT;
   }
   ScanInPort MEM39_BIST_COLLAR_SO;
   ScanInterface Client {
      Port BIST_SI;
      Port MBISTPG_SO;
      Port BIST_HOLD;
   }
   ScanInterface MEM0_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM0_BIST_COLLAR_SI;
      Port MEM0_BIST_COLLAR_SO;
   }
   ScanInterface MEM1_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM1_BIST_COLLAR_SI;
      Port MEM1_BIST_COLLAR_SO;
   }
   ScanInterface MEM2_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM2_BIST_COLLAR_SI;
      Port MEM2_BIST_COLLAR_SO;
   }
   ScanInterface MEM3_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM3_BIST_COLLAR_SI;
      Port MEM3_BIST_COLLAR_SO;
   }
   ScanInterface MEM4_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM4_BIST_COLLAR_SI;
      Port MEM4_BIST_COLLAR_SO;
   }
   ScanInterface MEM5_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM5_BIST_COLLAR_SI;
      Port MEM5_BIST_COLLAR_SO;
   }
   ScanInterface MEM6_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM6_BIST_COLLAR_SI;
      Port MEM6_BIST_COLLAR_SO;
   }
   ScanInterface MEM7_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM7_BIST_COLLAR_SI;
      Port MEM7_BIST_COLLAR_SO;
   }
   ScanInterface MEM8_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM8_BIST_COLLAR_SI;
      Port MEM8_BIST_COLLAR_SO;
   }
   ScanInterface MEM9_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM9_BIST_COLLAR_SI;
      Port MEM9_BIST_COLLAR_SO;
   }
   ScanInterface MEM10_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM10_BIST_COLLAR_SI;
      Port MEM10_BIST_COLLAR_SO;
   }
   ScanInterface MEM11_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM11_BIST_COLLAR_SI;
      Port MEM11_BIST_COLLAR_SO;
   }
   ScanInterface MEM12_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM12_BIST_COLLAR_SI;
      Port MEM12_BIST_COLLAR_SO;
   }
   ScanInterface MEM13_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM13_BIST_COLLAR_SI;
      Port MEM13_BIST_COLLAR_SO;
   }
   ScanInterface MEM14_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM14_BIST_COLLAR_SI;
      Port MEM14_BIST_COLLAR_SO;
   }
   ScanInterface MEM15_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM15_BIST_COLLAR_SI;
      Port MEM15_BIST_COLLAR_SO;
   }
   ScanInterface MEM16_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM16_BIST_COLLAR_SI;
      Port MEM16_BIST_COLLAR_SO;
   }
   ScanInterface MEM17_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM17_BIST_COLLAR_SI;
      Port MEM17_BIST_COLLAR_SO;
   }
   ScanInterface MEM18_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM18_BIST_COLLAR_SI;
      Port MEM18_BIST_COLLAR_SO;
   }
   ScanInterface MEM19_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM19_BIST_COLLAR_SI;
      Port MEM19_BIST_COLLAR_SO;
   }
   ScanInterface MEM20_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM20_BIST_COLLAR_SI;
      Port MEM20_BIST_COLLAR_SO;
   }
   ScanInterface MEM21_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM21_BIST_COLLAR_SI;
      Port MEM21_BIST_COLLAR_SO;
   }
   ScanInterface MEM22_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM22_BIST_COLLAR_SI;
      Port MEM22_BIST_COLLAR_SO;
   }
   ScanInterface MEM23_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM23_BIST_COLLAR_SI;
      Port MEM23_BIST_COLLAR_SO;
   }
   ScanInterface MEM24_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM24_BIST_COLLAR_SI;
      Port MEM24_BIST_COLLAR_SO;
   }
   ScanInterface MEM25_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM25_BIST_COLLAR_SI;
      Port MEM25_BIST_COLLAR_SO;
   }
   ScanInterface MEM26_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM26_BIST_COLLAR_SI;
      Port MEM26_BIST_COLLAR_SO;
   }
   ScanInterface MEM27_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM27_BIST_COLLAR_SI;
      Port MEM27_BIST_COLLAR_SO;
   }
   ScanInterface MEM28_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM28_BIST_COLLAR_SI;
      Port MEM28_BIST_COLLAR_SO;
   }
   ScanInterface MEM29_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM29_BIST_COLLAR_SI;
      Port MEM29_BIST_COLLAR_SO;
   }
   ScanInterface MEM30_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM30_BIST_COLLAR_SI;
      Port MEM30_BIST_COLLAR_SO;
   }
   ScanInterface MEM31_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM31_BIST_COLLAR_SI;
      Port MEM31_BIST_COLLAR_SO;
   }
   ScanInterface MEM32_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM32_BIST_COLLAR_SI;
      Port MEM32_BIST_COLLAR_SO;
   }
   ScanInterface MEM33_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM33_BIST_COLLAR_SI;
      Port MEM33_BIST_COLLAR_SO;
   }
   ScanInterface MEM34_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM34_BIST_COLLAR_SI;
      Port MEM34_BIST_COLLAR_SO;
   }
   ScanInterface MEM35_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM35_BIST_COLLAR_SI;
      Port MEM35_BIST_COLLAR_SO;
   }
   ScanInterface MEM36_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM36_BIST_COLLAR_SI;
      Port MEM36_BIST_COLLAR_SO;
   }
   ScanInterface MEM37_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM37_BIST_COLLAR_SI;
      Port MEM37_BIST_COLLAR_SO;
   }
   ScanInterface MEM38_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM38_BIST_COLLAR_SI;
      Port MEM38_BIST_COLLAR_SO;
   }
   ScanInterface MEM39_INTERFACE {
      Port BIST_SHIFT_COLLAR;
      Port MEM39_BIST_COLLAR_SI;
      Port MEM39_BIST_COLLAR_SO;
   }
   Attribute tessent_instrument_container = "firebird7_in_gate1_mbist";
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "controller";
   Attribute tessent_signature = "7bb736ac42003a455695c0151131bc4c";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Alias SETUP_MODE[2:0] = BIST_SETUP2, BIST_SETUP[1:0] {
      RefEnum SetupModes;
   }
   Alias RUN_MODE[2:0] = BIST_SETUP2, BIST_SETUP[1:0] {
      RefEnum RunModes;
   }
   Alias ALGO_SEL_REG[6:0] = ALGO_SEL_REG_HW[6:0] {
   }
   Alias INST_POINTER_REG[4:0] = INST_POINTER_REG_HW[4:0] {
   }
   Alias INST0_OPERATION_SELECT[5:0] = INST0_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST0_ADD_REG_A_EQUALS_B[1:0] = INST0_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST0_Y0_ADD_CMD[1:0] = INST0_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST0_Y1_ADD_CMD[2:0] = INST0_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST0_X0_ADD_CMD[1:0] = INST0_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST0_X1_ADD_CMD[2:0] = INST0_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST0_ADD_SELECT_CMD[2:0] = INST0_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST0_WRITE_DATA_CMD[3:0] = INST0_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST0_EXPECT_DATA_CMD[3:0] = INST0_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST0_REPEATLOOP_CMD[1:0] = INST0_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST0_BRANCH_INST_ADDRESS[4:0] = INST0_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST0_NEXT_CONDITIONS[6:0] = INST0_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST1_OPERATION_SELECT[5:0] = INST1_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST1_ADD_REG_A_EQUALS_B[1:0] = INST1_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST1_Y0_ADD_CMD[1:0] = INST1_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST1_Y1_ADD_CMD[2:0] = INST1_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST1_X0_ADD_CMD[1:0] = INST1_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST1_X1_ADD_CMD[2:0] = INST1_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST1_ADD_SELECT_CMD[2:0] = INST1_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST1_WRITE_DATA_CMD[3:0] = INST1_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST1_EXPECT_DATA_CMD[3:0] = INST1_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST1_REPEATLOOP_CMD[1:0] = INST1_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST1_BRANCH_INST_ADDRESS[4:0] = INST1_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST1_NEXT_CONDITIONS[6:0] = INST1_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST2_OPERATION_SELECT[5:0] = INST2_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST2_ADD_REG_A_EQUALS_B[1:0] = INST2_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST2_Y0_ADD_CMD[1:0] = INST2_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST2_Y1_ADD_CMD[2:0] = INST2_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST2_X0_ADD_CMD[1:0] = INST2_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST2_X1_ADD_CMD[2:0] = INST2_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST2_ADD_SELECT_CMD[2:0] = INST2_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST2_WRITE_DATA_CMD[3:0] = INST2_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST2_EXPECT_DATA_CMD[3:0] = INST2_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST2_REPEATLOOP_CMD[1:0] = INST2_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST2_BRANCH_INST_ADDRESS[4:0] = INST2_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST2_NEXT_CONDITIONS[6:0] = INST2_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST3_OPERATION_SELECT[5:0] = INST3_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST3_ADD_REG_A_EQUALS_B[1:0] = INST3_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST3_Y0_ADD_CMD[1:0] = INST3_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST3_Y1_ADD_CMD[2:0] = INST3_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST3_X0_ADD_CMD[1:0] = INST3_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST3_X1_ADD_CMD[2:0] = INST3_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST3_ADD_SELECT_CMD[2:0] = INST3_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST3_WRITE_DATA_CMD[3:0] = INST3_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST3_EXPECT_DATA_CMD[3:0] = INST3_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST3_REPEATLOOP_CMD[1:0] = INST3_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST3_BRANCH_INST_ADDRESS[4:0] = INST3_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST3_NEXT_CONDITIONS[6:0] = INST3_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST4_OPERATION_SELECT[5:0] = INST4_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST4_ADD_REG_A_EQUALS_B[1:0] = INST4_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST4_Y0_ADD_CMD[1:0] = INST4_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST4_Y1_ADD_CMD[2:0] = INST4_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST4_X0_ADD_CMD[1:0] = INST4_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST4_X1_ADD_CMD[2:0] = INST4_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST4_ADD_SELECT_CMD[2:0] = INST4_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST4_WRITE_DATA_CMD[3:0] = INST4_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST4_EXPECT_DATA_CMD[3:0] = INST4_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST4_REPEATLOOP_CMD[1:0] = INST4_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST4_BRANCH_INST_ADDRESS[4:0] = INST4_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST4_NEXT_CONDITIONS[6:0] = INST4_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST5_OPERATION_SELECT[5:0] = INST5_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST5_ADD_REG_A_EQUALS_B[1:0] = INST5_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST5_Y0_ADD_CMD[1:0] = INST5_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST5_Y1_ADD_CMD[2:0] = INST5_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST5_X0_ADD_CMD[1:0] = INST5_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST5_X1_ADD_CMD[2:0] = INST5_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST5_ADD_SELECT_CMD[2:0] = INST5_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST5_WRITE_DATA_CMD[3:0] = INST5_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST5_EXPECT_DATA_CMD[3:0] = INST5_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST5_REPEATLOOP_CMD[1:0] = INST5_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST5_BRANCH_INST_ADDRESS[4:0] = INST5_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST5_NEXT_CONDITIONS[6:0] = INST5_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST6_OPERATION_SELECT[5:0] = INST6_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST6_ADD_REG_A_EQUALS_B[1:0] = INST6_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST6_Y0_ADD_CMD[1:0] = INST6_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST6_Y1_ADD_CMD[2:0] = INST6_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST6_X0_ADD_CMD[1:0] = INST6_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST6_X1_ADD_CMD[2:0] = INST6_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST6_ADD_SELECT_CMD[2:0] = INST6_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST6_WRITE_DATA_CMD[3:0] = INST6_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST6_EXPECT_DATA_CMD[3:0] = INST6_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST6_REPEATLOOP_CMD[1:0] = INST6_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST6_BRANCH_INST_ADDRESS[4:0] = INST6_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST6_NEXT_CONDITIONS[6:0] = INST6_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias INST7_OPERATION_SELECT[5:0] = INST7_OPERATION_SELECT_HW[5:0] {
   }
   Alias INST7_ADD_REG_A_EQUALS_B[1:0] = INST7_ADD_REG_A_EQUALS_B_HW[1:0] {
   }
   Alias INST7_Y0_ADD_CMD[1:0] = INST7_Y0_ADD_CMD_HW[1:0] {
   }
   Alias INST7_Y1_ADD_CMD[2:0] = INST7_Y1_ADD_CMD_HW[2:0] {
   }
   Alias INST7_X0_ADD_CMD[1:0] = INST7_X0_ADD_CMD_HW[1:0] {
   }
   Alias INST7_X1_ADD_CMD[2:0] = INST7_X1_ADD_CMD_HW[2:0] {
   }
   Alias INST7_ADD_SELECT_CMD[2:0] = INST7_ADD_SELECT_CMD_HW[2:0] {
   }
   Alias INST7_WRITE_DATA_CMD[3:0] = INST7_WRITE_DATA_CMD_HW[3:0] {
   }
   Alias INST7_EXPECT_DATA_CMD[3:0] = INST7_EXPECT_DATA_CMD_HW[3:0] {
   }
   Alias INST7_REPEATLOOP_CMD[1:0] = INST7_REPEATLOOP_CMD_HW[1:0] {
   }
   Alias INST7_BRANCH_INST_ADDRESS[4:0] = INST7_BRANCH_INST_ADDRESS_HW[4:0] {
   }
   Alias INST7_NEXT_CONDITIONS[6:0] = INST7_NEXT_CONDITIONS_HW[6:0] {
   }
   Alias A_ADD_REG_Y[2:0] = A_ADD_REG_Y_HW[2:0] {
   }
   Alias A_ADD_REG_X[7:0] = A_ADD_REG_X_HW[7:0] {
   }
   Alias A_X1_ADD_SEG_LINK_REG[2:0] = A_X1_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias A_X0_ADD_SEG_LINK_REG[2:0] = A_X0_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias A_Y1_ADD_SEG_LINK_REG[2:0] = A_Y1_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias A_Y0_ADD_SEG_LINK_REG[2:0] = A_Y0_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias B_ADD_REG_Y[2:0] = B_ADD_REG_Y_HW[2:0] {
   }
   Alias B_ADD_REG_X[7:0] = B_ADD_REG_X_HW[7:0] {
   }
   Alias B_X1_ADD_SEG_LINK_REG[2:0] = B_X1_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias B_X0_ADD_SEG_LINK_REG[2:0] = B_X0_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias B_Y1_ADD_SEG_LINK_REG[2:0] = B_Y1_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias B_Y0_ADD_SEG_LINK_REG[2:0] = B_Y0_ADD_SEG_LINK_REG_HW[2:0] {
   }
   Alias X_ADD_REG_MIN[7:0] = X_ADD_REG_MIN_HW[7:0] {
   }
   Alias X_ADD_REG_MAX[7:0] = X_ADD_REG_MAX_HW[7:0] {
   }
   Alias Y_ADD_REG_MIN[2:0] = Y_ADD_REG_MIN_HW[2:0] {
   }
   Alias Y_ADD_REG_MAX[2:0] = Y_ADD_REG_MAX_HW[2:0] {
   }
   Alias JCNT[2:0] = JCNT_HW[2:0] {
   }
   Alias DELAYCOUNTER_CNT[7:0] = DELAYCOUNTER_CNT_HW[7:0] {
   }
   Alias DELAYCOUNTER_REG[7:0] = DELAYCOUNTER_REG_HW[7:0] {
   }
   Alias WDATA_REG[3:0] = WDATA_REG_HW[3:0] {
   }
   Alias EDATA_REG[3:0] = EDATA_REG_HW[3:0] {
   }
   Alias REPEATLOOP_A_MAX_REG[1:0] = REPEATLOOP_A_MAX_REG_HW[1:0] {
   }
   Alias REPEATLOOP_A_POINTER_REG[4:0] = REPEATLOOP_A_POINTER_REG_HW[4:0] {
   }
   Alias REPEATLOOP_A_LOOP1_REG[4:0] = REPEATLOOP_A_LOOP1_REG_HW[4:0] {
   }
   Alias REPEATLOOP_A_LOOP2_REG[4:0] = REPEATLOOP_A_LOOP2_REG_HW[4:0] {
   }
   Alias REPEATLOOP_A_LOOP3_REG[4:0] = REPEATLOOP_A_LOOP3_REG_HW[4:0] {
   }
   Alias REPEATLOOP_B_MAX_REG[1:0] = REPEATLOOP_B_MAX_REG_HW[1:0] {
   }
   Alias REPEATLOOP_B_POINTER_REG[4:0] = REPEATLOOP_B_POINTER_REG_HW[4:0] {
   }
   Alias REPEATLOOP_B_LOOP1_REG[4:0] = REPEATLOOP_B_LOOP1_REG_HW[4:0] {
   }
   Alias REPEATLOOP_B_LOOP2_REG[4:0] = REPEATLOOP_B_LOOP2_REG_HW[4:0] {
   }
   Alias REPEATLOOP_B_LOOP3_REG[4:0] = REPEATLOOP_B_LOOP3_REG_HW[4:0] {
   }
   Alias REPEATLOOP_A_CNTR_REG[1:0] = REPEATLOOP_A_CNTR_REG_HW[1:0] {
   }
   Alias REPEATLOOP_B_CNTR_REG[1:0] = REPEATLOOP_B_CNTR_REG_HW[1:0] {
   }
   Alias COUNTERA_CNT[27:0] = COUNTERA_CNT_HW[27:0] {
   }
   Alias COUNTERA_REG[27:0] = COUNTERA_REG_HW[27:0] {
   }
   Alias MEM39_BIST_COLLAR_SI_INT = MEM39_GOID_SI_MUX {
   }
   Alias MEM38_BIST_COLLAR_SI_INT = MEM38_GOID_SI_MUX {
   }
   Alias MEM37_BIST_COLLAR_SI_INT = MEM37_GOID_SI_MUX {
   }
   Alias MEM36_BIST_COLLAR_SI_INT = MEM36_GOID_SI_MUX {
   }
   Alias MEM35_BIST_COLLAR_SI_INT = MEM35_GOID_SI_MUX {
   }
   Alias MEM34_BIST_COLLAR_SI_INT = MEM34_GOID_SI_MUX {
   }
   Alias MEM33_BIST_COLLAR_SI_INT = MEM33_GOID_SI_MUX {
   }
   Alias MEM32_BIST_COLLAR_SI_INT = MEM32_GOID_SI_MUX {
   }
   Alias MEM31_BIST_COLLAR_SI_INT = MEM31_GOID_SI_MUX {
   }
   Alias MEM30_BIST_COLLAR_SI_INT = MEM30_GOID_SI_MUX {
   }
   Alias MEM29_BIST_COLLAR_SI_INT = MEM29_GOID_SI_MUX {
   }
   Alias MEM28_BIST_COLLAR_SI_INT = MEM28_GOID_SI_MUX {
   }
   Alias MEM27_BIST_COLLAR_SI_INT = MEM27_GOID_SI_MUX {
   }
   Alias MEM26_BIST_COLLAR_SI_INT = MEM26_GOID_SI_MUX {
   }
   Alias MEM25_BIST_COLLAR_SI_INT = MEM25_GOID_SI_MUX {
   }
   Alias MEM24_BIST_COLLAR_SI_INT = MEM24_GOID_SI_MUX {
   }
   Alias MEM23_BIST_COLLAR_SI_INT = MEM23_GOID_SI_MUX {
   }
   Alias MEM22_BIST_COLLAR_SI_INT = MEM22_GOID_SI_MUX {
   }
   Alias MEM21_BIST_COLLAR_SI_INT = MEM21_GOID_SI_MUX {
   }
   Alias MEM20_BIST_COLLAR_SI_INT = MEM20_GOID_SI_MUX {
   }
   Alias MEM19_BIST_COLLAR_SI_INT = MEM19_GOID_SI_MUX {
   }
   Alias MEM18_BIST_COLLAR_SI_INT = MEM18_GOID_SI_MUX {
   }
   Alias MEM17_BIST_COLLAR_SI_INT = MEM17_GOID_SI_MUX {
   }
   Alias MEM16_BIST_COLLAR_SI_INT = MEM16_GOID_SI_MUX {
   }
   Alias MEM15_BIST_COLLAR_SI_INT = MEM15_GOID_SI_MUX {
   }
   Alias MEM14_BIST_COLLAR_SI_INT = MEM14_GOID_SI_MUX {
   }
   Alias MEM13_BIST_COLLAR_SI_INT = MEM13_GOID_SI_MUX {
   }
   Alias MEM12_BIST_COLLAR_SI_INT = MEM12_GOID_SI_MUX {
   }
   Alias MEM11_BIST_COLLAR_SI_INT = MEM11_GOID_SI_MUX {
   }
   Alias MEM10_BIST_COLLAR_SI_INT = MEM10_GOID_SI_MUX {
   }
   Alias MEM9_BIST_COLLAR_SI_INT = MEM9_GOID_SI_MUX {
   }
   Alias MEM8_BIST_COLLAR_SI_INT = MEM8_GOID_SI_MUX {
   }
   Alias MEM7_BIST_COLLAR_SI_INT = MEM7_GOID_SI_MUX {
   }
   Alias MEM6_BIST_COLLAR_SI_INT = MEM6_GOID_SI_MUX {
   }
   Alias MEM5_BIST_COLLAR_SI_INT = MEM5_GOID_SI_MUX {
   }
   Alias MEM4_BIST_COLLAR_SI_INT = MEM4_GOID_SI_MUX {
   }
   Alias MEM3_BIST_COLLAR_SI_INT = MEM3_GOID_SI_MUX {
   }
   Alias MEM2_BIST_COLLAR_SI_INT = MEM2_GOID_SI_MUX {
   }
   Alias MEM1_BIST_COLLAR_SI_INT = MEM1_GOID_SI_MUX {
   }
   Alias MEM0_BIST_COLLAR_SI_INT = MEM0_GOID_SI_MUX {
   }
   Alias STOP_ERROR_CNT_REG[15:0] = STOP_ERROR_CNT_REG_HW[15:0] {
   }
   Alias MEM_SELECT_REG[39:0] = MEM_SELECT_REG39, MEM_SELECT_REG38, 
       MEM_SELECT_REG37, MEM_SELECT_REG36, MEM_SELECT_REG35, MEM_SELECT_REG34, 
       MEM_SELECT_REG33, MEM_SELECT_REG32, MEM_SELECT_REG31, MEM_SELECT_REG30, 
       MEM_SELECT_REG29, MEM_SELECT_REG28, MEM_SELECT_REG27, MEM_SELECT_REG26, 
       MEM_SELECT_REG25, MEM_SELECT_REG24, MEM_SELECT_REG23, MEM_SELECT_REG22, 
       MEM_SELECT_REG21, MEM_SELECT_REG20, MEM_SELECT_REG19, MEM_SELECT_REG18, 
       MEM_SELECT_REG17, MEM_SELECT_REG16, MEM_SELECT_REG15, MEM_SELECT_REG14, 
       MEM_SELECT_REG13, MEM_SELECT_REG12, MEM_SELECT_REG11, MEM_SELECT_REG10, 
       MEM_SELECT_REG9, MEM_SELECT_REG8, MEM_SELECT_REG7, MEM_SELECT_REG6, 
       MEM_SELECT_REG5, MEM_SELECT_REG4, MEM_SELECT_REG3, MEM_SELECT_REG2, 
       MEM_SELECT_REG1, MEM_SELECT_REG0 {
   }
   Alias GO_ID_CHAIN = GO_ID_CHAIN_STEP0 {
   }
   Alias BIST_SO_INT = BIST_SO_Pipeline {
   }
   Enum PassFail {
      Pass = 1'b1;
      Fail = 1'b0;
      Ignore = 1'bx;
   }
   Enum AsyncResetN {
      On = 1'b0;
      Off = 1'b1;
   }
   Enum SetupModes {
      Short = 3'b000;
      Long = 3'b001;
      Bira = 3'b100;
   }
   Enum OnOff {
      On = 1'b1;
      Off = 1'b0;
   }
   Enum RunModes {
      HWDefault = 3'b010;
      RunTimeProg = 3'b011;
      Idle = 3'bx0x;
      Off = 3'bxxx;
   }
   ScanRegister BIST_SI_Pipeline {
      ScanInSource BIST_SI;
      ResetValue 1'b0;
   }
   ScanRegister DIAG_EN_REG[0:0] {
      ScanInSource BIST_SI_Pipeline;
   }
   ScanRegister BIRA_EN_REG[0:0] {
      ScanInSource DIAG_EN_REG[0];
   }
   ScanRegister PRIORITY_COLUMN_REG[0:0] {
      ScanInSource BIRA_EN_REG[0];
   }
   ScanRegister CMP_EN_MASK_EN[0:0] {
      ScanInSource PRIORITY_COLUMN_REG[0];
   }
   ScanRegister CMP_EN_PARITY[0:0] {
      ScanInSource CMP_EN_MASK_EN[0];
      CaptureSource 1'bx;
   }
   ScanRegister MEM_SELECT_REG0[0:0] {
      ScanInSource CMP_EN_PARITY[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG1[0:0] {
      ScanInSource MEM_SELECT_REG0[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG2[0:0] {
      ScanInSource MEM_SELECT_REG1[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG3[0:0] {
      ScanInSource MEM_SELECT_REG2[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG4[0:0] {
      ScanInSource MEM_SELECT_REG3[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG5[0:0] {
      ScanInSource MEM_SELECT_REG4[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG6[0:0] {
      ScanInSource MEM_SELECT_REG5[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG7[0:0] {
      ScanInSource MEM_SELECT_REG6[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG8[0:0] {
      ScanInSource MEM_SELECT_REG7[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG9[0:0] {
      ScanInSource MEM_SELECT_REG8[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG10[0:0] {
      ScanInSource MEM_SELECT_REG9[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG11[0:0] {
      ScanInSource MEM_SELECT_REG10[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG12[0:0] {
      ScanInSource MEM_SELECT_REG11[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG13[0:0] {
      ScanInSource MEM_SELECT_REG12[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG14[0:0] {
      ScanInSource MEM_SELECT_REG13[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG15[0:0] {
      ScanInSource MEM_SELECT_REG14[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG16[0:0] {
      ScanInSource MEM_SELECT_REG15[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG17[0:0] {
      ScanInSource MEM_SELECT_REG16[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG18[0:0] {
      ScanInSource MEM_SELECT_REG17[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG19[0:0] {
      ScanInSource MEM_SELECT_REG18[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG20[0:0] {
      ScanInSource MEM_SELECT_REG19[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG21[0:0] {
      ScanInSource MEM_SELECT_REG20[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG22[0:0] {
      ScanInSource MEM_SELECT_REG21[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG23[0:0] {
      ScanInSource MEM_SELECT_REG22[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG24[0:0] {
      ScanInSource MEM_SELECT_REG23[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG25[0:0] {
      ScanInSource MEM_SELECT_REG24[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG26[0:0] {
      ScanInSource MEM_SELECT_REG25[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG27[0:0] {
      ScanInSource MEM_SELECT_REG26[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG28[0:0] {
      ScanInSource MEM_SELECT_REG27[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG29[0:0] {
      ScanInSource MEM_SELECT_REG28[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG30[0:0] {
      ScanInSource MEM_SELECT_REG29[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG31[0:0] {
      ScanInSource MEM_SELECT_REG30[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG32[0:0] {
      ScanInSource MEM_SELECT_REG31[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG33[0:0] {
      ScanInSource MEM_SELECT_REG32[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG34[0:0] {
      ScanInSource MEM_SELECT_REG33[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG35[0:0] {
      ScanInSource MEM_SELECT_REG34[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG36[0:0] {
      ScanInSource MEM_SELECT_REG35[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG37[0:0] {
      ScanInSource MEM_SELECT_REG36[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG38[0:0] {
      ScanInSource MEM_SELECT_REG37[0];
      ResetValue 1'd1;
   }
   ScanRegister MEM_SELECT_REG39[0:0] {
      ScanInSource MEM_SELECT_REG38[0];
      ResetValue 1'd1;
   }
   ScanRegister REDUCED_ADDR_CNT_EN_REG[0:0] {
      ScanInSource MEM_SELECT_REG39[0];
      RefEnum OnOff;
   }
   ScanRegister ALGO_SEL_REG_HW[0:6] {
      ScanInSource REDUCED_ADDR_CNT_EN_REG[0];
   }
   ScanRegister ALGO_SEL_CNT_REG[0:0] {
      ScanInSource ALGO_SEL_REG_HW[6];
      RefEnum OnOff;
   }
   ScanRegister SELECT_COMMON_OPSET_REG[0:0] {
      ScanInSource ALGO_SEL_CNT_REG[0];
      RefEnum OnOff;
   }
   ScanRegister SELECT_COMMON_DATA_PAT_REG[0:0] {
      ScanInSource SELECT_COMMON_OPSET_REG[0];
      RefEnum OnOff;
   }
   ScanRegister SELECT_COMMON_ADD_MIN_MAX_REG[0:0] {
      ScanInSource SELECT_COMMON_DATA_PAT_REG[0];
   }
   ScanRegister MICROCODE_EN_REG[0:0] {
      ScanInSource SELECT_COMMON_ADD_MIN_MAX_REG[0];
   }
   ScanRegister MEM_ARRAY_DUMP_MODE_R[0:0] {
      ScanInSource MICROCODE_EN_REG[0];
   }
   ScanRegister INST_POINTER_REG_HW[0:4] {
      ScanInSource MEM_ARRAY_DUMP_MODE_R[0];
   }
   ScanRegister INST0_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST_POINTER_REG_HW[4];
   }
   ScanRegister INST0_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST0_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST0_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST0_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST0_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST0_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST0_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST0_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST0_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST0_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST0_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST0_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST0_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST0_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST0_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST0_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST0_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST0_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST0_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST0_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST0_INH_DATA_CMP[0:0] {
      ScanInSource INST0_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST0_COUNTERA_CMD[0:0] {
      ScanInSource INST0_INH_DATA_CMP[0];
   }
   ScanRegister INST0_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST0_COUNTERA_CMD[0];
   }
   ScanRegister INST0_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST0_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST0_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST0_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST0_DISABLE_GWE[0:0] {
      ScanInSource INST0_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST1_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST0_DISABLE_GWE[0];
   }
   ScanRegister INST1_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST1_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST1_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST1_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST1_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST1_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST1_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST1_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST1_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST1_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST1_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST1_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST1_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST1_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST1_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST1_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST1_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST1_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST1_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST1_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST1_INH_DATA_CMP[0:0] {
      ScanInSource INST1_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST1_COUNTERA_CMD[0:0] {
      ScanInSource INST1_INH_DATA_CMP[0];
   }
   ScanRegister INST1_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST1_COUNTERA_CMD[0];
   }
   ScanRegister INST1_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST1_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST1_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST1_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST1_DISABLE_GWE[0:0] {
      ScanInSource INST1_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST2_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST1_DISABLE_GWE[0];
   }
   ScanRegister INST2_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST2_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST2_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST2_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST2_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST2_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST2_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST2_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST2_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST2_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST2_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST2_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST2_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST2_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST2_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST2_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST2_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST2_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST2_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST2_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST2_INH_DATA_CMP[0:0] {
      ScanInSource INST2_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST2_COUNTERA_CMD[0:0] {
      ScanInSource INST2_INH_DATA_CMP[0];
   }
   ScanRegister INST2_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST2_COUNTERA_CMD[0];
   }
   ScanRegister INST2_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST2_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST2_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST2_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST2_DISABLE_GWE[0:0] {
      ScanInSource INST2_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST3_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST2_DISABLE_GWE[0];
   }
   ScanRegister INST3_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST3_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST3_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST3_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST3_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST3_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST3_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST3_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST3_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST3_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST3_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST3_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST3_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST3_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST3_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST3_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST3_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST3_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST3_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST3_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST3_INH_DATA_CMP[0:0] {
      ScanInSource INST3_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST3_COUNTERA_CMD[0:0] {
      ScanInSource INST3_INH_DATA_CMP[0];
   }
   ScanRegister INST3_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST3_COUNTERA_CMD[0];
   }
   ScanRegister INST3_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST3_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST3_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST3_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST3_DISABLE_GWE[0:0] {
      ScanInSource INST3_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST4_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST3_DISABLE_GWE[0];
   }
   ScanRegister INST4_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST4_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST4_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST4_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST4_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST4_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST4_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST4_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST4_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST4_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST4_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST4_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST4_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST4_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST4_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST4_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST4_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST4_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST4_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST4_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST4_INH_DATA_CMP[0:0] {
      ScanInSource INST4_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST4_COUNTERA_CMD[0:0] {
      ScanInSource INST4_INH_DATA_CMP[0];
   }
   ScanRegister INST4_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST4_COUNTERA_CMD[0];
   }
   ScanRegister INST4_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST4_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST4_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST4_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST4_DISABLE_GWE[0:0] {
      ScanInSource INST4_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST5_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST4_DISABLE_GWE[0];
   }
   ScanRegister INST5_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST5_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST5_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST5_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST5_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST5_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST5_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST5_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST5_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST5_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST5_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST5_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST5_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST5_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST5_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST5_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST5_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST5_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST5_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST5_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST5_INH_DATA_CMP[0:0] {
      ScanInSource INST5_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST5_COUNTERA_CMD[0:0] {
      ScanInSource INST5_INH_DATA_CMP[0];
   }
   ScanRegister INST5_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST5_COUNTERA_CMD[0];
   }
   ScanRegister INST5_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST5_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST5_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST5_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST5_DISABLE_GWE[0:0] {
      ScanInSource INST5_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST6_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST5_DISABLE_GWE[0];
   }
   ScanRegister INST6_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST6_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST6_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST6_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST6_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST6_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST6_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST6_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST6_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST6_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST6_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST6_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST6_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST6_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST6_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST6_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST6_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST6_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST6_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST6_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST6_INH_DATA_CMP[0:0] {
      ScanInSource INST6_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST6_COUNTERA_CMD[0:0] {
      ScanInSource INST6_INH_DATA_CMP[0];
   }
   ScanRegister INST6_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST6_COUNTERA_CMD[0];
   }
   ScanRegister INST6_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST6_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST6_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST6_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST6_DISABLE_GWE[0:0] {
      ScanInSource INST6_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister INST7_OPERATION_SELECT_HW[0:5] {
      ScanInSource INST6_DISABLE_GWE[0];
   }
   ScanRegister INST7_ADD_REG_A_EQUALS_B_HW[0:1] {
      ScanInSource INST7_OPERATION_SELECT_HW[5];
   }
   ScanRegister INST7_Y0_ADD_CMD_HW[0:1] {
      ScanInSource INST7_ADD_REG_A_EQUALS_B_HW[1];
   }
   ScanRegister INST7_Y1_ADD_CMD_HW[0:2] {
      ScanInSource INST7_Y0_ADD_CMD_HW[1];
   }
   ScanRegister INST7_X0_ADD_CMD_HW[0:1] {
      ScanInSource INST7_Y1_ADD_CMD_HW[2];
   }
   ScanRegister INST7_X1_ADD_CMD_HW[0:2] {
      ScanInSource INST7_X0_ADD_CMD_HW[1];
   }
   ScanRegister INST7_ADD_SELECT_CMD_HW[0:2] {
      ScanInSource INST7_X1_ADD_CMD_HW[2];
   }
   ScanRegister INST7_WRITE_DATA_CMD_HW[0:3] {
      ScanInSource INST7_ADD_SELECT_CMD_HW[2];
   }
   ScanRegister INST7_EXPECT_DATA_CMD_HW[0:3] {
      ScanInSource INST7_WRITE_DATA_CMD_HW[3];
   }
   ScanRegister INST7_REPEATLOOP_CMD_HW[0:1] {
      ScanInSource INST7_EXPECT_DATA_CMD_HW[3];
   }
   ScanRegister INST7_INH_LAST_ADDR_CNT[0:0] {
      ScanInSource INST7_REPEATLOOP_CMD_HW[1];
   }
   ScanRegister INST7_INH_DATA_CMP[0:0] {
      ScanInSource INST7_INH_LAST_ADDR_CNT[0];
   }
   ScanRegister INST7_COUNTERA_CMD[0:0] {
      ScanInSource INST7_INH_DATA_CMP[0];
   }
   ScanRegister INST7_DELAYCOUNTER_CMD[0:0] {
      ScanInSource INST7_COUNTERA_CMD[0];
   }
   ScanRegister INST7_BRANCH_INST_ADDRESS_HW[0:4] {
      ScanInSource INST7_DELAYCOUNTER_CMD[0];
   }
   ScanRegister INST7_NEXT_CONDITIONS_HW[0:6] {
      ScanInSource INST7_BRANCH_INST_ADDRESS_HW[4];
   }
   ScanRegister INST7_DISABLE_GWE[0:0] {
      ScanInSource INST7_NEXT_CONDITIONS_HW[6];
   }
   ScanRegister A_ADD_REG_Y_HW[0:2] {
      ScanInSource A_ADD_REG_Y_SI_MUX;
   }
   ScanRegister A_ADD_REG_X_HW[0:7] {
      ScanInSource A_ADD_REG_Y_HW[2];
   }
   ScanRegister A_X1_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource A_ADD_REG_X_HW[7];
   }
   ScanRegister A_X0_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource A_X1_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister A_Y1_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource A_X0_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister A_Y0_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource A_Y1_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister A_X0_SEG_DEF_REG[0:0] {
      ScanInSource A_Y0_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister A_Y0_SEG_DEF_REG[0:0] {
      ScanInSource A_X0_SEG_DEF_REG[0];
   }
   ScanRegister B_ADD_REG_Y_HW[0:2] {
      ScanInSource A_Y0_SEG_DEF_REG[0];
   }
   ScanRegister B_ADD_REG_X_HW[0:7] {
      ScanInSource B_ADD_REG_Y_HW[2];
   }
   ScanRegister B_X1_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource B_ADD_REG_X_HW[7];
   }
   ScanRegister B_X0_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource B_X1_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister B_Y1_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource B_X0_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister B_Y0_ADD_SEG_LINK_REG_HW[0:2] {
      ScanInSource B_Y1_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister B_X0_SEG_DEF_REG[0:0] {
      ScanInSource B_Y0_ADD_SEG_LINK_REG_HW[2];
   }
   ScanRegister B_Y0_SEG_DEF_REG[0:0] {
      ScanInSource B_X0_SEG_DEF_REG[0];
   }
   ScanRegister X_ADD_REG_MIN_HW[0:7] {
      ScanInSource B_Y0_SEG_DEF_REG[0];
   }
   ScanRegister X_ADD_REG_MAX_HW[0:7] {
      ScanInSource X_ADD_REG_MIN_HW[7];
   }
   ScanRegister Y_ADD_REG_MIN_HW[0:2] {
      ScanInSource X_ADD_REG_MAX_HW[7];
   }
   ScanRegister Y_ADD_REG_MAX_HW[0:2] {
      ScanInSource Y_ADD_REG_MIN_HW[2];
   }
   ScanRegister JCNT_HW[0:2] {
      ScanInSource Y_ADD_REG_MAX_HW[2];
   }
   ScanRegister OPSET_SELECT_REG[0:0] {
      ScanInSource JCNT_HW[2];
   }
   ScanRegister DELAYCOUNTER_CNT_HW[0:7] {
      ScanInSource OPSET_SELECT_REG[0];
   }
   ScanRegister DELAYCOUNTER_REG_HW[0:7] {
      ScanInSource DELAYCOUNTER_CNT_HW[7];
   }
   ScanRegister WDATA_REG_HW[0:3] {
      ScanInSource DELAYCOUNTER_REG_HW[7];
   }
   ScanRegister EDATA_REG_HW[0:3] {
      ScanInSource WDATA_REG_HW[3];
   }
   ScanRegister X_ADDR_BIT_SEL_REG[0:0] {
      ScanInSource EDATA_REG_HW[3];
   }
   ScanRegister Y_ADDR_BIT_SEL_REG[0:0] {
      ScanInSource X_ADDR_BIT_SEL_REG[0];
   }
   ScanRegister REPEATLOOP_A_MAX_REG_HW[0:1] {
      ScanInSource Y_ADDR_BIT_SEL_REG[0];
   }
   ScanRegister REPEATLOOP_A_POINTER_REG_HW[0:4] {
      ScanInSource REPEATLOOP_A_MAX_REG_HW[1];
   }
   ScanRegister REPEATLOOP_A_LOOP1_REG_HW[0:4] {
      ScanInSource REPEATLOOP_A_POINTER_REG_HW[4];
   }
   ScanRegister REPEATLOOP_A_LOOP2_REG_HW[0:4] {
      ScanInSource REPEATLOOP_A_LOOP1_REG_HW[4];
   }
   ScanRegister REPEATLOOP_A_LOOP3_REG_HW[0:4] {
      ScanInSource REPEATLOOP_A_LOOP2_REG_HW[4];
   }
   ScanRegister REPEATLOOP_B_MAX_REG_HW[0:1] {
      ScanInSource REPEATLOOP_A_LOOP3_REG_HW[4];
   }
   ScanRegister REPEATLOOP_B_POINTER_REG_HW[0:4] {
      ScanInSource REPEATLOOP_B_MAX_REG_HW[1];
   }
   ScanRegister REPEATLOOP_B_LOOP1_REG_HW[0:4] {
      ScanInSource REPEATLOOP_B_POINTER_REG_HW[4];
   }
   ScanRegister REPEATLOOP_B_LOOP2_REG_HW[0:4] {
      ScanInSource REPEATLOOP_B_LOOP1_REG_HW[4];
   }
   ScanRegister REPEATLOOP_B_LOOP3_REG_HW[0:4] {
      ScanInSource REPEATLOOP_B_LOOP2_REG_HW[4];
   }
   ScanRegister REPEATLOOP_A_CNTR_REG_HW[0:1] {
      ScanInSource REPEATLOOP_B_LOOP3_REG_HW[4];
   }
   ScanRegister REPEATLOOP_B_CNTR_REG_HW[0:1] {
      ScanInSource REPEATLOOP_A_CNTR_REG_HW[1];
   }
   ScanRegister COUNTERA_CNT_HW[0:27] {
      ScanInSource REPEATLOOP_B_CNTR_REG_HW[1];
   }
   ScanRegister COUNTERA_REG_HW[0:27] {
      ScanInSource COUNTERA_CNT_HW[27];
   }
   ScanRegister PRESERVE_BIRA_FUSE_REG[0:0] {
      ScanInSource MEM0_BIST_COLLAR_SO;
   }
   ScanRegister STOP_ON_ERROR_REG[0:0] {
      ScanInSource PRESERVE_BIRA_FUSE_REG[0];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource STOP_ON_ERROR_REG[0];
   }
   ScanRegister STOP_ERROR_CNT_REG_HW[0:15] {
      ScanInSource FREEZE_STOP_ERROR_REG[0];
   }
   ScanRegister BIST_SO_Pipeline {
      ScanInSource BIST_SO_OUT;
      ResetValue 1'b0;
   }
   ScanMux A_ADD_REG_Y_SI_MUX SelectedBy LONG_SETUP, SHORT_SETUP {
      2'b01 : INST_POINTER_REG_HW[4];
      2'b10 : INST7_DISABLE_GWE[0];
   }
   ScanMux MEM39_TO_COLLAR_SI_MUX SelectedBy BIRA_SETUP {
      1'b0 : COUNTERA_REG_HW[27];
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM39_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM39_TO_COLLAR_SI_MUX;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM38_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM39_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM37_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM38_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM36_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM37_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM35_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM36_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM34_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM35_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM33_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM34_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM32_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM33_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM31_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM32_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM30_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM31_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM29_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM30_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM28_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM29_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM27_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM28_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM26_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM27_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM25_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM26_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM24_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM25_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM23_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM24_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM22_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM23_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM21_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM22_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM20_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM21_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM19_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM20_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM18_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM19_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM17_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM18_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM16_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM17_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM15_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM16_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM14_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM15_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM13_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM14_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM12_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM13_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM11_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM12_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM10_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM11_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM9_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM10_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM8_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM9_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM7_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM8_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM6_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM7_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM5_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM6_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM4_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM5_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM3_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM4_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM2_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM3_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM1_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM2_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux MEM0_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM1_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
   }
   ScanMux CONTROLLER_SETUP_CHAIN SelectedBy MBISTPG_EN, SETUP_MODE[2:0] {
      1'b1, 3'b00x : STOP_ERROR_CNT_REG_HW[15];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : CONTROLLER_SETUP_CHAIN;
      1'b1 : MEM0_BIST_COLLAR_SO;
   }
   ScanMux GO_ID_CHAIN_STEP0 SelectedBy MEM_SELECT_REG[39:0] {
      40'b0000000000000000000000000000000000000001 : MEM0_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000000010 : MEM1_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000000100 : MEM2_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000001000 : MEM3_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000010000 : MEM4_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000100000 : MEM5_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000001000000 : MEM6_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000010000000 : MEM7_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000100000000 : MEM8_BIST_COLLAR_SO;
      40'b0000000000000000000000000000001000000000 : MEM9_BIST_COLLAR_SO;
      40'b0000000000000000000000000000010000000000 : MEM10_BIST_COLLAR_SO;
      40'b0000000000000000000000000000100000000000 : MEM11_BIST_COLLAR_SO;
      40'b0000000000000000000000000001000000000000 : MEM12_BIST_COLLAR_SO;
      40'b0000000000000000000000000010000000000000 : MEM13_BIST_COLLAR_SO;
      40'b0000000000000000000000000100000000000000 : MEM14_BIST_COLLAR_SO;
      40'b0000000000000000000000001000000000000000 : MEM15_BIST_COLLAR_SO;
      40'b0000000000000000000000010000000000000000 : MEM16_BIST_COLLAR_SO;
      40'b0000000000000000000000100000000000000000 : MEM17_BIST_COLLAR_SO;
      40'b0000000000000000000001000000000000000000 : MEM18_BIST_COLLAR_SO;
      40'b0000000000000000000010000000000000000000 : MEM19_BIST_COLLAR_SO;
      40'b0000000000000000000100000000000000000000 : MEM20_BIST_COLLAR_SO;
      40'b0000000000000000001000000000000000000000 : MEM21_BIST_COLLAR_SO;
      40'b0000000000000000010000000000000000000000 : MEM22_BIST_COLLAR_SO;
      40'b0000000000000000100000000000000000000000 : MEM23_BIST_COLLAR_SO;
      40'b0000000000000001000000000000000000000000 : MEM24_BIST_COLLAR_SO;
      40'b0000000000000010000000000000000000000000 : MEM25_BIST_COLLAR_SO;
      40'b0000000000000100000000000000000000000000 : MEM26_BIST_COLLAR_SO;
      40'b0000000000001000000000000000000000000000 : MEM27_BIST_COLLAR_SO;
      40'b0000000000010000000000000000000000000000 : MEM28_BIST_COLLAR_SO;
      40'b0000000000100000000000000000000000000000 : MEM29_BIST_COLLAR_SO;
      40'b0000000001000000000000000000000000000000 : MEM30_BIST_COLLAR_SO;
      40'b0000000010000000000000000000000000000000 : MEM31_BIST_COLLAR_SO;
      40'b0000000100000000000000000000000000000000 : MEM32_BIST_COLLAR_SO;
      40'b0000001000000000000000000000000000000000 : MEM33_BIST_COLLAR_SO;
      40'b0000010000000000000000000000000000000000 : MEM34_BIST_COLLAR_SO;
      40'b0000100000000000000000000000000000000000 : MEM35_BIST_COLLAR_SO;
      40'b0001000000000000000000000000000000000000 : MEM36_BIST_COLLAR_SO;
      40'b0010000000000000000000000000000000000000 : MEM37_BIST_COLLAR_SO;
      40'b0100000000000000000000000000000000000000 : MEM38_BIST_COLLAR_SO;
      40'b1000000000000000000000000000000000000000 : MEM39_BIST_COLLAR_SO;
   }
   ScanMux FUNC_DEBUG_MUX SelectedBy GOID_SETUP {
      1'b1 : GO_ID_CHAIN;
      1'b0 : BIRA_SETUP_MUX;
   }
   ScanMux BIST_SO_OUT SelectedBy LV_TM, MBISTPG_ASYNC_RESETN {
      2'b01 : FUNC_DEBUG_MUX;
   }
   LogicSignal BIRA_SETUP {
      MBISTPG_EN, SETUP_MODE[2:0] == 1'b1, 3'b100;
   }
   LogicSignal LONG_SETUP {
      MBISTPG_EN, SETUP_MODE[2:0] == 1'b1, 3'b001;
   }
   LogicSignal SHORT_SETUP {
      MBISTPG_EN, SETUP_MODE[2:0] == 1'b1, 3'b000;
   }
   LogicSignal GOID_SETUP {
      MBISTPG_EN, SETUP_MODE[2:0] == 1'b1, 3'b101;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m10_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m11_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m12_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m13_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m14_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m15_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m16_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m17_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m18_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m19_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m1_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m20_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m21_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m22_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m23_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m24_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m25_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m26_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m27_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m28_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m29_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m2_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m30_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m31_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m32_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m3_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m4_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m5_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m6_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m7_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m8_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m9_inst
Module ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper.icl'
   DataInPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_memory_bist_function = "address";
   }
   ClockPort clk;
   DataInPort row_repair_in[25:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   DataInPort col_repair_in[12:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   Attribute tessent_use_in_dft_specification = "false";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_memory_module = "without_internal_scan_logic";
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m10_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m10 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m10.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "2f572dffef58d03b03cf49c871da9a7a";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m11_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m11 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m11.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "d21c42972e2e6898f556319a634f6cdc";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m12_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m12 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m12.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "7129f94db76e1f71b1e0f7f2039bb75c";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m13_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m13 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m13.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "4b59f64629d72a06ee95bfe6cba19e7d";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m14_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m14 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m14.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "a1db30dd0a6263813e09d7e99ab1c129";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m15_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m15 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m15.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "1421fd1fcced25ecbf0668be7cf0d1d4";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m16_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m16 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m16.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "c34f02746339f93ea9aecb96f8179896";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m17_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m17 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m17.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "dcfac26392de2b8834d39b70ac6179d4";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m18_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m18 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m18.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "bf96856604131bb4e9888826ba8a9103";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m19_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m19 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m19.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "b7a5c34dd75cf33b2eff37a428d8b7c2";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m1_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m1 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m1.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "0b86ad7aab0c9765d0686a330d0c7eda";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m20_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m20 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m20.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "5128df3555eea1f0b04de9687e5168a2";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m21_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m21 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m21.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "09b76a040ed9d8bc62cf7df2e78dc531";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m22_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m22 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m22.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "2a8cbc0c1b1344e50f33506fc79a6044";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m23_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m23 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m23.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "f69c05abe32539758c7813ba6b35059b";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m24_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m24 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m24.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "984589e8664bf960a77c4f66067a5c3b";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m25_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m25 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m25.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "5a92a5a0bfd956a30d1d8bf8c11d02ad";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m26_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m26 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m26.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "2ed0b06924e65a18dd4563208ae86fbe";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m27_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m27 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m27.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "197b48b96796dbbc751506e2861b0c4c";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m28_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m28 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m28.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "5d885ffd35b11f586190241f3125736d";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m29_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m29 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m29.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "784bb195742536a2d1284cc46f09c116";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m2_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m2 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m2.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "d5774074c84a622ea02f82eedb69d005";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m30_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m30 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m30.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "5da6baa617f819167b20cd5883681d51";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m31_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m31 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m31.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "411e49e60fb581242c0ca4f74e942b0f";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m32_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m32 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m32.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "a728d1c7c8bc9be9779c6e945375c7c5";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m33_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m34_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m35_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m36_inst
Module ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper.icl'
   DataInPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_memory_bist_function = "address";
   }
   ClockPort clk;
   DataInPort row_repair_in[25:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   DataInPort col_repair_in[12:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   Attribute tessent_use_in_dft_specification = "false";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_memory_module = "without_internal_scan_logic";
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m33_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m33 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m33.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[6:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "5cc8b5aed4e41aec5099830d0b1d8266";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[71:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:6] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m34_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m34 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m34.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[6:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "b405d2e6dcf230bf84421e25c68f8ca6";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[71:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:6] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m35_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m35 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m35.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[6:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "89c6d9fc6db68cd112afefa417ca5697";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[71:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:6] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m36_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m36 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m36.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[7:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[7:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[6:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "c5919a7b37dba852916dc1cefaf0f2ab";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[71:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:6] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:7] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[7];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m37_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m38_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m39_inst
// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m40_inst
Module ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper {
   // ICL module read from source on or near line 17 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/ip783hdspsr512x32m4b1s0c1r2p3d0a2_mem_wrapper.icl'
   DataInPort adr[8:0] {
      Attribute connection_rule_option = "allowed_no_source";
      Attribute tessent_memory_bist_function = "address";
   }
   ClockPort clk;
   DataInPort row_repair_in[25:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   DataInPort col_repair_in[12:0] {
      Attribute connection_rule_option = "allowed_no_source";
   }
   Attribute tessent_use_in_dft_specification = "false";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_memory_module = "without_internal_scan_logic";
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m37_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m37 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m37.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[8:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "cb03926aef9bbfdff0acb413da9142c6";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[31:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m38_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m38 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m38.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[8:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "de4311148a2899d8453f6d5a09d7793f";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[31:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m39_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m39 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m39.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[8:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "c169e454b3023c5dadd28f8fc806cdbc";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[31:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m3_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m3 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m3.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "dbc20a78defc615f1456df0e1eb39bfe";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m40_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m40 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m40.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[8:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "bedfab47d6289adbdc9f348911b09652";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[31:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m4_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m4 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m4.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "d3b687e7f112927015693c9232a52e81";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m5_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m5 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m5.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "a2c189a59de1cdbd94afed71cc6832bf";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m6_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m6 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m6.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "22796b211e13a5f8ca94b2f0b689873f";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m7_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m7 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m7.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "39fd48adce09e9aede4641dd06b78f6b";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m8_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m8 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m8.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "488e01213d000ee5d71dd723afd054b8";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}

// instanced as firebird7_in_gate1_tessent_mbist_c1_controller_assembly.m9_interface_instance
Module firebird7_in_gate1_tessent_mbist_c1_interface_m9 {
   // ICL module read from source on or near line 25 of file '/nfs/site/disks/zsc14.xne_irw_003/khiremat/tessent_study_group/learn-tessent/firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m9.icl'
   ClockPort BIST_CLK;
   DataInPort BIST_COLLAR_EN;
   DataInPort BIST_ASYNC_RESETN;
   ScanInPort BIST_SI;
   ScanOutPort BIST_SO {
      Source BIST_SO_INT;
   }
   ShiftEnPort BIST_SHIFT_COLLAR;
   DataInPort BIST_SETUP2;
   DataInPort BIST_SETUP1;
   DataInPort BIST_SETUP0;
   DataInPort MEM_BYPASS_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort MCP_BOUNDING_EN {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort INCLUDE_MEM_RESULTS_REG;
   DataOutPort adr[9:0] {
      Attribute connection_rule_option = "allowed_no_destination";
      Attribute tessent_memory_bist_function = "address";
   }
   DataInPort CHECK_REPAIR_NEEDED;
   DataOutPort ALL_SROW0_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW0_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort ALL_SROW1_FUSE_ADD_REG[6:0] {
      Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataOutPort ALL_SROW1_ALLOC_REG {
      Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataInPort FROM_BISR_ALL_SROW1_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_FUSE_REG[4:0] {
      Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0];
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_FUSE_REG[4:0] {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   DataOutPort All_SCOL0_ALLOC_REG {
      Source RA_INTERFACE_All_SPARE0_ALLOC_REG;
      Attribute connection_rule_option = "allowed_no_destination";
   }
   DataInPort FROM_BISR_All_SCOL0_ALLOC_REG {
      Attribute connection_rule_option = "allowed_tied_low";
   }
   Attribute tessent_instrument_type = "mentor::memory_bist";
   Attribute tessent_instrument_subtype = "memory_interface";
   Attribute tessent_signature = "7f468a22b5ae67852c32c536d56da1a2";
   Attribute tessent_ignore_during_icl_verification = "on";
   Attribute keep_active_during_scan_test = "false";
   Attribute tessent_use_in_dft_specification = "false";
   Attribute tessent_bist_input_select_persistent_cell_output_list = 
       "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
   Attribute tessent_async_bypass_persistent_cell_input_list = "";
   Attribute tessent_bist_clk_persistent_cell_output_list = 
       "tessent_persistent_cell_GATING_BIST_CLK/clkout";
   Attribute tessent_memory_output_is_tristate = "false";
   Attribute tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
   Attribute tessent_memory_test_inputs_list = "";
   Attribute tessent_memory_test_outputs_list = "";
   Attribute tessent_memory_control_inputs_di_coverage_list = "partial";
   Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0] {
   }
   Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1] {
   }
   Alias BIST_SO_INT = BIRA_SETUP_MUX {
   }
   ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
      ScanInSource BIST_SI;
   }
   ScanRegister GO_ID_REG[21:0] {
      ScanInSource RA_STATUS_SHADOW_REG[1];
   }
   ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource GO_ID_REG_BYPASS_MUX;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource BIST_SI;
   }
   ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource RA_INTERFACE_All_SPARE0_FUSE_REG[4];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
   }
   ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
   }
   ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
   }
   ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
   }
   ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
   }
   LogicSignal BIRA_SETUP {
      (BIST_SETUP2, BIST_SETUP1), BIST_SETUP0 == 3'b100;
   }
}
