//------------------------------------------------------------------------------
//  INTEL CONFIDENTIAL
//
//  Copyright 2023 Intel Corporation All Rights Reserved.
//
//  The source code contained or described herein and all documents related
//  to the source code (Material) are owned by Intel Corporation or its
//  suppliers or licensors. Title to the Material remains with Intel
//  Corporation or its suppliers and licensors. The Material contains trade
//  secrets and proprietary and confidential information of Intel or its
//  suppliers and licensors. The Material is protected by worldwide copyright
//  and trade secret laws and treaty provisions. No part of the Material may
//  be used, copied, reproduced, modified, published, uploaded, posted,
//  transmitted, distributed, or disclosed in any way without Intel's prior
//  express written permission.
//
//  No license under any patent, copyright, trade secret or other intellectual
//  property right is granted to or conferred upon you by disclosure or
//  delivery of the Materials, either expressly, by implication, inducement,
//  estoppel or otherwise. Any license under such intellectual property rights
//  must be express and approved by Intel in writing.
//
//  Collateral Description:
//  dteg-upm
//
//  Source organization:
//  DTEG Engineering Group (DTEG)
//
//  Support Information:
//  HSD: https://hsdes.intel.com/appstore/article/#/dft_services.bugeco/create
//
//  Revision:
//  DTEG_UPM_2023WW17_FV_1P1_18A
//
//  Module upm_fabric - ijtag nw
//
//------------------------------------------------------------------------------

`ifndef UPM_MODULE_UPM_FABRIC
`define UPM_MODULE_UPM_FABRIC

module upm_fabric #(
       parameter NUMBER_OF_BITS_IN_WINDOW_COUNTER = 16,
       parameter UPM_NUMBER_OF_BITS_IN_COUNTER = 20,
	   parameter CBB_HIP_TYPE = "UPM_T_A"
       )
