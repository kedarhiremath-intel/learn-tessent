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
//  Module upm_cbb_wrapper_hip :  hip wrapper module
//
//------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        -  CBB_CONTROL -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic ijtag_power_enable;
logic [1:0] clk_out_pre;
logic ijtag_apm_en_cal       ;
logic ijtag_apm_en_osc       ;
logic ijtag_apm_en_step	   ;
logic ijtag_apm_osc_sel	   ;
logic [1:0]  ijtag_apm_xtor_sel;
logic [3:0]  ijtag_apm_mux_sel ;
logic [3:0]  ijtag_apm_vdac_sel;
//module upm_cbb_control instantiation
upm_apm_cbb_control #(
       .APM_CNTRL_LEN(14)
)
upm_apm_cbb_control (
        .so_out                  (so_out         				), 
        .shift_out               (               				), 
        .update_out              (               				), 
        .tck_out                 (               				), 
        .capture_out             (               				), 
        .si_out                  (si_out         				), 
        .sel_out                 (               				), 
        .fdfx_powergood          (fdfx_powergood          		), 
        .update                  (update                  		), 
        .shift                   (shift                   		), 
        .capture                 (capture                 		), 
        .tck                     (tck                     		), 
        .si                      (si                      		), 
        .sel                     (sel                     		), 
        .so                      (so                      		), 
        .clk_debug               (clk_debug               		), 
        .power_enable_prev       (power_enable_prev       		), 
        .iso_n                   (iso_n                   		), 
        .power_enable_error_prev (power_enable_error_prev 		), 
        .clk_in                  (clk_in                  		),
        .apm_en_sensor           (apm_en_sensor),
        .power_enable_next       (       				  		), 
        .power_enable_error_next (power_enable_error_next 		), 
        .clk_out                 (clk_out_pre             		), 
        .cbb_clk                 (apm_osc_out                   ), 
        .power_enable            (ijtag_power_enable            ), 
        .apm_en_cal              (ijtag_apm_en_cal              ),
		.apm_en_osc              (ijtag_apm_en_osc              ),
		.apm_en_step             (ijtag_apm_en_step             ),
		.apm_osc_sel             (ijtag_apm_osc_sel             ),
		.apm_xtor_sel            (ijtag_apm_xtor_sel            ),
		.apm_mux_sel             (ijtag_apm_mux_sel             ),
		.apm_vdac_sel            (ijtag_apm_vdac_sel            )
		
);
logic debug_clk_gated;
`UPM_CLKAND(debug_clk_gated, clk_debug, debug_clk_en)
`UPM_CLK_MUX_2TO1(clk_out[0], debug_clk_gated, clk_out_pre[0] , debug_clk_en)
//assign clk_out[0] = clk_out_pre[0] ^ debug_clk_gated;
`UPM_CLKBF(clk_out[1], clk_out_pre[1])
//------------------------------------------------------------------------------------------------------
	
	assign apm_en_sensor = ijtag_power_enable;
	
	assign apm_en_cal  = ijtag_apm_en_cal   ;
	assign apm_en_osc  = ijtag_apm_en_osc   ;
	assign apm_en_step = ijtag_apm_en_step  ;
	assign apm_osc_sel = ijtag_apm_osc_sel  ;
	
	
	assign apm_xtor_sel  = ijtag_apm_xtor_sel   ;
	assign apm_mux_sel   = ijtag_apm_mux_sel    ;
	assign apm_vdac_sel  = ijtag_apm_vdac_sel   ;
