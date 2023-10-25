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

module firebird7_in_gate2_tessent_ssn_scan_host_ssh (
  // Stream bus signals
  input wire             bus_clock,
  input wire  [19:0]     bus_data_in,
  output wire [19:0]     bus_data_out,
 
  // IJTAG signals
  input wire             ijtag_reset,
  input wire             ijtag_tck,
  input wire             ijtag_sel,
  input wire             ijtag_ce,
  input wire             ijtag_se,
  input wire             ijtag_ue,
  input wire             ijtag_si,
  output wire            ijtag_so,
  // Scan host interface
  output wire            scan_en,
  output wire            edt_update,
  output wire            edt_clock,
  output wire            shift_capture_clock,
  output wire [3:0]      to_scan_in,
  input wire  [1:0]      from_scan_out 
);
   
// Wire declarations
wire                  enable;
wire                  scan_en_from_fsm;
wire                  edt_update_from_fsm;
wire                  edt_clock_en;
wire                  ext_capture_mode;
wire                  init_scan_load_used;
wire                  disable_first_scan_load_masking;
wire [30:0]           initial_offset;
wire                  relative_initial_offset_enable;
wire [4:0]            bus_width;
wire [8:0]            bits_per_packet;
wire [2:0]            to_scan_in_bits;
wire [1:0]            from_scan_out_bits;
wire [1:0]            from_scan_out_en_per_bit;
wire [27:0]           total_shift_cnt_minus_one;
wire [27:0]           extra_shift_packets;
wire [15:0]           packet_size;
wire                  force_suppress_capture;
wire [4:0]            initial_bit0_position;
wire [2:0]            capture_packets;
wire [2:0]            packets_per_capture_clock_minus_one;
wire                  enable_sync;
wire                  start_of_packet;
wire [4:0]            in_bit0_position_in_first_bus_word;
wire [8:0]            in_bits_in_remaining_bus_words;
wire [9:0]            received_in_bit_cnt;
wire                  last_in_bits_in_current_bus_word;
wire                  ready_to_shift;
wire                  ready_to_capture;
wire                  edt_clock_en_from_fsm;
wire                  pulse_width_packet_cnt_is_zero;
wire                  shift_clock_en;
wire                  select_capture_clock_low_width;
wire                  capture_clock_en;
wire [3:0]            scan_en_transition_packets;
wire [3:0]            scan_en_launch_packet;
wire                  scan_en_launch_packet_equal_transition_packets;
wire [3:0]            edt_update_falling_transition_words;
wire [3:0]            edt_update_falling_launch_word;
wire [5:0]            min_shift_clock_low_width;
wire                  min_shift_clock_low_width_is_zero;
wire [5:0]            min_capture_clock_low_width;
wire                  min_capture_clock_low_width_is_zero;
wire                  packet_width_is_less_than_two_bus_clock;
wire                  infinite_shift_mode;
wire                  last_scan_load_is_done;
wire                  use_div_shift_clocks;
wire                  to_scan_in0_d;
wire [19:0]           drive_bus_out_gated;
wire                  drive_bus_out_disable;
wire [7:0]            in_bit_storage_en;
wire                  on_chip_compare_enable;
wire                  disable_on_chip_compare_contribution;
wire [1:0]            compare_en;
wire [7:0]            on_chip_compare_group_count;
wire [7:0]            on_chip_compare_group;
wire                  compare_status_sticky;
wire                  first_shift_packet_drive_out;
wire                  clear_sticky_status;
wire [4:0]            next_to_scan_word_bits_in_bus;
wire [4:0]            start_of_next_to_scan_word_in_bus;
wire                  have_in_bits_in_remaining_bus_words;
wire                  the_next_to_scan_word_starts_in_bus;
wire                  loop_back_en;
wire                  bus_register_ijtag_access_en;
wire                  ssn_bus_data_in19_muxed_with_ijtag_si;
wire                  tck_enable;
wire                  tck_clock_gated;
wire                  ssn_bus_clock_muxed_with_tck;
wire                  streaming_through_ijtag_en;
wire                  ssn_bus_data_in0_muxed_with_ijtag_si;
wire [1:0]            first_status_in_bus_below_packet_boundary;
wire [4:0]            start_of_status_in_bus_below_packet_boundary;
wire [1:0]            first_status_in_bus_above_packet_boundary_current_word;
wire [4:0]            start_of_status_in_bus_above_packet_boundary_current_word;
wire [1:0]            first_status_in_bus_above_packet_boundary_next_word;
wire [4:0]            start_of_status_in_bus_above_packet_boundary_next_word;
wire                  status_exists_below_packet_boundary;
wire                  status_exists_above_packet_boundary_current_word;
wire                  status_exists_above_packet_boundary_next_word;
wire [1:0]            use_expected_storage;
wire [1:0]            use_mask_storage;
wire [1:0]            use_from_scan_out_storage_for_status;
wire [2:0]            total_to_scan_in_bits;
wire [1:0]            total_from_scan_out_bits;
wire                  inject_tck_as_capture_clock;
// EDT host interface
wire                  scan_en_int;
wire [3:0]            to_scan_in_int;
wire [1:0]            from_scan_out_int;
wire [1:0]            from_scan_out_selected;
wire                  from_scan_out_le_strobe_en;
wire                  scan_en_gated;
wire                  shift_capture_clock_div_will_rise;
wire                  enable_sync_reset;
wire                  bus_sync_reset_pulse;
wire                  bus_enable_sync_reset;
 
assign bus_enable_sync_reset = ~ijtag_reset;
 
wire                  bus_clock_int;
wire [19:0]           bus_data_in_int;
wire [19:0]           bus_data_out_int;
 
