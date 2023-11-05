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
`ifndef MODULE_upm_cbb_wrapper_thermal_top
`define MODULE_upm_cbb_wrapper_thermal_top
module upm_cbb_wrapper_thermal_top #( parameter CBB_HIP_TYPE="UPM_THERMAL_1",
                                      parameter NUM_THERMAL_CBB = 1)
(
		
        //
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
        output logic   [1:0]    clk_out,
        output logic            so,
        output logic            power_enable_error_next
   );
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//nets definition
logic            upm_cbb_wrapper_thermal_to_upm_cbb_wrapper_thermal_so_out;
//------------------------------------------------------------------------------------------------------
genvar i;
generate 
	
	logic [NUM_THERMAL_CBB : 1] power_enable_error_previous;
	logic [NUM_THERMAL_CBB : 1] power_enable_previous;
	logic [NUM_THERMAL_CBB : 1] [1:0] clk_out_previous;
	logic [NUM_THERMAL_CBB : 1] so_previous;
	
	
	logic [NUM_THERMAL_CBB :1] shift_out_next;
	logic [NUM_THERMAL_CBB :1] update_out_next;
	logic [NUM_THERMAL_CBB :1] tck_out_next;
	logic [NUM_THERMAL_CBB :1] sel_out_next;
	logic [NUM_THERMAL_CBB :1] capture_out_next;
	logic [NUM_THERMAL_CBB :1] si_out_next;
	
	logic thermal_so;
	
	
	if (1) begin : UPM_THERMAL_CONFIGS
	
		if (NUM_THERMAL_CBB == 1) begin : UPM_THERMAL_CONFIGS_1 //ONLY ONE THERMAL CBB CONFIG
		
		
			//------------------------------------------------------------------------------------------------------
			//module upm_thermal_1 instantiation
			upm_thermal_n upm_thermal_1 (
			
					
					
					.power_enable_error_prev (1'b0                             ),
					.power_enable_prev       (1'b0                             ), 
					.clk_in                  (2'b00                            ),
			        .so_out                  (thermal_so                       ), 
					
					.shift                   (shift                            ), 
					.update                  (update                           ), 
					.tck                     (tck                              ), 
					.capture                 (capture                          ), 
					.si                      (si                               ), 
					.sel                     (sel                              ), 
					
					.debug_clk_en            (debug_clk_en                     ), 
					.fdfx_powergood          (fdfx_powergood                   ), 
					.iso_n                   (iso_n                            ), 
					.clk_debug               (clk_debug                        ), 
					
					
					.shift_out               (                                 ), //open last one
					.update_out              (                                 ), //open last one
					.tck_out                 (                                 ), //open last one
					.capture_out             (                                 ), //open last one
					.si_out                  (thermal_so                       ),
					.sel_out                 (                                 ), // open last one
					
					.clk_out                 (clk_out                          ), 
					.so                      (so                               ), 
					.power_enable_error_next (power_enable_error_next          ),
					.power_enable_next       (                                 )    //open
					
					
			);
			//------------------------------------------------------------------------------------------------------
		
		end else begin : UPM_THERMAL_CONFIGS_N// More than 1 Thermal CBB config
		
			for (i = NUM_THERMAL_CBB; i > 0; i--) begin : UPM_THERMAL_CONFIGS_S
	
				if (i == NUM_THERMAL_CBB) begin : UPM_THERMAL_CONFIGS_N_L
		
				upm_thermal_n upm_thermal_n (
				
						
						
						.power_enable_error_prev (power_enable_error_previous[i - 1] ), 
						.power_enable_prev       (power_enable_previous[i - 1]       ), 
						.clk_in                  (clk_out_previous[i - 1]        ), 
						.so_out                  (so_previous[i -1]              ), 
						
						.shift                   (shift                          ), 
						.update                  (update                         ), 
						.tck                     (tck                            ), 
						.capture                 (capture                        ), 
						.si                      (si                             ), 
						.sel                     (sel                            ), 
						
						.debug_clk_en            (debug_clk_en                   ), 
						.fdfx_powergood          (fdfx_powergood                 ), 
						.iso_n                   (iso_n                          ), 
						.clk_debug               (clk_debug                      ), 
						
						.shift_out               (shift_out_next[i -1]           ), 
						.update_out              (update_out_next[i -1]          ), 
						.tck_out                 (tck_out_next[i -1]             ), 
						.capture_out             (capture_out_next[i -1]         ), 
						.si_out                  (si_out_next[i -1]              ), 
						.sel_out                 (sel_out_next[i -1]             ), 
						
						.clk_out                 (clk_out                        ), 
						.so                      (so                             ), 
						.power_enable_error_next (power_enable_error_next        ),    // output
						.power_enable_next       (                               )    //open
				);
				end
				else if (i == 1 ) begin : UPM_THERMAL_CONFIGS_N_F
				
				upm_thermal_o upm_thermal_o_1 (
				
						
				
						.power_enable_error_prev (1'b0                             ),
						.power_enable_prev       (1'b0                             ), 
						.clk_in                  (2'b00                            ),
						.so_out                  (thermal_so                       ), 
						
						.shift                   (shift_out_next  [i]              ), 
						.update                  (update_out_next [i]              ), 
						.tck                     (tck_out_next    [i]              ), 
						.capture                 (capture_out_next[i]              ), 
						.si                      (si_out_next     [i]              ), 
						.sel                     (sel_out_next    [i]              ), 
						
						 
						.fdfx_powergood          (fdfx_powergood                   ), 
						.iso_n                   (iso_n                            ), 
						.clk_debug               (clk_debug                        ), 
						
						
						.shift_out               (                                 ), //open last one
						.update_out              (                                 ), //open last one
						.tck_out                 (                                 ), //open last one
						.capture_out             (                                 ), //open last one
						.si_out                  (thermal_so                       ),
						.sel_out                 (                                 ), // open last one
						
				
						.power_enable_error_next (power_enable_error_previous[i]   ),
						.power_enable_next       (power_enable_previous      [i]   ),
						.clk_out                 (clk_out_previous       [i]       ),
						.so                      (so_previous            [i]       )
						
						
						  
				);
			
					
				end
				else begin : UPM_THERMAL_CONFIGS_N_O
					upm_thermal_o upm_thermal_o_n (
					
						
						
						.power_enable_error_prev (power_enable_error_previous[i -1]),
						.power_enable_prev       (power_enable_previous[i -1]      ),
						.clk_in                  (clk_out_previous[i -1]       ),
						.so_out                  (so_previous[i -1]            ),
						
						.shift                   (shift_out_next  [i]          ),
						.update                  (update_out_next [i]          ),
						.tck                     (tck_out_next    [i]          ),
						.capture                 (capture_out_next[i]          ),
						.si                      (si_out_next     [i]          ),
						.sel                     (sel_out_next    [i]          ),
						
						.fdfx_powergood          (fdfx_powergood               ),
						.iso_n                   (iso_n                        ),
						.clk_debug               (clk_debug                    ),
						
						.shift_out               (shift_out_next   [i -1]      ), 
						.update_out              (update_out_next  [i -1]      ), 
						.tck_out                 (tck_out_next     [i -1]      ), 
						.capture_out             (capture_out_next [i -1]      ), 
						.sel_out                 (sel_out_next     [i -1]      ), 
						.si_out                  (si_out_next      [i -1]      ),
						
						.power_enable_error_next (power_enable_error_previous[i]   ),
						.power_enable_next       (power_enable_previous      [i]   ),
						.clk_out                 (clk_out_previous       [i]   ),
						.so                      (so_previous            [i]   )
		        );
				end
		
		end
		end
	end 
	
endgenerate	
	
	
endmodule
`endif
