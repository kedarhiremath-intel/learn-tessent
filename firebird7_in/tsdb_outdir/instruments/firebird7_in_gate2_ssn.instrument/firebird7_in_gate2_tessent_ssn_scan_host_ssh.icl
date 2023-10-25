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
//       Created on: Tue Oct 24 19:28:51 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_ssn_scan_host_ssh {
  ClockPort       bus_clock {
    Attribute function_modifier = "tessent_ssn_clock";
    Attribute forced_high_dft_signal_list = "ssn_en";
  }
  DataInPort      bus_data_in[19:0] {
    Attribute function_modifier = "tessent_ssn_bus_data";
    Attribute forced_high_dft_signal_list = "ssn_en";
  }
  DataOutPort     bus_data_out[19:0] {
    Attribute function_modifier = "tessent_ssn_bus_data";
    Source bus_out_reg;
    Attribute forced_high_dft_signal_list = "ssn_en";
  }
 
  ResetPort       ijtag_reset {
    ActivePolarity 0;
  }
  TCKPort         ijtag_tck;
  SelectPort      ijtag_sel;
  CaptureEnPort   ijtag_ce;
  ShiftEnPort     ijtag_se;
  UpdateEnPort    ijtag_ue;
  ScanInPort      ijtag_si;
 
  ScanOutPort     ijtag_so {
    Source inner.ijtag_so;
  }
 
 Instance inner Of firebird7_in_gate2_tessent_ssn_scan_host_ssh_inner {
   InputPort ijtag_reset = ijtag_reset;
   InputPort ijtag_clock   = ijtag_tck;
   InputPort ijtag_sel   = ijtag_sel;
   InputPort ijtag_ce    = ijtag_ce;
   InputPort ijtag_se    = ijtag_se;
   InputPort ijtag_ue    = ijtag_ue;
   InputPort ijtag_si    = ijtag_si;
   Attribute tessent_design_instance = "ijtag_registers";
 }
  DataRegister    bus_in_reg[19:0] {
    WriteDataSource bus_data_in;
    WriteEnSource   1'b1;
    ResetValue      20'b0;
    Attribute tessent_matched_scan_register = "inner.bus_in_shift_reg";
  }
 
  DataRegister    bus_out_reg[19:0] {
    WriteDataSource bus_in_reg;
    WriteEnSource   1'b1;
    ResetValue      20'b0;
    Attribute tessent_matched_scan_register = "inner.bus_out_shift_reg";
  }
 
 
  Attribute keep_active_during_scan_test      = "true";
  Attribute tessent_instrument_type           = "mentor::ssn";
  Attribute tessent_instrument_container      = "firebird7_in_gate2_ssn.instrument";
  Attribute tessent_instrument_subtype        = "scan_host";
  Attribute tessent_signature                 = "4831a519f449044902508083b2c545b2";
  Attribute tessent_persistent_clock_pins     =
    "{tessent_persistent_cell_bus_clock_buf/clk}";
  Attribute tessent_persistent_bus_in_pins    =
    "{tessent_persistent_cell_bus_data_in_buf_0/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_1/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_2/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_3/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_4/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_5/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_6/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_7/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_8/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_9/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_10/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_11/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_12/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_13/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_14/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_15/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_16/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_17/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_18/a} ",
    "{tessent_persistent_cell_bus_data_in_buf_19/a}";
  Attribute tessent_persistent_bus_out_pins   =
    "{tessent_persistent_cell_bus_data_out_buf_0/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_1/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_2/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_3/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_4/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_5/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_6/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_7/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_8/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_9/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_10/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_11/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_12/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_13/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_14/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_15/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_16/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_17/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_18/o} ",
    "{tessent_persistent_cell_bus_data_out_buf_19/o}";
}
 
