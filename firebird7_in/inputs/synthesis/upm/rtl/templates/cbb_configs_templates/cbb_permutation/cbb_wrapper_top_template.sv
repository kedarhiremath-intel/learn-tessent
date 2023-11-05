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
//  Module cbb_wrapper_top :  hip top wrapper module
//
//------------------------------------------------------------------------------


`ifndef MODULE_CBB_WRAPPER_TOP
`define MODULE_CBB_WRAPPER_TOP
module cbb_wrapper_top #( parameter CBB_HIP_TYPE="UPM_T_A")
(

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
		output  logic [1:0]     clk_out,
	    output logic            so,
		//
		//
		[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %] 
		input  logic			system_mode,		
		input  logic  [15:0] 	system_cbb_pwr_en,
		input  logic  [15:0]  	system_cbb_cbb_addr,
		[% END %]
        output logic            power_enable_error_next
   );
//------------------------------------------------------------------------------------------------------




	generate
	if (1) begin : UPM_CBB_CONFIGS
	// All tpm single permutations
	// #1
		if(CBB_HIP_TYPE == "UPM_T_A") begin : UPM_T_A
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]			
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		//
		// #2
		else if(CBB_HIP_TYPE == "UPM_T_B") begin : UPM_T_B
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),				
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #3
		else if(CBB_HIP_TYPE == "UPM_T_C") begin : UPM_T_C
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #4
		else if(CBB_HIP_TYPE == "UPM_T_D") begin : UPM_T_D
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),				
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #5
		else if(CBB_HIP_TYPE == "UPM_D_A") begin : UPM_D_A
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #6
		else if(CBB_HIP_TYPE == "UPM_D_B") begin : UPM_D_B
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #7
		else if(CBB_HIP_TYPE == "UPM_D_C") begin : UPM_D_C
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #8
		else if(CBB_HIP_TYPE == "UPM_D_D") begin : UPM_D_D
				upm_cbb_wrapper_cbb_1_top # (
					.CBB_HIP_TYPE(CBB_HIP_TYPE)
				)upm_cbb_wrapper_cbb_1_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]    ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end // ALL 4 T TYPE HIPS (ABCD) TOGETHER
		// #9
        else if(CBB_HIP_TYPE == "UPM_TD_BC") begin : UPM_TD_BC
				upm_cbb_wrapper_cbb_4_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_D_B"),
					.CBB_HIP_TYPE_4("UPM_D_C")
				
				) upm_cbb_wrapper_cbb_4_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]    ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
        else if(CBB_HIP_TYPE == "UPM_TD_CD") begin : UPM_TD_CD
				upm_cbb_wrapper_cbb_4_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_T_D"),
					.CBB_HIP_TYPE_3("UPM_D_C"),
					.CBB_HIP_TYPE_4("UPM_D_D")
				
				) upm_cbb_wrapper_cbb_4_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]    ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		else if(CBB_HIP_TYPE == "UPM_T_ABCD") begin : UPM_T_ABCD
				upm_cbb_wrapper_cbb_4_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C"),
					.CBB_HIP_TYPE_4("UPM_T_D")
				
				) upm_cbb_wrapper_cbb_4_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]    ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end // ALL 4 D TYPE HIPS (ABCD) TOGETHER
		// #10
		else if(CBB_HIP_TYPE == "UPM_D_ABCD") begin : UPM_D_ABCD
				upm_cbb_wrapper_cbb_4_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_C"),
					.CBB_HIP_TYPE_4("UPM_D_D")
				
				) upm_cbb_wrapper_cbb_4_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr [5:0]    ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end 
		// #11
		else if(CBB_HIP_TYPE == "UPM_TD_A") begin : UPM_TD_A
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_D_A")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #12
		else if(CBB_HIP_TYPE == "UPM_TD_B") begin : UPM_TD_B
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_D_B")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #13
		else if(CBB_HIP_TYPE == "UPM_TD_C") begin : UPM_TD_C
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_D_C")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),						
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end	
		// #14
		else if(CBB_HIP_TYPE == "UPM_TD_D") begin  : UPM_TD_D
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_D"),
					.CBB_HIP_TYPE_2("UPM_D_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end	
		// #15
		else if(CBB_HIP_TYPE == "UPM_T_AB") begin : UPM_T_AB
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_B")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
				// #16
		else if(CBB_HIP_TYPE == "UPM_T_AC") begin : UPM_T_AC
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_C")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
						// #17
		else if(CBB_HIP_TYPE == "UPM_T_AD") begin : UPM_T_AD
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #18
		else if(CBB_HIP_TYPE == "UPM_T_BC") begin : UPM_T_BC
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_T_C")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #19
		else if(CBB_HIP_TYPE == "UPM_T_BD") begin : UPM_T_BD
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_T_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #20
		else if(CBB_HIP_TYPE == "UPM_T_CD") begin : UPM_T_CD
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_T_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		/////////////////
		// #21
		else if(CBB_HIP_TYPE == "UPM_D_AB") begin : UPM_D_AB
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_B")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #22
		else if(CBB_HIP_TYPE == "UPM_D_AC") begin : UPM_D_AC
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_C")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// #23
		else if(CBB_HIP_TYPE == "UPM_D_AD") begin : UPM_D_AD
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// # 24
		else if(CBB_HIP_TYPE == "UPM_D_BC") begin : UPM_D_BC
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_D_C")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// # 25
		else if(CBB_HIP_TYPE == "UPM_D_BD") begin : UPM_D_BD
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_D_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		// # 26
		else if(CBB_HIP_TYPE == "UPM_D_CD") begin : UPM_D_CD
				upm_cbb_wrapper_cbb_2_top # (
					.CBB_HIP_TYPE_1("UPM_D_C"),
					.CBB_HIP_TYPE_2("UPM_D_D")
				)upm_cbb_wrapper_cbb_2_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]					
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end		
		/////////////////
		// # 27
		else if(CBB_HIP_TYPE == "UPM_APM") begin  : UPM_APM
				upm_cbb_wrapper_asensor upm_cbb_wrapper_asensor (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
					
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr     ),
					.system_mode             (system_mode),				
					[% END %]
					//
					//