i0scbf000ab1n02x5 tessent_persistent_cell_bus_clock_buf (
  .clk                        ( bus_clock               ),
  .clkout                     ( bus_clock_int           )
);
 
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_19 (
  .a                          ( bus_data_in[19]         ),
  .o                          ( bus_data_in_int[19]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_18 (
  .a                          ( bus_data_in[18]         ),
  .o                          ( bus_data_in_int[18]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_17 (
  .a                          ( bus_data_in[17]         ),
  .o                          ( bus_data_in_int[17]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_16 (
  .a                          ( bus_data_in[16]         ),
  .o                          ( bus_data_in_int[16]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_15 (
  .a                          ( bus_data_in[15]         ),
  .o                          ( bus_data_in_int[15]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_14 (
  .a                          ( bus_data_in[14]         ),
  .o                          ( bus_data_in_int[14]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_13 (
  .a                          ( bus_data_in[13]         ),
  .o                          ( bus_data_in_int[13]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_12 (
  .a                          ( bus_data_in[12]         ),
  .o                          ( bus_data_in_int[12]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_11 (
  .a                          ( bus_data_in[11]         ),
  .o                          ( bus_data_in_int[11]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_10 (
  .a                          ( bus_data_in[10]         ),
  .o                          ( bus_data_in_int[10]     )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_9 (
  .a                          ( bus_data_in[9]          ),
  .o                          ( bus_data_in_int[9]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_8 (
  .a                          ( bus_data_in[8]          ),
  .o                          ( bus_data_in_int[8]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_7 (
  .a                          ( bus_data_in[7]          ),
  .o                          ( bus_data_in_int[7]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_6 (
  .a                          ( bus_data_in[6]          ),
  .o                          ( bus_data_in_int[6]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_5 (
  .a                          ( bus_data_in[5]          ),
  .o                          ( bus_data_in_int[5]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_4 (
  .a                          ( bus_data_in[4]          ),
  .o                          ( bus_data_in_int[4]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_3 (
  .a                          ( bus_data_in[3]          ),
  .o                          ( bus_data_in_int[3]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_2 (
  .a                          ( bus_data_in[2]          ),
  .o                          ( bus_data_in_int[2]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_1 (
  .a                          ( bus_data_in[1]          ),
  .o                          ( bus_data_in_int[1]      )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_in_buf_0 (
  .a                          ( bus_data_in[0]          ),
  .o                          ( bus_data_in_int[0]      )
);
 
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_19 (
  .a                          ( bus_data_out_int[19]    ),
  .o                          ( bus_data_out[19]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_18 (
  .a                          ( bus_data_out_int[18]    ),
  .o                          ( bus_data_out[18]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_17 (
  .a                          ( bus_data_out_int[17]    ),
  .o                          ( bus_data_out[17]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_16 (
  .a                          ( bus_data_out_int[16]    ),
  .o                          ( bus_data_out[16]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_15 (
  .a                          ( bus_data_out_int[15]    ),
  .o                          ( bus_data_out[15]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_14 (
  .a                          ( bus_data_out_int[14]    ),
  .o                          ( bus_data_out[14]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_13 (
  .a                          ( bus_data_out_int[13]    ),
  .o                          ( bus_data_out[13]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_12 (
  .a                          ( bus_data_out_int[12]    ),
  .o                          ( bus_data_out[12]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_11 (
  .a                          ( bus_data_out_int[11]    ),
  .o                          ( bus_data_out[11]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_10 (
  .a                          ( bus_data_out_int[10]    ),
  .o                          ( bus_data_out[10]        )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_9 (
  .a                          ( bus_data_out_int[9]     ),
  .o                          ( bus_data_out[9]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_8 (
  .a                          ( bus_data_out_int[8]     ),
  .o                          ( bus_data_out[8]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_7 (
  .a                          ( bus_data_out_int[7]     ),
  .o                          ( bus_data_out[7]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_6 (
  .a                          ( bus_data_out_int[6]     ),
  .o                          ( bus_data_out[6]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_5 (
  .a                          ( bus_data_out_int[5]     ),
  .o                          ( bus_data_out[5]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_4 (
  .a                          ( bus_data_out_int[4]     ),
  .o                          ( bus_data_out[4]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_3 (
  .a                          ( bus_data_out_int[3]     ),
  .o                          ( bus_data_out[3]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_2 (
  .a                          ( bus_data_out_int[2]     ),
  .o                          ( bus_data_out[2]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_1 (
  .a                          ( bus_data_out_int[1]     ),
  .o                          ( bus_data_out[1]         )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_bus_data_out_buf_0 (
  .a                          ( bus_data_out_int[0]     ),
  .o                          ( bus_data_out[0]         )
);
 
reg                            enable_sync_reset_ff;
 
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    enable_sync_reset_ff <= 1'b0;
  end else begin
    enable_sync_reset_ff <= ijtag_ue && ijtag_sel;
  end
end
 
assign enable_sync_reset = ~ijtag_reset | enable_sync_reset_ff;
 
i0sbfn000ab1n02x5 tessent_persistent_cell_scan_en_buf (
  .a      ( scan_en_gated                               ),
  .o      ( scan_en                                     )
);
assign scan_en_gated = enable & scan_en_int;
 
i0sbfn000ab1n02x5 tessent_persistent_cell_to_scan_in_0_buf (
  .a      ( to_scan_in_int[0]                           ),
  .o      ( to_scan_in[0]                               )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_to_scan_in_1_buf (
  .a      ( to_scan_in_int[1]                           ),
  .o      ( to_scan_in[1]                               )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_to_scan_in_2_buf (
  .a      ( to_scan_in_int[2]                           ),
  .o      ( to_scan_in[2]                               )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_to_scan_in_3_buf (
  .a      ( to_scan_in_int[3]                           ),
  .o      ( to_scan_in[3]                               )
);
   
assign from_scan_out_selected[0] = (loop_back_en && enable_sync) ? to_scan_in[0] : from_scan_out[0];
i0sand002ab1n02x5 tessent_persistent_cell_from_scan_out_0_and (
  .a      ( from_scan_out_selected[0]                   ),
  .b      ( from_scan_out_en_per_bit[0]                 ),
  .o      ( from_scan_out_int[0]                        )
);
assign from_scan_out_selected[1] = (loop_back_en && enable_sync) ? to_scan_in[1] : from_scan_out[1];
i0sand002ab1n02x5 tessent_persistent_cell_from_scan_out_1_and (
  .a      ( from_scan_out_selected[1]                   ),
  .b      ( from_scan_out_en_per_bit[1]                 ),
  .o      ( from_scan_out_int[1]                        )
);
 
assign tck_enable = streaming_through_ijtag_en || bus_register_ijtag_access_en;
    
i0scilb01ab1n02x5 tessent_persistent_cell_tck_clock_gater (
  .clkout                                              ( tck_clock_gated  ),
  .clk    ( ijtag_tck                                   ),
  .en     ( ijtag_sel && ijtag_se && tck_enable         ),
  .te     ( ijtag_sel && ijtag_se && tck_enable         )
);
i0scmbn22ab1n02x5 tessent_persistent_cell_ssn_bus_clock_mux (
  .clkout                                              ( ssn_bus_clock_muxed_with_tck  ),
  .s      ( tck_enable                                  ),
  .clk2   ( bus_clock_int                               ),
  .clk1   ( tck_clock_gated                             )
);
assign ssn_bus_data_in0_muxed_with_ijtag_si = (streaming_through_ijtag_en) ? ijtag_si : bus_data_in_int[0];
assign ssn_bus_data_in19_muxed_with_ijtag_si = (bus_register_ijtag_access_en) ? ijtag_si : bus_data_in_int[19];
 
firebird7_in_gate2_tessent_ssn_scan_host_ssh_clock_gen clock_gen (
  .clock                                                       ( ssn_bus_clock_muxed_with_tck                                ),
  .enable_sync                                                 ( enable_sync                                                 ),
  .loop_back_en                                                ( loop_back_en                                                ),
  .ready_to_shift                                              ( ready_to_shift                                              ),
  .ready_to_capture                                            ( ready_to_capture                                            ),
  .ext_capture_mode                                            ( ext_capture_mode                                            ),
  .pulse_width_packet_cnt_is_zero                              ( pulse_width_packet_cnt_is_zero                              ),
  .edt_update_in                                               ( edt_update_from_fsm                                         ),
  .scan_en_in                                                  ( scan_en_from_fsm                                            ),
  .edt_clock_en_in                                             ( edt_clock_en_from_fsm                                       ),
  .last_in_bits_in_current_bus_word                            ( last_in_bits_in_current_bus_word                            ),
  .last_scan_load_is_done                                      ( last_scan_load_is_done                                      ),
  .min_shift_clock_low_width                                   ( min_shift_clock_low_width                                   ),
  .min_capture_clock_low_width                                 ( min_capture_clock_low_width                                 ),
  .min_capture_clock_low_width_is_zero                         ( min_capture_clock_low_width_is_zero                         ),
  .packet_width_is_less_than_two_bus_clock                     ( packet_width_is_less_than_two_bus_clock                     ),
  .packets_per_capture_clock_minus_one                         ( packets_per_capture_clock_minus_one                         ),
  .extra_shift_packets                                         ( extra_shift_packets                                         ),
  .scan_en_launch_packet_equal_transition_packets              ( scan_en_launch_packet_equal_transition_packets              ),
  .use_div_shift_clocks                                        ( use_div_shift_clocks                                        ),
  .shift_clock_en                                              ( shift_clock_en                                              ),
  .select_capture_clock_low_width                              ( select_capture_clock_low_width                              ),
  .inject_tck_as_capture_clock                                 ( inject_tck_as_capture_clock                                 ),
  .ijtag_clock                                                 ( ijtag_tck                                                   ),
  .scan_en                                                     ( scan_en_int                                                 ),
  .edt_update                                                  ( edt_update                                                  ),
  .edt_clock                                                   ( edt_clock                                                   ),
  .shift_capture_clock                                         ( shift_capture_clock                                         ),
  .shift_capture_clock_div_will_rise                           ( shift_capture_clock_div_will_rise                           ),
  .min_shift_clock_low_width_is_zero                           ( min_shift_clock_low_width_is_zero                           )
);
 
firebird7_in_gate2_tessent_ssn_scan_host_ssh_fsm fsm (
  .clock                                                       ( ssn_bus_clock_muxed_with_tck                                ),
  .ijtag_se                                                    ( ijtag_se                                                    ),
  .ijtag_sel                                                   ( ijtag_sel                                                   ),
  .ijtag_clock                                                 ( ijtag_tck                                                   ),
  .streaming_through_ijtag_en                                  ( streaming_through_ijtag_en                                  ),
  .scan_en_from_fsm                                            ( scan_en_from_fsm                                            ),
  .edt_update_from_fsm                                         ( edt_update_from_fsm                                         ),
  .edt_clock_en_from_fsm                                       ( edt_clock_en_from_fsm                                       ),
  .capture_packets                                             ( capture_packets                                             ),
  .packets_per_capture_clock_minus_one                         ( packets_per_capture_clock_minus_one                         ),
  .ready_to_shift                                              ( ready_to_shift                                              ),
  .ready_to_capture                                            ( ready_to_capture                                            ),
  .ext_capture_mode                                            ( ext_capture_mode                                            ),
  .pulse_width_packet_cnt_is_zero                              ( pulse_width_packet_cnt_is_zero                              ),
  .enable                                                      ( enable                                                      ),
  .enable_sync_reset                                           ( enable_sync_reset                                           ),
  .enable_sync                                                 ( enable_sync                                                 ),
  .bus_register_ijtag_access_en                                ( bus_register_ijtag_access_en                                ),
  .bus_enable_sync_reset                                       ( bus_enable_sync_reset                                       ),
  .bus_sync_reset_pulse                                        ( bus_sync_reset_pulse                                        ),
  .initial_offset                                              ( initial_offset                                              ),
  .bus_in0                                                     ( ssn_bus_data_in0_muxed_with_ijtag_si                        ),
  .relative_initial_offset_enable                              ( relative_initial_offset_enable                              ),
  .bus_width                                                   ( bus_width                                                   ),
  .bits_per_packet                                             ( bits_per_packet                                             ),
  .init_scan_load_used                                         ( init_scan_load_used                                         ),
  .disable_first_scan_load_masking                             ( disable_first_scan_load_masking                             ),
  .to_scan_in_bits                                             ( to_scan_in_bits                                             ),
  .from_scan_out_bits                                          ( from_scan_out_bits                                          ),
  .total_shift_cnt_minus_one                                   ( total_shift_cnt_minus_one                                   ),
  .extra_shift_packets                                         ( extra_shift_packets                                         ),
  .packet_size                                                 ( packet_size                                                 ),
  .force_suppress_capture                                      ( force_suppress_capture                                      ),
  .initial_bit0_position                                       ( initial_bit0_position                                       ),
  .min_capture_clock_low_width_is_zero                         ( min_capture_clock_low_width_is_zero                         ),
  .on_chip_compare_enable                                      ( on_chip_compare_enable                                      ),
  .on_chip_compare_group_count                                 ( on_chip_compare_group_count                                 ),
  .on_chip_compare_group                                       ( on_chip_compare_group                                       ),
  .first_status_in_bus_below_packet_boundary                   ( first_status_in_bus_below_packet_boundary                   ),
  .start_of_status_in_bus_below_packet_boundary                ( start_of_status_in_bus_below_packet_boundary                ),
  .first_status_in_bus_above_packet_boundary_current_word      ( first_status_in_bus_above_packet_boundary_current_word      ),
  .start_of_status_in_bus_above_packet_boundary_current_word   ( start_of_status_in_bus_above_packet_boundary_current_word   ),
  .first_status_in_bus_above_packet_boundary_next_word         ( first_status_in_bus_above_packet_boundary_next_word         ),
  .start_of_status_in_bus_above_packet_boundary_next_word      ( start_of_status_in_bus_above_packet_boundary_next_word      ),
  .status_exists_below_packet_boundary                         ( status_exists_below_packet_boundary                         ),
  .status_exists_above_packet_boundary_current_word            ( status_exists_above_packet_boundary_current_word            ),
  .status_exists_above_packet_boundary_next_word               ( status_exists_above_packet_boundary_next_word               ),
  .use_expected_storage                                        ( use_expected_storage                                        ),
  .use_mask_storage                                            ( use_mask_storage                                            ),
  .use_from_scan_out_storage_for_status                        ( use_from_scan_out_storage_for_status                        ),
  .compare_en_gated                                            ( compare_en                                                  ),
  .total_to_scan_in_bits                                       ( total_to_scan_in_bits                                       ),
  .total_from_scan_out_bits                                    ( total_from_scan_out_bits                                    ),
  .first_shift_packet_drive_out                                ( first_shift_packet_drive_out                               ),
  .clear_sticky_status                                         ( clear_sticky_status                                         ),
  .scan_en_transition_packets                                  ( scan_en_transition_packets                                  ),
  .scan_en_launch_packet                                       ( scan_en_launch_packet                                       ),
  .scan_en_launch_packet_equal_transition_packets              ( scan_en_launch_packet_equal_transition_packets              ),
  .edt_update_falling_transition_words                         ( edt_update_falling_transition_words                         ),
  .edt_update_falling_launch_word                              ( edt_update_falling_launch_word                              ),
  .to_scan_in0_d                                               ( to_scan_in0_d                                               ),
  .start_of_packet                                             ( start_of_packet                                             ),
  .in_bit0_position_in_first_bus_word                          ( in_bit0_position_in_first_bus_word                          ),
  .in_bits_in_remaining_bus_words                              ( in_bits_in_remaining_bus_words                              ),
  .received_in_bit_cnt                                         ( received_in_bit_cnt                                         ),
  .last_in_bits_in_current_bus_word                            ( last_in_bits_in_current_bus_word                            ),
  .drive_bus_out_gated                                         ( drive_bus_out_gated                                         ),
  .drive_bus_out_disable                                       ( drive_bus_out_disable                                       ),
  .in_bit_storage_en                                           ( in_bit_storage_en                                           ),
  .loop_back_en                                                ( loop_back_en                                                ),
  .select_capture_clock_low_width                              ( select_capture_clock_low_width                              ),
  .next_to_scan_word_bits_in_bus                               ( next_to_scan_word_bits_in_bus                               ),
  .start_of_next_to_scan_word_in_bus                           ( start_of_next_to_scan_word_in_bus                           ),
  .have_in_bits_in_remaining_bus_words                         ( have_in_bits_in_remaining_bus_words                         ),
  .the_next_to_scan_word_starts_in_bus                         ( the_next_to_scan_word_starts_in_bus                         ),
  .inject_tck_as_capture_clock                                 ( inject_tck_as_capture_clock                                 ),
  .infinite_shift_mode                                         ( infinite_shift_mode                                         ),
  .last_scan_load_is_done                                      ( last_scan_load_is_done                                      )
);
 
firebird7_in_gate2_tessent_ssn_scan_host_ssh_ijtag_registers ijtag_registers (
  .ijtag_reset                                                 ( ijtag_reset                                                 ),
  .ijtag_clock                                                 ( ijtag_tck                                                   ),
  .ijtag_sel                                                   ( ijtag_sel                                                   ),
  .ijtag_ce                                                    ( ijtag_ce                                                    ),
  .ijtag_se                                                    ( ijtag_se                                                    ),
  .ijtag_ue                                                    ( ijtag_ue                                                    ),
  .ijtag_si                                                    ( ijtag_si                                                    ),
  .ijtag_so                                                    ( ijtag_so                                                    ),
  .enable                                                      ( enable                                                      ),
  .enable_sync                                                 ( enable_sync                                                 ),
  .initial_offset                                              ( initial_offset                                              ),
  .relative_initial_offset_enable                              ( relative_initial_offset_enable                              ),
  .bus_width                                                   ( bus_width                                                   ),
  .bits_per_packet                                             ( bits_per_packet                                             ),
  .init_scan_load_used                                         ( init_scan_load_used                                         ),
  .disable_first_scan_load_masking                             ( disable_first_scan_load_masking                             ),
  .to_scan_in_bits                                             ( to_scan_in_bits                                             ),
  .from_scan_out_bits                                          ( from_scan_out_bits                                          ),
  .from_scan_out_le_strobe_en                                  ( from_scan_out_le_strobe_en                                  ),
  .total_shift_cnt_minus_one                                   ( total_shift_cnt_minus_one                                   ),
  .extra_shift_packets                                         ( extra_shift_packets                                         ),
  .packet_size                                                 ( packet_size                                                 ),
  .force_suppress_capture                                      ( force_suppress_capture                                      ),
  .initial_bit0_position                                       ( initial_bit0_position                                       ),
  .on_chip_compare_enable                                      ( on_chip_compare_enable                                      ),
  .disable_on_chip_compare_contribution                        ( disable_on_chip_compare_contribution                        ),
  .on_chip_compare_group_count                                 ( on_chip_compare_group_count                                 ),
  .on_chip_compare_group                                       ( on_chip_compare_group                                       ),
  .compare_status_sticky                                       ( compare_status_sticky                                       ),
  .loop_back_en                                                ( loop_back_en                                                ),
  .streaming_through_ijtag_en                                  ( streaming_through_ijtag_en                                  ),
  .bus_data_out0                                               ( bus_data_out_int[0]                                         ),
  .bus_register_ijtag_access_en                                ( bus_register_ijtag_access_en                                ),
  .capture_packets                                             ( capture_packets                                             ),
  .packets_per_capture_clock_minus_one                         ( packets_per_capture_clock_minus_one                         ),
  .scan_en_transition_packets                                  ( scan_en_transition_packets                                  ),
  .scan_en_launch_packet                                       ( scan_en_launch_packet                                       ),
  .edt_update_falling_transition_words                         ( edt_update_falling_transition_words                         ),
  .edt_update_falling_launch_word                              ( edt_update_falling_launch_word                              ),
  .min_shift_clock_low_width                                   ( min_shift_clock_low_width                                   ),
  .min_capture_clock_low_width                                 ( min_capture_clock_low_width                                 ),
  .packet_width_is_less_than_two_bus_clock                     ( packet_width_is_less_than_two_bus_clock                     ),
  .infinite_shift_mode                                         ( infinite_shift_mode                                         )
);
 
firebird7_in_gate2_tessent_ssn_scan_host_ssh_datapath datapath (
  .bus_register_ijtag_access_en                                ( bus_register_ijtag_access_en                                ),
  .ijtag_se                                                    ( ijtag_se                                                    ),
  .clock                                                       ( ssn_bus_clock_muxed_with_tck                                ),
  .bus_in                                                      ( {ssn_bus_data_in19_muxed_with_ijtag_si,bus_data_in_int[18:1],ssn_bus_data_in0_muxed_with_ijtag_si}  ),
  .bus_out                                                     ( bus_data_out_int                                            ),
  .shift_capture_clock_div_will_rise                           ( shift_capture_clock_div_will_rise                           ),
  .to_scan_in                                                  ( to_scan_in_int                                              ),
  .to_scan_in0_d                                               ( to_scan_in0_d                                               ),
  .from_scan_out                                               ( from_scan_out_int                                           ),
  .from_scan_out_le_strobe_en                                  ( from_scan_out_le_strobe_en                                  ),
  .from_scan_out_en_per_bit                                    ( from_scan_out_en_per_bit                                    ),
  .to_scan_in_bits                                             ( to_scan_in_bits                                             ),
  .from_scan_out_bits                                          ( from_scan_out_bits                                          ),
  .min_shift_clock_low_width_is_zero                           ( min_shift_clock_low_width_is_zero                           ),
  .start_of_packet                                             ( start_of_packet                                             ),
  .in_bit0_position_in_first_bus_word                          ( in_bit0_position_in_first_bus_word                          ),
  .in_bits_in_remaining_bus_words                              ( in_bits_in_remaining_bus_words                              ),
  .received_in_bit_cnt                                         ( received_in_bit_cnt                                         ),
  .bus_width                                                   ( bus_width                                                   ),
  .on_chip_compare_enable                                      ( on_chip_compare_enable                                      ),
  .disable_on_chip_compare_contribution                        ( disable_on_chip_compare_contribution                        ),
  .first_status_in_bus_below_packet_boundary                   ( first_status_in_bus_below_packet_boundary                   ),
  .start_of_status_in_bus_below_packet_boundary                ( start_of_status_in_bus_below_packet_boundary                ),
  .first_status_in_bus_above_packet_boundary_current_word      ( first_status_in_bus_above_packet_boundary_current_word      ),
  .start_of_status_in_bus_above_packet_boundary_current_word   ( start_of_status_in_bus_above_packet_boundary_current_word   ),
  .first_status_in_bus_above_packet_boundary_next_word         ( first_status_in_bus_above_packet_boundary_next_word         ),
  .start_of_status_in_bus_above_packet_boundary_next_word      ( start_of_status_in_bus_above_packet_boundary_next_word      ),
  .status_exists_below_packet_boundary                         ( status_exists_below_packet_boundary                         ),
  .status_exists_above_packet_boundary_current_word            ( status_exists_above_packet_boundary_current_word            ),
  .status_exists_above_packet_boundary_next_word               ( status_exists_above_packet_boundary_next_word               ),
  .use_expected_storage                                        ( use_expected_storage                                        ),
  .use_mask_storage                                            ( use_mask_storage                                            ),
  .use_from_scan_out_storage_for_status                        ( use_from_scan_out_storage_for_status                        ),
  .compare_en                                                  ( compare_en                                                  ),
  .compare_status_sticky                                       ( compare_status_sticky                                       ),
  .total_to_scan_in_bits                                       ( total_to_scan_in_bits                                       ),
  .total_from_scan_out_bits                                    ( total_from_scan_out_bits                                    ),
  .first_shift_packet_drive_out                                ( first_shift_packet_drive_out                               ),
  .clear_sticky_status                                         ( clear_sticky_status                                         ),
  .bus_sync_reset_pulse                                        ( bus_sync_reset_pulse                                        ),
  .enable_sync                                                 ( enable_sync                                                 ),
  .last_in_bits_in_current_bus_word                            ( last_in_bits_in_current_bus_word                            ),
  .drive_bus_out_gated                                         ( drive_bus_out_gated                                         ),
  .drive_bus_out_disable                                       ( drive_bus_out_disable                                       ),
  .use_div_shift_clocks                                        ( use_div_shift_clocks                                        ),
  .shift_clock_en                                              ( shift_clock_en                                              ),
  .in_bit_storage_en                                           ( in_bit_storage_en                                           ),
  .start_of_next_to_scan_word_in_bus                           ( start_of_next_to_scan_word_in_bus                           ),
  .have_in_bits_in_remaining_bus_words                         ( have_in_bits_in_remaining_bus_words                         ),
  .the_next_to_scan_word_starts_in_bus                         ( the_next_to_scan_word_starts_in_bus                         ),
  .next_to_scan_word_bits_in_bus                               ( next_to_scan_word_bits_in_bus                               )
);
 
endmodule
 
module firebird7_in_gate2_tessent_ssn_scan_host_ssh_datapath (
  input wire             bus_register_ijtag_access_en,
  input wire             ijtag_se,
  input wire             clock,
  input wire  [19:0]     bus_in,
  output wire [19:0]     bus_out,
  output wire [3:0]      to_scan_in,
  output reg             to_scan_in0_d,
  input wire  [1:0]      from_scan_out,
  input wire             from_scan_out_le_strobe_en,
  output wire [1:0]      from_scan_out_en_per_bit,
  input wire  [2:0]      to_scan_in_bits,
  input wire  [1:0]      from_scan_out_bits,
  input wire             min_shift_clock_low_width_is_zero,
  input wire             shift_capture_clock_div_will_rise,
  input wire             start_of_packet,
  input wire  [4:0]      in_bit0_position_in_first_bus_word,
  input wire  [8:0]      in_bits_in_remaining_bus_words,
  input wire  [9:0]      received_in_bit_cnt,
  input wire  [4:0]      bus_width,
  input wire             on_chip_compare_enable,
  input wire             disable_on_chip_compare_contribution,
  input wire  [1:0]      first_status_in_bus_below_packet_boundary,
  input wire  [4:0]      start_of_status_in_bus_below_packet_boundary,
  input wire  [1:0]      first_status_in_bus_above_packet_boundary_current_word,
  input wire  [4:0]      start_of_status_in_bus_above_packet_boundary_current_word,
  input wire  [1:0]      first_status_in_bus_above_packet_boundary_next_word,
  input wire  [4:0]      start_of_status_in_bus_above_packet_boundary_next_word,
  input wire             status_exists_below_packet_boundary,
  input wire             status_exists_above_packet_boundary_current_word,
  input wire             status_exists_above_packet_boundary_next_word,
  input wire  [1:0]      use_expected_storage,
  input wire  [1:0]      use_mask_storage,
  input wire  [1:0]      use_from_scan_out_storage_for_status,
  input wire  [1:0]      compare_en,
  output reg             compare_status_sticky,
  input wire  [2:0]      total_to_scan_in_bits,
  input wire  [1:0]      total_from_scan_out_bits,
  input wire             first_shift_packet_drive_out,
  input wire             clear_sticky_status,
  input wire             bus_sync_reset_pulse,
  input wire             enable_sync,
  input wire             last_in_bits_in_current_bus_word,
  input wire  [19:0]     drive_bus_out_gated,
  input wire             drive_bus_out_disable,
  input wire             use_div_shift_clocks,
  input wire             shift_clock_en,
  input wire  [7:0]      in_bit_storage_en,
  input wire  [4:0]      start_of_next_to_scan_word_in_bus,
  input wire             have_in_bits_in_remaining_bus_words,
  input wire             the_next_to_scan_word_starts_in_bus,
  input wire  [4:0]      next_to_scan_word_bits_in_bus
);
 
 
// Reg and wire declarations
 
reg  [19:0]              bus_register_in;
reg  [19:0]              bus_register_out;
reg  [19:0]              bus_register_out_d1, bus_register_out_d0;
wire [19:0]              bus_register_out_d;
reg                      in_bit_storage7_d;
reg                      in_bit_storage6_d;
reg                      in_bit_storage5_d;
reg                      in_bit_storage4_d;
reg                      in_bit_storage3_d;
reg                      in_bit_storage2_d;
reg                      in_bit_storage1_d;
reg                      in_bit_storage0_d;
reg                      in_bit_storage7;
reg                      in_bit_storage6;
reg                      in_bit_storage5;
reg                      in_bit_storage4;
reg                      in_bit_storage3;
reg                      in_bit_storage2;
reg                      in_bit_storage1;
reg                      in_bit_storage0;
wire [7:0]               bus_register_shifted_down_next_to_scan_in_word;
wire [7:1]               bus_register_shifted_up_current_to_scan_in_word_in_current_packet;
wire [7:1]               bus_register_shifted_up_current_to_scan_in_word_in_next_packet;
wire [7:1]               bus_register_shifted_up_next_to_scan_in_word_in_next_packet;
wire                     to_scan_in3_en;
wire                     to_scan_in3;
reg                      to_scan_in3_d;
reg                      to_scan_in3_ret_not_for_div;
reg                      to_scan_in3_ret_for_div;
wire                     to_scan_in2_en;
wire                     to_scan_in2;
reg                      to_scan_in2_d;
reg                      to_scan_in2_ret_not_for_div;
reg                      to_scan_in2_ret_for_div;
wire                     to_scan_in1_en;
wire                     to_scan_in1;
reg                      to_scan_in1_d;
reg                      to_scan_in1_ret_not_for_div;
reg                      to_scan_in1_ret_for_div;
wire                     to_scan_in0_en;
wire                     to_scan_in0;
reg                      to_scan_in0_ret_not_for_div;
reg                      to_scan_in0_ret_for_div;
reg  [19:0]              from_scan_out_to_bus_shifted_up;
reg                      from_scan_out_to_bus19;
reg                      from_scan_out_to_bus18;
reg                      from_scan_out_to_bus17;
reg                      from_scan_out_to_bus16;
reg                      from_scan_out_to_bus15;
reg                      from_scan_out_to_bus14;
reg                      from_scan_out_to_bus13;
reg                      from_scan_out_to_bus12;
reg                      from_scan_out_to_bus11;
reg                      from_scan_out_to_bus10;
reg                      from_scan_out_to_bus9;
reg                      from_scan_out_to_bus8;
reg                      from_scan_out_to_bus7;
reg                      from_scan_out_to_bus6;
reg                      from_scan_out_to_bus5;
reg                      from_scan_out_to_bus4;
reg                      from_scan_out_to_bus3;
reg                      from_scan_out_to_bus2;
reg                      from_scan_out_to_bus1;
reg                      from_scan_out_to_bus0;
wire [1:0]               from_scan_out_storage;
reg  [1:0]               from_scan_out_storage_p;
wire [7:0]               in_bit_storage   = {
                                              in_bit_storage7,
                                              in_bit_storage6,
                                              in_bit_storage5,
                                              in_bit_storage4,
                                              in_bit_storage3,
                                              in_bit_storage2,
                                              in_bit_storage1,
                                              in_bit_storage0 
                                            };
   
wire [7:0]               in_bit_storage_d = {
                                              in_bit_storage7_d,
                                              in_bit_storage6_d,
                                              in_bit_storage5_d,
                                              in_bit_storage4_d,
                                              in_bit_storage3_d,
                                              in_bit_storage2_d,
                                              in_bit_storage1_d,
                                              in_bit_storage0_d 
                                            };
wire [1:0]               expected_value;
wire [1:0]               mask_value;
wire [1:0]               expected_value_d;
wire [1:0]               mask_value_d;
wire [1:0]               from_scan_out_for_status_selected;
reg  [1:0]               status_out_value;
wire [1:0]               status_in_value_for_above_packet_boundary_current_word_shifted_up;
wire [1:0]               status_in_value_for_above_packet_boundary_next_word_shifted_up;
wire [1:0]               status_in_value_for_below_packet_boundary_shifted_up;
wire [19:0]              status_to_bus_above_packet_boundary_current_word;
wire [19:0]              status_to_bus_above_packet_boundary_next_word;
wire [19:0]              status_to_bus_below_packet_boundary;
reg  [1:0]               compare_status;
reg  [1:0]               expected_value_selected;
reg  [1:0]               mask_value_selected;
wire [0:0]               from_scan_out_for_status_selected0;
wire [0:0]               from_scan_out_for_status_selected1;
wire [1:0]               from_scan_out_storage_shifted_down_current_word_current_packet;
wire [19:0]              from_scan_out_current_word_shifted_up_next_packet;
wire [19:1]              from_scan_out_next_word_shifted_up;
wire [19:1]              from_scan_out_next_word_shifted_up_next_packet;
wire                     from_scan_out_en;
reg   [1:0]              from_scan_out_ret_p;
reg   [1:0]              from_scan_out_ret_n;
wire  [1:0]              from_scan_out_selected;
wire  [1:0]              from_scan_out_mux;
wire  [1:0]              unused_from_scan_out_bits;
wire  [1:0]              from_scan_out_mask;
reg                      last_in_bits_in_current_bus_word_ret;
  
// Body implementation
assign from_scan_out_en =                    (from_scan_out_le_strobe_en)            ? shift_capture_clock_div_will_rise :
                                             (min_shift_clock_low_width_is_zero)     ? last_in_bits_in_current_bus_word_ret :
                                                                                       last_in_bits_in_current_bus_word;
assign from_scan_out_en_per_bit =            (~enable_sync) ? {2{1'b1}} 
                                                            : {2{from_scan_out_en && ~drive_bus_out_disable}} & from_scan_out_mask;
  
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    from_scan_out_ret_p <= 2'b0;
  end else begin
    if (~from_scan_out_le_strobe_en) begin
      from_scan_out_ret_p <= 2'b0;
    end else if ((!from_scan_out_le_strobe_en && last_in_bits_in_current_bus_word) ||
        ( from_scan_out_le_strobe_en && shift_capture_clock_div_will_rise)) begin
      from_scan_out_ret_p <= from_scan_out;
    end
  end
end
 
// synopsys sync_set_reset "enable_sync"
always @ (negedge clock) begin
  last_in_bits_in_current_bus_word_ret <= last_in_bits_in_current_bus_word && min_shift_clock_low_width_is_zero;
  if (~enable_sync) begin
    from_scan_out_ret_n <= 2'b0;
  end else begin
    if (last_in_bits_in_current_bus_word_ret) begin
      if (from_scan_out_le_strobe_en) begin
        from_scan_out_ret_n <=  from_scan_out_ret_p;
      end else begin
        from_scan_out_ret_n <=  from_scan_out;
      end
    end
  end
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_from_scan_out_mux1 (
      .o                                ( from_scan_out_selected[1]              ),
      .sa                               ( min_shift_clock_low_width_is_zero      ),
      .a                                ( from_scan_out_ret_n[1]                 ),
      .b                                ( from_scan_out_mux[1]                   )
);
 
i0smbn022ab1n02x5 tessent_persistent_cell_from_scan_out_mux0 (
      .o                                ( from_scan_out_selected[0]              ),
      .sa                               ( min_shift_clock_low_width_is_zero      ),
      .a                                ( from_scan_out_ret_n[0]                 ),
      .b                                ( from_scan_out_mux[0]                   )
);
 
 
assign from_scan_out_mux                          = (from_scan_out_le_strobe_en)          ? from_scan_out_ret_p :
                                                                                            from_scan_out;
 
assign unused_from_scan_out_bits                  = 2'd2 - from_scan_out_bits[1:0];
assign from_scan_out_mask                         = {2{1'b1}} << unused_from_scan_out_bits >> unused_from_scan_out_bits;
 
 
 
wire [19:0] bus_register_in_mask = {{20{1'b0}}, {20{1'b1}}} << (bus_width) >> 20;
wire [19:0] enable_sync_or_bus_register_in_mask_gated;
 
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or19 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[19]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[19]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or18 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[18]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[18]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or17 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[17]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[17]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or16 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[16]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[16]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or15 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[15]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[15]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or14 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[14]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[14]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or13 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[13]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[13]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or12 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[12]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[12]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or11 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[11]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[11]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or10 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[10]                         ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[10]    )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or9 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[9]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[9]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or8 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[8]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[8]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or7 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[7]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[7]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or6 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[6]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[6]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or5 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[5]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[5]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or4 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[4]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[4]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or3 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[3]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[3]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or2 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[2]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[2]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or1 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[1]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[1]     )
);
i0sorn002ab1n02x5 tessent_persistent_cell_enable_sync_bus_register_in_mask_or0 (
  .a                                    ( ~enable_sync                                     ),
  .b                                    ( bus_register_in_mask[0]                          ),
  .o                                    ( enable_sync_or_bus_register_in_mask_gated[0]     )
);
 
// synopsys sync_set_reset "bus_sync_reset_pulse"
always @ (posedge clock) begin
  if (bus_sync_reset_pulse) begin
    bus_register_in <= 20'b0;
  end else begin
    if (bus_register_ijtag_access_en) begin
      if (ijtag_se) begin
        bus_register_in <= {bus_in[19],bus_register_in[19:1]};
      end
    end else begin
      bus_register_in <= bus_in & enable_sync_or_bus_register_in_mask_gated;
      end
  end
end
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    from_scan_out_storage_p <= 2'b0;
  end else begin
    if (last_in_bits_in_current_bus_word) begin
      from_scan_out_storage_p <= from_scan_out_selected;
    end
  end
end
assign from_scan_out_storage = from_scan_out_storage_p;
 
// Result value won't be greater than total number of expected bit count, so result value always will fit into the variable
// spyglass disable_block W164a W484 STARC-2.10.6.1
wire [9:0] received_in_bit_cnt_plus_in_bits_in_remaining_bus_words    = received_in_bit_cnt + in_bits_in_remaining_bus_words;
// spyglass enable_block W164a W484 STARC-2.10.6.1
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 7) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 7) begin 
      in_bit_storage7_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[7:7];
    end else begin
      in_bit_storage7_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[7:7];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 7) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 7) begin
        // spyglass enable_block W116
          in_bit_storage7_d = bus_register_shifted_down_next_to_scan_in_word[7:7];
        end else begin
          in_bit_storage7_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[7:7];
        end
      end else begin
        in_bit_storage7_d = bus_register_shifted_down_next_to_scan_in_word[7:7];
      end
    end else begin
      in_bit_storage7_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 6) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 6) begin 
      in_bit_storage6_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[6:6];
    end else begin
      in_bit_storage6_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[6:6];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 6) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 6) begin
        // spyglass enable_block W116
          in_bit_storage6_d = bus_register_shifted_down_next_to_scan_in_word[6:6];
        end else begin
          in_bit_storage6_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[6:6];
        end
      end else begin
        in_bit_storage6_d = bus_register_shifted_down_next_to_scan_in_word[6:6];
      end
    end else begin
      in_bit_storage6_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 5) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 5) begin 
      in_bit_storage5_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[5:5];
    end else begin
      in_bit_storage5_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[5:5];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 5) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 5) begin
        // spyglass enable_block W116
          in_bit_storage5_d = bus_register_shifted_down_next_to_scan_in_word[5:5];
        end else begin
          in_bit_storage5_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[5:5];
        end
      end else begin
        in_bit_storage5_d = bus_register_shifted_down_next_to_scan_in_word[5:5];
      end
    end else begin
      in_bit_storage5_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 4) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 4) begin 
      in_bit_storage4_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[4:4];
    end else begin
      in_bit_storage4_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[4:4];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 4) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 4) begin
        // spyglass enable_block W116
          in_bit_storage4_d = bus_register_shifted_down_next_to_scan_in_word[4:4];
        end else begin
          in_bit_storage4_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[4:4];
        end
      end else begin
        in_bit_storage4_d = bus_register_shifted_down_next_to_scan_in_word[4:4];
      end
    end else begin
      in_bit_storage4_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 3) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 3) begin 
      in_bit_storage3_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[3:3];
    end else begin
      in_bit_storage3_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[3:3];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 3) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 3) begin
        // spyglass enable_block W116
          in_bit_storage3_d = bus_register_shifted_down_next_to_scan_in_word[3:3];
        end else begin
          in_bit_storage3_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[3:3];
        end
      end else begin
        in_bit_storage3_d = bus_register_shifted_down_next_to_scan_in_word[3:3];
      end
    end else begin
      in_bit_storage3_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 2) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 2) begin 
      in_bit_storage2_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[2:2];
    end else begin
      in_bit_storage2_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[2:2];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 2) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 2) begin
        // spyglass enable_block W116
          in_bit_storage2_d = bus_register_shifted_down_next_to_scan_in_word[2:2];
        end else begin
          in_bit_storage2_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[2:2];
        end
      end else begin
        in_bit_storage2_d = bus_register_shifted_down_next_to_scan_in_word[2:2];
      end
    end else begin
      in_bit_storage2_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (received_in_bit_cnt != 0 && received_in_bit_cnt <= 1) begin
    if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words > 1) begin 
      in_bit_storage1_d = bus_register_shifted_up_current_to_scan_in_word_in_current_packet[1:1];
    end else begin
      in_bit_storage1_d = bus_register_shifted_up_current_to_scan_in_word_in_next_packet[1:1];
    end
  end else begin
    if (next_to_scan_word_bits_in_bus > 1) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        if (in_bits_in_remaining_bus_words - start_of_next_to_scan_word_in_bus > 1) begin
        // spyglass enable_block W116
          in_bit_storage1_d = bus_register_shifted_down_next_to_scan_in_word[1:1];
        end else begin
          in_bit_storage1_d = bus_register_shifted_up_next_to_scan_in_word_in_next_packet[1:1];
        end
      end else begin
        in_bit_storage1_d = bus_register_shifted_down_next_to_scan_in_word[1:1];
      end
    end else begin
      in_bit_storage1_d = 1'b0;
    end
  end
end
  
always @ (*) begin
  if (next_to_scan_word_bits_in_bus > 0) begin
    in_bit_storage0_d = bus_register_shifted_down_next_to_scan_in_word[0:0];
  end else begin
    in_bit_storage0_d = 1'b0;
  end
end
  
always @ (posedge clock) begin
  if (in_bit_storage_en[7]) begin
    in_bit_storage7 <= in_bit_storage7_d;
  end
  if (in_bit_storage_en[6]) begin
    in_bit_storage6 <= in_bit_storage6_d;
  end
  if (in_bit_storage_en[5]) begin
    in_bit_storage5 <= in_bit_storage5_d;
  end
  if (in_bit_storage_en[4]) begin
    in_bit_storage4 <= in_bit_storage4_d;
  end
  if (in_bit_storage_en[3]) begin
    in_bit_storage3 <= in_bit_storage3_d;
  end
  if (in_bit_storage_en[2]) begin
    in_bit_storage2 <= in_bit_storage2_d;
  end
  if (in_bit_storage_en[1]) begin
    in_bit_storage1 <= in_bit_storage1_d;
  end
  if (in_bit_storage_en[0]) begin
    in_bit_storage0 <= in_bit_storage0_d;
  end
end
 
// Sum always fits into the result signal because sizes are calculated during hardware generation
// spyglass disable_block W164a W164b W484 STARC-2.10.6.1
wire [2:0] sum_of_totals_for_shift = total_to_scan_in_bits+total_from_scan_out_bits;
// spyglass enable_block W164a W164b W484 STARC-2.10.6.1
 
 
assign from_scan_out_for_status_selected1 = (use_from_scan_out_storage_for_status[1]) ? from_scan_out_storage[1:1] : from_scan_out_selected[1:1];
assign from_scan_out_for_status_selected0 = (use_from_scan_out_storage_for_status[0]) ? from_scan_out_storage[0:0] : from_scan_out_selected[0:0];
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    compare_status_sticky <= 1'b0;
  end else begin
    if (clear_sticky_status | disable_on_chip_compare_contribution) begin
      compare_status_sticky <= 1'b0;
    end else begin
      compare_status_sticky <= |compare_status | compare_status_sticky;
    end
  end
end
always @ (*) begin
  if (use_expected_storage[1]) begin
    expected_value_selected[1] = expected_value[1];
  end else begin
    expected_value_selected[1] = expected_value_d[1];
  end
  if (use_mask_storage[1]) begin
    mask_value_selected[1] = mask_value[1];
  end else begin
    mask_value_selected[1] = mask_value_d[1];
  end
end
reg there_are_two_status_ranges_in_bus;
reg [1:0] first_status_in_upper_status_range;
reg [0:0] status_in_value_for_upper_status_range1, status_in_value_for_lower_status_range1;
 
always @ (*) begin
  if (status_exists_above_packet_boundary_current_word && status_exists_above_packet_boundary_next_word) begin
    if (first_status_in_bus_above_packet_boundary_current_word < first_status_in_bus_above_packet_boundary_next_word) begin
      status_in_value_for_upper_status_range1  = status_in_value_for_above_packet_boundary_next_word_shifted_up[1];
      status_in_value_for_lower_status_range1 = status_in_value_for_above_packet_boundary_current_word_shifted_up[1];  
    end else begin
      status_in_value_for_upper_status_range1  = status_in_value_for_above_packet_boundary_current_word_shifted_up[1];
      status_in_value_for_lower_status_range1 = status_in_value_for_above_packet_boundary_next_word_shifted_up[1];  
    end
  end else if (status_exists_below_packet_boundary && status_exists_above_packet_boundary_next_word) begin
    if (first_status_in_bus_below_packet_boundary < first_status_in_bus_above_packet_boundary_next_word) begin
      status_in_value_for_upper_status_range1  = status_in_value_for_above_packet_boundary_next_word_shifted_up[1];
      status_in_value_for_lower_status_range1 = status_in_value_for_below_packet_boundary_shifted_up[1];  
    end else begin
      status_in_value_for_upper_status_range1  = status_in_value_for_below_packet_boundary_shifted_up[1];
      status_in_value_for_lower_status_range1 = status_in_value_for_above_packet_boundary_next_word_shifted_up[1];  
    end
  end else if (status_exists_below_packet_boundary && status_exists_above_packet_boundary_current_word) begin
    if (first_status_in_bus_below_packet_boundary < first_status_in_bus_above_packet_boundary_current_word) begin
      status_in_value_for_upper_status_range1  = status_in_value_for_above_packet_boundary_current_word_shifted_up[1];
      status_in_value_for_lower_status_range1 = status_in_value_for_below_packet_boundary_shifted_up[1];  
    end else begin
      status_in_value_for_upper_status_range1  = status_in_value_for_below_packet_boundary_shifted_up[1];
      status_in_value_for_lower_status_range1 = status_in_value_for_above_packet_boundary_current_word_shifted_up[1];  
    end
  end else if (status_exists_below_packet_boundary) begin
    status_in_value_for_upper_status_range1    = status_in_value_for_below_packet_boundary_shifted_up[1];
    status_in_value_for_lower_status_range1   = 1'b0;
  end else if (status_exists_above_packet_boundary_next_word) begin
    status_in_value_for_upper_status_range1    = status_in_value_for_above_packet_boundary_next_word_shifted_up[1];
    status_in_value_for_lower_status_range1   = 1'b0;
  end else begin
    status_in_value_for_upper_status_range1    = status_in_value_for_above_packet_boundary_current_word_shifted_up[1];
    status_in_value_for_lower_status_range1   = 1'b0;
  end
  if (first_status_in_upper_status_range <= 1 || ~there_are_two_status_ranges_in_bus) begin
    compare_task (
      expected_value_selected[1],
      mask_value_selected[1],
      from_scan_out_for_status_selected1,
      compare_en[1],
      status_in_value_for_upper_status_range1,
      first_shift_packet_drive_out,
      compare_status_sticky,
      status_out_value[1:1],
      compare_status[1]
    );
  end else begin
    compare_task (
      expected_value_selected[1],
      mask_value_selected[1],
      from_scan_out_for_status_selected1,
      compare_en[1],
      status_in_value_for_lower_status_range1,
      first_shift_packet_drive_out,
      compare_status_sticky,
      status_out_value[1:1],
      compare_status[1]
    );
  end
end
always @ (*) begin
  if (use_expected_storage[0]) begin
    expected_value_selected[0] = expected_value[0];
  end else begin
    expected_value_selected[0] = expected_value_d[0];
  end
  if (use_mask_storage[0]) begin
    mask_value_selected[0] = mask_value[0];
  end else begin
    mask_value_selected[0] = mask_value_d[0];
  end
end
reg [0:0] status_in_value_for_upper_status_range0, status_in_value_for_lower_status_range0;
 
always @ (*) begin
  if (status_exists_above_packet_boundary_current_word && status_exists_above_packet_boundary_next_word) begin
    there_are_two_status_ranges_in_bus       = 1'b1;
    if (first_status_in_bus_above_packet_boundary_current_word < first_status_in_bus_above_packet_boundary_next_word) begin
      first_status_in_upper_status_range     = first_status_in_bus_above_packet_boundary_next_word;
      status_in_value_for_upper_status_range0  = status_in_value_for_above_packet_boundary_next_word_shifted_up[0];
      status_in_value_for_lower_status_range0 = status_in_value_for_above_packet_boundary_current_word_shifted_up[0];  
    end else begin
      first_status_in_upper_status_range     = first_status_in_bus_above_packet_boundary_current_word;
      status_in_value_for_upper_status_range0  = status_in_value_for_above_packet_boundary_current_word_shifted_up[0];
      status_in_value_for_lower_status_range0 = status_in_value_for_above_packet_boundary_next_word_shifted_up[0];  
    end
  end else if (status_exists_below_packet_boundary && status_exists_above_packet_boundary_next_word) begin
    there_are_two_status_ranges_in_bus      = 1'b1;
    if (first_status_in_bus_below_packet_boundary < first_status_in_bus_above_packet_boundary_next_word) begin
      first_status_in_upper_status_range     = first_status_in_bus_above_packet_boundary_next_word;
      status_in_value_for_upper_status_range0  = status_in_value_for_above_packet_boundary_next_word_shifted_up[0];
      status_in_value_for_lower_status_range0 = status_in_value_for_below_packet_boundary_shifted_up[0];  
    end else begin
      first_status_in_upper_status_range     = first_status_in_bus_below_packet_boundary;
      status_in_value_for_upper_status_range0  = status_in_value_for_below_packet_boundary_shifted_up[0];
      status_in_value_for_lower_status_range0 = status_in_value_for_above_packet_boundary_next_word_shifted_up[0];  
    end
  end else if (status_exists_below_packet_boundary && status_exists_above_packet_boundary_current_word) begin
    there_are_two_status_ranges_in_bus      = 1'b1;
    if (first_status_in_bus_below_packet_boundary < first_status_in_bus_above_packet_boundary_current_word) begin
      first_status_in_upper_status_range     = first_status_in_bus_above_packet_boundary_current_word;
      status_in_value_for_upper_status_range0  = status_in_value_for_above_packet_boundary_current_word_shifted_up[0];
      status_in_value_for_lower_status_range0 = status_in_value_for_below_packet_boundary_shifted_up[0];  
    end else begin
      first_status_in_upper_status_range     = first_status_in_bus_below_packet_boundary;
      status_in_value_for_upper_status_range0  = status_in_value_for_below_packet_boundary_shifted_up[0];
      status_in_value_for_lower_status_range0 = status_in_value_for_above_packet_boundary_current_word_shifted_up[0];  
    end
  end else if (status_exists_below_packet_boundary) begin
    there_are_two_status_ranges_in_bus       = 1'b0;
    first_status_in_upper_status_range       = first_status_in_bus_below_packet_boundary;
    status_in_value_for_upper_status_range0    = status_in_value_for_below_packet_boundary_shifted_up[0];
    status_in_value_for_lower_status_range0   = 1'b0;
  end else if (status_exists_above_packet_boundary_next_word) begin
    there_are_two_status_ranges_in_bus       = 1'b0;
    first_status_in_upper_status_range       = first_status_in_bus_above_packet_boundary_next_word;
    status_in_value_for_upper_status_range0    = status_in_value_for_above_packet_boundary_next_word_shifted_up[0];
    status_in_value_for_lower_status_range0   = 1'b0;
  end else begin
    there_are_two_status_ranges_in_bus       = 1'b0;
    first_status_in_upper_status_range       = first_status_in_bus_above_packet_boundary_current_word;
    status_in_value_for_upper_status_range0    = status_in_value_for_above_packet_boundary_current_word_shifted_up[0];
    status_in_value_for_lower_status_range0   = 1'b0;
  end
  if (first_status_in_upper_status_range <= 0 || ~there_are_two_status_ranges_in_bus) begin
    compare_task (
      expected_value_selected[0],
      mask_value_selected[0],
      from_scan_out_for_status_selected0,
      compare_en[0],
      status_in_value_for_upper_status_range0,
      first_shift_packet_drive_out,
      compare_status_sticky,
      status_out_value[0:0],
      compare_status[0]
    );
  end else begin
    compare_task (
      expected_value_selected[0],
      mask_value_selected[0],
      from_scan_out_for_status_selected0,
      compare_en[0],
      status_in_value_for_lower_status_range0,
      first_shift_packet_drive_out,
      compare_status_sticky,
      status_out_value[0:0],
      compare_status[0]
    );
  end
end
 
task compare_task;
  input reg [0:0]     expected_value;
  input reg [0:0]     mask_value;
  input reg [0:0]     from_scan_out_value;
  input reg           compare_en;
  input reg [0:0]     status_in_value;
  input reg           first_shift_packet_drive_out;
  input reg           compare_status_sticky;
  output reg [0:0]    status_out_value;
  output reg          compare_status;
 
  reg                 non_cumulative_status;
  reg                 non_cumulative_status_muxed; 
  begin
    non_cumulative_status = ~mask_value && (expected_value ^ from_scan_out_value);
    if (first_shift_packet_drive_out) begin
      non_cumulative_status_muxed = compare_status_sticky;
    end else begin
      non_cumulative_status_muxed = non_cumulative_status;
    end
    status_out_value = status_in_value | non_cumulative_status_muxed;
    if (compare_en && non_cumulative_status) begin
      compare_status = 1'b1;
    end else begin
      compare_status = 1'b0;
    end
  end
 
endtask
 
always @ (*) begin
  if (received_in_bit_cnt > 10'd3) begin
    to_scan_in3_d = in_bit_storage3;
  end else begin
    to_scan_in3_d = in_bit_storage3_d;
  end
end
 
// Negedge clock is intended, this is retiming cell.
// spyglass disable_block W391
always @ (negedge clock) begin
  if (shift_clock_en && min_shift_clock_low_width_is_zero) begin
    to_scan_in3_ret_not_for_div <= to_scan_in3_d;
  end
end
// spyglass enable_block W391
 
always @ (posedge clock) begin
  if (shift_clock_en) begin
    to_scan_in3_ret_for_div <= to_scan_in3_d;
  end
end
 
assign to_scan_in3 = (use_div_shift_clocks) ? to_scan_in3_ret_for_div : to_scan_in3_ret_not_for_div;
 
always @ (*) begin
  if (received_in_bit_cnt > 10'd2) begin
    to_scan_in2_d = in_bit_storage2;
  end else begin
    to_scan_in2_d = in_bit_storage2_d;
  end
end
 
// Negedge clock is intended, this is retiming cell.
// spyglass disable_block W391
always @ (negedge clock) begin
  if (shift_clock_en && min_shift_clock_low_width_is_zero) begin
    to_scan_in2_ret_not_for_div <= to_scan_in2_d;
  end
end
// spyglass enable_block W391
 
always @ (posedge clock) begin
  if (shift_clock_en) begin
    to_scan_in2_ret_for_div <= to_scan_in2_d;
  end
end
 
assign to_scan_in2 = (use_div_shift_clocks) ? to_scan_in2_ret_for_div : to_scan_in2_ret_not_for_div;
 
always @ (*) begin
  if (received_in_bit_cnt > 10'd1) begin
    to_scan_in1_d = in_bit_storage1;
  end else begin
    to_scan_in1_d = in_bit_storage1_d;
  end
end
 
// Negedge clock is intended, this is retiming cell.
// spyglass disable_block W391
always @ (negedge clock) begin
  if (shift_clock_en && min_shift_clock_low_width_is_zero) begin
    to_scan_in1_ret_not_for_div <= to_scan_in1_d;
  end
end
// spyglass enable_block W391
 
always @ (posedge clock) begin
  if (shift_clock_en) begin
    to_scan_in1_ret_for_div <= to_scan_in1_d;
  end
end
 
assign to_scan_in1 = (use_div_shift_clocks) ? to_scan_in1_ret_for_div : to_scan_in1_ret_not_for_div;
 
always @ (*) begin
  if (received_in_bit_cnt > 10'd0) begin
    to_scan_in0_d = in_bit_storage0;
  end else begin
    to_scan_in0_d = in_bit_storage0_d;
  end
end
 
// Negedge clock is intended, this is retiming cell.
// spyglass disable_block W391
always @ (negedge clock) begin
  if (shift_clock_en && min_shift_clock_low_width_is_zero) begin
    to_scan_in0_ret_not_for_div <= to_scan_in0_d;
  end
end
// spyglass enable_block W391
 
always @ (posedge clock) begin
  if (shift_clock_en) begin
    to_scan_in0_ret_for_div <= to_scan_in0_d;
  end
end
 
assign to_scan_in0 = (use_div_shift_clocks) ? to_scan_in0_ret_for_div : to_scan_in0_ret_not_for_div;
 
         
assign to_scan_in3_en                 = (to_scan_in_bits > 3'd3);
assign to_scan_in[3]                  = to_scan_in3 & to_scan_in3_en;
assign to_scan_in2_en                 = (to_scan_in_bits > 3'd2);
assign to_scan_in[2]                  = to_scan_in2 & to_scan_in2_en;
assign to_scan_in1_en                 = (to_scan_in_bits > 3'd1);
assign to_scan_in[1]                  = to_scan_in1 & to_scan_in1_en;
assign to_scan_in0_en                 = (to_scan_in_bits > 3'd0);
assign to_scan_in[0]                  = to_scan_in0 & to_scan_in0_en;
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 19) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 19 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus19 = from_scan_out_next_word_shifted_up[19:19];
    end else begin
      from_scan_out_to_bus19 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 19) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 19 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus19 = from_scan_out_next_word_shifted_up_next_packet[19:19];
      end else begin
        from_scan_out_to_bus19 = from_scan_out_next_word_shifted_up[19:19];
      end
    end else begin
      from_scan_out_to_bus19 = from_scan_out_current_word_shifted_up_next_packet[19:19];
    end
  end else begin
    from_scan_out_to_bus19 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 18) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 18 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus18 = from_scan_out_next_word_shifted_up[18:18];
    end else begin
      from_scan_out_to_bus18 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 18) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 18 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus18 = from_scan_out_next_word_shifted_up_next_packet[18:18];
      end else begin
        from_scan_out_to_bus18 = from_scan_out_next_word_shifted_up[18:18];
      end
    end else begin
      from_scan_out_to_bus18 = from_scan_out_current_word_shifted_up_next_packet[18:18];
    end
  end else begin
    from_scan_out_to_bus18 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 17) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 17 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus17 = from_scan_out_next_word_shifted_up[17:17];
    end else begin
      from_scan_out_to_bus17 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 17) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 17 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus17 = from_scan_out_next_word_shifted_up_next_packet[17:17];
      end else begin
        from_scan_out_to_bus17 = from_scan_out_next_word_shifted_up[17:17];
      end
    end else begin
      from_scan_out_to_bus17 = from_scan_out_current_word_shifted_up_next_packet[17:17];
    end
  end else begin
    from_scan_out_to_bus17 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 16) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 16 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus16 = from_scan_out_next_word_shifted_up[16:16];
    end else begin
      from_scan_out_to_bus16 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 16) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 16 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus16 = from_scan_out_next_word_shifted_up_next_packet[16:16];
      end else begin
        from_scan_out_to_bus16 = from_scan_out_next_word_shifted_up[16:16];
      end
    end else begin
      from_scan_out_to_bus16 = from_scan_out_current_word_shifted_up_next_packet[16:16];
    end
  end else begin
    from_scan_out_to_bus16 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 15) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 15 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus15 = from_scan_out_next_word_shifted_up[15:15];
    end else begin
      from_scan_out_to_bus15 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 15) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 15 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus15 = from_scan_out_next_word_shifted_up_next_packet[15:15];
      end else begin
        from_scan_out_to_bus15 = from_scan_out_next_word_shifted_up[15:15];
      end
    end else begin
      from_scan_out_to_bus15 = from_scan_out_current_word_shifted_up_next_packet[15:15];
    end
  end else begin
    from_scan_out_to_bus15 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 14) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 14 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus14 = from_scan_out_next_word_shifted_up[14:14];
    end else begin
      from_scan_out_to_bus14 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 14) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 14 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus14 = from_scan_out_next_word_shifted_up_next_packet[14:14];
      end else begin
        from_scan_out_to_bus14 = from_scan_out_next_word_shifted_up[14:14];
      end
    end else begin
      from_scan_out_to_bus14 = from_scan_out_current_word_shifted_up_next_packet[14:14];
    end
  end else begin
    from_scan_out_to_bus14 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 13) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 13 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus13 = from_scan_out_next_word_shifted_up[13:13];
    end else begin
      from_scan_out_to_bus13 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 13) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 13 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus13 = from_scan_out_next_word_shifted_up_next_packet[13:13];
      end else begin
        from_scan_out_to_bus13 = from_scan_out_next_word_shifted_up[13:13];
      end
    end else begin
      from_scan_out_to_bus13 = from_scan_out_current_word_shifted_up_next_packet[13:13];
    end
  end else begin
    from_scan_out_to_bus13 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 12) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 12 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus12 = from_scan_out_next_word_shifted_up[12:12];
    end else begin
      from_scan_out_to_bus12 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 12) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 12 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus12 = from_scan_out_next_word_shifted_up_next_packet[12:12];
      end else begin
        from_scan_out_to_bus12 = from_scan_out_next_word_shifted_up[12:12];
      end
    end else begin
      from_scan_out_to_bus12 = from_scan_out_current_word_shifted_up_next_packet[12:12];
    end
  end else begin
    from_scan_out_to_bus12 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 11) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 11 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus11 = from_scan_out_next_word_shifted_up[11:11];
    end else begin
      from_scan_out_to_bus11 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 11) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 11 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus11 = from_scan_out_next_word_shifted_up_next_packet[11:11];
      end else begin
        from_scan_out_to_bus11 = from_scan_out_next_word_shifted_up[11:11];
      end
    end else begin
      from_scan_out_to_bus11 = from_scan_out_current_word_shifted_up_next_packet[11:11];
    end
  end else begin
    from_scan_out_to_bus11 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 10) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 10 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus10 = from_scan_out_next_word_shifted_up[10:10];
    end else begin
      from_scan_out_to_bus10 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 10) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 10 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus10 = from_scan_out_next_word_shifted_up_next_packet[10:10];
      end else begin
        from_scan_out_to_bus10 = from_scan_out_next_word_shifted_up[10:10];
      end
    end else begin
      from_scan_out_to_bus10 = from_scan_out_current_word_shifted_up_next_packet[10:10];
    end
  end else begin
    from_scan_out_to_bus10 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 9) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 9 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus9 = from_scan_out_next_word_shifted_up[9:9];
    end else begin
      from_scan_out_to_bus9 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 9) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 9 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus9 = from_scan_out_next_word_shifted_up_next_packet[9:9];
      end else begin
        from_scan_out_to_bus9 = from_scan_out_next_word_shifted_up[9:9];
      end
    end else begin
      from_scan_out_to_bus9 = from_scan_out_current_word_shifted_up_next_packet[9:9];
    end
  end else begin
    from_scan_out_to_bus9 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 8) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 8 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus8 = from_scan_out_next_word_shifted_up[8:8];
    end else begin
      from_scan_out_to_bus8 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 8) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 8 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus8 = from_scan_out_next_word_shifted_up_next_packet[8:8];
      end else begin
        from_scan_out_to_bus8 = from_scan_out_next_word_shifted_up[8:8];
      end
    end else begin
      from_scan_out_to_bus8 = from_scan_out_current_word_shifted_up_next_packet[8:8];
    end
  end else begin
    from_scan_out_to_bus8 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 7) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 7 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus7 = from_scan_out_next_word_shifted_up[7:7];
    end else begin
      from_scan_out_to_bus7 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 7) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 7 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus7 = from_scan_out_next_word_shifted_up_next_packet[7:7];
      end else begin
        from_scan_out_to_bus7 = from_scan_out_next_word_shifted_up[7:7];
      end
    end else begin
      from_scan_out_to_bus7 = from_scan_out_current_word_shifted_up_next_packet[7:7];
    end
  end else begin
    from_scan_out_to_bus7 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 6) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 6 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus6 = from_scan_out_next_word_shifted_up[6:6];
    end else begin
      from_scan_out_to_bus6 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 6) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 6 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus6 = from_scan_out_next_word_shifted_up_next_packet[6:6];
      end else begin
        from_scan_out_to_bus6 = from_scan_out_next_word_shifted_up[6:6];
      end
    end else begin
      from_scan_out_to_bus6 = from_scan_out_current_word_shifted_up_next_packet[6:6];
    end
  end else begin
    from_scan_out_to_bus6 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 5) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 5 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus5 = from_scan_out_next_word_shifted_up[5:5];
    end else begin
      from_scan_out_to_bus5 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 5) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 5 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus5 = from_scan_out_next_word_shifted_up_next_packet[5:5];
      end else begin
        from_scan_out_to_bus5 = from_scan_out_next_word_shifted_up[5:5];
      end
    end else begin
      from_scan_out_to_bus5 = from_scan_out_current_word_shifted_up_next_packet[5:5];
    end
  end else begin
    from_scan_out_to_bus5 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 4) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 4 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus4 = from_scan_out_next_word_shifted_up[4:4];
    end else begin
      from_scan_out_to_bus4 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 4) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 4 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus4 = from_scan_out_next_word_shifted_up_next_packet[4:4];
      end else begin
        from_scan_out_to_bus4 = from_scan_out_next_word_shifted_up[4:4];
      end
    end else begin
      from_scan_out_to_bus4 = from_scan_out_current_word_shifted_up_next_packet[4:4];
    end
  end else begin
    from_scan_out_to_bus4 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 3) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 3 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus3 = from_scan_out_next_word_shifted_up[3:3];
    end else begin
      from_scan_out_to_bus3 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 3) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 3 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus3 = from_scan_out_next_word_shifted_up_next_packet[3:3];
      end else begin
        from_scan_out_to_bus3 = from_scan_out_next_word_shifted_up[3:3];
      end
    end else begin
      from_scan_out_to_bus3 = from_scan_out_current_word_shifted_up_next_packet[3:3];
    end
  end else begin
    from_scan_out_to_bus3 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 2) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 2 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus2 = from_scan_out_next_word_shifted_up[2:2];
    end else begin
      from_scan_out_to_bus2 = 1'b0;
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 2) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 2 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus2 = from_scan_out_next_word_shifted_up_next_packet[2:2];
      end else begin
        from_scan_out_to_bus2 = from_scan_out_next_word_shifted_up[2:2];
      end
    end else begin
      from_scan_out_to_bus2 = from_scan_out_current_word_shifted_up_next_packet[2:2];
    end
  end else begin
    from_scan_out_to_bus2 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 1) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 1 && start_of_next_to_scan_word_in_bus != 0) begin
      from_scan_out_to_bus1 = from_scan_out_next_word_shifted_up[1:1];
    end else begin
      from_scan_out_to_bus1 = from_scan_out_storage_shifted_down_current_word_current_packet[1:1];
    end
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 1) begin
    if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus <= 1 && start_of_next_to_scan_word_in_bus != 0 &&
        (start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word || have_in_bits_in_remaining_bus_words)) begin
      if (start_of_next_to_scan_word_in_bus < in_bit0_position_in_first_bus_word) begin
        from_scan_out_to_bus1 = from_scan_out_next_word_shifted_up_next_packet[1:1];
      end else begin
        from_scan_out_to_bus1 = from_scan_out_next_word_shifted_up[1:1];
      end
    end else begin
      from_scan_out_to_bus1 = from_scan_out_current_word_shifted_up_next_packet[1:1];
    end
  end else begin
    from_scan_out_to_bus1 = 1'b0;
  end
end
 
always @ (*) begin
  if (in_bits_in_remaining_bus_words > 0) begin
    from_scan_out_to_bus0 = from_scan_out_storage_shifted_down_current_word_current_packet[0:0];
  end else if (start_of_packet && in_bit0_position_in_first_bus_word <= 0) begin
    from_scan_out_to_bus0 = from_scan_out_current_word_shifted_up_next_packet[0:0];
  end else begin
    from_scan_out_to_bus0 = 1'b0;
  end
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out19_mux19 (
      .o                              ( bus_register_out_d[19]  ),
      .sa                             ( (drive_bus_out_gated[19] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[19]  ),
      .b                              ( bus_register_out_d0[19]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 19) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 19 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[19:19] = status_to_bus_above_packet_boundary_next_word[19:19];
      end else begin
        bus_register_out_d1[19:19] = status_to_bus_above_packet_boundary_current_word[19:19];
      end
    end else begin
      bus_register_out_d1[19:19] = status_to_bus_below_packet_boundary[19:19];
    end
  end else begin
    bus_register_out_d1[19:19] = from_scan_out_to_bus19;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[19:19] = bus_register_in[0];
    end else begin
      bus_register_out_d0[19:19] = bus_register_out[19:19];
    end
  end else
    bus_register_out_d0[19:19] = bus_register_in[19:19];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out18_mux18 (
      .o                              ( bus_register_out_d[18]  ),
      .sa                             ( (drive_bus_out_gated[18] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[18]  ),
      .b                              ( bus_register_out_d0[18]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 18) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 18 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[18:18] = status_to_bus_above_packet_boundary_next_word[18:18];
      end else begin
        bus_register_out_d1[18:18] = status_to_bus_above_packet_boundary_current_word[18:18];
      end
    end else begin
      bus_register_out_d1[18:18] = status_to_bus_below_packet_boundary[18:18];
    end
  end else begin
    bus_register_out_d1[18:18] = from_scan_out_to_bus18;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[18:18] = bus_register_out[19];
    end else begin
      bus_register_out_d0[18:18] = bus_register_out[18:18];
    end
  end else
      bus_register_out_d0[18:18] = bus_register_in[18:18];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out17_mux17 (
      .o                              ( bus_register_out_d[17]  ),
      .sa                             ( (drive_bus_out_gated[17] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[17]  ),
      .b                              ( bus_register_out_d0[17]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 17) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 17 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[17:17] = status_to_bus_above_packet_boundary_next_word[17:17];
      end else begin
        bus_register_out_d1[17:17] = status_to_bus_above_packet_boundary_current_word[17:17];
      end
    end else begin
      bus_register_out_d1[17:17] = status_to_bus_below_packet_boundary[17:17];
    end
  end else begin
    bus_register_out_d1[17:17] = from_scan_out_to_bus17;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[17:17] = bus_register_out[18];
    end else begin
      bus_register_out_d0[17:17] = bus_register_out[17:17];
    end
  end else
        bus_register_out_d0[17:17] = bus_register_in[17:17];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out16_mux16 (
      .o                              ( bus_register_out_d[16]  ),
      .sa                             ( (drive_bus_out_gated[16] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[16]  ),
      .b                              ( bus_register_out_d0[16]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 16) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 16 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[16:16] = status_to_bus_above_packet_boundary_next_word[16:16];
      end else begin
        bus_register_out_d1[16:16] = status_to_bus_above_packet_boundary_current_word[16:16];
      end
    end else begin
      bus_register_out_d1[16:16] = status_to_bus_below_packet_boundary[16:16];
    end
  end else begin
    bus_register_out_d1[16:16] = from_scan_out_to_bus16;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[16:16] = bus_register_out[17];
    end else begin
      bus_register_out_d0[16:16] = bus_register_out[16:16];
    end
  end else
          bus_register_out_d0[16:16] = bus_register_in[16:16];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out15_mux15 (
      .o                              ( bus_register_out_d[15]  ),
      .sa                             ( (drive_bus_out_gated[15] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[15]  ),
      .b                              ( bus_register_out_d0[15]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 15) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 15 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[15:15] = status_to_bus_above_packet_boundary_next_word[15:15];
      end else begin
        bus_register_out_d1[15:15] = status_to_bus_above_packet_boundary_current_word[15:15];
      end
    end else begin
      bus_register_out_d1[15:15] = status_to_bus_below_packet_boundary[15:15];
    end
  end else begin
    bus_register_out_d1[15:15] = from_scan_out_to_bus15;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[15:15] = bus_register_out[16];
    end else begin
      bus_register_out_d0[15:15] = bus_register_out[15:15];
    end
  end else
            bus_register_out_d0[15:15] = bus_register_in[15:15];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out14_mux14 (
      .o                              ( bus_register_out_d[14]  ),
      .sa                             ( (drive_bus_out_gated[14] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[14]  ),
      .b                              ( bus_register_out_d0[14]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 14) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 14 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[14:14] = status_to_bus_above_packet_boundary_next_word[14:14];
      end else begin
        bus_register_out_d1[14:14] = status_to_bus_above_packet_boundary_current_word[14:14];
      end
    end else begin
      bus_register_out_d1[14:14] = status_to_bus_below_packet_boundary[14:14];
    end
  end else begin
    bus_register_out_d1[14:14] = from_scan_out_to_bus14;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[14:14] = bus_register_out[15];
    end else begin
      bus_register_out_d0[14:14] = bus_register_out[14:14];
    end
  end else
              bus_register_out_d0[14:14] = bus_register_in[14:14];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out13_mux13 (
      .o                              ( bus_register_out_d[13]  ),
      .sa                             ( (drive_bus_out_gated[13] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[13]  ),
      .b                              ( bus_register_out_d0[13]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 13) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 13 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[13:13] = status_to_bus_above_packet_boundary_next_word[13:13];
      end else begin
        bus_register_out_d1[13:13] = status_to_bus_above_packet_boundary_current_word[13:13];
      end
    end else begin
      bus_register_out_d1[13:13] = status_to_bus_below_packet_boundary[13:13];
    end
  end else begin
    bus_register_out_d1[13:13] = from_scan_out_to_bus13;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[13:13] = bus_register_out[14];
    end else begin
      bus_register_out_d0[13:13] = bus_register_out[13:13];
    end
  end else
                bus_register_out_d0[13:13] = bus_register_in[13:13];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out12_mux12 (
      .o                              ( bus_register_out_d[12]  ),
      .sa                             ( (drive_bus_out_gated[12] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[12]  ),
      .b                              ( bus_register_out_d0[12]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 12) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 12 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[12:12] = status_to_bus_above_packet_boundary_next_word[12:12];
      end else begin
        bus_register_out_d1[12:12] = status_to_bus_above_packet_boundary_current_word[12:12];
      end
    end else begin
      bus_register_out_d1[12:12] = status_to_bus_below_packet_boundary[12:12];
    end
  end else begin
    bus_register_out_d1[12:12] = from_scan_out_to_bus12;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[12:12] = bus_register_out[13];
    end else begin
      bus_register_out_d0[12:12] = bus_register_out[12:12];
    end
  end else
                  bus_register_out_d0[12:12] = bus_register_in[12:12];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out11_mux11 (
      .o                              ( bus_register_out_d[11]  ),
      .sa                             ( (drive_bus_out_gated[11] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[11]  ),
      .b                              ( bus_register_out_d0[11]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 11) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 11 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[11:11] = status_to_bus_above_packet_boundary_next_word[11:11];
      end else begin
        bus_register_out_d1[11:11] = status_to_bus_above_packet_boundary_current_word[11:11];
      end
    end else begin
      bus_register_out_d1[11:11] = status_to_bus_below_packet_boundary[11:11];
    end
  end else begin
    bus_register_out_d1[11:11] = from_scan_out_to_bus11;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[11:11] = bus_register_out[12];
    end else begin
      bus_register_out_d0[11:11] = bus_register_out[11:11];
    end
  end else
                    bus_register_out_d0[11:11] = bus_register_in[11:11];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out10_mux10 (
      .o                              ( bus_register_out_d[10]  ),
      .sa                             ( (drive_bus_out_gated[10] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[10]  ),
      .b                              ( bus_register_out_d0[10]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 10) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 10 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[10:10] = status_to_bus_above_packet_boundary_next_word[10:10];
      end else begin
        bus_register_out_d1[10:10] = status_to_bus_above_packet_boundary_current_word[10:10];
      end
    end else begin
      bus_register_out_d1[10:10] = status_to_bus_below_packet_boundary[10:10];
    end
  end else begin
    bus_register_out_d1[10:10] = from_scan_out_to_bus10;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[10:10] = bus_register_out[11];
    end else begin
      bus_register_out_d0[10:10] = bus_register_out[10:10];
    end
  end else
                      bus_register_out_d0[10:10] = bus_register_in[10:10];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out9_mux9 (
      .o                              ( bus_register_out_d[9]  ),
      .sa                             ( (drive_bus_out_gated[9] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[9]  ),
      .b                              ( bus_register_out_d0[9]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 9) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 9 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[9:9] = status_to_bus_above_packet_boundary_next_word[9:9];
      end else begin
        bus_register_out_d1[9:9] = status_to_bus_above_packet_boundary_current_word[9:9];
      end
    end else begin
      bus_register_out_d1[9:9] = status_to_bus_below_packet_boundary[9:9];
    end
  end else begin
    bus_register_out_d1[9:9] = from_scan_out_to_bus9;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[9:9] = bus_register_out[10];
    end else begin
      bus_register_out_d0[9:9] = bus_register_out[9:9];
    end
  end else
                        bus_register_out_d0[9:9] = bus_register_in[9:9];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out8_mux8 (
      .o                              ( bus_register_out_d[8]  ),
      .sa                             ( (drive_bus_out_gated[8] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[8]  ),
      .b                              ( bus_register_out_d0[8]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 8) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 8 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[8:8] = status_to_bus_above_packet_boundary_next_word[8:8];
      end else begin
        bus_register_out_d1[8:8] = status_to_bus_above_packet_boundary_current_word[8:8];
      end
    end else begin
      bus_register_out_d1[8:8] = status_to_bus_below_packet_boundary[8:8];
    end
  end else begin
    bus_register_out_d1[8:8] = from_scan_out_to_bus8;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[8:8] = bus_register_out[9];
    end else begin
      bus_register_out_d0[8:8] = bus_register_out[8:8];
    end
  end else
                          bus_register_out_d0[8:8] = bus_register_in[8:8];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out7_mux7 (
      .o                              ( bus_register_out_d[7]  ),
      .sa                             ( (drive_bus_out_gated[7] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[7]  ),
      .b                              ( bus_register_out_d0[7]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 7) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 7 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[7:7] = status_to_bus_above_packet_boundary_next_word[7:7];
      end else begin
        bus_register_out_d1[7:7] = status_to_bus_above_packet_boundary_current_word[7:7];
      end
    end else begin
      bus_register_out_d1[7:7] = status_to_bus_below_packet_boundary[7:7];
    end
  end else begin
    bus_register_out_d1[7:7] = from_scan_out_to_bus7;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[7:7] = bus_register_out[8];
    end else begin
      bus_register_out_d0[7:7] = bus_register_out[7:7];
    end
  end else
                            bus_register_out_d0[7:7] = bus_register_in[7:7];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out6_mux6 (
      .o                              ( bus_register_out_d[6]  ),
      .sa                             ( (drive_bus_out_gated[6] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[6]  ),
      .b                              ( bus_register_out_d0[6]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 6) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 6 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[6:6] = status_to_bus_above_packet_boundary_next_word[6:6];
      end else begin
        bus_register_out_d1[6:6] = status_to_bus_above_packet_boundary_current_word[6:6];
      end
    end else begin
      bus_register_out_d1[6:6] = status_to_bus_below_packet_boundary[6:6];
    end
  end else begin
    bus_register_out_d1[6:6] = from_scan_out_to_bus6;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[6:6] = bus_register_out[7];
    end else begin
      bus_register_out_d0[6:6] = bus_register_out[6:6];
    end
  end else
                              bus_register_out_d0[6:6] = bus_register_in[6:6];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out5_mux5 (
      .o                              ( bus_register_out_d[5]  ),
      .sa                             ( (drive_bus_out_gated[5] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[5]  ),
      .b                              ( bus_register_out_d0[5]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 5) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 5 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[5:5] = status_to_bus_above_packet_boundary_next_word[5:5];
      end else begin
        bus_register_out_d1[5:5] = status_to_bus_above_packet_boundary_current_word[5:5];
      end
    end else begin
      bus_register_out_d1[5:5] = status_to_bus_below_packet_boundary[5:5];
    end
  end else begin
    bus_register_out_d1[5:5] = from_scan_out_to_bus5;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[5:5] = bus_register_out[6];
    end else begin
      bus_register_out_d0[5:5] = bus_register_out[5:5];
    end
  end else
                                bus_register_out_d0[5:5] = bus_register_in[5:5];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out4_mux4 (
      .o                              ( bus_register_out_d[4]  ),
      .sa                             ( (drive_bus_out_gated[4] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[4]  ),
      .b                              ( bus_register_out_d0[4]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 4) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 4 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[4:4] = status_to_bus_above_packet_boundary_next_word[4:4];
      end else begin
        bus_register_out_d1[4:4] = status_to_bus_above_packet_boundary_current_word[4:4];
      end
    end else begin
      bus_register_out_d1[4:4] = status_to_bus_below_packet_boundary[4:4];
    end
  end else begin
    bus_register_out_d1[4:4] = from_scan_out_to_bus4;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[4:4] = bus_register_out[5];
    end else begin
      bus_register_out_d0[4:4] = bus_register_out[4:4];
    end
  end else
                                  bus_register_out_d0[4:4] = bus_register_in[4:4];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out3_mux3 (
      .o                              ( bus_register_out_d[3]  ),
      .sa                             ( (drive_bus_out_gated[3] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[3]  ),
      .b                              ( bus_register_out_d0[3]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 3) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 3 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[3:3] = status_to_bus_above_packet_boundary_next_word[3:3];
      end else begin
        bus_register_out_d1[3:3] = status_to_bus_above_packet_boundary_current_word[3:3];
      end
    end else begin
      bus_register_out_d1[3:3] = status_to_bus_below_packet_boundary[3:3];
    end
  end else begin
    bus_register_out_d1[3:3] = from_scan_out_to_bus3;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[3:3] = bus_register_out[4];
    end else begin
      bus_register_out_d0[3:3] = bus_register_out[3:3];
    end
  end else
                                    bus_register_out_d0[3:3] = bus_register_in[3:3];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out2_mux2 (
      .o                              ( bus_register_out_d[2]  ),
      .sa                             ( (drive_bus_out_gated[2] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[2]  ),
      .b                              ( bus_register_out_d0[2]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 2) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 2 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[2:2] = status_to_bus_above_packet_boundary_next_word[2:2];
      end else begin
        bus_register_out_d1[2:2] = status_to_bus_above_packet_boundary_current_word[2:2];
      end
    end else begin
      bus_register_out_d1[2:2] = status_to_bus_below_packet_boundary[2:2];
    end
  end else begin
    bus_register_out_d1[2:2] = from_scan_out_to_bus2;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[2:2] = bus_register_out[3];
    end else begin
      bus_register_out_d0[2:2] = bus_register_out[2:2];
    end
  end else
                                      bus_register_out_d0[2:2] = bus_register_in[2:2];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out1_mux1 (
      .o                              ( bus_register_out_d[1]  ),
      .sa                             ( (drive_bus_out_gated[1] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[1]  ),
      .b                              ( bus_register_out_d0[1]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 1) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 1 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[1:1] = status_to_bus_above_packet_boundary_next_word[1:1];
      end else begin
        bus_register_out_d1[1:1] = status_to_bus_above_packet_boundary_current_word[1:1];
      end
    end else begin
      bus_register_out_d1[1:1] = status_to_bus_below_packet_boundary[1:1];
    end
  end else begin
    bus_register_out_d1[1:1] = from_scan_out_to_bus1;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[1:1] = bus_register_out[2];
    end else begin
      bus_register_out_d0[1:1] = bus_register_out[1:1];
    end
  end else
                                        bus_register_out_d0[1:1] = bus_register_in[1:1];
end
 
i0smbn022ab1n02x5 tessent_persistent_cell_bus_register_out0_mux0 (
      .o                              ( bus_register_out_d[0]  ),
      .sa                             ( (drive_bus_out_gated[0] && ~disable_on_chip_compare_contribution) && ~bus_register_ijtag_access_en && ~bus_sync_reset_pulse  ),
      .a                              ( bus_register_out_d1[0]  ),
      .b                              ( bus_register_out_d0[0]  )
);
 
always @ (*) begin
  if (on_chip_compare_enable) begin
    if (start_of_packet && in_bit0_position_in_first_bus_word <= 0) begin
      if (start_of_status_in_bus_above_packet_boundary_next_word <= 0 && status_exists_above_packet_boundary_next_word) begin
        bus_register_out_d1[0:0] = status_to_bus_above_packet_boundary_next_word[0:0];
      end else begin
        bus_register_out_d1[0:0] = status_to_bus_above_packet_boundary_current_word[0:0];
      end
    end else begin
      bus_register_out_d1[0:0] = status_to_bus_below_packet_boundary[0:0];
    end
  end else begin
    bus_register_out_d1[0:0] = from_scan_out_to_bus0;
  end
end
 
always @ (*) begin
  if (bus_register_ijtag_access_en) begin
    if (ijtag_se) begin
      bus_register_out_d0[0:0] = bus_register_out[1];
    end else begin
      bus_register_out_d0[0:0] = bus_register_out[0:0];
    end
  end else
                                          bus_register_out_d0[0:0] = bus_register_in[0:0];
end
 
// synopsys sync_set_reset "bus_sync_reset_pulse"
always @ (posedge clock) begin
  if (bus_sync_reset_pulse) begin
    bus_register_out <= 5'b0;
  end else
    bus_register_out <= bus_register_out_d;
end
 
assign bus_out = bus_register_out;
  
// Result after datapath_shifters processing is used only when start_of_packet is set so value at this point will be correct, and will fit into expected bit count
// spyglass disable_block W116 W164a W484 STARC-2.10.6.1
wire [8:0] in_bits_in_remaining_bus_words_minus_start_of_next_to_scan_word_in_bus = in_bits_in_remaining_bus_words-start_of_next_to_scan_word_in_bus;
// spyglass enable_block W116 W164a W484 STARC-2.10.6.1
// Result after datapath_shifters processing is used only when start_of_packet is set so value at this point will be correct
// spyglass disable_block W116 W164a W484 STARC-2.10.6.1
wire [4:0] in_bit0_position_in_first_bus_word_minus_bits_for_current_word = in_bit0_position_in_first_bus_word - (in_bits_in_remaining_bus_words-start_of_next_to_scan_word_in_bus);
// spyglass enable_block W116 W164a W484 STARC-2.10.6.1
firebird7_in_gate2_tessent_ssn_scan_host_ssh_datapath_shifters datapath_shifters (
  .bus_register_in                                                          ( bus_register_in                                                         ),
  .in_bits_in_remaining_bus_words_minus_start_of_next_to_scan_word_in_bus   ( in_bits_in_remaining_bus_words_minus_start_of_next_to_scan_word_in_bus  ),
  .bus_register_shifted_down_next_to_scan_in_word                           ( bus_register_shifted_down_next_to_scan_in_word                          ),
  .bus_register_shifted_up_current_to_scan_in_word_in_current_packet        ( bus_register_shifted_up_current_to_scan_in_word_in_current_packet       ),
  .bus_register_shifted_up_current_to_scan_in_word_in_next_packet           ( bus_register_shifted_up_current_to_scan_in_word_in_next_packet          ),
  .bus_register_shifted_up_next_to_scan_in_word_in_next_packet              ( bus_register_shifted_up_next_to_scan_in_word_in_next_packet             ),
  .total_to_scan_in_bits                                                    ( total_to_scan_in_bits[2:0]                                              ),
  .sum_of_totals_for_shift                                                  ( sum_of_totals_for_shift                                                 ),
  .in_bit_storage                                                           ( in_bit_storage[7:0]                                                     ),
  .in_bit_storage_d                                                         ( in_bit_storage_d[7:0]                                                   ),
  .expected_value                                                           ( expected_value[1:0]                                                     ),
  .mask_value                                                               ( mask_value[1:0]                                                         ),
  .expected_value_d                                                         ( expected_value_d[1:0]                                                   ),
  .mask_value_d                                                             ( mask_value_d[1:0]                                                       ),
  .start_of_status_in_bus_above_packet_boundary_current_word                ( start_of_status_in_bus_above_packet_boundary_current_word               ),
  .start_of_status_in_bus_above_packet_boundary_next_word                   ( start_of_status_in_bus_above_packet_boundary_next_word                  ),
  .start_of_status_in_bus_below_packet_boundary                             ( start_of_status_in_bus_below_packet_boundary                            ),
  .first_status_in_bus_above_packet_boundary_current_word                   ( first_status_in_bus_above_packet_boundary_current_word                  ),
  .first_status_in_bus_above_packet_boundary_next_word                      ( first_status_in_bus_above_packet_boundary_next_word                     ),
  .first_status_in_bus_below_packet_boundary                                ( first_status_in_bus_below_packet_boundary                               ),
  .status_in_value_for_above_packet_boundary_current_word_shifted_up        ( status_in_value_for_above_packet_boundary_current_word_shifted_up       ),
  .status_in_value_for_above_packet_boundary_next_word_shifted_up           ( status_in_value_for_above_packet_boundary_next_word_shifted_up          ),
  .status_in_value_for_below_packet_boundary_shifted_up                     ( status_in_value_for_below_packet_boundary_shifted_up                    ),
 
  .status_out_value                                                         ( status_out_value                                                        ),
  .status_to_bus_above_packet_boundary_current_word                         ( status_to_bus_above_packet_boundary_current_word                        ),
  .status_to_bus_above_packet_boundary_next_word                            ( status_to_bus_above_packet_boundary_next_word                           ),
  .status_to_bus_below_packet_boundary                                      ( status_to_bus_below_packet_boundary                                     ),
  .from_scan_out_storage                                                    ( from_scan_out_storage                                                   ),
  .from_scan_out_storage_shifted_down_current_word_current_packet           ( from_scan_out_storage_shifted_down_current_word_current_packet          ),
  .from_scan_out_current_word_shifted_up_next_packet                        ( from_scan_out_current_word_shifted_up_next_packet                       ),
  .in_bit0_position_in_first_bus_word_minus_bits_for_current_word           ( in_bit0_position_in_first_bus_word_minus_bits_for_current_word          ),
  .from_scan_out_source                                                     ( from_scan_out_selected[1:0]                                             ),
  .from_scan_out_next_word_shifted_up                                       ( from_scan_out_next_word_shifted_up                                      ),
  .from_scan_out_next_word_shifted_up_next_packet                           ( from_scan_out_next_word_shifted_up_next_packet                          ),
                                                              
  .start_of_next_to_scan_word_in_bus                                        ( start_of_next_to_scan_word_in_bus                                       ),
  .in_bit0_position_in_first_bus_word                                       ( in_bit0_position_in_first_bus_word                                      ),
  .received_in_bit_cnt                                                      ( received_in_bit_cnt                                                     ),
  .received_in_bit_cnt_plus_in_bits_in_remaining_bus_words                  ( received_in_bit_cnt_plus_in_bits_in_remaining_bus_words                 )
 
);
 
endmodule
 
module firebird7_in_gate2_tessent_ssn_scan_host_ssh_fsm (
  input wire             clock,
  input wire             ijtag_se,
  input wire             ijtag_sel,
  input wire             ijtag_clock,
  input wire             streaming_through_ijtag_en,
  output wire            scan_en_from_fsm,
  output wire            edt_update_from_fsm,
  output wire            edt_clock_en_from_fsm,
  input wire  [2:0]      capture_packets,
  output wire            ext_capture_mode,
  input wire  [2:0]      packets_per_capture_clock_minus_one,
  input wire             enable,
  input wire             enable_sync_reset,
  output wire            enable_sync,
  input wire             bus_register_ijtag_access_en,
  input wire             bus_enable_sync_reset,
  output wire            bus_sync_reset_pulse,
  input wire  [30:0]     initial_offset,
  input wire             bus_in0,
  input wire             relative_initial_offset_enable,
  input wire  [4:0]      bus_width,
  input wire  [8:0]      bits_per_packet,
  input wire             init_scan_load_used,
  input wire             disable_first_scan_load_masking,
  input wire  [2:0]      to_scan_in_bits,
  input wire  [1:0]      from_scan_out_bits,
  input wire  [27:0]     total_shift_cnt_minus_one,
  input wire  [27:0]     extra_shift_packets,
  input wire  [15:0]     packet_size,
  input wire             force_suppress_capture,
  input wire  [4:0]      initial_bit0_position,
  input wire  [3:0]      scan_en_transition_packets,
  input wire  [3:0]      scan_en_launch_packet,
  input wire  [3:0]      edt_update_falling_transition_words,
  input wire  [3:0]      edt_update_falling_launch_word,
  input wire             to_scan_in0_d,
  input wire             min_capture_clock_low_width_is_zero,
  output wire            start_of_packet,
  output wire            ready_to_shift, ready_to_capture, pulse_width_packet_cnt_is_zero,
  output wire [4:0]      in_bit0_position_in_first_bus_word,
  output reg  [8:0]      in_bits_in_remaining_bus_words,
  output reg  [9:0]      received_in_bit_cnt,
  output reg             last_in_bits_in_current_bus_word,
  output wire            clear_sticky_status,
  input wire             on_chip_compare_enable,
  input wire  [7:0]      on_chip_compare_group_count,
  input wire  [7:0]      on_chip_compare_group,
  output reg  [1:0]      first_status_in_bus_below_packet_boundary,
  output reg  [4:0]      start_of_status_in_bus_below_packet_boundary,
  output reg  [1:0]      first_status_in_bus_above_packet_boundary_current_word,
  output reg  [1:0]      first_status_in_bus_above_packet_boundary_next_word,
  output reg  [4:0]      start_of_status_in_bus_above_packet_boundary_current_word,
  output reg  [4:0]      start_of_status_in_bus_above_packet_boundary_next_word,
  output reg             status_exists_below_packet_boundary,
  output reg             status_exists_above_packet_boundary_current_word,
  output reg             status_exists_above_packet_boundary_next_word,
  output reg  [1:0]      use_expected_storage,
  output reg  [1:0]      use_mask_storage,
  output reg  [1:0]      use_from_scan_out_storage_for_status,
  output wire [1:0]      compare_en_gated,
  output wire [2:0]      total_to_scan_in_bits,
  output wire [1:0]      total_from_scan_out_bits,
  output reg             first_shift_packet_drive_out,
  output wire [19:0]     drive_bus_out_gated,
  output reg             drive_bus_out_disable,
  output reg  [7:0]      in_bit_storage_en,
  input wire             loop_back_en,
  output wire            select_capture_clock_low_width,
  output wire            scan_en_launch_packet_equal_transition_packets,
  output reg  [4:0]      start_of_next_to_scan_word_in_bus,
  output reg  [4:0]      next_to_scan_word_bits_in_bus,
  output wire            have_in_bits_in_remaining_bus_words,
  output reg             the_next_to_scan_word_starts_in_bus,
  output wire            inject_tck_as_capture_clock,
  input wire             infinite_shift_mode,
  output wire            last_scan_load_is_done
);
 
// Reg and wire declarations
 
reg    [30:0]            initial_offset_cnt;
reg                      start_initial_offset_cnt;
wire                     start_initial_offset_cnt_gated;
reg    [15:0]            packet_bit_cnt;
reg    [8:0]             next_in_bits_in_remaining_bus_words;
reg    [9:0]             next_received_in_bit_cnt;
reg    [27:0]            to_scan_in_word_cnt;
reg                      enable_sync_ff;
reg                      bus_sync_reset_ff;
reg    [2:0]             state, next_state;
reg                      edt_update_control0, next_edt_update_control0;
wire                     suppress_capture;
reg                      last_scan_load_is_done_int, next_last_scan_load_is_done;
reg                      post_shift2_control0, next_post_shift2_control0;
reg                      next_drive_bus_out_disable;
reg                      first_scan_load_is_done, next_first_scan_load_is_done;
reg                      ready_for_packets;
reg    [2:0]             capture_cycle_cnt, next_capture_cycle_cnt;
reg                      scan_en_ff, next_scan_en_ff;
reg                      edt_update_ff, next_edt_update_ff;
reg    [3:0]             mcp_or_pulse_width_packet_cnt, next_mcp_or_pulse_width_packet_cnt;
reg                      load_scan_en_transition_packets, load_edt_update_falling_transition_words, load_packets_per_capture_clock_minus_one, decrement_mcp_or_pulse_width_packet_cnt;
reg                      drive_out_packets, next_drive_out_packets;
wire                     going_to_edt_update, going_to_first_shift;
wire   [8:0]             expected_bit_num;
wire   [8:0]             received_in_bit_cnt_total;
wire   [4:0]             in_bits_in_first_bus_word;
reg                      last_post_shift_word, next_last_post_shift_word;
reg    [19:0]            drive_bus_out;
reg    [1:0]             status_present_in_bus;
reg    [4:0]             start_of_status_in_bus;
wire   [1:0]             expected_storage_en;
wire   [1:0]             mask_storage_en;
reg    [1:0]             compare_en;
reg                      next_first_shift_packet_drive_out;
wire                     select_sticky_status;
wire   [8:0]             total_scan_bits;
wire                     state_is_edt_update;
reg                      state_is_edt_update_ff;
reg                      ijtag_se_pipelined;
wire                     non_word_width_states;
 
localparam               edt_update_enum          = 3'd0;
localparam               first_shift_enum         = 3'd1;
localparam               shift_enum               = 3'd2;
localparam               last_two_so_shifts_enum  = 3'd3;
localparam               extra_shift_packets_enum = 3'd4;
localparam               pre_capture_mcp_enum     = 3'd5;
localparam               capture_enum             = 3'd6;
localparam               post_capture_mcp_enum    = 3'd7;
localparam               below_packet_boundary = 0;
localparam               above_packet_boundary = 1;
localparam               current_word          = 1;
localparam               next_word             = 0;
 
// Body implementation
assign scan_en_launch_packet_equal_transition_packets = (scan_en_transition_packets == scan_en_launch_packet);
assign non_word_width_states                          = (state == extra_shift_packets_enum) || (state == pre_capture_mcp_enum) || 
                                                        (state == capture_enum) || (state == post_capture_mcp_enum);
assign select_capture_clock_low_width                 = (non_word_width_states & !(next_state == edt_update_enum)) || 
                                                        ((state == last_two_so_shifts_enum) && (next_state != last_two_so_shifts_enum));
assign total_to_scan_in_bits = to_scan_in_bits;
assign total_from_scan_out_bits = from_scan_out_bits;
assign total_scan_bits = ({{6{1'b0}}, total_to_scan_in_bits}>={{7{1'b0}}, total_from_scan_out_bits}) ? {{6{1'b0}}, total_to_scan_in_bits} : {{7{1'b0}}, total_from_scan_out_bits};
 
always @ (posedge clock or posedge enable_sync_reset) begin
  if (enable_sync_reset) begin
    enable_sync_ff       <= 1'b0;
  end else begin
    enable_sync_ff       <= enable;
  end
end
 
always @ (posedge clock or posedge bus_enable_sync_reset) begin
  if (bus_enable_sync_reset) begin
    bus_sync_reset_ff       <= 1'b1;
  end else begin
    bus_sync_reset_ff       <= 1'b0;
  end
end
 
assign bus_sync_reset_pulse = bus_sync_reset_ff & ~bus_register_ijtag_access_en;
 
i0sbfn000ab1n02x5 tessent_persistent_cell_enable_sync_buf (
  .a                    ( enable_sync_ff  ),
  .o                    ( enable_sync  )
);
 
i0sbfn000ab1n02x5 tessent_persistent_cell_state_is_edt_update_buf (
  .a                    ( state_is_edt_update_ff  ),
  .o                    ( state_is_edt_update  )
);
    
assign ext_capture_mode            = (capture_packets == 3'b0);
assign edt_update_from_fsm              = enable_sync && edt_update_ff;
assign edt_clock_en_from_fsm            = enable_sync && state_is_edt_update && (mcp_or_pulse_width_packet_cnt == edt_update_falling_transition_words);
assign ready_to_shift                   = (state == first_shift_enum) || (state == shift_enum);
assign ready_to_capture                 = (state == capture_enum);
assign scan_en_from_fsm                 = enable_sync && scan_en_ff;
assign inject_tck_as_capture_clock      = (enable_sync & ~(ijtag_se & ijtag_sel & streaming_through_ijtag_en) & ~ijtag_se_pipelined & ~suppress_capture & ext_capture_mode & ((state == post_capture_mcp_enum) || (state == pre_capture_mcp_enum) || (state == extra_shift_packets_enum) || (state == last_two_so_shifts_enum)));
// Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
// spyglass disable_block W362 STARC05-2.10.3.1
assign pulse_width_packet_cnt_is_zero   = (packets_per_capture_clock_minus_one == 3'b0) ? 1'b1 :
                                          (min_capture_clock_low_width_is_zero) ? (mcp_or_pulse_width_packet_cnt == packets_per_capture_clock_minus_one) 
                                                                                : (mcp_or_pulse_width_packet_cnt == 4'b0);
// spyglass enable_block W362 STARC05-2.10.3.1
 
always @ (posedge ijtag_clock) begin
  ijtag_se_pipelined <= ijtag_se & ijtag_sel & streaming_through_ijtag_en;
end
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    state                         <= edt_update_enum;
    state_is_edt_update_ff        <= 1'b1;
    edt_update_control0           <= 1'b0;
    last_scan_load_is_done_int    <= 1'b0;
    drive_bus_out_disable         <= ~loop_back_en & ~disable_first_scan_load_masking;
    first_scan_load_is_done       <= 1'b0;
    capture_cycle_cnt             <= capture_packets;
    scan_en_ff                    <= 1'b1;
    edt_update_ff                 <= 1'b1;
    mcp_or_pulse_width_packet_cnt <= edt_update_falling_transition_words;
    last_post_shift_word          <= 1'b0;
    drive_out_packets             <= 1'b0;
    first_shift_packet_drive_out  <= 1'b0;
    post_shift2_control0          <= 1'b0;
  end else begin
    state                         <= next_state;
    state_is_edt_update_ff        <= (next_state == edt_update_enum);
    edt_update_control0           <= next_edt_update_control0;
    last_scan_load_is_done_int    <= next_last_scan_load_is_done;
    drive_bus_out_disable         <= next_drive_bus_out_disable;
    first_scan_load_is_done       <= next_first_scan_load_is_done;
    capture_cycle_cnt             <= next_capture_cycle_cnt;
    scan_en_ff                    <= next_scan_en_ff;
    edt_update_ff                 <= next_edt_update_ff;
    mcp_or_pulse_width_packet_cnt <= next_mcp_or_pulse_width_packet_cnt;
    last_post_shift_word          <= next_last_post_shift_word;
    drive_out_packets             <= next_drive_out_packets;
    first_shift_packet_drive_out  <= next_first_shift_packet_drive_out;
    post_shift2_control0          <= next_post_shift2_control0;
  end
end
always @ (*) begin
  next_capture_cycle_cnt        = capture_cycle_cnt; 
  if (state == capture_enum && last_in_bits_in_current_bus_word && mcp_or_pulse_width_packet_cnt == 4'b0) begin
    if (capture_cycle_cnt == 3'b1) begin
      next_capture_cycle_cnt = capture_packets;
    end else begin
      next_capture_cycle_cnt = capture_cycle_cnt - 3'b1;
    end
  end
end 
always @ (*) begin
  next_drive_out_packets    = drive_out_packets;
  next_first_shift_packet_drive_out = first_shift_packet_drive_out;
  if (last_in_bits_in_current_bus_word) begin
    if ((state == edt_update_enum) && (mcp_or_pulse_width_packet_cnt == 4'b0) && select_sticky_status) begin
      next_first_shift_packet_drive_out = 1'b1;
    end else if (state == first_shift_enum) begin
      next_first_shift_packet_drive_out = 1'b0;
    end
    if ((state == shift_enum) || ((state == edt_update_enum) && (mcp_or_pulse_width_packet_cnt == 4'b0) && select_sticky_status)) begin
      next_drive_out_packets = 1'b1;
    end else if (((state == last_two_so_shifts_enum) && last_post_shift_word) || (state == first_shift_enum)) begin
      next_drive_out_packets = 1'b0;
    end
  end
end
 
always @ (*) begin
  next_edt_update_control0 = edt_update_control0;
  if (last_in_bits_in_current_bus_word && state_is_edt_update && (mcp_or_pulse_width_packet_cnt == edt_update_falling_transition_words)) begin
    next_edt_update_control0 = to_scan_in0_d;
  end
end
 
assign suppress_capture = edt_update_control0 || force_suppress_capture;
assign last_scan_load_is_done = last_scan_load_is_done_int & ~force_suppress_capture;
  
assign select_sticky_status = edt_update_control0 && force_suppress_capture && loop_back_en;
  
always @ (*) begin
  next_last_scan_load_is_done = last_scan_load_is_done_int;
  if (last_in_bits_in_current_bus_word && (state == last_two_so_shifts_enum) && ~last_post_shift_word) begin
    next_last_scan_load_is_done = to_scan_in0_d || last_scan_load_is_done;
  end
end
 
always @ (*) begin
  next_post_shift2_control0 = post_shift2_control0;
  if (last_in_bits_in_current_bus_word && (state == last_two_so_shifts_enum) && last_post_shift_word) begin
    next_post_shift2_control0 = to_scan_in0_d;
  end else if (last_in_bits_in_current_bus_word && (state == shift_enum)) begin
    next_post_shift2_control0 = 1'b0;
  end
end
assign clear_sticky_status = post_shift2_control0 && (state == shift_enum);
   
always @ (*) begin
  next_drive_bus_out_disable = drive_bus_out_disable;
  if (state_is_edt_update && last_scan_load_is_done) begin
    next_drive_bus_out_disable = 1'b1;
  end else if (going_to_edt_update && !last_scan_load_is_done && (first_scan_load_is_done || ~init_scan_load_used || disable_first_scan_load_masking)) begin
    next_drive_bus_out_disable = 1'b0;
  end
end
always @ (*) begin
  next_first_scan_load_is_done = first_scan_load_is_done;
  if (going_to_edt_update) begin
    next_first_scan_load_is_done = 1'b1;
  end
end
  
always @ (*) begin
  next_mcp_or_pulse_width_packet_cnt    = mcp_or_pulse_width_packet_cnt;
  if (load_edt_update_falling_transition_words || load_scan_en_transition_packets || load_packets_per_capture_clock_minus_one) begin
    if (load_edt_update_falling_transition_words) begin
      next_mcp_or_pulse_width_packet_cnt  = edt_update_falling_transition_words;
    end else if (load_scan_en_transition_packets) begin
      next_mcp_or_pulse_width_packet_cnt  = scan_en_transition_packets;
    end else begin
      next_mcp_or_pulse_width_packet_cnt  = {1'b0, packets_per_capture_clock_minus_one};
    end
  end else if ((mcp_or_pulse_width_packet_cnt != 4'b0) && decrement_mcp_or_pulse_width_packet_cnt) begin
    next_mcp_or_pulse_width_packet_cnt  = mcp_or_pulse_width_packet_cnt - 4'b1;
  end
end
always @ (*) begin
  load_scan_en_transition_packets          = 1'b0;
  load_edt_update_falling_transition_words = 1'b0;
  load_packets_per_capture_clock_minus_one = 1'b0;
  decrement_mcp_or_pulse_width_packet_cnt  = 1'b0;
  if (last_in_bits_in_current_bus_word) begin
    if (((state != first_shift_enum) && (next_state == first_shift_enum)) ||
        ((state != post_capture_mcp_enum) && (next_state == post_capture_mcp_enum) && ~(suppress_capture && ~ext_capture_mode))) begin
      load_scan_en_transition_packets = 1'b1;
    end
    if ((state != edt_update_enum) && (next_state == edt_update_enum) || !ready_for_packets) begin
      load_edt_update_falling_transition_words = 1'b1;
    end
    if (((state != capture_enum) && (next_state == capture_enum)) ||
        ((next_state == capture_enum) && (mcp_or_pulse_width_packet_cnt == 4'b0))) begin
      load_packets_per_capture_clock_minus_one = 1'b1;
    end
    // In case where max_scan_chain_length = 1 extra_shift_packets and to_scan_in_word_cnt comparisons will always be true
    // spyglass disable_block AlwaysFalseTrueCond-ML
    if ( state_is_edt_update || 
         ((state == last_two_so_shifts_enum) && (( last_post_shift_word && (extra_shift_packets <= 28'd1)) ||
                                                 (~last_post_shift_word && (extra_shift_packets == 28'd0)))) ||
         ((state == extra_shift_packets_enum) && ( to_scan_in_word_cnt  <= 28'd1)) ||
         (state == pre_capture_mcp_enum) ||
         (state == capture_enum) ||
         (state == post_capture_mcp_enum)) begin
    // spyglass enable_block AlwaysFalseTrueCond-ML
     decrement_mcp_or_pulse_width_packet_cnt  = 1'b1;
    end
  end
end  
assign going_to_edt_update = (state != edt_update_enum) && (next_state == edt_update_enum);
assign going_to_first_shift = (state != first_shift_enum) && (next_state == first_shift_enum);
always @ (*) begin
  next_scan_en_ff               = scan_en_ff;
  next_edt_update_ff            = edt_update_ff;
  case (state)
    edt_update_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        if (~last_scan_load_is_done) begin
          next_scan_en_ff       = 1'b1;
        end
        if (mcp_or_pulse_width_packet_cnt == edt_update_falling_launch_word) begin
          next_edt_update_ff    = 1'b0;
        end
      end
    end
    
    shift_enum : begin
      if (last_in_bits_in_current_bus_word && (to_scan_in_word_cnt == extra_shift_packets) && (scan_en_transition_packets == scan_en_launch_packet) && ~infinite_shift_mode) begin
        next_edt_update_ff    = suppress_capture;
      end
    end
    last_two_so_shifts_enum : begin
      if (last_in_bits_in_current_bus_word) begin
    // In case where max_scan_chain_length = 1 extra_shift_packets comparison will always be true
    // spyglass disable_block AlwaysFalseTrueCond-ML
        if ((mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) && ((last_post_shift_word && (extra_shift_packets <= 28'd1)) ||
                                                                         (~last_post_shift_word && (extra_shift_packets == 28'd0)))) begin
    // spyglass enable_block AlwaysFalseTrueCond-ML
          next_scan_en_ff = suppress_capture;
        end
        if ((next_mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) || (next_state == edt_update_enum)) begin
          next_edt_update_ff    = suppress_capture;
        end
      end
    end
    extra_shift_packets_enum : begin
      if (last_in_bits_in_current_bus_word) begin
    // In case where max_scan_chain_length = 1 to_scan_in_word_cnt comparison will always be true
    // spyglass disable_block AlwaysFalseTrueCond-ML
        if (to_scan_in_word_cnt <= 28'b1) begin
    // spyglass enable_block AlwaysFalseTrueCond-ML
          if ((mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) || 
              (next_state == capture_enum)) begin
            next_scan_en_ff = suppress_capture;
          end
        end
        if (to_scan_in_word_cnt == 28'b0) begin
          if (suppress_capture) begin
            if ((mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) & ~last_scan_load_is_done) begin
              next_edt_update_ff    = 1'b1;
            end
          end else begin
            if (ext_capture_mode) begin
              if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                if ((scan_en_transition_packets == scan_en_launch_packet) & ~last_scan_load_is_done) begin
                   next_edt_update_ff    = 1'b1;
                end
              end
            end
          end
        end
      end
    end
    pre_capture_mcp_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        if ((mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) || (next_state != pre_capture_mcp_enum)) begin
          next_scan_en_ff = suppress_capture;
        end
        if (suppress_capture) begin
          if ((mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) & ~last_scan_load_is_done) begin
            next_edt_update_ff    = 1'b1;
          end
        end
      end
    end
    capture_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
          if (capture_cycle_cnt == 3'b1) begin
            if ((scan_en_transition_packets == scan_en_launch_packet) & ~last_scan_load_is_done) begin
              next_edt_update_ff    = 1'b1;
            end
          end
        end
      end
    end
    post_capture_mcp_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        if ((next_mcp_or_pulse_width_packet_cnt == scan_en_launch_packet || going_to_edt_update) & ~last_scan_load_is_done) begin
          next_edt_update_ff    = 1'b1;
        end
        if ((mcp_or_pulse_width_packet_cnt == scan_en_launch_packet) & ~last_scan_load_is_done) begin
          next_scan_en_ff = 1'b1;
        end
      end
    end
  endcase
end
  
always @ (*) begin
  
  next_state                    = state;
  next_last_post_shift_word     = last_post_shift_word;
   
  case (state)
    edt_update_enum : begin
      if (last_in_bits_in_current_bus_word && mcp_or_pulse_width_packet_cnt == 4'b0) begin
        next_state                  = first_shift_enum;
      end
    end
    
    first_shift_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        next_state = shift_enum;
      end
    end
 
    shift_enum : begin
      if (last_in_bits_in_current_bus_word && (to_scan_in_word_cnt == extra_shift_packets) && ~infinite_shift_mode) begin
        next_state = last_two_so_shifts_enum;
      end
    end
 
    last_two_so_shifts_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        if (!last_post_shift_word) begin
          next_last_post_shift_word = 1'b1;
        end else begin
          next_last_post_shift_word = 1'b0;
          if (extra_shift_packets != 28'b0) begin
            next_state = extra_shift_packets_enum;
          end else begin
            if (suppress_capture) begin
              if (ext_capture_mode) begin
                if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                  if (scan_en_transition_packets == 4'b0) begin
                    next_state            = edt_update_enum;
                  end else begin
                    next_state            = post_capture_mcp_enum;
                  end
                end else begin
                  next_state                 = pre_capture_mcp_enum;
                end
              end else begin
                if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                  next_state                 = edt_update_enum;
                end else begin
                  next_state                 = pre_capture_mcp_enum;
                end
              end
            end else begin
              if (ext_capture_mode) begin
                if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                  if (scan_en_transition_packets == 4'b0) begin
                    next_state            = edt_update_enum;
                  end else begin
                    next_state            = post_capture_mcp_enum;
                  end
                end else begin
                  next_state            = pre_capture_mcp_enum;
                end
              end else begin
                if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                  next_state            = capture_enum;
                end else begin
                  next_state            = pre_capture_mcp_enum;
                end
              end
            end
          end
        end
      end
    end
 
    extra_shift_packets_enum : begin
      if (last_in_bits_in_current_bus_word) begin
        if (to_scan_in_word_cnt == 28'b0) begin
          if (suppress_capture) begin
            if (ext_capture_mode) begin
              if (mcp_or_pulse_width_packet_cnt != 4'b0) begin
                next_state          = pre_capture_mcp_enum;
              end else begin
                next_state          = post_capture_mcp_enum;
              end
            end else begin
              if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                next_state                 = edt_update_enum;
              end else begin
                next_state                 = pre_capture_mcp_enum;
              end
            end
          end else begin
            if (ext_capture_mode) begin
              if (mcp_or_pulse_width_packet_cnt != 4'b0) begin
                next_state          = pre_capture_mcp_enum;
              end else begin
                next_state          = post_capture_mcp_enum;
              end
            end else begin
              if (mcp_or_pulse_width_packet_cnt == 4'b0) begin
                next_state            = capture_enum;
              end else begin
                next_state            = pre_capture_mcp_enum;
              end
            end
          end
        end
      end
    end
 
    pre_capture_mcp_enum : begin
      if (last_in_bits_in_current_bus_word && mcp_or_pulse_width_packet_cnt == 4'b0) begin
        if (suppress_capture) begin
          if (ext_capture_mode) begin
            next_state          = post_capture_mcp_enum;
          end else begin
            next_state          = edt_update_enum;
          end
        end else begin
          if (ext_capture_mode) begin
            next_state          = post_capture_mcp_enum;
          end else begin
            next_state            = capture_enum;
          end
        end
      end
    end
 
    capture_enum : begin
      if (last_in_bits_in_current_bus_word && mcp_or_pulse_width_packet_cnt == 4'b0 && capture_cycle_cnt == 3'b1) begin
        if (scan_en_transition_packets == 4'b0) begin
          next_state          = edt_update_enum;
        end else begin
          next_state          = post_capture_mcp_enum;
        end
      end
    end
    post_capture_mcp_enum : begin
      if (last_in_bits_in_current_bus_word && mcp_or_pulse_width_packet_cnt <= 4'b1) begin
        next_state                 = edt_update_enum;
      end
    end
 
  endcase
end
 
i0sorn002ab1n02x5 tessent_persistent_cell_start_initial_offset_cnt (
  .a                    ( start_initial_offset_cnt  ),
  .b                    ( bus_in0  ),
  .o                    ( start_initial_offset_cnt_gated  )
);
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    start_initial_offset_cnt <= ~relative_initial_offset_enable;
  end else begin
    start_initial_offset_cnt <= start_initial_offset_cnt_gated;
  end
end
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    initial_offset_cnt <= initial_offset;
    ready_for_packets   <= 1'b0;
  end else begin
    if (start_initial_offset_cnt) begin
      if (initial_offset_cnt != 31'b0) begin
        initial_offset_cnt <= initial_offset_cnt - 31'b1;
      end
      ready_for_packets    <= (initial_offset_cnt[30:1] == 30'b0);
    end
  end
end
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    to_scan_in_word_cnt <= total_shift_cnt_minus_one;
  end else begin  
    if (~((state==first_shift_enum) || (state==shift_enum) || (state==last_two_so_shifts_enum) || (state==extra_shift_packets_enum))) begin
      to_scan_in_word_cnt <= total_shift_cnt_minus_one;
    end else begin
      if (to_scan_in_word_cnt != 28'b0 && last_in_bits_in_current_bus_word && !(state==last_two_so_shifts_enum)) begin
        to_scan_in_word_cnt <= to_scan_in_word_cnt - 28'b1;
      end
    end
  end
end
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    packet_bit_cnt <= 16'b0;
  end else begin
    if (~ready_for_packets) begin
      if (initial_bit0_position == 5'b0) begin
        packet_bit_cnt <= packet_size;
      end else begin
        packet_bit_cnt <= {11'b0, initial_bit0_position};
      end
    end else begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (packet_bit_cnt > bus_width) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // Borrow bit accomodation not needed because of previous if statement
        // spyglass disable_block W484 STARC-2.10.6.1
        packet_bit_cnt <= packet_bit_cnt - bus_width;
        // spyglass enable_block W484 STARC-2.10.6.1
      end else begin
        // packet_bit_cnt always handle packet_size and previous if statement guards bus_width and packet_bit_cnt subtraction
        // spyglass disable_block W484 STARC-2.10.6.1
        packet_bit_cnt <= packet_size - (bus_width - packet_bit_cnt[4:0]);
        // spyglass enable_block W484 STARC-2.10.6.1
      end
    end
  end
end
 
// Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
// spyglass disable_block W362 STARC05-2.10.3.1
assign start_of_packet =                           ready_for_packets &&
                                                   (packet_bit_cnt < bus_width || packet_bit_cnt == packet_size);
// spyglass enable_block W362 STARC05-2.10.3.1
 
assign in_bit0_position_in_first_bus_word =        (packet_bit_cnt==packet_size)
                                                   ? 5'b0
                                                   : packet_bit_cnt[4:0];
 
// False violation. RHS has proper width and fits into LHS.
// spyglass disable_block W164b
wire [9:0] in_bit0_position_in_first_bus_word_plus_bits_per_packet = in_bit0_position_in_first_bus_word + bits_per_packet;
// spyglass enable_block W164b
always @ (*) begin
  // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
  // spyglass disable_block W362 STARC05-2.10.3.1
  if (start_of_packet && (in_bit0_position_in_first_bus_word_plus_bits_per_packet > bus_width)) begin
  // spyglass enable_block W362 STARC05-2.10.3.1
    // There won't be overflow because in this case always next_in_bits_in_remaining_bus_words will be less than bits_per_packet due to how SSN protocol works
    // spyglass disable_block W164a W484 STARC-2.10.6.1
    next_in_bits_in_remaining_bus_words = in_bit0_position_in_first_bus_word + bits_per_packet - bus_width;
    // spyglass enable_block W164a W484 STARC-2.10.6.1
  end else begin
    // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
    // spyglass disable_block W362 STARC05-2.10.3.1
    if (in_bits_in_remaining_bus_words > bus_width) begin
    // spyglass enable_block W362 STARC05-2.10.3.1
      // This is guarded in previous if statement so there won't be truncation and negative value
      // spyglass disable_block W116 W164a W484 STARC-2.10.6.1
      next_in_bits_in_remaining_bus_words = in_bits_in_remaining_bus_words - bus_width;
      // spyglass enable_block W116 W164a W484 STARC-2.10.6.1
    end else begin
      next_in_bits_in_remaining_bus_words = 9'b0;
    end
  end
end
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    in_bits_in_remaining_bus_words <= 9'b0;
  end else begin
    if (~ready_for_packets) begin
      in_bits_in_remaining_bus_words <= 9'b0;
    end else begin
      in_bits_in_remaining_bus_words <= next_in_bits_in_remaining_bus_words;
    end
  end
end
 
 
assign compare_en_gated          = compare_en & {2{~drive_bus_out_disable}};
assign received_in_bit_cnt_total = (on_chip_compare_enable)
                                       ? total_to_scan_in_bits + (on_chip_compare_group_count+2'd2) * total_from_scan_out_bits
                                       : total_scan_bits ;
 
assign expected_bit_num = ((state==edt_update_enum) || (state==first_shift_enum) || (state==shift_enum) || (state==last_two_so_shifts_enum))
                               ? received_in_bit_cnt_total 
                               : bits_per_packet;
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_19_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[19]  ),
  .o                ( drive_bus_out_gated[19]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_18_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[18]  ),
  .o                ( drive_bus_out_gated[18]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_17_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[17]  ),
  .o                ( drive_bus_out_gated[17]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_16_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[16]  ),
  .o                ( drive_bus_out_gated[16]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_15_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[15]  ),
  .o                ( drive_bus_out_gated[15]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_14_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[14]  ),
  .o                ( drive_bus_out_gated[14]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_13_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[13]  ),
  .o                ( drive_bus_out_gated[13]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_12_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[12]  ),
  .o                ( drive_bus_out_gated[12]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_11_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[11]  ),
  .o                ( drive_bus_out_gated[11]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_10_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[10]  ),
  .o                ( drive_bus_out_gated[10]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_9_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[9]   ),
  .o                ( drive_bus_out_gated[9]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_8_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[8]   ),
  .o                ( drive_bus_out_gated[8]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_7_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[7]   ),
  .o                ( drive_bus_out_gated[7]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_6_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[6]   ),
  .o                ( drive_bus_out_gated[6]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_5_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[5]   ),
  .o                ( drive_bus_out_gated[5]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_4_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[4]   ),
  .o                ( drive_bus_out_gated[4]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_3_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[3]   ),
  .o                ( drive_bus_out_gated[3]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_2_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[2]   ),
  .o                ( drive_bus_out_gated[2]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_1_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[1]   ),
  .o                ( drive_bus_out_gated[1]  )
);
   
i0sand002ab1n02x5 tessent_persistent_cell_drive_bus_out_gated_0_and (
  .a                ( ready_for_packets && enable_sync && ~drive_bus_out_disable && (total_from_scan_out_bits != 2'b0) ),
  .b                ( drive_bus_out[0]   ),
  .o                ( drive_bus_out_gated[0]  )
);
   
// create larger wire so that the sums don't get truncated before being compared in the < operators below
// result always will fit because it cannot exceed maximum expected bit count.
// spyglass disable_block W164a W164b W484 STARC-2.10.6.1
wire [9:0] received_in_bit_cnt_plus_in_bits_in_remaining_bus_words                                = received_in_bit_cnt + in_bits_in_remaining_bus_words;
wire [10:0] received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word = received_in_bit_cnt + in_bits_in_remaining_bus_words + in_bits_in_first_bus_word;
wire [9:0] in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word                          = in_bits_in_remaining_bus_words + in_bits_in_first_bus_word;
wire [9:0] received_in_bit_cnt_plus_bus_width                                                     = received_in_bit_cnt + bus_width;
wire [4:0] in_bit0_position_in_first_bus_word_plus_in_bits_in_first_bus_word                      = in_bit0_position_in_first_bus_word + in_bits_in_first_bus_word;
wire [8:0] start_of_status                                                                        = total_to_scan_in_bits+(2+on_chip_compare_group-1)*total_from_scan_out_bits;
wire [8:0] end_of_status                                                                          = total_to_scan_in_bits+(2+on_chip_compare_group-1+1)*total_from_scan_out_bits-1;
// spyglass enable_block W164a W164b W484 STARC-2.10.6.1
   
always @ (*) begin
  if (~enable_sync) begin
    in_bit_storage_en = 8'b0;
    last_in_bits_in_current_bus_word = 1'b0;
    next_received_in_bit_cnt = 10'b0;
  end else begin
    // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
    // spyglass disable_block W362 STARC05-2.10.3.1
    if (in_bits_in_remaining_bus_words > bus_width) begin
      if (received_in_bit_cnt_plus_bus_width < expected_bit_num || last_post_shift_word) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // Result always will fit because it's guarded by received_in_bit_cnt_plus_bus_width < expected_bit_num
        // spyglass disable_block W164a W484 STARC-2.10.6.1
        next_received_in_bit_cnt = received_in_bit_cnt + bus_width;
        // spyglass enable_block W164a W484 STARC-2.10.6.1
        last_in_bits_in_current_bus_word = 1'b0;
        in_bit_storage_en[0] = (received_in_bit_cnt <= 0 && received_in_bit_cnt_plus_bus_width > 0 && ~going_to_first_shift);
        in_bit_storage_en[1] = (received_in_bit_cnt <= 1 && received_in_bit_cnt_plus_bus_width > 1 && ~going_to_first_shift);
        in_bit_storage_en[2] = (received_in_bit_cnt <= 2 && received_in_bit_cnt_plus_bus_width > 2 && ~going_to_first_shift);
        in_bit_storage_en[3] = (received_in_bit_cnt <= 3 && received_in_bit_cnt_plus_bus_width > 3 && ~going_to_first_shift);
        in_bit_storage_en[4] = (received_in_bit_cnt <= 4 && received_in_bit_cnt_plus_bus_width > 4 && ~going_to_first_shift);
        in_bit_storage_en[5] = (received_in_bit_cnt <= 5 && received_in_bit_cnt_plus_bus_width > 5 && ~going_to_first_shift);
        in_bit_storage_en[6] = (received_in_bit_cnt <= 6 && received_in_bit_cnt_plus_bus_width > 6 && ~going_to_first_shift);
        in_bit_storage_en[7] = (received_in_bit_cnt <= 7 && received_in_bit_cnt_plus_bus_width > 7 && ~going_to_first_shift);
      end else begin
        last_in_bits_in_current_bus_word = 1'b1;
        // Result always will fit because it's guarded by if statement, those are last bits to receive so borrow condition won't exist
        // spyglass disable_block W484 STARC-2.10.6.1
        next_received_in_bit_cnt = received_in_bit_cnt_plus_bus_width - expected_bit_num;
        // spyglass enable_block W484 STARC-2.10.6.1
        in_bit_storage_en[0] = (received_in_bit_cnt <= 0 && ~going_to_first_shift || next_received_in_bit_cnt > 0);
        in_bit_storage_en[1] = (received_in_bit_cnt <= 1 && ~going_to_first_shift || next_received_in_bit_cnt > 1);
        in_bit_storage_en[2] = (received_in_bit_cnt <= 2 && ~going_to_first_shift || next_received_in_bit_cnt > 2);
        in_bit_storage_en[3] = (received_in_bit_cnt <= 3 && ~going_to_first_shift || next_received_in_bit_cnt > 3);
        in_bit_storage_en[4] = (received_in_bit_cnt <= 4 && ~going_to_first_shift || next_received_in_bit_cnt > 4);
        in_bit_storage_en[5] = (received_in_bit_cnt <= 5 && ~going_to_first_shift || next_received_in_bit_cnt > 5);
        in_bit_storage_en[6] = (received_in_bit_cnt <= 6 && ~going_to_first_shift || next_received_in_bit_cnt > 6);
        in_bit_storage_en[7] = (received_in_bit_cnt <= 7 && ~going_to_first_shift || next_received_in_bit_cnt > 7);
      end
    end else begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word < expected_bit_num || 
          (last_post_shift_word && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words < expected_bit_num && next_in_bits_in_remaining_bus_words != 9'b0)) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        next_received_in_bit_cnt = received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word[9:0];
        in_bit_storage_en[0] = (received_in_bit_cnt <= 0 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 0 && ~going_to_first_shift);
        in_bit_storage_en[1] = (received_in_bit_cnt <= 1 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 1 && ~going_to_first_shift);
        in_bit_storage_en[2] = (received_in_bit_cnt <= 2 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 2 && ~going_to_first_shift);
        in_bit_storage_en[3] = (received_in_bit_cnt <= 3 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 3 && ~going_to_first_shift);
        in_bit_storage_en[4] = (received_in_bit_cnt <= 4 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 4 && ~going_to_first_shift);
        in_bit_storage_en[5] = (received_in_bit_cnt <= 5 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 5 && ~going_to_first_shift);
        in_bit_storage_en[6] = (received_in_bit_cnt <= 6 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 6 && ~going_to_first_shift);
        in_bit_storage_en[7] = (received_in_bit_cnt <= 7 && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > 7 && ~going_to_first_shift);
        last_in_bits_in_current_bus_word = 1'b0;
      end else begin
        if (last_post_shift_word) begin
          // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
          // spyglass disable_block W362 STARC05-2.10.3.1
          if (in_bits_in_first_bus_word == expected_bit_num || !have_in_bits_in_remaining_bus_words) begin
          // spyglass enable_block W362 STARC05-2.10.3.1
            next_received_in_bit_cnt = 10'b0;
          end else begin
            // Bits are selected from the mux to fit into the target because bits_per_packet cannot be exceeded
            // spyglass disable_block W164a W164b
            next_received_in_bit_cnt = in_bits_in_first_bus_word;
            // spyglass enable_block W164a W164b
          end
        end else begin
          // next_received_in_bit_cnt won't be overflown due to previous checks
          // spyglass disable_block W164a
          next_received_in_bit_cnt = received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word - expected_bit_num;
          // spyglass enable_block W164a
        end
        in_bit_storage_en[0] = (received_in_bit_cnt <= 0 && ~going_to_first_shift || next_received_in_bit_cnt > 0);
        in_bit_storage_en[1] = (received_in_bit_cnt <= 1 && ~going_to_first_shift || next_received_in_bit_cnt > 1);
        in_bit_storage_en[2] = (received_in_bit_cnt <= 2 && ~going_to_first_shift || next_received_in_bit_cnt > 2);
        in_bit_storage_en[3] = (received_in_bit_cnt <= 3 && ~going_to_first_shift || next_received_in_bit_cnt > 3);
        in_bit_storage_en[4] = (received_in_bit_cnt <= 4 && ~going_to_first_shift || next_received_in_bit_cnt > 4);
        in_bit_storage_en[5] = (received_in_bit_cnt <= 5 && ~going_to_first_shift || next_received_in_bit_cnt > 5);
        in_bit_storage_en[6] = (received_in_bit_cnt <= 6 && ~going_to_first_shift || next_received_in_bit_cnt > 6);
        in_bit_storage_en[7] = (received_in_bit_cnt <= 7 && ~going_to_first_shift || next_received_in_bit_cnt > 7);
        last_in_bits_in_current_bus_word = 1'b1;
      end
    end
  end
end
 
always @ (*) begin
  if (received_in_bit_cnt == 10'b0) begin
    if (have_in_bits_in_remaining_bus_words) begin
      the_next_to_scan_word_starts_in_bus = 1'b1;
      start_of_next_to_scan_word_in_bus = 5'b0;
      if (next_received_in_bit_cnt != 0) begin
        next_to_scan_word_bits_in_bus = next_received_in_bit_cnt[4:0];
      end else begin
        next_to_scan_word_bits_in_bus = received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word[4:0];
      end
    end else if (start_of_packet) begin
      the_next_to_scan_word_starts_in_bus = 1'b1;
      start_of_next_to_scan_word_in_bus = in_bit0_position_in_first_bus_word;
      if (next_received_in_bit_cnt != 0) begin
        next_to_scan_word_bits_in_bus = next_received_in_bit_cnt[4:0];
      end else begin
        next_to_scan_word_bits_in_bus = received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word[4:0];
      end
    end else begin
      the_next_to_scan_word_starts_in_bus = 1'b1;
      start_of_next_to_scan_word_in_bus = 5'b0;
      next_to_scan_word_bits_in_bus     = 5'b0;
    end
  // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
  // spyglass disable_block W362 STARC05-2.10.3.1
  end else if (next_received_in_bit_cnt != 10'b0 && 
              ( in_bits_in_remaining_bus_words <= bus_width && received_in_bit_cnt_plus_in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word > expected_bit_num ||
                in_bits_in_remaining_bus_words > bus_width  && received_in_bit_cnt_plus_bus_width > expected_bit_num ) &&
              (!last_post_shift_word || (start_of_packet && last_in_bits_in_current_bus_word)) ) begin
  // spyglass enable_block W362 STARC05-2.10.3.1
    the_next_to_scan_word_starts_in_bus = 1'b1;
    if (start_of_packet) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (next_received_in_bit_cnt > in_bits_in_first_bus_word) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // Result always will fit into start_of_next_to_scan_word_in_bus so implicit truncation is OK
        // spyglass disable_block W164a W164b W484 STARC-2.10.6.1
        start_of_next_to_scan_word_in_bus = in_bits_in_remaining_bus_words_plus_in_bits_in_first_bus_word - next_received_in_bit_cnt;
        // spyglass enable_block W164a W164b W484 STARC-2.10.6.1
      end else begin
        if (in_bit0_position_in_first_bus_word_plus_in_bits_in_first_bus_word > bus_width) begin
        // Result will fit into start_of_next_to_scan_word_in_bus because it is guarded by (next_received_in_bit_cnt > in_bits_in_first_bus_word) if statement
        // spyglass disable_block W484 STARC-2.10.6.1
          start_of_next_to_scan_word_in_bus = bus_width - next_received_in_bit_cnt[4:0];
        // spyglass enable_block W484 STARC-2.10.6.1
        end else begin
        // Borrow condition won't exist here because it is start of packet and this is guarded by an if statement related to the else
        // spyglass disable_block W484 STARC-2.10.6.1
          start_of_next_to_scan_word_in_bus = in_bit0_position_in_first_bus_word_plus_in_bits_in_first_bus_word - next_received_in_bit_cnt[4:0];
        // spyglass enable_block W484 STARC-2.10.6.1
        end
      end
    end else begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (in_bits_in_remaining_bus_words > bus_width) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // Result will be used only when next_to_scan_word_starts_in_bus = 1'b1 and at that point everything will fit with no borrow condition
        // spyglass disable_block W484 STARC-2.10.6.1
        start_of_next_to_scan_word_in_bus = bus_width - next_received_in_bit_cnt[4:0];
        // spyglass enable_block W484 STARC-2.10.6.1
      end else begin
        // Result always will fit into start_of_next_to_scan_word_in_bus so implicit truncation is OK
        // spyglass disable_block W164a W164b W484 STARC-2.10.6.1
        start_of_next_to_scan_word_in_bus = in_bits_in_remaining_bus_words - next_received_in_bit_cnt[8:0];
        // spyglass enable_block W164a W164b W484 STARC-2.10.6.1
      end
    end
    next_to_scan_word_bits_in_bus = next_received_in_bit_cnt[4:0];
  end else begin
    the_next_to_scan_word_starts_in_bus = 1'b0;
    start_of_next_to_scan_word_in_bus = 5'b0;
    next_to_scan_word_bits_in_bus = 5'b0;
  end
end
 
// implicit truncations. Only first 2 bits needs to be used.
// Sum always fits into the result signal because sizes are calculated during hardware generation
// spyglass disable_block W486 W164a W164b W484 STARC-2.10.6.1
assign expected_storage_en              = in_bit_storage_en >> total_to_scan_in_bits;
wire [2:0] sum_of_totals_for_shift      = total_to_scan_in_bits+total_from_scan_out_bits;
assign mask_storage_en                  = in_bit_storage_en >> sum_of_totals_for_shift;
// spyglass enable_block W486 W164a W164b W484 STARC-2.10.6.1
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    use_expected_storage                 <= 2'b0;
    use_mask_storage                     <= 2'b0;
    use_from_scan_out_storage_for_status <= {2{1'b1}};
  end else begin
    if (~ready_for_packets || going_to_edt_update || ~(going_to_first_shift || (state==first_shift_enum) || (state==shift_enum) || (state==last_two_so_shifts_enum))) begin
      use_expected_storage                 <= 2'b0;
      use_mask_storage                     <= 2'b0;
      use_from_scan_out_storage_for_status <= {2{1'b1}};
    end else begin
      if (status_present_in_bus[0] && ~expected_storage_en[0]) begin
        use_expected_storage[0] <= 1'b0;
      end else if (expected_storage_en[0] && ~status_present_in_bus[0]) begin
        use_expected_storage[0] <= 1'b1;
      end
      if (status_present_in_bus[0] && ~mask_storage_en[0]) begin
        use_mask_storage[0] <= 1'b0;
      end else if (mask_storage_en[0] && ~status_present_in_bus[0]) begin
        use_mask_storage[0] <= 1'b1;
      end
      if (status_present_in_bus[0] && ~last_in_bits_in_current_bus_word) begin
        use_from_scan_out_storage_for_status[0] <= 1'b0;
      end else if (last_in_bits_in_current_bus_word && ~status_present_in_bus[0]) begin
        use_from_scan_out_storage_for_status[0] <= 1'b1;
      end
      if (status_present_in_bus[1] && ~expected_storage_en[1]) begin
        use_expected_storage[1] <= 1'b0;
      end else if (expected_storage_en[1] && ~status_present_in_bus[1]) begin
        use_expected_storage[1] <= 1'b1;
      end
      if (status_present_in_bus[1] && ~mask_storage_en[1]) begin
        use_mask_storage[1] <= 1'b0;
      end else if (mask_storage_en[1] && ~status_present_in_bus[1]) begin
        use_mask_storage[1] <= 1'b1;
      end
      if (status_present_in_bus[1] && ~last_in_bits_in_current_bus_word) begin
        use_from_scan_out_storage_for_status[1] <= 1'b0;
      end else if (last_in_bits_in_current_bus_word && ~status_present_in_bus[1]) begin
        use_from_scan_out_storage_for_status[1] <= 1'b1;
      end
    end
  end
end
 
always @ (*) begin
  status_present_in_bus                                     = 2'b0;
  first_status_in_bus_above_packet_boundary_current_word    = 2'b0;
  first_status_in_bus_above_packet_boundary_next_word       = 2'b0;
  start_of_status_in_bus_above_packet_boundary_current_word = 5'b0;
  start_of_status_in_bus_above_packet_boundary_next_word    = 5'b0;
  first_status_in_bus_below_packet_boundary                 = 2'b0;
  start_of_status_in_bus_below_packet_boundary              = 5'b0;
  status_exists_above_packet_boundary_current_word          = 1'b0;
  status_exists_above_packet_boundary_next_word             = 1'b0;
  status_exists_below_packet_boundary                       = 1'b0;
  compare_en                                                = 2'b0;
  drive_bus_out                                             = 20'b0;
  if (have_in_bits_in_remaining_bus_words) begin
    // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
    // spyglass disable_block W362 STARC05-2.10.3.1
    if (the_next_to_scan_word_starts_in_bus && (start_of_next_to_scan_word_in_bus < in_bits_in_remaining_bus_words) && start_of_next_to_scan_word_in_bus != 5'b0) begin
    // spyglass enable_block W362 STARC05-2.10.3.1
      if (~going_to_first_shift) begin    
        status_task(received_in_bit_cnt, 0, start_of_next_to_scan_word_in_bus,below_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
      end
      drive_bus_out_task(received_in_bit_cnt, 0, start_of_next_to_scan_word_in_bus,drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (in_bits_in_remaining_bus_words < bus_width) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        if (~going_to_first_shift) begin
          // This is guarded in previous if statement so there won't be truncation
          // spyglass disable_block W116
          status_task (0,start_of_next_to_scan_word_in_bus,in_bits_in_remaining_bus_words-start_of_next_to_scan_word_in_bus,below_packet_boundary,next_word,start_of_status,end_of_status,total_from_scan_out_bits);
          // spyglass enable_block W116
        end
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        drive_bus_out_task(0,start_of_next_to_scan_word_in_bus,in_bits_in_remaining_bus_words-start_of_next_to_scan_word_in_bus,drive_out_packets || (state==shift_enum),start_of_status,end_of_status,on_chip_compare_enable);
        // spyglass enable_block W116
      end else begin
        if (~going_to_first_shift) begin
          status_task (0,start_of_next_to_scan_word_in_bus,bus_width-start_of_next_to_scan_word_in_bus,below_packet_boundary,next_word,start_of_status,end_of_status,total_from_scan_out_bits);
        end
        drive_bus_out_task(0,start_of_next_to_scan_word_in_bus,bus_width-start_of_next_to_scan_word_in_bus,drive_out_packets || (state==shift_enum),start_of_status,end_of_status,on_chip_compare_enable);
      end
      if (start_of_packet) begin
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        status_task (in_bits_in_remaining_bus_words-start_of_next_to_scan_word_in_bus,in_bit0_position_in_first_bus_word,in_bits_in_first_bus_word,above_packet_boundary,next_word,start_of_status,end_of_status,total_from_scan_out_bits);
        // spyglass enable_block W116
        // This is guarded in previous if statement so there won't be truncation
        // spyglass disable_block W116
        drive_bus_out_task(in_bits_in_remaining_bus_words-start_of_next_to_scan_word_in_bus,in_bit0_position_in_first_bus_word,in_bits_in_first_bus_word,drive_out_packets || (state==shift_enum),start_of_status,end_of_status,on_chip_compare_enable);
        // spyglass enable_block W116
      end
    end else begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (in_bits_in_remaining_bus_words < bus_width) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        if (~going_to_first_shift) begin
          status_task(received_in_bit_cnt,0,in_bits_in_remaining_bus_words,below_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
        end
        drive_bus_out_task(received_in_bit_cnt,0,in_bits_in_remaining_bus_words,drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
      end else begin
        if (~going_to_first_shift) begin
          status_task(received_in_bit_cnt,0,bus_width,below_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
        end
        drive_bus_out_task(received_in_bit_cnt,0,bus_width,drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
      end
      if (start_of_packet) begin
        if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus > in_bit0_position_in_first_bus_word) begin
          status_task(received_in_bit_cnt_plus_in_bits_in_remaining_bus_words, in_bit0_position_in_first_bus_word, start_of_next_to_scan_word_in_bus-in_bit0_position_in_first_bus_word,above_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
          drive_bus_out_task(received_in_bit_cnt_plus_in_bits_in_remaining_bus_words, in_bit0_position_in_first_bus_word, start_of_next_to_scan_word_in_bus-in_bit0_position_in_first_bus_word,drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
          status_task(0,start_of_next_to_scan_word_in_bus,in_bit0_position_in_first_bus_word+in_bits_in_first_bus_word-start_of_next_to_scan_word_in_bus,above_packet_boundary,next_word,start_of_status,end_of_status,total_from_scan_out_bits);
          drive_bus_out_task(0,start_of_next_to_scan_word_in_bus,in_bit0_position_in_first_bus_word+in_bits_in_first_bus_word-start_of_next_to_scan_word_in_bus,(drive_out_packets && next_drive_out_packets) || (state==shift_enum),start_of_status,end_of_status,on_chip_compare_enable);
        end else begin
          if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus == in_bit0_position_in_first_bus_word) begin
            status_task(0,in_bit0_position_in_first_bus_word, in_bits_in_first_bus_word,above_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
            drive_bus_out_task(0,in_bit0_position_in_first_bus_word, in_bits_in_first_bus_word,(drive_out_packets && next_drive_out_packets) || (state==shift_enum),start_of_status,end_of_status,on_chip_compare_enable);
          end else begin
            status_task(received_in_bit_cnt_plus_in_bits_in_remaining_bus_words, in_bit0_position_in_first_bus_word, in_bits_in_first_bus_word,above_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
            drive_bus_out_task(received_in_bit_cnt_plus_in_bits_in_remaining_bus_words, in_bit0_position_in_first_bus_word, in_bits_in_first_bus_word,drive_out_packets && next_drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
          end
        end
      end
    end
  end else begin
    if (start_of_packet) begin
      if (the_next_to_scan_word_starts_in_bus && start_of_next_to_scan_word_in_bus != in_bit0_position_in_first_bus_word) begin
        if (~going_to_first_shift) begin
          status_task(received_in_bit_cnt, in_bit0_position_in_first_bus_word, start_of_next_to_scan_word_in_bus-in_bit0_position_in_first_bus_word,above_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
        end
        drive_bus_out_task(received_in_bit_cnt, in_bit0_position_in_first_bus_word, start_of_next_to_scan_word_in_bus-in_bit0_position_in_first_bus_word,drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
        status_task(0,start_of_next_to_scan_word_in_bus,in_bit0_position_in_first_bus_word+in_bits_in_first_bus_word-start_of_next_to_scan_word_in_bus,above_packet_boundary,next_word,start_of_status,end_of_status,total_from_scan_out_bits);
        drive_bus_out_task(0,start_of_next_to_scan_word_in_bus,in_bit0_position_in_first_bus_word+in_bits_in_first_bus_word-start_of_next_to_scan_word_in_bus,(drive_out_packets && next_drive_out_packets) || (state==shift_enum),start_of_status,end_of_status,on_chip_compare_enable);
      end else begin
        status_task(received_in_bit_cnt, in_bit0_position_in_first_bus_word, in_bits_in_first_bus_word,above_packet_boundary,current_word,start_of_status,end_of_status,total_from_scan_out_bits);
        drive_bus_out_task(received_in_bit_cnt, in_bit0_position_in_first_bus_word, in_bits_in_first_bus_word,drive_out_packets,start_of_status,end_of_status,on_chip_compare_enable);
      end
    end
  end
  if (on_chip_compare_enable && on_chip_compare_group == 8'b0) begin
    drive_bus_out = 20'b0;
  end
end
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    received_in_bit_cnt <= 10'b0;
  end else begin
    if (~ready_for_packets) begin
      received_in_bit_cnt <= 10'b0;
    end else begin
      received_in_bit_cnt <= next_received_in_bit_cnt;
    end
  end
end
 
// Comparison is correct so W362 and STARC05-2.10.3.1 can be waived. There won't be borrow condition because it is start of the packet and in_bit0_position_in_first_bus_word won't be greater than bus_width
// spyglass disable_block W362 STARC05-2.10.3.1 W484 STARC-2.10.6.1
assign in_bits_in_first_bus_word = (start_of_packet)
                                     ? (in_bit0_position_in_first_bus_word_plus_bits_per_packet > bus_width)
                                       ? bus_width-in_bit0_position_in_first_bus_word
                                       : bits_per_packet[4:0]
                                     : 5'b0;
// spyglass enable_block W362 STARC05-2.10.3.1 W484 STARC-2.10.6.1
 
assign have_in_bits_in_remaining_bus_words = (in_bits_in_remaining_bus_words != 9'b0);
 
// Global variables are used only in one always block. By using this construction tool could keep variable values from the always block and don't override it by values from the task when not needed.
// spyglass disable_block W426
task drive_bus_out_task;
  input reg [9:0]     received_so_far;
  input reg [4:0]     start_bus_position;
  input reg [9:0]     bus_bit_num;
  input reg           enable_condition;
  input reg [8:0]     start_of_status;
  input reg [8:0]     end_of_status;
  input reg           on_chip_compare_enable;
 
  reg   [4:0]         local_cnt;
  reg   [9:0]         min, max;
  reg   [1:0]         bit_location;
  reg   [1:0]         bit_initial_offset;
 
  begin
    // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
    // spyglass disable_block W362 STARC05-2.10.3.1
    if (received_so_far > start_of_status) begin
    // spyglass enable_block W362 STARC05-2.10.3.1
      // implicit truncation because result always will fit. This can't exceed storage capacity and offset will cover storage.
      // spyglass disable_block W164a
      bit_initial_offset = received_so_far-start_of_status;
      // spyglass enable_block W164a
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (received_so_far > end_of_status) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        min = 20; 
      end else begin
        min = {{5{1'b0}}, start_bus_position};
      end
    end else begin
      bit_initial_offset = 0;
      // Result will always fit, no carry bit needed
      // spyglass disable_block W484 STARC-2.10.6.1
      min = {{5{1'b0}}, start_bus_position} + (start_of_status - received_so_far[8:0]);
      // spyglass enable_block W484 STARC-2.10.6.1
    end
    // Result will always fit, no carry bit needed
    // spyglass disable_block W484 STARC-2.10.6.1
    max = {{5{1'b0}}, start_bus_position} + (end_of_status - received_so_far[8:0]);
    // spyglass enable_block W484 STARC-2.10.6.1
    // local_cnt is used not only as an intex loop but also in comparisons. This is intended.
    // spyglass disable_block W480
    for (local_cnt=0;local_cnt<20;local_cnt=local_cnt+1) begin
    // spyglass enable_block W480
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (local_cnt>=start_bus_position && local_cnt<start_bus_position+bus_bit_num) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
        // spyglass disable_block W362 STARC05-2.10.3.1
        if (local_cnt>=min && local_cnt<=max || !on_chip_compare_enable) begin
        // spyglass enable_block W362 STARC05-2.10.3.1
          drive_bus_out[local_cnt] = enable_condition;
          // implicit truncation to channel size.
          // spyglass disable_block W164a W484 STARC-2.10.6.1
          bit_location = local_cnt - min[4:0] + bit_initial_offset;
          // spyglass enable_block W164a W484 STARC-2.10.6.1
          compare_en[bit_location] = enable_condition;
        end
      end
    end
  end
 
endtask
// spyglass enable_block W426
 
// Global variables are used only in one always block. By using this construction tool could keep variable values from the always block and don't override it by values from the task when not needed.
// spyglass disable_block W426
task status_task;
  input reg [9:0]     received_so_far;
  input reg [4:0]     start_bus_position;
  input reg [4:0]     bus_bit_num;
  input reg           above_packet_boundary;
  input reg           current_word;
  input reg [8:0]     start_of_status;
  input reg [8:0]     end_of_status;
  input reg [1:0]     total_from_scan_out_bits;
  reg   [1:0]         i;
  reg   [9:0]         min, max_plus_one;
 
  begin
    if (bus_bit_num > 0) begin
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      if (received_so_far <= start_of_status) begin
        if (received_so_far+bus_bit_num>start_of_status) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
          if (above_packet_boundary) begin
            if (current_word) begin
              status_exists_above_packet_boundary_current_word          = 1'b1;
              first_status_in_bus_above_packet_boundary_current_word    = 2'b0;
            // Implicit truncation to size possible to code bus width
            // spyglass disable_block W164a W484 STARC-2.10.6.1
              start_of_status_in_bus_above_packet_boundary_current_word = start_bus_position + start_of_status-received_so_far[8:0];
            // spyglass enable_block W164a W484 STARC-2.10.6.1
            end else begin
              status_exists_above_packet_boundary_next_word          = 1'b1;
              first_status_in_bus_above_packet_boundary_next_word    = 2'b0;
            // Implicit truncation to size possible to code bus width
            // spyglass disable_block W164a W484 STARC-2.10.6.1
              start_of_status_in_bus_above_packet_boundary_next_word = start_bus_position + start_of_status-received_so_far[8:0];
            // spyglass enable_block W164a W484 STARC-2.10.6.1
            end
          end else begin
            status_exists_below_packet_boundary          = 1'b1;
            first_status_in_bus_below_packet_boundary    = 2'b0;
          // Implicit truncation to size possible to code bus width
          // spyglass disable_block W164a W484 STARC-2.10.6.1
            start_of_status_in_bus_below_packet_boundary = start_bus_position + start_of_status-received_so_far[8:0];
          // spyglass enable_block W164a W484 STARC-2.10.6.1
          end
          if (received_so_far+bus_bit_num-1>end_of_status) begin
            max_plus_one = {{8{1'b0}}, total_from_scan_out_bits};
          end else begin
            // if statements guards subtraction
            // spyglass disable_block W116
            max_plus_one = {{8{1'b0}}, total_from_scan_out_bits}-(end_of_status-(received_so_far[8:0]+bus_bit_num)+1);
            // spyglass enable_block W116
          end
          // i is used not only as an intex loop but also during assignment. This is intended, always will fit when incremented.
          // spyglass disable_block W480
          for (i=0;i<2;i=i+1) begin
          // spyglass enable_block W480
          // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
          // spyglass disable_block W362 STARC05-2.10.3.1
            if (i<max_plus_one) begin
            // spyglass enable_block W362 STARC05-2.10.3.1
              status_present_in_bus[i] = 1'b1;
            end
          end
        end
      // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
      // spyglass disable_block W362 STARC05-2.10.3.1
      end else if (received_so_far <= end_of_status) begin
      // spyglass enable_block W362 STARC05-2.10.3.1
        if (above_packet_boundary) begin
          if (current_word) begin
            status_exists_above_packet_boundary_current_word          = 1'b1;
            // if statements guards subtraction
            // spyglass disable_block W116
            first_status_in_bus_above_packet_boundary_current_word    = total_from_scan_out_bits-(end_of_status - received_so_far[8:0]) - 1;
            // spyglass enable_block W116
            start_of_status_in_bus_above_packet_boundary_current_word = start_bus_position;
          end else begin
            status_exists_above_packet_boundary_next_word          = 1'b1;
            // if statements guards subtraction
            // spyglass disable_block W116
            first_status_in_bus_above_packet_boundary_next_word    = total_from_scan_out_bits-(end_of_status - received_so_far[8:0]) - 1;
            // spyglass enable_block W116
            start_of_status_in_bus_above_packet_boundary_next_word = start_bus_position;
          end
        end else begin
          status_exists_below_packet_boundary          = 1'b1;
          // if statements guards subtraction
          // spyglass disable_block W116
          first_status_in_bus_below_packet_boundary    = total_from_scan_out_bits-(end_of_status - received_so_far[8:0]) - 1;
          // spyglass enable_block W116
          start_of_status_in_bus_below_packet_boundary = start_bus_position;
        end
        // Implicit truncation to size possible to code bus width, if statements guards subtraction
        // spyglass disable_block W164a W116
        min = total_from_scan_out_bits-(end_of_status - received_so_far[8:0]) - 1;
        // spyglass enable_block W164a W116
        // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
        // spyglass disable_block W362 STARC05-2.10.3.1
        if (received_so_far+bus_bit_num>end_of_status) begin
        // spyglass enable_block W362 STARC05-2.10.3.1
          max_plus_one = {{8{1'b0}}, total_from_scan_out_bits};
        end else begin
          // if statements guards subtraction
          // spyglass disable_block W116
          max_plus_one = {{8{1'b0}}, total_from_scan_out_bits}-(end_of_status-(received_so_far[8:0]+bus_bit_num)+1);
          // spyglass enable_block W116
        end
        // i is used not only as an intex loop but also during assignment. This is intended, always will fit when incremented.
        // spyglass disable_block W480
        for (i=0;i<2;i=i+1) begin
        // spyglass enable_block W480
          // Comparison is correct so W362 and STARC05-2.10.3.1 can be waived
          // spyglass disable_block W362 STARC05-2.10.3.1
          if (i>= min && i < max_plus_one) begin
          // spyglass enable_block W362 STARC05-2.10.3.1
            status_present_in_bus[i] = 1'b1;
          end
        end
      end
    end
  end
 
endtask
// spyglass enable_block W426
 
endmodule
  
module firebird7_in_gate2_tessent_ssn_scan_host_ssh_ijtag_registers (
  input wire             ijtag_reset,
  input wire             ijtag_clock,
  input wire             ijtag_sel,
  input wire             ijtag_ce,
  input wire             ijtag_se,
  input wire             ijtag_ue,
  input wire             ijtag_si,
  output wire            ijtag_so,
  output reg             enable,
  input wire             enable_sync,
  output wire [30:0]     initial_offset,
  output wire            relative_initial_offset_enable,
  output wire [4:0]      bus_width,
  output wire [8:0]      bits_per_packet,
  output wire [2:0]      to_scan_in_bits,
  output wire [1:0]      from_scan_out_bits,
  output wire            from_scan_out_le_strobe_en,
  output wire [27:0]     total_shift_cnt_minus_one,
  output wire [27:0]     extra_shift_packets,
  output wire [15:0]     packet_size,
  output wire            force_suppress_capture,
  output wire [4:0]      initial_bit0_position,
  output wire            on_chip_compare_enable,
  output wire [7:0]      on_chip_compare_group_count,
  output wire [7:0]      on_chip_compare_group,
  input wire             compare_status_sticky,
  output wire            disable_on_chip_compare_contribution,
  output wire            loop_back_en,
  output wire            streaming_through_ijtag_en,
  input wire             bus_data_out0,
  output wire            bus_register_ijtag_access_en,
  output wire [2:0]      capture_packets,
  output wire            init_scan_load_used,
  output wire            disable_first_scan_load_masking,
  output wire [2:0]      packets_per_capture_clock_minus_one,
  output wire [3:0]      scan_en_transition_packets,
  output wire [3:0]      scan_en_launch_packet,
  output wire [3:0]      edt_update_falling_transition_words,
  output wire [3:0]      edt_update_falling_launch_word,
  output wire [5:0]      min_shift_clock_low_width,
  output wire [5:0]      min_capture_clock_low_width,
  output wire            packet_width_is_less_than_two_bus_clock,
  output wire            infinite_shift_mode
);
 
// Reg and wire declarations
reg                      enable_update_stage, enable_shift_reg;
reg                      config_sib, config_sib_shift_reg;
reg                      streaming_through_ijtag_en_shift_reg;
reg                      streaming_through_ijtag_en_update_stage;
reg    [30:0]            initial_offset_shift_reg;
reg                      relative_initial_offset_enable_shift_reg;
reg    [4:0]             bus_width_shift_reg;
reg    [8:0]             bits_per_packet_shift_reg;
reg    [2:0]             to_scan_in_bits_shift_reg;
reg    [1:0]             from_scan_out_bits_shift_reg;
reg                      from_scan_out_le_strobe_en_shift_reg;
reg    [27:0]            total_shift_cnt_minus_one_shift_reg;
reg    [27:0]            extra_shift_packets_shift_reg;
reg    [15:0]            packet_size_shift_reg;
reg                      force_suppress_capture_shift_reg;
reg    [4:0]             initial_bit0_position_shift_reg;
reg                      on_chip_compare_enable_shift_reg;
reg                      disable_on_chip_compare_contribution_shift_reg;
reg    [7:0]             on_chip_compare_group_count_shift_reg;
reg    [7:0]             on_chip_compare_group_shift_reg;
reg                      loop_back_en_shift_reg;
reg    [2:0]             capture_packets_shift_reg;
reg                      init_scan_load_used_shift_reg;
reg                      disable_first_scan_load_masking_shift_reg;
reg    [2:0]             packets_per_capture_clock_minus_one_shift_reg;
reg    [3:0]             scan_en_transition_packets_shift_reg;
reg    [3:0]             scan_en_launch_packet_shift_reg;
reg    [3:0]             edt_update_falling_transition_words_shift_reg;
reg    [3:0]             edt_update_falling_launch_word_shift_reg;
reg    [5:0]             min_shift_clock_low_width_shift_reg;
reg    [5:0]             min_capture_clock_low_width_shift_reg;
reg                      packet_width_is_less_than_two_bus_clock_shift_reg;
reg                      bus_data_out0_retime;
reg                      so_retime;
wire                     reset;
// Body implementation
assign infinite_shift_mode = (total_shift_cnt_minus_one == 28'b0);
// IJTAG by protocol is operating on both clock edges so no violation here.
// spyglass disable_block W391
always @ (posedge ijtag_clock) begin
  if (ijtag_sel && !streaming_through_ijtag_en) begin
    if (ijtag_se) begin
      if (bus_register_ijtag_access_en) begin
        config_sib_shift_reg                                      <= bus_data_out0_retime;
      end else begin
        config_sib_shift_reg                                      <= ijtag_si;
      end
      enable_shift_reg                                            <= config_sib_shift_reg;
      if (config_sib & ~enable_update_stage) begin
        streaming_through_ijtag_en_shift_reg                      <= enable_shift_reg;
        initial_offset_shift_reg                                  <= {streaming_through_ijtag_en_shift_reg,
                                                                      initial_offset_shift_reg[30:1]};
        relative_initial_offset_enable_shift_reg                  <= initial_offset_shift_reg[0];
        bus_width_shift_reg                                       <= {relative_initial_offset_enable_shift_reg,
                                                                      bus_width_shift_reg[4:1]};
        bits_per_packet_shift_reg                                 <= {bus_width_shift_reg[0],
                                                                      bits_per_packet_shift_reg[8:1]};
        to_scan_in_bits_shift_reg                                 <= {bits_per_packet_shift_reg[0],
                                                                      to_scan_in_bits_shift_reg[2:1]};
        from_scan_out_bits_shift_reg                              <= {to_scan_in_bits_shift_reg[0],
                                                                      from_scan_out_bits_shift_reg[1:1]};
        from_scan_out_le_strobe_en_shift_reg                      <= from_scan_out_bits_shift_reg[0];
        total_shift_cnt_minus_one_shift_reg                       <= {from_scan_out_le_strobe_en_shift_reg,
                                                                      total_shift_cnt_minus_one_shift_reg[27:1]};
        extra_shift_packets_shift_reg                             <= {total_shift_cnt_minus_one_shift_reg[0],
                                                                      extra_shift_packets_shift_reg[27:1]};
        packet_size_shift_reg                                     <= {extra_shift_packets_shift_reg[0],
                                                                      packet_size_shift_reg[15:1]};
        force_suppress_capture_shift_reg                          <= packet_size_shift_reg[0];
        initial_bit0_position_shift_reg                           <= {force_suppress_capture_shift_reg,
                                                                      initial_bit0_position_shift_reg[4:1]};
        on_chip_compare_enable_shift_reg                          <= initial_bit0_position_shift_reg[0];
        disable_on_chip_compare_contribution_shift_reg            <= on_chip_compare_enable_shift_reg;
        on_chip_compare_group_count_shift_reg                     <= {disable_on_chip_compare_contribution_shift_reg,
                                                                      on_chip_compare_group_count_shift_reg[7:1]};
        on_chip_compare_group_shift_reg                           <= {on_chip_compare_group_count_shift_reg[0],
                                                                      on_chip_compare_group_shift_reg[7:1]};
        loop_back_en_shift_reg                                    <= on_chip_compare_group_shift_reg[0];
        capture_packets_shift_reg                                 <= {loop_back_en_shift_reg,
                                                                      capture_packets_shift_reg[2:1]};
        init_scan_load_used_shift_reg                             <= capture_packets_shift_reg[0];
        disable_first_scan_load_masking_shift_reg                 <= init_scan_load_used_shift_reg;
        packets_per_capture_clock_minus_one_shift_reg             <= {disable_first_scan_load_masking_shift_reg,
                                                                      packets_per_capture_clock_minus_one_shift_reg[2:1]};
        scan_en_transition_packets_shift_reg                      <= {packets_per_capture_clock_minus_one_shift_reg[0],
                                                                      scan_en_transition_packets_shift_reg[3:1]};
        scan_en_launch_packet_shift_reg                           <= {scan_en_transition_packets_shift_reg[0],
                                                                      scan_en_launch_packet_shift_reg[3:1]};
        edt_update_falling_transition_words_shift_reg             <= {scan_en_launch_packet_shift_reg[0],
                                                                      edt_update_falling_transition_words_shift_reg[3:1]};
        edt_update_falling_launch_word_shift_reg                  <= {edt_update_falling_transition_words_shift_reg[0],
                                                                      edt_update_falling_launch_word_shift_reg[3:1]};
        min_shift_clock_low_width_shift_reg                       <= {edt_update_falling_launch_word_shift_reg[0],
                                                                      min_shift_clock_low_width_shift_reg[5:1]};
        min_capture_clock_low_width_shift_reg                     <= {min_shift_clock_low_width_shift_reg[0],
                                                                      min_capture_clock_low_width_shift_reg[5:1]};
        packet_width_is_less_than_two_bus_clock_shift_reg         <= min_capture_clock_low_width_shift_reg[0];
      end
    end else if (ijtag_ce) begin
      config_sib_shift_reg                                        <= compare_status_sticky;
      enable_shift_reg                                            <= enable_update_stage;
      if (config_sib) begin
        streaming_through_ijtag_en_shift_reg                      <= streaming_through_ijtag_en_update_stage;
      end
    end
  end
end
// spyglass enable_block W391
assign reset = ~ijtag_reset;
always @ (negedge ijtag_clock or posedge reset) begin
  if (reset) begin
    enable_update_stage                                           <= 1'b0;
    config_sib                                                    <= 1'b0;
    streaming_through_ijtag_en_update_stage                       <= 1'b0;
    enable                                                        <= 1'b0;
  end else if (ijtag_sel && ijtag_ue) begin
    enable_update_stage                                           <= enable_shift_reg && !streaming_through_ijtag_en;
    config_sib                                                    <= config_sib_shift_reg;
    if (config_sib) begin
      streaming_through_ijtag_en_update_stage                     <= streaming_through_ijtag_en_shift_reg;
    end
    enable                                                        <= ~config_sib_shift_reg & enable_shift_reg;
  end
end
 
always @ (negedge ijtag_clock) begin
  if (streaming_through_ijtag_en) begin
    so_retime <= bus_data_out0  && enable_sync;
  end else begin
    if (config_sib && ~enable_update_stage) begin
      so_retime <= packet_width_is_less_than_two_bus_clock_shift_reg;
    end else begin
      so_retime <= enable_shift_reg;
    end
  end
  bus_data_out0_retime <= bus_data_out0;
end
  
assign streaming_through_ijtag_en                 = streaming_through_ijtag_en_update_stage && enable_update_stage;
assign bus_register_ijtag_access_en               = config_sib && enable_update_stage;
assign initial_offset                             = initial_offset_shift_reg;
assign relative_initial_offset_enable             = relative_initial_offset_enable_shift_reg;
assign bus_width                                  = bus_width_shift_reg;
assign bits_per_packet                            = bits_per_packet_shift_reg;
assign to_scan_in_bits                            = to_scan_in_bits_shift_reg;
assign from_scan_out_bits                         = from_scan_out_bits_shift_reg;
assign from_scan_out_le_strobe_en                 = from_scan_out_le_strobe_en_shift_reg;
assign total_shift_cnt_minus_one                  = total_shift_cnt_minus_one_shift_reg;
assign extra_shift_packets                        = extra_shift_packets_shift_reg;
assign packet_size                                = packet_size_shift_reg;
assign force_suppress_capture                     = force_suppress_capture_shift_reg;
assign initial_bit0_position                      = initial_bit0_position_shift_reg;
assign on_chip_compare_enable                     = on_chip_compare_enable_shift_reg;
assign disable_on_chip_compare_contribution       = disable_on_chip_compare_contribution_shift_reg;
assign on_chip_compare_group_count                = on_chip_compare_group_count_shift_reg;
assign on_chip_compare_group                      = on_chip_compare_group_shift_reg;
assign loop_back_en                               = loop_back_en_shift_reg;
assign capture_packets                            = capture_packets_shift_reg;
assign init_scan_load_used                        = init_scan_load_used_shift_reg;
assign disable_first_scan_load_masking            = disable_first_scan_load_masking_shift_reg;
assign packets_per_capture_clock_minus_one        = packets_per_capture_clock_minus_one_shift_reg;
assign scan_en_transition_packets                 = scan_en_transition_packets_shift_reg;
assign scan_en_launch_packet                      = scan_en_launch_packet_shift_reg;
assign edt_update_falling_transition_words        = edt_update_falling_transition_words_shift_reg;
assign edt_update_falling_launch_word             = edt_update_falling_launch_word_shift_reg;
assign min_shift_clock_low_width                  = min_shift_clock_low_width_shift_reg;
assign min_capture_clock_low_width                = min_capture_clock_low_width_shift_reg;
assign packet_width_is_less_than_two_bus_clock    = packet_width_is_less_than_two_bus_clock_shift_reg;
assign ijtag_so                                   = so_retime;
 
endmodule
 
module firebird7_in_gate2_tessent_ssn_scan_host_ssh_clock_gen (
  input wire             clock,
  input wire             enable_sync,
  input wire             loop_back_en,
  input wire             ready_to_shift,
  input wire             ready_to_capture,
  input wire             ext_capture_mode,
  input wire             pulse_width_packet_cnt_is_zero,
  input wire             edt_update_in,
  input wire             edt_clock_en_in,
  input wire             scan_en_in,
  input wire             last_in_bits_in_current_bus_word,
  input wire             last_scan_load_is_done,
  input wire  [5:0]      min_shift_clock_low_width,
  input wire  [5:0]      min_capture_clock_low_width,
  output wire            min_capture_clock_low_width_is_zero,
  input wire             packet_width_is_less_than_two_bus_clock,
  input wire  [2:0]      packets_per_capture_clock_minus_one,
  input wire  [27:0]     extra_shift_packets,
  input wire             scan_en_launch_packet_equal_transition_packets,
  input wire             select_capture_clock_low_width,
  input wire             inject_tck_as_capture_clock,
  input wire             ijtag_clock,
  output wire            edt_clock,
  output wire            shift_capture_clock,
  output wire            scan_en,
  output wire            edt_update,
  output wire            use_div_shift_clocks,
  output wire            shift_clock_en,
  output wire            shift_capture_clock_div_will_rise,
  output wire            min_shift_clock_low_width_is_zero
);
 
// Reg and wire declarations
 
wire                     edt_clock_en;
reg    [5:0]             clock_low_cnt, next_clock_low_cnt;
reg                      edt_clock_div;
reg                      next_edt_clock_div;
wire                     edt_clock_div_buf;
reg                      shift_capture_clock_div;
reg                      next_shift_capture_clock_div;
wire                     shift_capture_clock_div_buf;
reg                      edt_update_ret;
reg                      scan_en_delayed, edt_update_delayed, ready_to_shift_delayed, ready_to_capture_delayed, edt_clock_en_in_delayed;
reg                      pulse_width_packet_cnt_is_zero_delayed;
wire                     edt_clock_en_not_for_div;
wire                     shift_clock_en_for_div, edt_clock_en_for_div;
wire                     capture_clock_en_for_div, shift_capture_clock_en_for_div, capture_clock_en_not_for_div, shift_capture_clock_en_not_for_div;
wire                     packets_per_capture_clock_minus_one_is_zero = (packets_per_capture_clock_minus_one == 3'b0);
wire                     short_packet_with_wide_capture = ~packets_per_capture_clock_minus_one_is_zero;
wire                     ready_to_capture_selected                = (short_packet_with_wide_capture) ? ready_to_capture : ready_to_capture_delayed;
wire                     pulse_width_packet_cnt_is_zero_selected = (short_packet_with_wide_capture) ? pulse_width_packet_cnt_is_zero : pulse_width_packet_cnt_is_zero_delayed;
// Body implementation
 
assign min_shift_clock_low_width_is_zero   = (min_shift_clock_low_width   == 6'b0);
assign min_capture_clock_low_width_is_zero = (min_capture_clock_low_width == 6'b0);
assign edt_clock_en                         = enable_sync & ((edt_clock_en_in && last_in_bits_in_current_bus_word) || shift_clock_en) && ~last_scan_load_is_done;
assign edt_clock_en_for_div                 = (enable_sync & ((edt_update_delayed && ~edt_clock_en_in && last_in_bits_in_current_bus_word) || shift_clock_en_for_div)) || last_scan_load_is_done;
assign edt_clock_en_not_for_div             = edt_clock_en && min_shift_clock_low_width_is_zero;
assign shift_clock_en                       = enable_sync & (scan_en && last_in_bits_in_current_bus_word && ready_to_shift) && ~last_scan_load_is_done;
assign shift_clock_en_for_div               = (last_in_bits_in_current_bus_word && ready_to_shift_delayed) || last_scan_load_is_done;
assign capture_clock_en_for_div             = (ready_to_capture_selected  && last_in_bits_in_current_bus_word && pulse_width_packet_cnt_is_zero_selected) || last_scan_load_is_done;
assign capture_clock_en_not_for_div         = ready_to_capture           && last_in_bits_in_current_bus_word && pulse_width_packet_cnt_is_zero && ~last_scan_load_is_done;
assign shift_capture_clock_en_for_div       = enable_sync & ((capture_clock_en_for_div     && !min_capture_clock_low_width_is_zero) || 
                                                             (shift_clock_en_for_div       && !min_shift_clock_low_width_is_zero));
assign shift_capture_clock_en_not_for_div   = enable_sync & ((capture_clock_en_not_for_div && min_capture_clock_low_width_is_zero) ||
                                                             (shift_clock_en               && min_shift_clock_low_width_is_zero));
always @ (*) begin
  if (last_in_bits_in_current_bus_word && (~select_capture_clock_low_width || pulse_width_packet_cnt_is_zero)) begin
    if (select_capture_clock_low_width) begin
      next_clock_low_cnt = min_capture_clock_low_width;
    end else begin
      next_clock_low_cnt = min_shift_clock_low_width;
    end
  end else begin
    if (clock_low_cnt != 6'b0) begin
      next_clock_low_cnt = clock_low_cnt - 6'b1;
    end else begin
      next_clock_low_cnt = clock_low_cnt;
    end
  end
end
 
// synopsys sync_set_reset "enable_sync"
always @ (posedge clock) begin
  if (~enable_sync) begin
    ready_to_capture_delayed <= 1'b0;
    ready_to_shift_delayed <= 1'b0;
    edt_clock_en_in_delayed <= 1'b0;
    scan_en_delayed <= 1'b1;
    pulse_width_packet_cnt_is_zero_delayed <= 1'b1;
  end else begin
    if (last_in_bits_in_current_bus_word) begin
      ready_to_capture_delayed <= ready_to_capture;
      ready_to_shift_delayed   <= ready_to_shift;
      edt_clock_en_in_delayed  <= edt_clock_en_in;
      pulse_width_packet_cnt_is_zero_delayed <= pulse_width_packet_cnt_is_zero;
    end
    if (clock_low_cnt == 6'b1) begin
      scan_en_delayed <= scan_en_in;
    end
  end
end
always @ (posedge clock or negedge enable_sync) begin
  // This async usage is due to initialize signal before usage in EDT controller
  // spyglass disable_block STARC05-1.3.1.3
  if (~enable_sync) begin
  // spyglass enable_block STARC05-1.3.1.3
    edt_update_delayed <= 1'b1;
  end else begin
    if (last_in_bits_in_current_bus_word) begin
      edt_update_delayed <= edt_update_in;
    end
  end
end
 
always @ (*) begin
  next_edt_clock_div            = edt_clock_div_buf;
  next_shift_capture_clock_div  = shift_capture_clock_div_buf;
  if (min_shift_clock_low_width_is_zero) begin
    next_edt_clock_div            = 1'b0;
  end else begin
    if (edt_clock_en_for_div) begin
      next_edt_clock_div = 1'b0;
    end else if (clock_low_cnt == 6'b1 && (ready_to_shift_delayed || edt_clock_en_in_delayed)) begin
      next_edt_clock_div = 1'b1;
    end
  end
  if ((min_shift_clock_low_width_is_zero && ready_to_shift) || 
      (min_capture_clock_low_width_is_zero && ready_to_capture)) begin
    next_shift_capture_clock_div = 1'b0;
  end else begin
    if (shift_capture_clock_en_for_div) begin
      next_shift_capture_clock_div = 1'b0;
    end else if (clock_low_cnt == 6'b1 && (ready_to_shift_delayed || ready_to_capture_selected) && ~loop_back_en) begin
      next_shift_capture_clock_div = 1'b1;
    end
  end
end
 
always @ (posedge clock or negedge enable_sync) begin
  // This async usage is due to prevent glitches
  // spyglass disable_block STARC05-1.3.1.3
  if (~enable_sync) begin
  // spyglass enable_block STARC05-1.3.1.3
    edt_clock_div             <= 1'b0;
    shift_capture_clock_div   <= 1'b0;
  end else begin
    edt_clock_div             <= next_edt_clock_div;
    shift_capture_clock_div   <= next_shift_capture_clock_div;
  end
end
 
i0sbfn000ab1n02x5 tessent_persistent_cell_edt_clock_div_buf (
  .a                ( edt_clock_div               ),
  .o                ( edt_clock_div_buf           )
);
i0sbfn000ab1n02x5 tessent_persistent_cell_shift_capture_clock_div_buf (
  .a                ( shift_capture_clock_div     ),
  .o                ( shift_capture_clock_div_buf )
);
 
// firebird7_in_gate2_tessent_ssn_scan_host_ssh_clock_gen module uses both edges of the clock. Negedge clock is used in retiming flops
// spyglass disable_block W391
always @ (posedge clock or negedge enable_sync) begin
  // This async usage is due to prevent glitches
  // spyglass disable_block STARC05-1.3.1.3
  if (~enable_sync) begin
  // spyglass enable_block STARC05-1.3.1.3
    clock_low_cnt <= 6'b0;
  end else begin
    if ((min_shift_clock_low_width_is_zero && ready_to_shift) ||
        (min_capture_clock_low_width_is_zero && ready_to_capture)) begin
      clock_low_cnt <= 6'b0;
    end else begin
      clock_low_cnt <= next_clock_low_cnt;
    end
  end
end
// spyglass enable_block W391
 
assign shift_capture_clock_div_will_rise = (min_shift_clock_low_width_is_zero) ? shift_capture_clock_en_not_for_div
                                                                               : ~shift_capture_clock_div_buf && (clock_low_cnt == 6'b1) && (ready_to_shift_delayed || ready_to_capture_selected);
 
always @ (negedge clock or negedge enable_sync) begin
  // This async usage is due to initialize signal before usage in EDT controller
  // spyglass disable_block STARC05-1.3.1.3
  if (~enable_sync) begin
  // spyglass enable_block STARC05-1.3.1.3
    edt_update_ret <= 1'b1;
  end else begin
    edt_update_ret <= edt_update_in || ~min_shift_clock_low_width_is_zero;
  end
end
wire extra_shift_packets_is_zero = (extra_shift_packets == 28'b0);
i0smbn022ab1n02x5 tessent_persistent_cell_edt_update_mux (
  .o      ( edt_update                                  ),
  .sa     ( min_shift_clock_low_width_is_zero           ),
  .b      ( edt_update_delayed & enable_sync            ),
  .a      ( edt_update_ret & enable_sync                )
);
 
assign scan_en    = (((min_shift_clock_low_width_is_zero || packet_width_is_less_than_two_bus_clock) && ~extra_shift_packets_is_zero) || 
                     ((min_shift_clock_low_width_is_zero || 
                      (packet_width_is_less_than_two_bus_clock && ~scan_en_launch_packet_equal_transition_packets))  &&  extra_shift_packets_is_zero) ||
                     ext_capture_mode ||
                     ~packets_per_capture_clock_minus_one_is_zero)
                    ? scan_en_in & enable_sync 
                    : scan_en_delayed & enable_sync;
 
assign use_div_shift_clocks    = enable_sync & !min_shift_clock_low_width_is_zero;
 
firebird7_in_gate2_tessent_ssn_scan_host_ssh_clock_signals clock_signals (
  .clock                                                                    ( clock                                                                   ),
  .enable_sync                                                              ( enable_sync                                                             ),
  .ijtag_clock_cg_en                                                        ( inject_tck_as_capture_clock                                             ),
  .ijtag_clock                                                              ( ijtag_clock                                                             ),
  .next_edt_clock_div                                                       ( next_edt_clock_div                                                      ),
  .edt_clock_cg_en                                                          ( edt_clock_en_not_for_div                                                ),
  .edt_clock                                                                ( edt_clock                                                               ),
  .next_shift_capture_clock_div                                             ( next_shift_capture_clock_div                                            ),
  .shift_capture_clock_cg_en                                                ( (shift_capture_clock_en_not_for_div && ~loop_back_en)                   ),
  .shift_capture_clock                                                      ( shift_capture_clock                                                     ));
 
endmodule
 
module firebird7_in_gate2_tessent_ssn_scan_host_ssh_datapath_shifters (
  input wire  [19:0]     bus_register_in,
  input wire  [8:0]      in_bits_in_remaining_bus_words_minus_start_of_next_to_scan_word_in_bus,
  output wire [7:0]      bus_register_shifted_down_next_to_scan_in_word,
  output wire [7:1]      bus_register_shifted_up_current_to_scan_in_word_in_current_packet,
  output wire [7:1]      bus_register_shifted_up_current_to_scan_in_word_in_next_packet,
  output wire [7:1]      bus_register_shifted_up_next_to_scan_in_word_in_next_packet,
  input wire  [2:0]      total_to_scan_in_bits,
  input wire  [2:0]      sum_of_totals_for_shift,
  input wire  [7:0]      in_bit_storage,
  input wire  [7:0]      in_bit_storage_d,
  output wire [1:0]      expected_value,
  output wire [1:0]      mask_value,
  output wire [1:0]      expected_value_d,
  output wire [1:0]      mask_value_d,
  input wire  [4:0]      start_of_status_in_bus_above_packet_boundary_current_word,
  input wire  [4:0]      start_of_status_in_bus_above_packet_boundary_next_word,
  input wire  [4:0]      start_of_status_in_bus_below_packet_boundary,
  input wire  [1:0]      first_status_in_bus_above_packet_boundary_current_word,
  input wire  [1:0]      first_status_in_bus_above_packet_boundary_next_word,
  input wire  [1:0]      first_status_in_bus_below_packet_boundary,
  output wire [1:0]      status_in_value_for_above_packet_boundary_current_word_shifted_up,
  output wire [1:0]      status_in_value_for_above_packet_boundary_next_word_shifted_up,
  output wire [1:0]      status_in_value_for_below_packet_boundary_shifted_up,
 
  input wire  [1:0]      status_out_value,
  output wire [19:0]     status_to_bus_above_packet_boundary_current_word,
  output wire [19:0]     status_to_bus_above_packet_boundary_next_word,
  output wire [19:0]     status_to_bus_below_packet_boundary,
 
  input wire  [1:0]      from_scan_out_storage,
  output wire [1:0]      from_scan_out_storage_shifted_down_current_word_current_packet,
  output wire [19:0]     from_scan_out_current_word_shifted_up_next_packet,
  input wire  [4:0]      in_bit0_position_in_first_bus_word_minus_bits_for_current_word,
  input wire  [1:0]      from_scan_out_source,
  output wire [19:1]     from_scan_out_next_word_shifted_up,
  output wire [19:1]     from_scan_out_next_word_shifted_up_next_packet,
 
 
  input wire  [4:0]      in_bit0_position_in_first_bus_word,
  input wire  [9:0]      received_in_bit_cnt,
  input wire  [9:0]      received_in_bit_cnt_plus_in_bits_in_remaining_bus_words,
  input wire  [4:0]      start_of_next_to_scan_word_in_bus
);
 
wire [19:0]              bus_register_shifted_down_current_to_scan_in_word;
// Bits [0] are not used for the following variables
// spyglass disable_block W498
wire [7:0]               bus_register_shifted_up_current_to_scan_in_word_in_current_packet_internal;
wire [7:0]               bus_register_shifted_up_current_to_scan_in_word_in_next_packet_internal;
wire [7:0]               bus_register_shifted_up_next_to_scan_in_word_in_next_packet_internal;
// spyglass enable_block W498
wire [1:0]               from_scan_out_storage_shifted_down_current_word_next_packet;
// Bits [0] are not used for the following variables
// spyglass disable_block W498
wire [19:0]              from_scan_out_next_word_shifted_up_internal;
wire [19:0]              from_scan_out_next_word_shifted_up_next_packet_internal;
// spyglass enable_block W498
 
wire [1:0]               status_in_value_for_above_packet_boundary_current_word;
wire [1:0]               status_in_value_for_above_packet_boundary_next_word;
wire [1:0]               status_in_value_for_below_packet_boundary;
 
// Implicit truncations to place starting bit in proper place.
// spyglass disable_block W486 W164a W164b
assign bus_register_shifted_down_next_to_scan_in_word                             = bus_register_in                                   >> start_of_next_to_scan_word_in_bus;
assign bus_register_shifted_down_current_to_scan_in_word                          = bus_register_in                                   >> in_bit0_position_in_first_bus_word;
assign bus_register_shifted_up_current_to_scan_in_word_in_current_packet_internal = bus_register_in                                   << received_in_bit_cnt[9:0];
assign bus_register_shifted_up_current_to_scan_in_word_in_next_packet_internal    = bus_register_shifted_down_current_to_scan_in_word << (received_in_bit_cnt_plus_in_bits_in_remaining_bus_words);
assign bus_register_shifted_up_next_to_scan_in_word_in_next_packet_internal       = bus_register_shifted_down_current_to_scan_in_word << (in_bits_in_remaining_bus_words_minus_start_of_next_to_scan_word_in_bus);
assign bus_register_shifted_up_current_to_scan_in_word_in_current_packet          = bus_register_shifted_up_current_to_scan_in_word_in_current_packet_internal[7:1];
assign bus_register_shifted_up_current_to_scan_in_word_in_next_packet             = bus_register_shifted_up_current_to_scan_in_word_in_next_packet_internal[7:1];
assign bus_register_shifted_up_next_to_scan_in_word_in_next_packet                = bus_register_shifted_up_next_to_scan_in_word_in_next_packet_internal[7:1];
// spyglass enable_block W486 W164a W164b
 
// implicit truncations to put mask and status in proper places in case of rotating bus.
// spyglass disable_block W486 W164a W164b
assign expected_value                                                             = in_bit_storage                                         >> total_to_scan_in_bits;
assign mask_value                                                                 = in_bit_storage                                         >> sum_of_totals_for_shift;
assign expected_value_d                                                           = in_bit_storage_d                                       >> total_to_scan_in_bits;
assign mask_value_d                                                               = in_bit_storage_d                                       >> sum_of_totals_for_shift;
assign status_in_value_for_above_packet_boundary_current_word                     = bus_register_in                                        >> start_of_status_in_bus_above_packet_boundary_current_word;
assign status_in_value_for_above_packet_boundary_next_word                        = bus_register_in                                        >> start_of_status_in_bus_above_packet_boundary_next_word;
assign status_in_value_for_below_packet_boundary                                  = bus_register_in                                        >> start_of_status_in_bus_below_packet_boundary;
assign status_in_value_for_above_packet_boundary_current_word_shifted_up          = status_in_value_for_above_packet_boundary_current_word << first_status_in_bus_above_packet_boundary_current_word;
assign status_in_value_for_above_packet_boundary_next_word_shifted_up             = status_in_value_for_above_packet_boundary_next_word    << first_status_in_bus_above_packet_boundary_next_word;
assign status_in_value_for_below_packet_boundary_shifted_up                       = status_in_value_for_below_packet_boundary              << first_status_in_bus_below_packet_boundary;
assign status_to_bus_above_packet_boundary_current_word = status_out_value >> first_status_in_bus_above_packet_boundary_current_word << start_of_status_in_bus_above_packet_boundary_current_word;
assign status_to_bus_above_packet_boundary_next_word    = status_out_value >> first_status_in_bus_above_packet_boundary_next_word    << start_of_status_in_bus_above_packet_boundary_next_word;
assign status_to_bus_below_packet_boundary              = status_out_value >> first_status_in_bus_below_packet_boundary              << start_of_status_in_bus_below_packet_boundary;
// spyglass enable_block W486 W164a W164b
 
// Shifted values are used when drive_bus_out_gated is enabled so no risk to capture wrong value from shift registers.
// spyglass disable_block W486 W164a W164b
assign from_scan_out_storage_shifted_down_current_word_current_packet = from_scan_out_storage                                       >> received_in_bit_cnt;
assign from_scan_out_storage_shifted_down_current_word_next_packet    = from_scan_out_storage[1:0]                                  >> received_in_bit_cnt_plus_in_bits_in_remaining_bus_words;
assign from_scan_out_current_word_shifted_up_next_packet              = from_scan_out_storage_shifted_down_current_word_next_packet << in_bit0_position_in_first_bus_word;
assign from_scan_out_next_word_shifted_up_internal                    = from_scan_out_source                                        << start_of_next_to_scan_word_in_bus;
assign from_scan_out_next_word_shifted_up_next_packet_internal        = from_scan_out_source                                        << in_bit0_position_in_first_bus_word_minus_bits_for_current_word;
 
assign from_scan_out_next_word_shifted_up                             = from_scan_out_next_word_shifted_up_internal[19:1];
assign from_scan_out_next_word_shifted_up_next_packet                 = from_scan_out_next_word_shifted_up_next_packet_internal[19:1];
// spyglass enable_block W486 W164a W164b
endmodule
 
module firebird7_in_gate2_tessent_ssn_scan_host_ssh_clock_signals (
  input wire             clock,
  input wire             enable_sync,
  input wire             ijtag_clock_cg_en,
  input wire             ijtag_clock,
  input wire             next_edt_clock_div,
  input wire             edt_clock_cg_en,
  output wire            edt_clock,
  input wire             next_shift_capture_clock_div,
  input wire             shift_capture_clock_cg_en,
  output wire            shift_capture_clock 
);
 
wire                     ijtag_clock_gated;
wire                     edt_clock_div;
wire                     edt_clock_gated;
wire                     edt_clock_int;
wire                     shift_capture_clock_div;
wire                     shift_capture_clock_gated;
wire                     shift_capture_clock_div_or_gated;
wire                     shift_capture_clock_int;
 
firebird7_in_gate2_tessent_posedge_clock_dff_reset tessent_persistent_cell_edt_clock_div (
  .rn                ( enable_sync                ),
  .d                 ( next_edt_clock_div         ),
  .clk               ( clock                      ),
  .q                 ( edt_clock_div              )
);
firebird7_in_gate2_tessent_posedge_clock_dff_reset tessent_persistent_cell_shift_capture_clock_div (
  .rn                ( enable_sync                ),
  .d                 ( next_shift_capture_clock_div ),
  .clk               ( clock                      ),
  .q                 ( shift_capture_clock_div    )
);
 
i0scilb01ab1n02x5 tessent_persistent_cell_ijtag_clock_cg (
  .clkout            ( ijtag_clock_gated          ),
  .clk               ( ijtag_clock                ),
  .en                ( ijtag_clock_cg_en          ),
  .te                ( ijtag_clock_cg_en          )
);
i0scilb01ab1n02x5 tessent_persistent_cell_edt_clock_cg (
  .clkout            ( edt_clock_gated            ),
  .clk               ( clock                      ),
  .en                ( edt_clock_cg_en            ),
  .te                ( edt_clock_cg_en            )
);
 
i0scilb01ab1n02x5 tessent_persistent_cell_shift_capture_clock_cg (
  .clkout            ( shift_capture_clock_gated  ),
  .clk               ( clock                      ),
  .en                ( shift_capture_clock_cg_en  ),
  .te                ( shift_capture_clock_cg_en  )
);
 
i0sorn002ab1n02x5 tessent_persistent_cell_edt_clock_or (
  .a                 ( edt_clock_gated            ),
  .b                 ( edt_clock_div              ),
  .o                 ( edt_clock_int              )
);
i0scbf000ab1n02x5 tessent_persistent_cell_edt_clock_buf (
  .clk               ( edt_clock_int              ),
  .clkout            ( edt_clock                  )
);
 
i0sorn002ab1n02x5 tessent_persistent_cell_shift_capture_clock_or1 (
  .a                 ( shift_capture_clock_div    ),
  .b                 ( shift_capture_clock_gated  ),
  .o                 ( shift_capture_clock_div_or_gated )
);
i0sorn002ab1n02x5 tessent_persistent_cell_shift_capture_clock_or2 (
  .a                 ( shift_capture_clock_div_or_gated ),
  .b                 ( ijtag_clock_gated          ),
  .o                 ( shift_capture_clock_int    )
);
i0scbf000ab1n02x5 tessent_persistent_cell_shift_capture_clock_buf (
  .clk               ( shift_capture_clock_int    ),
  .clkout            ( shift_capture_clock        )
);
 
endmodule
