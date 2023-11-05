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
//  Module dteg_upm_top_apm_out :  Top level module file with fabric and cbb wrapper with APM module outside
//
//------------------------------------------------------------------------------

//----------------------------------------------------------------------
// NOTE: Log history is at end of file.
//----------------------------------------------------------------------
//
//    FILENAME    :  dteg_upm_top_apm_out.sv
//    DESIGNER    :  siva.prasad.s@intel.com
//    PROJECT     :  
//    PURPOSE     : 
//    DESCRIPTION : 
//-----------------------------------------------------------------------------

`ifndef MODULE_DTEG_UPM_TOP_APM
`define MODULE_DTEG_UPM_TOP_APM



module dteg_upm_top_apm_out #(
       parameter DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER = 16,
       parameter DFX_UPM_NUMBER_OF_BITS_IN_COUNTER = 20,
       parameter DFX_UPM_CBB_HIP_TYPE ="UPM_APM"
       )
       (       
      [% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			`include "upm_system_ports.sv"
      [% END %]
	  [% IF upm_variables.DFX_UPM_DCM_OUT == 1 %]
        output logic	[1:0]	dfx_upm_dcm_out,
	  [% END %]
        //// APM Module outside the IP
        output	logic 			apm_en_sensor,
        output	logic 			apm_en_cal,
        output	logic 			apm_en_osc,
        output	logic 			apm_en_step,
        output	logic 			apm_osc_sel,
        output	logic [1:0]  	apm_xtor_sel,
        output	logic [3:0]  	apm_mux_sel ,
        output	logic [3:0]  	apm_vdac_sel,
        input	logic 			apm_osc_out,
        input	logic 			apm_debug_in,
        output	logic			apm_debug_out,
	  // iJTAG ports
        input  logic            dfx_upm_iso_n,
        input  logic            dfx_upm_clk_debug,
        input  logic            dfx_upm_fdfx_powergood,
        input  logic            dfx_upm_trstb,
        input  logic            dfx_upm_update,
        input  logic            dfx_upm_shift,
        input  logic            dfx_upm_capture,
        input  logic            dfx_upm_tck,
        input  logic            dfx_upm_si,
        input  logic            dfx_upm_sel,
        output logic            dfx_upm_so
	);
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//nets definition
logic	     	UPM1_to_UPM_CBB_WRAPPER_capture_out;
logic	     	UPM1_to_UPM_CBB_WRAPPER_debug_clk_en;
logic	     	UPM1_to_UPM_CBB_WRAPPER_reg_sel;
logic	     	UPM1_to_UPM_CBB_WRAPPER_reg_si;
logic	     	UPM1_to_UPM_CBB_WRAPPER_shift_out;
logic	     	UPM1_to_UPM_CBB_WRAPPER_tck_out;
logic	     	UPM1_to_UPM_CBB_WRAPPER_update_out;
logic	     	UPM_CBB_WRAPPER_to_UPM1_cbb_power_en_error;
logic	     	UPM_CBB_WRAPPER_to_UPM1_reg_so;
logic	     	clk_debug;
logic	     	iso_n;
logic	[1:0]	UPM_CBB_WRAPPER_to_UPM1_cbb_clk_in; //2 clocks
logic			tap_master_mode;




[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]

logic  			system_mode;
logic  			[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 :0]  system_window_counter_i;
logic  			system_window_mode;
logic  			system_counter_start;
logic  			system_counter_stop;
logic	[4:0]	system_clock_divider;
logic 			system_debug_clk_en;
logic  			upm_system_cfg_capture;
logic 			upm_system_cfg_update;
logic   [15:0]   system_cbb_cbb_addr;
logic   [15:0]   system_cbb_pwr_en;


logic [DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 : 0] system_window_counter_o;
logic [4:0]    	system_fsm_state;
logic			system_fsm_enable;
logic 			system_fsm_active;
logic [2*DFX_UPM_NUMBER_OF_BITS_IN_COUNTER - 1 : 0] system_counter_value;
logic 	[1:0]	system_counter_overflow;
logic 	[1:0]	system_counter_status;


[% END %]
//------------------------------------------------------------------------------------------------------
//// APM Module outside the IP
assign apm_debug_out = apm_debug_in;
//	
`ifndef INTEL_HIDE_INTEGRATION
// collage-pragma translate_off			
	//module upm1 instantiation
	upm_fabric #(
				.NUMBER_OF_BITS_IN_WINDOW_COUNTER(DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER),
				.UPM_NUMBER_OF_BITS_IN_COUNTER(DFX_UPM_NUMBER_OF_BITS_IN_COUNTER),
				.CBB_HIP_TYPE("UPM_APM")
			)
			upm1 (
					.cbb_clk_in         (UPM_CBB_WRAPPER_to_UPM1_cbb_clk_in         ),
					.reg_so             (UPM_CBB_WRAPPER_to_UPM1_reg_so             ),
					.cbb_power_en_error (UPM_CBB_WRAPPER_to_UPM1_cbb_power_en_error ),
					.fdfx_powergood     (dfx_upm_fdfx_powergood                     ),
					.trstb              (dfx_upm_trstb                              ),
					.update             (dfx_upm_update                             ),
					.shift              (dfx_upm_shift                              ),
					.capture            (dfx_upm_capture                            ),
					.tck                (dfx_upm_tck                                ),
					.si                 (dfx_upm_si                                 ),
					.sel                (dfx_upm_sel                                ),
					.shift_out          (UPM1_to_UPM_CBB_WRAPPER_shift_out          ), 
					.update_out         (UPM1_to_UPM_CBB_WRAPPER_update_out         ), 
					.tck_out            (), //upm1::UPM::output 
					.capture_out        (UPM1_to_UPM_CBB_WRAPPER_capture_out        ), 
					.reg_si             (UPM1_to_UPM_CBB_WRAPPER_reg_si             ), 
					.reg_sel            (UPM1_to_UPM_CBB_WRAPPER_reg_sel            ), 
					.debug_clk_en       (UPM1_to_UPM_CBB_WRAPPER_debug_clk_en       ), 
					.tap_master_mode    (tap_master_mode),
					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %] 
					.dfx_upm_func_clk       (dfx_upm_func_clk),
					.system_mode		    (system_mode),
					.system_window_counter_i(system_window_counter_i),
					.system_window_mode     (system_window_mode),
					.system_counter_start   (system_counter_start),
					.system_counter_stop    (system_counter_stop),
					.system_clock_divider   (system_clock_divider),
					.system_debug_clk_en    (system_debug_clk_en),
					.upm_system_cfg_capture (upm_system_cfg_capture),
					.upm_system_cfg_update  (upm_system_cfg_update),
					.system_window_counter_o(system_window_counter_o),
					.system_fsm_state		(system_fsm_state),
					.system_fsm_enable		(system_fsm_enable),
					.system_fsm_active		(system_fsm_active),
					.system_counter_value	(system_counter_value),
					.system_counter_overflow(system_counter_overflow),
					.dfx_upm_sys_rstn       (dfx_upm_sys_rstn),
					.system_counter_status  (system_counter_status),
					[% END %]
					[% IF upm_variables.DFX_UPM_DCM_OUT == 1 %]
					.dfx_upm_dcm_out		(dfx_upm_dcm_out),
					[% END %]
					[% IF upm_variables.DFX_UPM_DCM_OUT == 0 %]
					.dfx_upm_dcm_out		(),
					[% END %]
					.so                 (dfx_upm_so)  //upm1::UPM::output 
			);
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//module cbb_wrapper_top instantiation
cbb_wrapper_top_apm_out #(
				.CBB_HIP_TYPE(DFX_UPM_CBB_HIP_TYPE)
)
cbb_wrapper_top_apm_out (
        .shift                   (UPM1_to_UPM_CBB_WRAPPER_shift_out          ),
        .update                  (UPM1_to_UPM_CBB_WRAPPER_update_out         ),
        .tck                     (dfx_upm_tck),                                
        .capture                 (UPM1_to_UPM_CBB_WRAPPER_capture_out        ),
        .si                      (UPM1_to_UPM_CBB_WRAPPER_reg_si             ),
        .sel                     (UPM1_to_UPM_CBB_WRAPPER_reg_sel            ),
        .debug_clk_en            (UPM1_to_UPM_CBB_WRAPPER_debug_clk_en       ),
        .fdfx_powergood          (dfx_upm_fdfx_powergood                     ),
        .iso_n                   (iso_n                                      ),
        .clk_debug               (clk_debug                                  ),
        .clk_out                 (UPM_CBB_WRAPPER_to_UPM1_cbb_clk_in         ), 
        .so                      (UPM_CBB_WRAPPER_to_UPM1_reg_so             ), 
		//
		// APM MODULE Outside the IP
		.apm_en_sensor			(apm_en_sensor ),
		.apm_en_cal            	(apm_en_cal    ),
		.apm_en_osc            	(apm_en_osc    ),
		.apm_en_step           	(apm_en_step   ),
		.apm_osc_sel           	(apm_osc_sel   ),
		.apm_xtor_sel          	(apm_xtor_sel  ),
		.apm_mux_sel           	(apm_mux_sel   ),
		.apm_vdac_sel          	(apm_vdac_sel  ),
		.apm_osc_out           	(apm_osc_out   ),
		//  
		//
		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %] 
		.system_cbb_pwr_en       (system_cbb_pwr_en),
		.system_cbb_cbb_addr     (system_cbb_cbb_addr),
		.system_mode (system_mode),
		[% END %]
		//
        .power_enable_error_next (UPM_CBB_WRAPPER_to_UPM1_cbb_power_en_error )  //cbb_wrapper_top::CREATE_MODULE::output 
);
//------------------------------------------------------------------------------------------------------
// collage-pragma translate_on
`endif	
[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]

`ifndef INTEL_HIDE_INTEGRATION
// collage-pragma translate_off
	upm_system_controller #(
	.DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER(DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER),
	.DFX_UPM_NUMBER_OF_BITS_IN_COUNTER(DFX_UPM_NUMBER_OF_BITS_IN_COUNTER),
	.DFX_UPM_CBB_HIP_TYPE(DFX_UPM_CBB_HIP_TYPE)
	)
	u_upm_system_controller 
	
	(
	
	.dfx_upm_sys_rstn	(dfx_upm_sys_rstn & dfx_upm_fdfx_powergood),
	// system interface inputs
	.dfx_upm_func_clk		(dfx_upm_func_clk),
	.dfx_upm_sys_en			(dfx_upm_sys_en),
	.dfx_upm_sys_ctl		(dfx_upm_sys_ctl),
	.dfx_upm_sys_cbb_ctrl	(dfx_upm_sys_cbb_ctrl),
	.dfx_upm_sys_cbb_pwr	(dfx_upm_sys_cbb_pwr),
	// system interface outputs
	.dfx_upm_result			(dfx_upm_result),
	.dfx_upm_status			(dfx_upm_status),	
	// system interface internal signals
	.system_mode		  	(system_mode),
	.system_window_counter_i(system_window_counter_i),
	.system_window_mode		(system_window_mode),
	.system_counter_start	(system_counter_start),
	.system_counter_stop	(system_counter_stop),
	.system_clock_divider	(system_clock_divider),
	.system_debug_clk_en	(system_debug_clk_en),
	.upm_tap_master_mode	(tap_master_mode),
	.system_cbb_pwr_en		(system_cbb_pwr_en),
	.system_cbb_cbb_addr	(system_cbb_cbb_addr),
	.upm_system_cfg_capture (upm_system_cfg_capture),
	.upm_system_cfg_update  (upm_system_cfg_update),
	.system_window_counter_o(system_window_counter_o),
	.system_fsm_state		(system_fsm_state),
	.system_fsm_enable		(system_fsm_enable),
	.system_fsm_active		(system_fsm_active),
	.system_counter_value	(system_counter_value),
	.system_counter_overflow(system_counter_overflow),
	.system_counter_status  (system_counter_status)
	
		
	);
// collage-pragma translate_on
`endif	
[% END %]
//------------------------------------------------------------------------------------------------------
//module_gen INPUT PORTS ASSIGN
assign clk_debug = dfx_upm_clk_debug; 
assign iso_n     = dfx_upm_iso_n;     
//------------------------------------------------------------------------------------------------------


endmodule

`endif