//
					//
					.power_enable_error_next (power_enable_error_next ) 
        );
		end	
		// # 28
		else if(CBB_HIP_TYPE == "UPM_CEN_BC") begin  : UPM_CEN_BC
				upm_cbb_wrapper_cbb_4_top #(
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_D_B"),
					.CBB_HIP_TYPE_4("UPM_D_C")
				
				) upm_cbb_wrapper_cbb_4_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );	
		end
		// # 29
		else if(CBB_HIP_TYPE == "UPM_EDGE_BC") begin  : UPM_EDGE_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_D_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end
		// # 30
        else if(CBB_HIP_TYPE == "UPM_EDGE_BC_1") begin  : UPM_EDGE_BC_1
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_T_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end
		else if(CBB_HIP_TYPE == "UPM_T_ABC") begin  : UPM_T_ABC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end	
		// #31
		else if(CBB_HIP_TYPE == "UPM_T_BCD") begin  : UPM_T_BCD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end		
		///
		// #32
		else if(CBB_HIP_TYPE == "UPM_T_ABD") begin  : UPM_T_ABD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end		
		// # 33
		else if(CBB_HIP_TYPE == "UPM_T_ACD") begin  : UPM_T_ACD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end	
		////////////////
		// # 34
		else if(CBB_HIP_TYPE == "UPM_D_ABC") begin  : UPM_D_ABC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end	
		// # 35
		else if(CBB_HIP_TYPE == "UPM_D_BCD") begin  : UPM_D_BCD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end		
		///
		// #36
		else if(CBB_HIP_TYPE == "UPM_D_ABD") begin  : UPM_D_ABD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end		
		// # 37
		else if(CBB_HIP_TYPE == "UPM_D_ACD") begin  : UPM_D_ACD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
        );		
		end			
		///////////////
		else if(CBB_HIP_TYPE == "UPM_THERMAL_1") begin : UPM_THERMAL_1
				upm_cbb_wrapper_thermal_top  
				# (.CBB_HIP_TYPE(CBB_HIP_TYPE),
				   .NUM_THERMAL_CBB(1))
				upm_cbb_wrapper_thermal_top
				(
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[11:0]    ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		else if(CBB_HIP_TYPE == "UPM_THERMAL_2") begin : UPM_THERMAL_2
				upm_cbb_wrapper_thermal_top  
				# (.CBB_HIP_TYPE(CBB_HIP_TYPE),
				   .NUM_THERMAL_CBB(2))
				upm_cbb_wrapper_thermal_top
				(
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[11:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
				else if(CBB_HIP_TYPE == "UPM_THERMAL_3") begin : UPM_THERMAL_3
				upm_cbb_wrapper_thermal_top  
				# (.CBB_HIP_TYPE(CBB_HIP_TYPE),
				   .NUM_THERMAL_CBB(3))
				upm_cbb_wrapper_thermal_top
				(
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[11:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
				else if(CBB_HIP_TYPE == "UPM_THERMAL_4") begin : UPM_THERMAL_4
				upm_cbb_wrapper_thermal_top  
				# (.CBB_HIP_TYPE(CBB_HIP_TYPE),
				   .NUM_THERMAL_CBB(4))
				upm_cbb_wrapper_thermal_top
				(
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[11:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
				else if(CBB_HIP_TYPE == "UPM_THERMAL_5") begin : UPM_THERMAL_5
				upm_cbb_wrapper_thermal_top  
				# (.CBB_HIP_TYPE(CBB_HIP_TYPE),
				   .NUM_THERMAL_CBB(5))
				upm_cbb_wrapper_thermal_top
				(
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[11:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
				else if(CBB_HIP_TYPE == "UPM_THERMAL_6") begin : UPM_THERMAL_6
				upm_cbb_wrapper_thermal_top  
				# (.CBB_HIP_TYPE(CBB_HIP_TYPE),
				   .NUM_THERMAL_CBB(6))
				upm_cbb_wrapper_thermal_top
				(
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[11:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );
		end
		else if(CBB_HIP_TYPE == "UPM_TD_ABCD") begin  : UPM_TD_ABCD
				upm_cbb_wrapper_cbb_8_top #(
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C"),
					.CBB_HIP_TYPE_4("UPM_T_D"),
					.CBB_HIP_TYPE_5("UPM_D_A"),
					.CBB_HIP_TYPE_6("UPM_D_B"),
					.CBB_HIP_TYPE_7("UPM_D_C"),
					.CBB_HIP_TYPE_8("UPM_D_D")
				
				) upm_cbb_wrapper_cbb_8_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					.power_enable_error_next (power_enable_error_next ) 
        );	
		end
	// new permuatations in THC
		else if(CBB_HIP_TYPE == "UPM_T_A_D_AB") begin  : UPM_T_A_D_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
////UPM_T_A_D_BC
		else if(CBB_HIP_TYPE == "UPM_T_A_D_BC") begin  : UPM_T_A_D_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_A_D_CD
		else if(CBB_HIP_TYPE == "UPM_T_A_D_CD") begin  : UPM_T_A_D_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
// UPM_T_A_D_AD
		else if(CBB_HIP_TYPE == "UPM_T_A_D_AD") begin  : UPM_T_A_D_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_A_D_BD
		else if(CBB_HIP_TYPE == "UPM_T_A_D_BD") begin  : UPM_T_A_D_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_A"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_B_D_AB
else if(CBB_HIP_TYPE == "UPM_T_B_D_AB") begin  : UPM_T_B_D_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
////UPM_T_B_D_BC
else if(CBB_HIP_TYPE == "UPM_T_B_D_BC") begin  : UPM_T_B_D_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_B_D_CD

else if(CBB_HIP_TYPE == "UPM_T_B_D_CD") begin  : UPM_T_B_D_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
// UPM_T_B_D_AD

else if(CBB_HIP_TYPE == "UPM_T_B_D_AD") begin  : UPM_T_B_D_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_B_D_BD

else if(CBB_HIP_TYPE == "UPM_T_B_D_BD") begin  : UPM_T_B_D_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_B"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_C_D_AB
else if(CBB_HIP_TYPE == "UPM_T_C_D_AB") begin  : UPM_T_C_D_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
////UPM_T_C_D_BC
else if(CBB_HIP_TYPE == "UPM_T_C_D_BC") begin  : UPM_T_C_D_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_C_D_CD

else if(CBB_HIP_TYPE == "UPM_T_C_D_CD") begin  : UPM_T_C_D_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
// UPM_T_C_D_AD

else if(CBB_HIP_TYPE == "UPM_T_C_D_AD") begin  : UPM_T_C_D_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_C_D_BD

else if(CBB_HIP_TYPE == "UPM_T_C_D_BD") begin  : UPM_T_C_D_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_C"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_D_D_AB
else if(CBB_HIP_TYPE == "UPM_T_D_D_AB") begin  : UPM_T_D_D_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_D"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
////UPM_T_D_D_BC
else if(CBB_HIP_TYPE == "UPM_T_D_D_BC") begin  : UPM_T_D_D_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_D"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_D_D_CD

else if(CBB_HIP_TYPE == "UPM_T_D_D_CD") begin  : UPM_T_D_D_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_D"),
					.CBB_HIP_TYPE_2("UPM_D_C"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
// UPM_T_D_D_AD

else if(CBB_HIP_TYPE == "UPM_T_D_D_AD") begin  : UPM_T_D_D_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_D"),
					.CBB_HIP_TYPE_2("UPM_D_A"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
//UPM_T_D_D_BD

else if(CBB_HIP_TYPE == "UPM_T_D_D_BD") begin  : UPM_T_D_D_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_T_D"),
					.CBB_HIP_TYPE_2("UPM_D_B"),
					.CBB_HIP_TYPE_3("UPM_D_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end

//UPM_D_A_T_AB
		else if(CBB_HIP_TYPE == "UPM_D_A_T_AB") begin  : UPM_D_A_T_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_A_T_BC
		else if(CBB_HIP_TYPE == "UPM_D_A_T_BC") begin  : UPM_D_A_T_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_A_T_CD
		else if(CBB_HIP_TYPE == "UPM_D_A_T_CD") begin  : UPM_D_A_T_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_A_T_AD
		else if(CBB_HIP_TYPE == "UPM_D_A_T_AD") begin  : UPM_D_A_T_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_A_T_BD
		else if(CBB_HIP_TYPE == "UPM_D_A_T_BD") begin  : UPM_D_A_T_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_A"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
	// UPM_D_B_T_AB
			else if(CBB_HIP_TYPE == "UPM_D_B_T_AB") begin  : UPM_D_B_T_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_B_T_BC
		else if(CBB_HIP_TYPE == "UPM_D_B_T_BC") begin  : UPM_D_B_T_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_B_T_CD
		else if(CBB_HIP_TYPE == "UPM_D_B_T_CD") begin  : UPM_D_B_T_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_B_T_AD
		else if(CBB_HIP_TYPE == "UPM_D_B_T_AD") begin  : UPM_D_B_T_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_B_T_BD
		else if(CBB_HIP_TYPE == "UPM_D_B_T_BD") begin  : UPM_D_B_T_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_B"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_C_T_AB
		else if(CBB_HIP_TYPE == "UPM_D_C_T_AB") begin  : UPM_D_C_T_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_C"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_C_T_BC
		else if(CBB_HIP_TYPE == "UPM_D_C_T_BC") begin  : UPM_D_C_T_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_C"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_C_T_CD
		else if(CBB_HIP_TYPE == "UPM_D_C_T_CD") begin  : UPM_D_C_T_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_C"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_C_T_AD
		else if(CBB_HIP_TYPE == "UPM_D_C_T_AD") begin  : UPM_D_C_T_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_C"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_C_T_BD
		else if(CBB_HIP_TYPE == "UPM_D_C_T_BD") begin  : UPM_D_C_T_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_C"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end		
		//UPM_D_D_T_AB
		else if(CBB_HIP_TYPE == "UPM_D_D_T_AB") begin  : UPM_D_D_T_AB
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_D"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_B")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_D_T_BC
		else if(CBB_HIP_TYPE == "UPM_D_D_T_BC") begin  : UPM_D_D_T_BC
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_D"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_C")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_D_T_CD
		else if(CBB_HIP_TYPE == "UPM_D_D_T_CD") begin  : UPM_D_D_T_CD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_D"),
					.CBB_HIP_TYPE_2("UPM_T_C"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_D_T_AD
		else if(CBB_HIP_TYPE == "UPM_D_D_T_AD") begin  : UPM_D_D_T_AD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_D"),
					.CBB_HIP_TYPE_2("UPM_T_A"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end
		//UPM_D_D_T_BD
		else if(CBB_HIP_TYPE == "UPM_D_D_T_BD") begin  : UPM_D_D_T_BD
				upm_cbb_wrapper_cbb_3_top # (
					.CBB_HIP_TYPE_1("UPM_D_D"),
					.CBB_HIP_TYPE_2("UPM_T_B"),
					.CBB_HIP_TYPE_3("UPM_T_D")
				) upm_cbb_wrapper_cbb_3_top (
					.shift                   (shift                   ),
					.update                  (update                  ),
					.tck                     (tck                     ),
					.capture                 (capture                 ),
					.si                      (si                      ),
					.sel                     (sel                     ),
					.debug_clk_en            (debug_clk_en            ),
					.fdfx_powergood          (fdfx_powergood          ),
					.iso_n                   (iso_n                   ),
					.clk_debug               (clk_debug               ),
					.clk_out                 (clk_out                 ),
					.so                      (so                      ),
//	
					[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
					.system_cbb_pwr_en       (system_cbb_pwr_en       ),
					.system_cbb_cbb_addr     (system_cbb_cbb_addr[5:0]     ),
					.system_mode             (system_mode),				
					[% END %]
					
					
					.power_enable_error_next (power_enable_error_next ) 
     );		
		end		
		
		//
	end 
	endgenerate
endmodule
`endif
