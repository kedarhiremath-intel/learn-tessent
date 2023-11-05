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
//  Module upm_cbb_wrapper_cbb_8_top :  hip wrapper module
//
//------------------------------------------------------------------------------

`ifndef MODULE_UPM_CBB_WRAPPER_CBB_8_TOP
`define MODULE_UPM_CBB_WRAPPER_CBB_8_TOP
module upm_cbb_wrapper_cbb_8_top # (
	 parameter CBB_HIP_TYPE_1 = "UPM_T_A",
	 parameter CBB_HIP_TYPE_2 = "UPM_T_B",
	 parameter CBB_HIP_TYPE_3 = "UPM_T_C",
	 parameter CBB_HIP_TYPE_4 = "UPM_T_D",
	 parameter CBB_HIP_TYPE_5 = "UPM_D_A",
	 parameter CBB_HIP_TYPE_6 = "UPM_D_B",
	 parameter CBB_HIP_TYPE_7 = "UPM_D_C",
	 parameter CBB_HIP_TYPE_8 = "UPM_D_D"
)(

        input  logic            shift,
        input  logic            update,
        input  logic            tck,
        input  logic            capture,
        input  logic            si,
        input  logic            sel,
        input  logic            debug_clk_en,
        input  logic            fdfx_powergood,
        input  logic            iso_n,
        input  logic            clk_debug,
        output logic      [1:0] clk_out,
        output logic            so,	
	   [% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
		input  logic 			system_mode,
		input  logic  [15:0] 	system_cbb_pwr_en,
		input  logic  [5:0]  	system_cbb_cbb_addr,
		[% END %]
		
        output logic            power_enable_error_next
   );
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//nets definition
logic            upm_cbb_wrapper_cbb_1_to_2_capture_out;
logic            upm_cbb_wrapper_cbb_1_to_2_sel_out;
logic            upm_cbb_wrapper_cbb_1_to_2_shift_out;
logic            upm_cbb_wrapper_cbb_1_to_2_si_out;
logic            upm_cbb_wrapper_cbb_1_to_2_tck_out;
logic            upm_cbb_wrapper_cbb_1_to_2_update_out;
logic       [1:0]      upm_cbb_wrapper_cbb_2_to_1_clk_in;
logic            upm_cbb_wrapper_cbb_2_to_1_power_enable_error_prev;
logic            upm_cbb_wrapper_cbb_2_to_1_power_enable_prev;
logic            upm_cbb_wrapper_cbb_2_to_1_so_out;
logic            upm_cbb_wrapper_cbb_2_to_3_capture_out;
logic            upm_cbb_wrapper_cbb_2_to_3_sel_out;
logic            upm_cbb_wrapper_cbb_2_to_3_shift_out;
logic            upm_cbb_wrapper_cbb_2_to_3_si_out;
logic            upm_cbb_wrapper_cbb_2_to_3_tck_out;
logic            upm_cbb_wrapper_cbb_2_to_3_update_out;
logic        [1:0]     upm_cbb_wrapper_cbb_3_to_2_clk_in;
logic            upm_cbb_wrapper_cbb_3_to_2_power_enable_error_prev;
logic            upm_cbb_wrapper_cbb_3_to_2_power_enable_prev;
logic            upm_cbb_wrapper_cbb_3_to_2_so_out;
logic            upm_cbb_wrapper_cbb_3_to_4_capture_out;
logic            upm_cbb_wrapper_cbb_3_to_4_sel_out;
logic            upm_cbb_wrapper_cbb_3_to_4_shift_out;
logic            upm_cbb_wrapper_cbb_3_to_4_si_out;
logic            upm_cbb_wrapper_cbb_3_to_4_tck_out;
logic            upm_cbb_wrapper_cbb_3_to_4_update_out;
logic        [1:0]     upm_cbb_wrapper_cbb_4_to_3_clk_in;
logic            upm_cbb_wrapper_cbb_4_to_3_power_enable_error_prev;
logic            upm_cbb_wrapper_cbb_4_to_3_power_enable_prev;
logic            upm_cbb_wrapper_cbb_4_to_3_so_out;
logic            upm_cbb_wrapper_cbb_8_to_8_so_out;
logic upm_cbb_wrapper_cbb_5_to_4_power_enable_error_prev  ;
logic upm_cbb_wrapper_cbb_5_to_4_power_enable_prev        ;
logic  [1:0] upm_cbb_wrapper_cbb_5_to_4_clk_in            ;
logic upm_cbb_wrapper_cbb_5_to_4_so_out                   ;                                             
logic upm_cbb_wrapper_cbb_4_to_5_shift_out                ;
logic upm_cbb_wrapper_cbb_4_to_5_update_out               ;
logic upm_cbb_wrapper_cbb_4_to_5_tck_out                  ;
logic upm_cbb_wrapper_cbb_4_to_5_capture_out              ;
logic upm_cbb_wrapper_cbb_4_to_5_si_out                   ;
logic upm_cbb_wrapper_cbb_4_to_5_sel_out                  ;
logic upm_cbb_wrapper_cbb_6_to_5_power_enable_error_prev   ;
logic upm_cbb_wrapper_cbb_6_to_5_power_enable_prev         ;
logic [1:0]  upm_cbb_wrapper_cbb_6_to_5_clk_in             ;
logic upm_cbb_wrapper_cbb_6_to_5_so_out                    ;


logic upm_cbb_wrapper_cbb_7_to_6_power_enable_error_prev;
logic upm_cbb_wrapper_cbb_7_to_6_power_enable_prev      ;
logic   [1:0]  upm_cbb_wrapper_cbb_7_to_6_clk_in        ;         
logic upm_cbb_wrapper_cbb_7_to_6_so_out                 ;
logic upm_cbb_wrapper_cbb_5_to_6_shift_out              ;
logic upm_cbb_wrapper_cbb_5_to_6_update_out             ;
logic upm_cbb_wrapper_cbb_5_to_6_tck_out                ;
logic upm_cbb_wrapper_cbb_5_to_6_capture_out            ;
logic upm_cbb_wrapper_cbb_5_to_6_si_out                 ;
logic upm_cbb_wrapper_cbb_5_to_6_sel_out                ;

logic upm_cbb_wrapper_cbb_8_to_7_power_enable_error_prev; 			   
logic upm_cbb_wrapper_cbb_8_to_7_power_enable_prev      ; 			   
logic    [1:0]  upm_cbb_wrapper_cbb_8_to_7_clk_in       ; 			   
logic upm_cbb_wrapper_cbb_8_to_7_so_out                 ; 			   
logic upm_cbb_wrapper_cbb_6_to_7_shift_out              ; 			   
logic upm_cbb_wrapper_cbb_6_to_7_update_out             ; 			   
logic upm_cbb_wrapper_cbb_6_to_7_tck_out                ; 			   
logic upm_cbb_wrapper_cbb_6_to_7_capture_out            ; 			   
logic upm_cbb_wrapper_cbb_6_to_7_si_out                 ; 			   
logic upm_cbb_wrapper_cbb_6_to_7_sel_out                ; 			   
logic upm_cbb_wrapper_cbb_7_to_8_shift_out              ; 			   
logic upm_cbb_wrapper_cbb_7_to_8_update_out             ; 			   
logic upm_cbb_wrapper_cbb_7_to_8_tck_out                ; 			   
logic upm_cbb_wrapper_cbb_7_to_8_capture_out            ; 			   
logic upm_cbb_wrapper_cbb_7_to_8_si_out                 ; 			   
logic upm_cbb_wrapper_cbb_7_to_8_sel_out                ; 			  
//

//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_1 instantiation
upm_cbb_wrapper_cbb_1 # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_1)
) upm_cbb_wrapper_cbb_1 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[0]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_2_to_1_power_enable_error_prev ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_2_to_1_power_enable_prev       ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_2_to_1_clk_in                  ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_2_to_1_so_out                  ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .shift                   (shift                                              ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .update                  (update                                             ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .tck                     (tck                                                ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .capture                 (capture                                            ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .si                      (si                                                 ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .sel                     (sel                                                ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .debug_clk_en            (debug_clk_en                                       ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::input 
        .shift_out               (upm_cbb_wrapper_cbb_1_to_2_shift_out               ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_1_to_2_update_out              ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_1_to_2_tck_out                 ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_1_to_2_capture_out             ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_1_to_2_si_out                  ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_1_to_2_sel_out                 ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .clk_out                 (clk_out                                            ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .so                      (so                                                 ), //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
        .power_enable_error_next (power_enable_error_next                            )  //upm_cbb_wrapper_cbb_1::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_o instantiation
upm_cbb_wrapper_cbb_o # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_2)
)upm_cbb_wrapper_cbb_o_1 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[1]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_3_to_2_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_3_to_2_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_3_to_2_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_3_to_2_so_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .shift                   (upm_cbb_wrapper_cbb_1_to_2_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_1_to_2_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_1_to_2_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_1_to_2_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_1_to_2_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_1_to_2_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .shift_out               (upm_cbb_wrapper_cbb_2_to_3_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_2_to_3_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_2_to_3_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_2_to_3_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_2_to_3_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_2_to_3_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_error_next (upm_cbb_wrapper_cbb_2_to_1_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_2_to_1_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_2_to_1_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_2_to_1_so_out                  )  //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_o instantiation
upm_cbb_wrapper_cbb_o # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_3)
)upm_cbb_wrapper_cbb_o_2 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[2]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_4_to_3_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_4_to_3_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_4_to_3_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_4_to_3_so_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .shift                   (upm_cbb_wrapper_cbb_2_to_3_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_2_to_3_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_2_to_3_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_2_to_3_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_2_to_3_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_2_to_3_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .shift_out               (upm_cbb_wrapper_cbb_3_to_4_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_3_to_4_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_3_to_4_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_3_to_4_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_3_to_4_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_3_to_4_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_error_next (upm_cbb_wrapper_cbb_3_to_2_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_3_to_2_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_3_to_2_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_3_to_2_so_out                  )  //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_o instantiation
upm_cbb_wrapper_cbb_o # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_4)
)upm_cbb_wrapper_cbb_o_3 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[3]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_5_to_4_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_5_to_4_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_5_to_4_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_5_to_4_so_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift                   (upm_cbb_wrapper_cbb_3_to_4_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_3_to_4_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_3_to_4_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_3_to_4_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_3_to_4_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_3_to_4_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift_out               (upm_cbb_wrapper_cbb_4_to_5_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_4_to_5_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_4_to_5_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_4_to_5_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_4_to_5_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_4_to_5_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
		
        .power_enable_error_next (upm_cbb_wrapper_cbb_4_to_3_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_4_to_3_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_4_to_3_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_4_to_3_so_out                  )  //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_o instantiation
upm_cbb_wrapper_cbb_o # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_5)
)upm_cbb_wrapper_cbb_o_4 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[4]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_6_to_5_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_6_to_5_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_6_to_5_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_6_to_5_so_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift                   (upm_cbb_wrapper_cbb_4_to_5_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_4_to_5_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_4_to_5_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_4_to_5_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_4_to_5_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_4_to_5_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift_out               (upm_cbb_wrapper_cbb_5_to_6_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_5_to_6_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_5_to_6_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_5_to_6_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_5_to_6_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_5_to_6_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
		
        .power_enable_error_next (upm_cbb_wrapper_cbb_5_to_4_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_5_to_4_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_5_to_4_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_5_to_4_so_out                  )  //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_o instantiation
upm_cbb_wrapper_cbb_o # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_6)
)upm_cbb_wrapper_cbb_o_5 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[5]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_7_to_6_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_7_to_6_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_7_to_6_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_7_to_6_so_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift                   (upm_cbb_wrapper_cbb_5_to_6_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_5_to_6_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_5_to_6_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_5_to_6_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_5_to_6_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_5_to_6_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift_out               (upm_cbb_wrapper_cbb_6_to_7_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_6_to_7_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_6_to_7_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_6_to_7_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_6_to_7_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_6_to_7_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
		
        .power_enable_error_next (upm_cbb_wrapper_cbb_6_to_5_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_6_to_5_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_6_to_5_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_6_to_5_so_out                  )  //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_o instantiation
upm_cbb_wrapper_cbb_o # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_7)
)upm_cbb_wrapper_cbb_o_6 (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[6]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .power_enable_error_prev (upm_cbb_wrapper_cbb_8_to_7_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .power_enable_prev       (upm_cbb_wrapper_cbb_8_to_7_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_in                  (upm_cbb_wrapper_cbb_8_to_7_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .so_out                  (upm_cbb_wrapper_cbb_8_to_7_so_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift                   (upm_cbb_wrapper_cbb_6_to_7_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_6_to_7_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_6_to_7_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_6_to_7_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_6_to_7_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_6_to_7_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::input 
		
        .shift_out               (upm_cbb_wrapper_cbb_7_to_8_shift_out               ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .update_out              (upm_cbb_wrapper_cbb_7_to_8_update_out              ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .tck_out                 (upm_cbb_wrapper_cbb_7_to_8_tck_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .capture_out             (upm_cbb_wrapper_cbb_7_to_8_capture_out             ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .si_out                  (upm_cbb_wrapper_cbb_7_to_8_si_out                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .sel_out                 (upm_cbb_wrapper_cbb_7_to_8_sel_out                 ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
		
        .power_enable_error_next (upm_cbb_wrapper_cbb_7_to_6_power_enable_error_prev ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_7_to_6_power_enable_prev       ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_7_to_6_clk_in                  ), //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_7_to_6_so_out                  )  //upm_cbb_wrapper_cbb_o::CBB_WRAPPER::output 
);
//------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_cbb_n instantiation
upm_cbb_wrapper_cbb_n # ( 
		.CBB_HIP_TYPE(CBB_HIP_TYPE_8)
) upm_cbb_wrapper_cbb_n (

		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
			.system_mode(system_mode),
			.system_cbb_pwr_en(system_cbb_pwr_en[7]),
			.system_cbb_cbb_addr(system_cbb_cbb_addr),
		[% END %]
		
        .shift                   (upm_cbb_wrapper_cbb_7_to_8_shift_out               ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .update                  (upm_cbb_wrapper_cbb_7_to_8_update_out              ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .tck                     (upm_cbb_wrapper_cbb_7_to_8_tck_out                 ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .capture                 (upm_cbb_wrapper_cbb_7_to_8_capture_out             ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .si                      (upm_cbb_wrapper_cbb_7_to_8_si_out                  ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .sel                     (upm_cbb_wrapper_cbb_7_to_8_sel_out                 ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .fdfx_powergood          (fdfx_powergood                                     ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                              ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                          ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::input 
        .power_enable_error_next (upm_cbb_wrapper_cbb_8_to_7_power_enable_error_prev ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::output 
        .power_enable_next       (upm_cbb_wrapper_cbb_8_to_7_power_enable_prev       ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::output 
        .clk_out                 (upm_cbb_wrapper_cbb_8_to_7_clk_in                  ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::output 
        .so                      (upm_cbb_wrapper_cbb_8_to_7_so_out                  ), //upm_cbb_wrapper_cbb_n::CBB_WRAPPER::output 
        .clk_in                  (2'b00                                              ), //upm_cbb_wrapper_cbb_n::TIE::input 
        .power_enable_prev       (1'b0                                               ), //upm_cbb_wrapper_cbb_n::TIE::input 
        .power_enable_error_prev (1'b0                                               ), //upm_cbb_wrapper_cbb_n::TIE::input 
        .so_out                  (upm_cbb_wrapper_cbb_8_to_8_so_out                  ), //upm_cbb_wrapper_cbb_n::manual::input 
        .si_out                  (upm_cbb_wrapper_cbb_8_to_8_so_out                  )  //upm_cbb_wrapper_cbb_n::manual::output 
);
//------------------------------------------------------------------------------------------------------



endmodule
`endif