Module firebird7_in_gate2_tessent_ssn_scan_host_ssh_inner {
  ResetPort       ijtag_reset {
    ActivePolarity 0;
  }
  TCKPort         ijtag_clock;
  SelectPort      ijtag_sel;
  CaptureEnPort   ijtag_ce;
  ShiftEnPort     ijtag_se;
  UpdateEnPort    ijtag_ue;
  ScanInPort      ijtag_si;
  ScanOutPort     ijtag_so { Source ijtag_so_mux; }
  DataOutPort     enable {
    Source enable_shift_reg;
  }
  DataOutPort     initial_offset[30:0] {
    Source initial_offset_shift_reg;
  }
  DataOutPort     relative_initial_offset_enable {
    Source relative_initial_offset_enable_shift_reg;
  }
  DataOutPort     bus_width[4:0] {
    Source bus_width_shift_reg;
  }
  DataOutPort     bits_per_packet[8:0] {
    Source bits_per_packet_shift_reg;
  }
  DataOutPort     to_scan_in_bits[2:0] {
    Source to_scan_in_bits_shift_reg;
  }
  DataOutPort     from_scan_out_bits[1:0] {
    Source from_scan_out_bits_shift_reg;
  }
  DataOutPort     from_scan_out_le_strobe_en {
    Source from_scan_out_le_strobe_en_shift_reg;
  }
  DataOutPort     total_shift_cnt_minus_one[27:0] {
    Source total_shift_cnt_minus_one_shift_reg;
  }
  DataOutPort     extra_shift_packets[27:0] {
    Source extra_shift_packets_shift_reg;
  }
  DataOutPort     packet_size[15:0] {
    Source packet_size_shift_reg;
  }
  DataOutPort     force_suppress_capture {
    Source force_suppress_capture_shift_reg;
  }
  DataOutPort     initial_bit0_position[4:0] {
    Source initial_bit0_position_shift_reg;
  }
  DataOutPort     on_chip_compare_enable {
    Source on_chip_compare_enable_shift_reg;
  }
  DataOutPort     disable_on_chip_compare_contribution {
    Source disable_on_chip_compare_contribution_shift_reg;
  }
  DataOutPort     on_chip_compare_group_count[7:0] {
    Source on_chip_compare_group_count_shift_reg;
  }
  DataOutPort     on_chip_compare_group[7:0] {
    Source on_chip_compare_group_shift_reg;
  }
  DataOutPort     loop_back_en {
    Source loop_back_en_shift_reg;
  }
  DataOutPort     capture_packets[2:0] {
    Source capture_packets_shift_reg;
  }
  DataOutPort     init_scan_load_used {
    Source init_scan_load_used_shift_reg;
  }
  DataOutPort     disable_first_scan_load_masking {
    Source disable_first_scan_load_masking_shift_reg;
  }
  DataOutPort     packets_per_capture_clock_minus_one[2:0] {
    Source packets_per_capture_clock_minus_one_shift_reg;
  }
  DataOutPort     scan_en_transition_packets[3:0] {
    Source scan_en_transition_packets_shift_reg;
  }
  DataOutPort     scan_en_launch_packet[3:0] {
    Source scan_en_launch_packet_shift_reg;
  }
  DataOutPort     edt_update_falling_transition_words[3:0] {
    Source edt_update_falling_transition_words_shift_reg;
  }
  DataOutPort     edt_update_falling_launch_word[3:0] {
    Source edt_update_falling_launch_word_shift_reg;
  }
  DataOutPort     min_shift_clock_low_width[5:0] {
    Source min_shift_clock_low_width_shift_reg;
  }
  DataOutPort     min_capture_clock_low_width[5:0] {
    Source min_capture_clock_low_width_shift_reg;
  }
  DataOutPort     packet_width_is_less_than_two_bus_clock {
    Source packet_width_is_less_than_two_bus_clock_shift_reg;
  }
  DataOutPort     infinite_shift_mode {
    Source infinite_shift_mode_signal;
  }
  DataOutPort     streaming_through_ijtag_en {
    Source streaming_through_ijtag_en_shift_reg;
  }
 
  ScanMux config_sib_si_mux SelectedBy config_sib_shift_reg,enable_shift_reg {
    2'b11 : bus_out_shift_reg[0];
    2'bxx : ijtag_si;
  }
 
  ScanRegister    config_sib_shift_reg {
    Attribute tessent_ssn_function = "config_inclusion_bit";
    Attribute tessent_rtl_reg = "config_sib";
    ScanInSource  config_sib_si_mux;
    ResetValue    1'b0;
  }
 
  Alias           sticky_status = config_sib_shift_reg {
    RefEnum pass_fail_1bit_wide;
  }
  Enum pass_fail_1bit_wide {
    pass = 1'b0;
    fail = 1'b1;
  }
 
  ScanRegister    enable_shift_reg {
    Attribute tessent_ssn_function = "ssh_enable";
    Attribute tessent_rtl_reg = "enable_update_stage";
    ScanInSource  streaming_through_ijtag_en_si_mux;
    CaptureSource enable_shift_reg;
    ResetValue 1'b0;
  }
  ScanRegister    fake_data_bus_reg {
    Attribute tessent_ignore_during_icl_verification = "on";
    ScanInSource ijtag_si;
  } 
  ScanMux         streaming_through_ijtag_en_si_mux SelectedBy streaming_through_ijtag_en_si_mux_select {
    1'b0 : config_sib_shift_reg;
    1'b1 : fake_data_bus_reg;
  }
  LogicSignal streaming_through_ijtag_en_si_mux_select {
    streaming_through_ijtag_en_shift_reg && enable_shift_reg;
  }
  ScanRegister    streaming_through_ijtag_en_shift_reg {
    Attribute tessent_ssn_function = "streaming_through_ijtag_enable";
    Attribute tessent_rtl_reg = "streaming_through_ijtag_en_update_stage";
    Attribute explicit_iwrite_only = 1'b1;
    ScanInSource enable_shift_reg;
    ResetValue 1'b0;
  }
  ScanRegister    initial_offset_shift_reg[30:0] {
    Attribute tessent_rtl_reg = "initial_offset_shift_reg[30:0]";
    ScanInSource streaming_through_ijtag_en_shift_reg;
    CaptureSource initial_offset_shift_reg[30:0];
  }
  ScanRegister    relative_initial_offset_enable_shift_reg {
    Attribute tessent_rtl_reg = "relative_initial_offset_enable_shift_reg";
    ScanInSource initial_offset_shift_reg[0];
    CaptureSource relative_initial_offset_enable_shift_reg;
  }
  ScanRegister    bus_width_shift_reg[4:0] {
    Attribute tessent_rtl_reg = "bus_width_shift_reg[4:0]";
    ScanInSource relative_initial_offset_enable_shift_reg;
    CaptureSource bus_width_shift_reg[4:0];
  }
  ScanRegister    bits_per_packet_shift_reg[8:0] {
    Attribute tessent_rtl_reg = "bits_per_packet_shift_reg[8:0]";
    ScanInSource bus_width_shift_reg[0];
    CaptureSource bits_per_packet_shift_reg[8:0];
  }
  ScanRegister    to_scan_in_bits_shift_reg[2:0] {
    Attribute tessent_rtl_reg = "to_scan_in_bits_shift_reg[2:0]";
    ScanInSource bits_per_packet_shift_reg[0];
    CaptureSource to_scan_in_bits_shift_reg[2:0];
  }
  ScanRegister    from_scan_out_bits_shift_reg[1:0] {
    Attribute tessent_rtl_reg = "from_scan_out_bits_shift_reg[1:0]";
    ScanInSource to_scan_in_bits_shift_reg[0];
    CaptureSource from_scan_out_bits_shift_reg[1:0];
  }
  ScanRegister    from_scan_out_le_strobe_en_shift_reg {
    Attribute tessent_rtl_reg = "from_scan_out_le_strobe_en_shift_reg";
    ScanInSource from_scan_out_bits_shift_reg[0];
    CaptureSource from_scan_out_le_strobe_en_shift_reg;
  }
  ScanRegister    total_shift_cnt_minus_one_shift_reg[27:0] {
    Attribute tessent_rtl_reg = "total_shift_cnt_minus_one_shift_reg[27:0]";
    ScanInSource from_scan_out_le_strobe_en_shift_reg;
    CaptureSource total_shift_cnt_minus_one_shift_reg[27:0];
  }
  ScanRegister    extra_shift_packets_shift_reg[27:0] {
    Attribute tessent_rtl_reg = "extra_shift_packets_shift_reg[27:0]";
    ScanInSource total_shift_cnt_minus_one_shift_reg[0];
    CaptureSource extra_shift_packets_shift_reg[27:0];
  }
  ScanRegister    packet_size_shift_reg[15:0] {
    Attribute tessent_rtl_reg = "packet_size_shift_reg[15:0]";
    ScanInSource extra_shift_packets_shift_reg[0];
    CaptureSource packet_size_shift_reg[15:0];
  }
  ScanRegister    force_suppress_capture_shift_reg {
    Attribute tessent_rtl_reg = "force_suppress_capture_shift_reg";
    ScanInSource packet_size_shift_reg[0];
    CaptureSource force_suppress_capture_shift_reg;
  }
  ScanRegister    initial_bit0_position_shift_reg[4:0] {
    Attribute tessent_rtl_reg = "initial_bit0_position_shift_reg[4:0]";
    ScanInSource force_suppress_capture_shift_reg;
    CaptureSource initial_bit0_position_shift_reg[4:0];
  }
  ScanRegister    on_chip_compare_enable_shift_reg {
    Attribute tessent_rtl_reg = "on_chip_compare_enable_shift_reg";
    ScanInSource initial_bit0_position_shift_reg[0];
    CaptureSource on_chip_compare_enable_shift_reg;
  }
  ScanRegister    disable_on_chip_compare_contribution_shift_reg {
    Attribute tessent_rtl_reg = "disable_on_chip_compare_contribution_shift_reg";
    ScanInSource on_chip_compare_enable_shift_reg;
    CaptureSource disable_on_chip_compare_contribution_shift_reg;
  }
  ScanRegister    on_chip_compare_group_count_shift_reg[7:0] {
    Attribute tessent_rtl_reg = "on_chip_compare_group_count_shift_reg[7:0]";
    ScanInSource disable_on_chip_compare_contribution_shift_reg;
    CaptureSource on_chip_compare_group_count_shift_reg[7:0];
  }
  ScanRegister    on_chip_compare_group_shift_reg[7:0] {
    Attribute tessent_rtl_reg = "on_chip_compare_group_shift_reg[7:0]";
    ScanInSource on_chip_compare_group_count_shift_reg[0];
    CaptureSource on_chip_compare_group_shift_reg[7:0];
  }
  ScanRegister    loop_back_en_shift_reg {
    Attribute tessent_rtl_reg = "loop_back_en_shift_reg";
    ScanInSource on_chip_compare_group_shift_reg[0];
    CaptureSource loop_back_en_shift_reg;
  }
  ScanRegister    capture_packets_shift_reg[2:0] {
    Attribute tessent_rtl_reg = "capture_packets_shift_reg[2:0]";
    ScanInSource loop_back_en_shift_reg;
    CaptureSource capture_packets_shift_reg[2:0];
  }
  ScanRegister    init_scan_load_used_shift_reg {
    Attribute tessent_rtl_reg = "init_scan_load_used_shift_reg";
    ScanInSource capture_packets_shift_reg[0];
    CaptureSource init_scan_load_used_shift_reg;
  }
  ScanRegister    disable_first_scan_load_masking_shift_reg {
    Attribute tessent_rtl_reg = "disable_first_scan_load_masking_shift_reg";
    ScanInSource init_scan_load_used_shift_reg;
    CaptureSource disable_first_scan_load_masking_shift_reg;
  }
  ScanRegister    packets_per_capture_clock_minus_one_shift_reg[2:0] {
    Attribute tessent_rtl_reg = "packets_per_capture_clock_minus_one_shift_reg[2:0]";
    ScanInSource disable_first_scan_load_masking_shift_reg;
    CaptureSource packets_per_capture_clock_minus_one_shift_reg[2:0];
  }
  ScanRegister    scan_en_transition_packets_shift_reg[3:0] {
    Attribute tessent_rtl_reg = "scan_en_transition_packets_shift_reg[3:0]";
    ScanInSource packets_per_capture_clock_minus_one_shift_reg[0];
    CaptureSource scan_en_transition_packets_shift_reg[3:0];
  }
  ScanRegister    scan_en_launch_packet_shift_reg[3:0] {
    Attribute tessent_rtl_reg = "scan_en_launch_packet_shift_reg[3:0]";
    ScanInSource scan_en_transition_packets_shift_reg[0];
    CaptureSource scan_en_launch_packet_shift_reg[3:0];
  }
  ScanRegister    edt_update_falling_transition_words_shift_reg[3:0] {
    Attribute tessent_rtl_reg = "edt_update_falling_transition_words_shift_reg[3:0]";
    ScanInSource scan_en_launch_packet_shift_reg[0];
    CaptureSource edt_update_falling_transition_words_shift_reg[3:0];
  }
  ScanRegister    edt_update_falling_launch_word_shift_reg[3:0] {
    Attribute tessent_rtl_reg = "edt_update_falling_launch_word_shift_reg[3:0]";
    ScanInSource edt_update_falling_transition_words_shift_reg[0];
    CaptureSource edt_update_falling_launch_word_shift_reg[3:0];
  }
  ScanRegister    min_shift_clock_low_width_shift_reg[5:0] {
    Attribute tessent_rtl_reg = "min_shift_clock_low_width_shift_reg[5:0]";
    ScanInSource edt_update_falling_launch_word_shift_reg[0];
    CaptureSource min_shift_clock_low_width_shift_reg[5:0];
  }
  ScanRegister    min_capture_clock_low_width_shift_reg[5:0] {
    Attribute tessent_rtl_reg = "min_capture_clock_low_width_shift_reg[5:0]";
    ScanInSource min_shift_clock_low_width_shift_reg[0];
    CaptureSource min_capture_clock_low_width_shift_reg[5:0];
  }
  ScanRegister    packet_width_is_less_than_two_bus_clock_shift_reg {
    Attribute tessent_rtl_reg = "packet_width_is_less_than_two_bus_clock_shift_reg";
    ScanInSource min_capture_clock_low_width_shift_reg[0];
    CaptureSource packet_width_is_less_than_two_bus_clock_shift_reg;
  }
  LogicSignal     infinite_shift_mode_signal {
    total_shift_cnt_minus_one_shift_reg == 28'b0;
  }
  ScanMux         ijtag_so_mux SelectedBy config_sib_shift_reg,enable_shift_reg {
    Attribute exclude_codes_from_icl_verify = "{2'b01}";
    2'b10 : packet_width_is_less_than_two_bus_clock_shift_reg;
    2'b00 : enable_shift_reg;
    2'b01 : enable_shift_reg;
    2'b11 : enable_shift_reg;
  }
 
  ScanRegister bus_in_shift_reg[19:0] {
    ScanInSource  ijtag_si;
  }
  ScanRegister bus_out_shift_reg[19:0] {
    ScanInSource  bus_in_shift_reg[0];
  }
  Attribute tessent_instrument_type      = "mentor::ssn";
  Attribute tessent_instrument_subtype   = "scan_host_ijtag_reg";
  Attribute tessent_signature            = "bd017ff4cfbddc76498e812526869e32";
}