(      
	[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
		input	logic 			dfx_upm_func_clk,
		input  logic 			system_mode,
		input  logic [NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 : 0] system_window_counter_i,
		input  logic  			system_window_mode,
		input  logic  			system_counter_start,
		input  logic  			system_counter_stop,
		input  logic [4:0] 		system_clock_divider,
		input  logic  			system_debug_clk_en,
		input  logic 			upm_system_cfg_capture,
		input  logic 			upm_system_cfg_update,
		
		output logic [NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 : 0] system_window_counter_o,
		output  logic [4:0]    	system_fsm_state,
		output  logic			system_fsm_enable,
		output  logic 			system_fsm_active,
		output logic [2*UPM_NUMBER_OF_BITS_IN_COUNTER - 1:0] system_counter_value,
		output logic [1:0]		system_counter_overflow,
		input  logic 			dfx_upm_sys_rstn,
		output logic [1:0]      system_counter_status,
	[% END %]
		
		output logic  [1:0]		dfx_upm_dcm_out,
        input  logic  [1:0]     cbb_clk_in,
        input  logic            trstb,
        input  logic            cbb_power_en_error,
        input  logic            shift,
        input  logic            update,
        input  logic            tck,
        input  logic            capture,
        input  logic            si,
        input  logic            sel,
        input  logic            fdfx_powergood,
        input  logic            reg_so,
        output logic            debug_clk_en,
		output logic 			tap_master_mode,
        output logic            so,
        output logic            update_out,
        output logic            shift_out,
        output logic            capture_out,
        output logic            tck_out,
        output logic            reg_si,
        output logic            reg_sel
   );
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//nets definition
logic            COUNTER_CTRL_to_SIB_COUNTER_CTRL_reg_so;
logic            COUNTER_RESULT_to_SIB_COUNTER_RESULT_reg_so;
//logic            SIB_CBB_to_SIB_COUNTER_CTRL_capture_out;
logic            SIB_CBB_to_SIB_COUNTER_CTRL_next_si;
//logic            SIB_CBB_to_SIB_COUNTER_CTRL_next_update_out;
//logic            SIB_CBB_to_SIB_COUNTER_CTRL_sel_out;
//logic            SIB_CBB_to_SIB_COUNTER_CTRL_shift_out;
//logic            SIB_CBB_to_SIB_COUNTER_CTRL_tck_out;
///logic            SIB_CBB_to_SIB_COUNTER_CTRL_trstb_out;
logic            SIB_COUNTER_CTRL_to_COUNTER_CTRL_capture_out;
logic            SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_sel;
logic            SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_si;
logic            SIB_COUNTER_CTRL_to_COUNTER_CTRL_shift_out;
logic            SIB_COUNTER_CTRL_to_COUNTER_CTRL_tck_out;
logic            SIB_COUNTER_CTRL_to_COUNTER_CTRL_update_out;
logic            SIB_COUNTER_CTRL_to_SIB_CBB_next_so;
logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_capture_out;
logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_next_si;
logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_next_update_out;
//logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_sel_out;
//logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_shift_out;
//logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_tck_out;
//logic            SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_trstb_out;
//logic            SIB_COUNTER_RESULT_to_COUNTER_RESULT_capture_out;
logic            SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_sel;
logic            SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_si;
//logic            SIB_COUNTER_RESULT_to_COUNTER_RESULT_shift_out;
//logic            SIB_COUNTER_RESULT_to_COUNTER_RESULT_tck_out;
logic            SIB_COUNTER_RESULT_to_COUNTER_RESULT_update_out;
logic            SIB_COUNTER_RESULT_to_SIB_COUNTER_CTRL_next_so;
//logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_capture_out;
logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_next_si;
logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_next_update_out;
//logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_sel_out;
//logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_shift_out;
//logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_tck_out;
//logic            SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_trstb_out;
logic            SIB_UPM_STATUS_to_SIB_COUNTER_RESULT_next_so;
logic            SIB_UPM_STATUS_to_UPM_STATUS_capture_out;
logic            SIB_UPM_STATUS_to_UPM_STATUS_reg_sel;
logic            SIB_UPM_STATUS_to_UPM_STATUS_reg_si;
logic            SIB_UPM_STATUS_to_UPM_STATUS_shift_out;
logic            SIB_UPM_STATUS_to_UPM_STATUS_tck_out;
logic            SIB_UPM_STATUS_to_UPM_STATUS_update_out;
logic            UPM_STATUS_to_SIB_UPM_STATUS_reg_so;
logic            sib_upm_status_to_sib_upm_status_next_so;
logic 			 sib_resetb;
assign sib_resetb = trstb & fdfx_powergood;
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module sib_cbb instantiation
upm_ijtag_sib #(
       .SIB_REG_ENABLE(1),
       .SO_FLOP_ENABLE(0)
)
sib_cbb (
        .next_so                     (SIB_COUNTER_CTRL_to_SIB_CBB_next_so         ), //sib_cbb::SIB::input 
        .reg_so                      (reg_so                                      ), //sib_cbb::SIB::input 
        .trstb                       (sib_resetb                                       ), //sib_cbb::SIB::input 
        .shift                       (shift                                       ), //sib_cbb::SIB::input 
        .update                      (update                                      ), //sib_cbb::SIB::input 
        .tck                         (tck                                         ), //sib_cbb::SIB::input 
        .capture                     (capture                                     ), //sib_cbb::SIB::input 
        .si                          (si                                          ), //sib_cbb::SIB::input 
        .sel                         (sel                                         ), //sib_cbb::SIB::input 
        .trstb_out                   (), //sib_cbb::SIB::output 
        .next_update_out             (), //sib_cbb::SIB::output 
        .shift_out                   (), //sib_cbb::SIB::output - more than one receiver 
        .capture_out                 (), //sib_cbb::SIB::output - more than one receiver 
        .tck_out                     (), //sib_cbb::SIB::output - more than one receiver 
        .next_si                     (SIB_CBB_to_SIB_COUNTER_CTRL_next_si         ), //sib_cbb::SIB::output 
        .sel_out                     (), //sib_cbb::SIB::output 
        .update_out                  (update_out                                  ), //sib_cbb::SIB::output 
        .reg_si                      (reg_si                                      ), //sib_cbb::SIB::output 
        .reg_sel                     (reg_sel                                     ), //sib_cbb::SIB::output 
        .so                          (so                                          ), //sib_cbb::SIB::output 
        .sib_reg_intel_design_select (1'b1                                        )  //sib_cbb::TIE::input 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module sib_counter_ctrl instantiation
upm_ijtag_sib #(
       .SIB_REG_ENABLE(1),
       .SO_FLOP_ENABLE(0)
)
sib_counter_ctrl (
        .next_so                     (SIB_COUNTER_RESULT_to_SIB_COUNTER_CTRL_next_so         ), //sib_counter_ctrl::SIB::input 
        .reg_so                      (COUNTER_CTRL_to_SIB_COUNTER_CTRL_reg_so                ), //sib_counter_ctrl::SIB::input 
        .trstb                       (sib_resetb                                                  ), //sib_counter_ctrl::SIB::input 
        .update                      (update            ), //sib_counter_ctrl::SIB::input 
        .shift                       (shift                  ), //sib_counter_ctrl::SIB::input 
        .capture                     (capture                ), //sib_counter_ctrl::SIB::input 
        .tck                         (tck                    ), //sib_counter_ctrl::SIB::input 
        .si                          (SIB_CBB_to_SIB_COUNTER_CTRL_next_si                    ), //sib_counter_ctrl::SIB::input 
        .sel                         (sel                    ), //sib_counter_ctrl::SIB::input 
        .trstb_out                   (), //sib_counter_ctrl::SIB::output 
        .next_update_out             (), //sib_counter_ctrl::SIB::output 
        .shift_out                   (), //sib_counter_ctrl::SIB::output - more than one receiver 
        .capture_out                 (), //sib_counter_ctrl::SIB::output - more than one receiver 
        .tck_out                     (), //sib_counter_ctrl::SIB::output - more than one receiver 
        .next_si                     (SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_next_si         ), //sib_counter_ctrl::SIB::output 
        .sel_out                     (), //sib_counter_ctrl::SIB::output 
        .update_out                  (SIB_COUNTER_CTRL_to_COUNTER_CTRL_update_out            ), //sib_counter_ctrl::SIB::output 
        .reg_si                      (SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_si                ), //sib_counter_ctrl::SIB::output 
        .reg_sel                     (SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_sel               ), //sib_counter_ctrl::SIB::output 
        .so                          (SIB_COUNTER_CTRL_to_SIB_CBB_next_so                    ), //sib_counter_ctrl::SIB::output 
        .sib_reg_intel_design_select (1'b1                                                   )  //sib_counter_ctrl::TIE::input 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module sib_counter_result instantiation
upm_ijtag_sib #(
       .SIB_REG_ENABLE(1),
       .SO_FLOP_ENABLE(0)
)
sib_counter_result (
        .next_so                     (SIB_UPM_STATUS_to_SIB_COUNTER_RESULT_next_so           ), //sib_counter_result::SIB::input 
        .reg_so                      (COUNTER_RESULT_to_SIB_COUNTER_RESULT_reg_so            ), //sib_counter_result::SIB::input 
        .trstb                       (sib_resetb                                                  ), //sib_counter_result::SIB::input 
        .update                      (update ), //sib_counter_result::SIB::input 
        .shift                       (shift  ), //sib_counter_result::SIB::input 
        .capture                     (capture), //sib_counter_result::SIB::input 
        .tck                         (tck    ), //sib_counter_result::SIB::input 
        .si                          (SIB_COUNTER_CTRL_to_SIB_COUNTER_RESULT_next_si         ), //sib_counter_result::SIB::input 
        .sel                         (sel         ), //sib_counter_result::SIB::input 
        .trstb_out                   (), //sib_counter_result::SIB::output 
        .next_update_out             (), //sib_counter_result::SIB::output 
        .shift_out                   (), //sib_counter_result::SIB::output - more than one receiver 
        .capture_out                 (), //sib_counter_result::SIB::output - more than one receiver 
        .tck_out                     (), //sib_counter_result::SIB::output - more than one receiver 
        .next_si                     (SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_next_si           ), //sib_counter_result::SIB::output 
        .sel_out                     (), //sib_counter_result::SIB::output 
        .update_out                  (SIB_COUNTER_RESULT_to_COUNTER_RESULT_update_out        ), //sib_counter_result::SIB::output 
        .reg_si                      (SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_si            ), //sib_counter_result::SIB::output 
        .reg_sel                     (SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_sel           ), //sib_counter_result::SIB::output 
        .so                          (SIB_COUNTER_RESULT_to_SIB_COUNTER_CTRL_next_so         ), //sib_counter_result::SIB::output 
        .sib_reg_intel_design_select (1'b1                                                   )  //sib_counter_result::TIE::input 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module sib_upm_status instantiation
upm_ijtag_sib #(
       .SIB_REG_ENABLE(1),
       .SO_FLOP_ENABLE(0)
)
sib_upm_status (
        .reg_so                      (UPM_STATUS_to_SIB_UPM_STATUS_reg_so                  ), //sib_upm_status::SIB::input 
        .trstb                       (sib_resetb                                                ), //sib_upm_status::SIB::input 
        .update                      (update), //sib_upm_status::SIB::input 
        .shift                       (shift), //sib_upm_status::SIB::input 
        .capture                     (capture), //sib_upm_status::SIB::input 
        .tck                         (tck), //sib_upm_status::SIB::input 
        .si                          (SIB_COUNTER_RESULT_to_SIB_UPM_STATUS_next_si         ), //sib_upm_status::SIB::input 
        .sel                         (sel), //sib_upm_status::SIB::input 
        .trstb_out                   (                                                     ), //sib_upm_status::SIB::output 
        .update_out                  (), //sib_upm_status::SIB::output 
        .shift_out                   (), //sib_upm_status::SIB::output 
        .capture_out                 (), //sib_upm_status::SIB::output 
        .tck_out                     (), //sib_upm_status::SIB::output 
        .reg_si                      (SIB_UPM_STATUS_to_UPM_STATUS_reg_si                  ), //sib_upm_status::SIB::output 
        .reg_sel                     (SIB_UPM_STATUS_to_UPM_STATUS_reg_sel                 ), //sib_upm_status::SIB::output 
        .so                          (SIB_UPM_STATUS_to_SIB_COUNTER_RESULT_next_so         ), //sib_upm_status::SIB::output 
        .sib_reg_intel_design_select (1'b1                                                 ), //sib_upm_status::TIE::input 
        .next_so                     (sib_upm_status_to_sib_upm_status_next_so             ), //sib_upm_status::manual::input 
        .next_si                     (sib_upm_status_to_sib_upm_status_next_so             ), //sib_upm_status::manual::output 
        .next_update_out             (                                                     ), //sib_upm_status::not_connected::output 
        .sel_out                     (                                                     )  //sib_upm_status::not_connected::output 
);
//------------------------------------------------------------------------------------------------------






generate
	if (1) begin : UPM_REGS
//------------------------------------------------------------------------------------------------------

	if( (CBB_HIP_TYPE == "UPM_THERMAL_1") || (CBB_HIP_TYPE == "UPM_THERMAL_2") || (CBB_HIP_TYPE == "UPM_THERMAL_3") || (CBB_HIP_TYPE == "UPM_THERMAL_4") || (CBB_HIP_TYPE == "UPM_THERMAL_5") || (CBB_HIP_TYPE == "UPM_THERMAL_6")) begin : UPM_THERMAL 
		upm_reg_2 #(
			.NUMBER_OF_BITS_IN_WINDOW_COUNTER(NUMBER_OF_BITS_IN_WINDOW_COUNTER),
			.UPM_NUMBER_OF_BITS_IN_COUNTER(UPM_NUMBER_OF_BITS_IN_COUNTER),
			.CBB_HIP_TYPE(CBB_HIP_TYPE)
		)
		u_upm_reg (
		
		
				[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
		        .dfx_upm_func_clk     (dfx_upm_func_clk),
				.system_mode		  (system_mode),
				.system_window_counter_i(system_window_counter_i),
				.system_window_mode   (system_window_mode),
				.system_counter_start (system_counter_start),
				.system_counter_stop  (system_counter_stop),
				.system_clock_divider (system_clock_divider),
				.system_debug_clk_en  (system_debug_clk_en),
				.upm_system_cfg_capture  (upm_system_cfg_capture),
				.upm_system_cfg_update  (upm_system_cfg_update),
				.system_window_counter_o(system_window_counter_o),
				.system_fsm_state		(system_fsm_state),
				.system_fsm_enable		(system_fsm_enable),
				.system_fsm_active		(system_fsm_active),
				.system_counter_value	(system_counter_value),
				.system_counter_overflow(system_counter_overflow),
				.dfx_upm_sys_rstn		(dfx_upm_sys_rstn),
				.system_counter_status  (system_counter_status),
				[% END %]	
			
				.dfx_upm_dcm_out	(dfx_upm_dcm_out),
				.s1                 (SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_sel     ), //upm_reg::SIB_REG_COUNTER_CTRL::input 
				.fdfx_powergood     (fdfx_powergood                               ), //upm_reg::SIB_REG_COUNTER_CTRL::input 
				.s2                 (SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_sel ), //upm_reg::SIB_REG_COUNTER_RESULT::input 
				.update             (SIB_COUNTER_CTRL_to_COUNTER_CTRL_update_out  ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.shift              (shift   ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.capture            (capture ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.tck                (tck     ), //upm_reg::SIB_REG_UPM_STATUS::input
				.trstb              (trstb                                        ), //upm_reg::SIB_REG_UPM_STATUS::input
				.upm_status_si      (SIB_UPM_STATUS_to_UPM_STATUS_reg_si          ), //upm_reg::SIB_REG_UPM_STATUS::input          
				.cntr_ctrl_si       (SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_si      ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.cntr_res_si        (SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_si  ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.s3                 (SIB_UPM_STATUS_to_UPM_STATUS_reg_sel         ), //upm_reg::SIB_REG_UPM_STATUS::input
				.upm_status_so      (UPM_STATUS_to_SIB_UPM_STATUS_reg_so          ), //upm_reg::SIB_REG_UPM_STATUS::output  
				.cntr_ctrl_so       (COUNTER_CTRL_to_SIB_COUNTER_CTRL_reg_so      ), //upm_reg::SIB_REG_COUNTER_CTRL::output 
				.cntr_res_so        (COUNTER_RESULT_to_SIB_COUNTER_RESULT_reg_so  ), //upm_reg::SIB_REG_COUNTER_RESULT::output
				.cbb_clk_in         (cbb_clk_in                                   ), //upm_reg::UNIT interface::input  - MODULE_PORT:cbb_clk_in 
				.cbb_power_en_error (cbb_power_en_error)                       , //upm_reg::UNIT interface::input
				.tap_master_mode    (tap_master_mode),
				.debug_clk_en       (debug_clk_en                             )  //upm_reg::UNIT interface::output - MODULE_PORT::debug_clk_en 
		);
		//------------------------------------------------------------------------------------------------------
		
	end
	else begin : UPM_NON_THERMAL
		upm_reg #(
			.NUMBER_OF_BITS_IN_WINDOW_COUNTER(NUMBER_OF_BITS_IN_WINDOW_COUNTER),
			.UPM_NUMBER_OF_BITS_IN_COUNTER(UPM_NUMBER_OF_BITS_IN_COUNTER),
			.CBB_HIP_TYPE(CBB_HIP_TYPE)
		)
		u_upm_reg (
		
			[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
		        .dfx_upm_func_clk     (dfx_upm_func_clk),
				.system_mode		  (system_mode),
				.system_window_counter_i(system_window_counter_i),
				.system_window_mode   (system_window_mode),
				.system_counter_start (system_counter_start),
				.system_counter_stop  (system_counter_stop),
				.system_clock_divider (system_clock_divider),
				.system_debug_clk_en  (system_debug_clk_en),
				.upm_system_cfg_capture  (upm_system_cfg_capture),
				.upm_system_cfg_update  (upm_system_cfg_update),
				.system_window_counter_o(system_window_counter_o),
				.system_fsm_state		(system_fsm_state),
				.system_fsm_enable		(system_fsm_enable),
				.system_fsm_active		(system_fsm_active),
				.system_counter_value	(system_counter_value),
				.system_counter_overflow(system_counter_overflow),
				.dfx_upm_sys_rstn		(dfx_upm_sys_rstn),
				.system_counter_status  (system_counter_status),
			[% END %]	
											
				.dfx_upm_dcm_out	(dfx_upm_dcm_out),
				.s1                 (SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_sel     ), //upm_reg::SIB_REG_COUNTER_CTRL::input 
				.fdfx_powergood     (fdfx_powergood                               ), //upm_reg::SIB_REG_COUNTER_CTRL::input 
				.s2                 (SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_sel ), //upm_reg::SIB_REG_COUNTER_RESULT::input 
				.update             (SIB_COUNTER_CTRL_to_COUNTER_CTRL_update_out  ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.shift              (shift   ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.capture            (capture ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.tck                (tck     ), //upm_reg::SIB_REG_UPM_STATUS::input
				.trstb              (trstb                                        ), //upm_reg::SIB_REG_UPM_STATUS::input
				.upm_status_si      (SIB_UPM_STATUS_to_UPM_STATUS_reg_si          ), //upm_reg::SIB_REG_UPM_STATUS::input          
				.cntr_ctrl_si       (SIB_COUNTER_CTRL_to_COUNTER_CTRL_reg_si      ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.cntr_res_si        (SIB_COUNTER_RESULT_to_COUNTER_RESULT_reg_si  ), //upm_reg::SIB_REG_UPM_STATUS::input 
				.s3                 (SIB_UPM_STATUS_to_UPM_STATUS_reg_sel         ), //upm_reg::SIB_REG_UPM_STATUS::input
				.upm_status_so      (UPM_STATUS_to_SIB_UPM_STATUS_reg_so          ), //upm_reg::SIB_REG_UPM_STATUS::output  
				.cntr_ctrl_so       (COUNTER_CTRL_to_SIB_COUNTER_CTRL_reg_so      ), //upm_reg::SIB_REG_COUNTER_CTRL::output 
				.cntr_res_so        (COUNTER_RESULT_to_SIB_COUNTER_RESULT_reg_so  ), //upm_reg::SIB_REG_COUNTER_RESULT::output
				.cbb_clk_in         (cbb_clk_in                                   ), //upm_reg::UNIT interface::input  - MODULE_PORT:cbb_clk_in 
				.cbb_power_en_error (cbb_power_en_error)                       , //upm_reg::UNIT interface::input
				.tap_master_mode    (tap_master_mode),
				.debug_clk_en       (debug_clk_en                             )  //upm_reg::UNIT interface::output - MODULE_PORT::debug_clk_en 
		);
		//------------------------------------------------------------------------------------------------------
	
	
	end
	end
endgenerate

//------------------------------------------------------------------------------------------------------
//output to multiple receivers connection
assign shift_out = shift;
assign capture_out = capture;
assign tck_out = tck;
              
//------------------------------------------------------------------------------------------------------



endmodule
`endif
