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
//       Created on: Tue Oct 24 19:29:00 PDT 2023
//
//       IP version: 8
//--------------------------------------------------------------------------------


module firebird7_in_gate2_tessent_edt_extest_edt_decompressor (
   input  wire       edt_clock,
   input  wire       edt_update,
   input  wire       edt_channels_in,
   output reg  [4:0] edt_scan_in
);
   reg    [24:0] lfsm_vec;
   reg    [24:0] lfsm_vec_lockup;

   // synopsys sync_set_reset edt_update
   always @(posedge edt_clock)
   begin : lfsm
      if (edt_update == 1'b1) begin
         lfsm_vec <= 25'b0000000000000000000000000;
      end
      else begin
         lfsm_vec[ 0] <= lfsm_vec[ 1];
         lfsm_vec[ 1] <= lfsm_vec[ 2] ^ edt_channels_in;
         lfsm_vec[ 2] <= lfsm_vec[ 3];
         lfsm_vec[ 3] <= lfsm_vec[ 4] ^ edt_channels_in;
         lfsm_vec[ 4] <= lfsm_vec[ 5];
         lfsm_vec[ 5] <= lfsm_vec[ 6] ^ edt_channels_in;
         lfsm_vec[ 6] <= lfsm_vec[ 7];
         lfsm_vec[ 7] <= lfsm_vec[ 8] ^ edt_channels_in;
         lfsm_vec[ 8] <= lfsm_vec[ 9];
         lfsm_vec[ 9] <= lfsm_vec[10] ^ edt_channels_in;
         lfsm_vec[10] <= lfsm_vec[11];
         lfsm_vec[11] <= lfsm_vec[12];
         lfsm_vec[12] <= lfsm_vec[13] ^ edt_channels_in;
         lfsm_vec[13] <= lfsm_vec[14];
         lfsm_vec[14] <= lfsm_vec[15] ^ edt_channels_in;
         lfsm_vec[15] <= lfsm_vec[16] ^ lfsm_vec[ 9];
         lfsm_vec[16] <= lfsm_vec[17] ^ edt_channels_in;
         lfsm_vec[17] <= lfsm_vec[18] ^ lfsm_vec[ 6];
         lfsm_vec[18] <= lfsm_vec[19] ^ edt_channels_in;
         lfsm_vec[19] <= lfsm_vec[20];
         lfsm_vec[20] <= lfsm_vec[21] ^ edt_channels_in;
         lfsm_vec[21] <= lfsm_vec[22] ^ lfsm_vec[ 4];
         lfsm_vec[22] <= lfsm_vec[23] ^ edt_channels_in;
         lfsm_vec[23] <= lfsm_vec[24];
         lfsm_vec[24] <= lfsm_vec[ 0] ^ edt_channels_in;
      end
   end

   always @(negedge edt_clock)
   begin : lockup_cells
      lfsm_vec_lockup[ 1] <= lfsm_vec[ 1];
      lfsm_vec_lockup[ 2] <= lfsm_vec[ 2];
      lfsm_vec_lockup[ 8] <= lfsm_vec[ 8];
      lfsm_vec_lockup[ 9] <= lfsm_vec[ 9];
      lfsm_vec_lockup[10] <= lfsm_vec[10];
      lfsm_vec_lockup[11] <= lfsm_vec[11];
      lfsm_vec_lockup[12] <= lfsm_vec[12];
      lfsm_vec_lockup[13] <= lfsm_vec[13];
      lfsm_vec_lockup[14] <= lfsm_vec[14];
      lfsm_vec_lockup[19] <= lfsm_vec[19];
      lfsm_vec_lockup[20] <= lfsm_vec[20];
      lfsm_vec_lockup[21] <= lfsm_vec[21];
      lfsm_vec_lockup[22] <= lfsm_vec[22];
      lfsm_vec_lockup[23] <= lfsm_vec[23];
      lfsm_vec_lockup[24] <= lfsm_vec[24];
   end

   always @(lfsm_vec_lockup)
   begin : phase_shifter
      edt_scan_in[0] = lfsm_vec_lockup[10] ^ lfsm_vec_lockup[12] ^ lfsm_vec_lockup[14];
      edt_scan_in[1] = lfsm_vec_lockup[ 1] ^ lfsm_vec_lockup[11] ^ lfsm_vec_lockup[21];
      edt_scan_in[2] = lfsm_vec_lockup[ 2] ^ lfsm_vec_lockup[13] ^ lfsm_vec_lockup[24];
      edt_scan_in[3] = lfsm_vec_lockup[ 9] ^ lfsm_vec_lockup[22] ^ lfsm_vec_lockup[23];
      edt_scan_in[4] = lfsm_vec_lockup[ 8] ^ lfsm_vec_lockup[19] ^ lfsm_vec_lockup[20];
   end

endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_low_power_shift_decoder (
   input  wire [4:0] encoded_control,
   output wire [4:0] decoded_control
);
   assign decoded_control[0] = encoded_control[0];
   assign decoded_control[1] = encoded_control[1];
   assign decoded_control[2] = encoded_control[2];
   assign decoded_control[3] = encoded_control[3];
   assign decoded_control[4] = encoded_control[4];
endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_low_power_shift_controller (
   input  wire       edt_clock,
   input  wire       edt_update,
   input  wire       edt_low_power_shift_en,
   input  wire       edt_channels_in,
   input  wire [4:0] edt_decompressor_out,
   output wire       edt_channels_out_from_low_power_shift_control,
   output wire [4:0] edt_scan_in
);
   reg    [4:0] low_power_shift_reg_0;
   reg    [4:0] low_power_hold_reg_0;
   wire   [4:0] encoded_control;
   wire   [4:0] bias_inputs;
   wire         low_power_shift_reg_sync_reset;
   wire         low_power_hold_reg_sync_set;

   assign low_power_shift_reg_sync_reset = edt_update;

   // synopsys sync_set_reset low_power_shift_reg_sync_reset
   always @(posedge edt_clock)
   begin : shift_low_power_regs
      if (low_power_shift_reg_sync_reset == 1'b1) begin
         low_power_shift_reg_0 <= 5'b00000;
      end
      else begin
         low_power_shift_reg_0 <= {edt_channels_in, low_power_shift_reg_0[4:1]};
      end
   end

   assign low_power_hold_reg_sync_set = edt_update & ~edt_low_power_shift_en;

   // synopsys sync_set_reset low_power_hold_reg_sync_set
   always @(posedge edt_clock)
   begin : update_low_power_regs
      if (low_power_hold_reg_sync_set == 1'b1) begin
         low_power_hold_reg_0 <= 5'b11111;
      end
      else begin
         if (edt_update == 1'b1) begin
            low_power_hold_reg_0 <= low_power_shift_reg_0;
         end
      end
   end

   assign edt_channels_out_from_low_power_shift_control = edt_low_power_shift_en ? low_power_shift_reg_0[0] : edt_channels_in;

   assign encoded_control = {low_power_hold_reg_0[4], low_power_hold_reg_0[3], low_power_hold_reg_0[2], 
                             low_power_hold_reg_0[1], low_power_hold_reg_0[0]};

   firebird7_in_gate2_tessent_edt_extest_edt_low_power_shift_decoder decoder (
      .encoded_control(encoded_control),
      .decoded_control(bias_inputs));

   assign edt_scan_in[0] = edt_decompressor_out[0] & bias_inputs[0];
   assign edt_scan_in[1] = edt_decompressor_out[1] & bias_inputs[1];
   assign edt_scan_in[2] = edt_decompressor_out[2] & bias_inputs[2];
   assign edt_scan_in[3] = edt_decompressor_out[3] & bias_inputs[3];
   assign edt_scan_in[4] = edt_decompressor_out[4] & bias_inputs[4];
endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_onehot_decoder_3_to_5 (
   input  wire [2:0] encoded_masks,
   output reg  [4:0] decoded_masks
);
   always @(encoded_masks)
   begin
      case (encoded_masks)
         3'b000:  decoded_masks = 5'b00000;
         3'b001:  decoded_masks = 5'b00001;
         3'b010:  decoded_masks = 5'b00010;
         3'b011:  decoded_masks = 5'b00100;
         3'b100:  decoded_masks = 5'b01000;
         3'b101:  decoded_masks = 5'b10000;
         default: decoded_masks = 5'b11111;
      endcase
   end
endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_xor_decoder (
   input  wire [4:0] encoded_masks,
   output wire [4:0] decoded_masks_0
);
   assign decoded_masks_0[0] = encoded_masks[0];
   assign decoded_masks_0[1] = encoded_masks[1];
   assign decoded_masks_0[2] = encoded_masks[2];
   assign decoded_masks_0[3] = encoded_masks[3];
   assign decoded_masks_0[4] = encoded_masks[4];

endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_controller (
   input  wire       edt_clock,
   input  wire       edt_update,
   input  wire       edt_low_power_shift_en,
   input  wire       edt_channels_in,
   input  wire [4:0] edt_decompressor_out,
   output wire       edt_channels_out_from_controller,
   output wire [4:0] masks_for_compactor_0,
   output wire [4:0] edt_scan_in
);
   reg    [5:0] masks_shift_reg_0;
   reg    [5:0] masks_hold_reg_0;
   wire         control_bit;
   wire   [2:0] onehot_encoded_masks_0;
   wire   [4:0] xor_encoded_masks;
   wire   [4:0] onehot_decoded_masks_0;
   wire   [4:0] xor_decoded_masks_0;
   wire         masks_shift_reg_sync_reset;
   wire         edt_channels_out_from_low_power_shift_control;

   firebird7_in_gate2_tessent_edt_extest_edt_low_power_shift_controller low_power_shift_controller_i (
      .edt_clock(edt_clock),
      .edt_update(edt_update),
      .edt_low_power_shift_en(edt_low_power_shift_en),
      .edt_channels_in(edt_channels_in),
      .edt_decompressor_out(edt_decompressor_out),
      .edt_channels_out_from_low_power_shift_control(edt_channels_out_from_low_power_shift_control),
      .edt_scan_in(edt_scan_in));

   assign masks_shift_reg_sync_reset = edt_update;

   // synopsys sync_set_reset masks_shift_reg_sync_reset
   always @(posedge edt_clock)
   begin : shift_masks_regs
      if (masks_shift_reg_sync_reset == 1'b1) begin
         masks_shift_reg_0 <= 6'b000000;
      end
      else begin
         masks_shift_reg_0 <= {edt_channels_out_from_low_power_shift_control, masks_shift_reg_0[5:1]};
      end
   end

   always @(posedge edt_clock)
   begin : update_masks_regs
      if (edt_update == 1'b1) begin
         masks_hold_reg_0 <= masks_shift_reg_0;
      end
   end

   assign edt_channels_out_from_controller = masks_shift_reg_0[0];

   assign control_bit = masks_hold_reg_0[5];

   assign xor_encoded_masks = {masks_hold_reg_0[0], masks_hold_reg_0[1], masks_hold_reg_0[2], 
                               masks_hold_reg_0[3], masks_hold_reg_0[4]};

   assign onehot_encoded_masks_0 = {masks_hold_reg_0[4], masks_hold_reg_0[3], masks_hold_reg_0[2]};

   firebird7_in_gate2_tessent_edt_extest_edt_xor_decoder xor_decoder (
      .encoded_masks(xor_encoded_masks),
      .decoded_masks_0(xor_decoded_masks_0));

   firebird7_in_gate2_tessent_edt_extest_edt_onehot_decoder_3_to_5 decoder1 (.encoded_masks(onehot_encoded_masks_0),
                                                                             .decoded_masks(onehot_decoded_masks_0));

   assign masks_for_compactor_0 = control_bit ? onehot_decoded_masks_0 : xor_decoded_masks_0;
endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_spatial_compactor_5_w_output_lockup (
   input  wire       edt_clock,
   input  wire [4:0] multi_bit_input,
   output reg        single_bit_output
);
   reg    [2:0] level1;
   reg    [1:0] level2;
   reg          level3_pipelined;

   always @(multi_bit_input)
   begin : compact5_level1
      level1[0] = multi_bit_input[0] ^ multi_bit_input[1];
      level1[1] = multi_bit_input[2] ^ multi_bit_input[3];
      level1[2] = multi_bit_input[4];
   end

   always @(level1)
   begin : compact5_level2
      level2[0] = level1[0] ^ level1[1];
      level2[1] = level1[2];
   end

   always @(posedge edt_clock)
   begin : compact5_level3_pipelined
      level3_pipelined <= level2[0] ^ level2[1];
   end

   always @(negedge edt_clock)
   begin : compact5_level3_lockup
      single_bit_output <= level3_pipelined;
   end

endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_compactor (
   input  wire       edt_clock,
   input  wire [4:0] edt_scan_out,
   input  wire [4:0] masks_for_compactor_0,
   output wire       edt_channels_out
);
   wire   [4:0] masked_scan_outputs_0;

   assign masked_scan_outputs_0 = edt_scan_out[4:0] & masks_for_compactor_0;

   firebird7_in_gate2_tessent_edt_extest_edt_spatial_compactor_5_w_output_lockup compactor1 (.edt_clock(edt_clock),
                                                                                             .multi_bit_input(masked_scan_outputs_0),
                                                                                             .single_bit_output(edt_channels_out));
endmodule


module firebird7_in_gate2_tessent_edt_extest_edt_bypass_logic (
   input  wire       edt_bypass,
   input  wire       edt_channels_in,
   output wire       edt_channels_out,
   output wire [4:0] edt_scan_in,
   input  wire [4:0] edt_scan_out,
   input  wire [4:0] edt_bypass_in,
   input  wire       edt_bypass_out
);

   assign edt_scan_in[0] = edt_bypass ? edt_channels_in : edt_bypass_in[0];
   assign edt_scan_in[1] = edt_bypass ? edt_scan_out[0] : edt_bypass_in[1];
   assign edt_scan_in[2] = edt_bypass ? edt_scan_out[1] : edt_bypass_in[2];
   assign edt_scan_in[3] = edt_bypass ? edt_scan_out[2] : edt_bypass_in[3];
   assign edt_scan_in[4] = edt_bypass ? edt_scan_out[3] : edt_bypass_in[4];

   assign edt_channels_out = edt_bypass ? edt_scan_out[4] : edt_bypass_out;
endmodule


module firebird7_in_gate2_tessent_edt_extest_edt (
   input  wire       edt_clock,
   input  wire       edt_update,
   input  wire       edt_low_power_shift_en,
   input  wire       edt_bypass,
   input  wire       edt_channels_in,
   output wire       edt_channels_out,
   output wire [4:0] edt_scan_in,
   input  wire [4:0] edt_scan_out
);
   wire   [4:0] edt_decompressor_out;
   wire   [4:0] edt_bypass_in;
   wire         edt_bypass_out;
   wire   [4:0] masks_for_compactor_0;
   wire         edt_channels_out_from_controller;
   wire         edt_clock_buf_out;
   wire         edt_update_buf_out;
   wire         edt_bypass_buf_out;
   wire         edt_low_power_shift_en_buf_out;
   wire         edt_channels_in_buf_out;
   wire         edt_channels_out_buf_in;
   wire   [4:0] edt_scan_in_buf_in;
   wire   [4:0] edt_scan_out_buf_out;

   i0scbf000ab1n02x5 tessent_persistent_cell_edt_clock_buf (.clk(edt_clock),
                                                            .clkout(edt_clock_buf_out));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_update_buf (.a(edt_update),
                                                             .o(edt_update_buf_out));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_bypass_buf (.a(edt_bypass),
                                                             .o(edt_bypass_buf_out));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_low_power_shift_en_buf (.a(edt_low_power_shift_en),
                                                                         .o(edt_low_power_shift_en_buf_out));

   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_channels_in_0_buf (.a(edt_channels_in),
                                                                    .o(edt_channels_in_buf_out));

   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_channels_out_0_buf (.a(edt_channels_out_buf_in),
                                                                     .o(edt_channels_out));

   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_in_0_buf (.a(edt_scan_in_buf_in[0]),
                                                                .o(edt_scan_in[0]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_in_1_buf (.a(edt_scan_in_buf_in[1]),
                                                                .o(edt_scan_in[1]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_in_2_buf (.a(edt_scan_in_buf_in[2]),
                                                                .o(edt_scan_in[2]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_in_3_buf (.a(edt_scan_in_buf_in[3]),
                                                                .o(edt_scan_in[3]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_in_4_buf (.a(edt_scan_in_buf_in[4]),
                                                                .o(edt_scan_in[4]));

   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_out_0_buf (.a(edt_scan_out[0]),
                                                                 .o(edt_scan_out_buf_out[0]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_out_1_buf (.a(edt_scan_out[1]),
                                                                 .o(edt_scan_out_buf_out[1]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_out_2_buf (.a(edt_scan_out[2]),
                                                                 .o(edt_scan_out_buf_out[2]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_out_3_buf (.a(edt_scan_out[3]),
                                                                 .o(edt_scan_out_buf_out[3]));
   i0sbfn000ab1n02x5 tessent_persistent_cell_edt_scan_out_4_buf (.a(edt_scan_out[4]),
                                                                 .o(edt_scan_out_buf_out[4]));

   firebird7_in_gate2_tessent_edt_extest_edt_decompressor firebird7_in_gate2_tessent_edt_extest_edt_decompressor_i (
      .edt_clock(edt_clock_buf_out),
      .edt_update(edt_update_buf_out),
      .edt_channels_in(edt_channels_out_from_controller),
      .edt_scan_in(edt_decompressor_out));

   firebird7_in_gate2_tessent_edt_extest_edt_compactor firebird7_in_gate2_tessent_edt_extest_edt_compactor_i (
      .edt_clock(edt_clock_buf_out),
      .edt_scan_out(edt_scan_out_buf_out),
      .masks_for_compactor_0(masks_for_compactor_0),
      .edt_channels_out(edt_bypass_out));

   firebird7_in_gate2_tessent_edt_extest_edt_controller firebird7_in_gate2_tessent_edt_extest_edt_controller_i (
      .edt_clock(edt_clock_buf_out),
      .edt_update(edt_update_buf_out),
      .edt_low_power_shift_en(edt_low_power_shift_en_buf_out),
      .edt_channels_in(edt_channels_in_buf_out),
      .edt_decompressor_out(edt_decompressor_out),
      .edt_channels_out_from_controller(edt_channels_out_from_controller),
      .masks_for_compactor_0(masks_for_compactor_0),
      .edt_scan_in(edt_bypass_in));

   firebird7_in_gate2_tessent_edt_extest_edt_bypass_logic firebird7_in_gate2_tessent_edt_extest_edt_bypass_logic_i (
      .edt_bypass(edt_bypass_buf_out),
      .edt_channels_in(edt_channels_in_buf_out),
      .edt_channels_out(edt_channels_out_buf_in),
      .edt_scan_in(edt_scan_in_buf_in),
      .edt_scan_out(edt_scan_out_buf_out),
      .edt_bypass_in(edt_bypass_in),
      .edt_bypass_out(edt_bypass_out));
endmodule


