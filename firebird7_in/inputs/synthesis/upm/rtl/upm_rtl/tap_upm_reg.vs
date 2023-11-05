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
//  Module tap_upm_reg 
//
//------------------------------------------------------------------------------
`include "tap_upm_reg.vh"
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - UPM SIGNALS -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic ctrl_cntr_start_o;
logic ctrl_cntr_stop_o;
logic fsm_counter_active_o;
logic [NUMBER_OF_BITS_IN_WINDOW_COUNTER-1:0] fsm_counter_current_value_o;
logic [4:0] fsm_state_o;
logic fsm_enable_o;
logic upm_div_clk_0;
logic [UPM_NUMBER_OF_BITS_IN_COUNTER-1:0] upm_counter_o_0;
logic overflow_o_0;
logic counter_status_0;
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                       - COMMON SIGNAL DEFINITION -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_CTRL_ComShiftRegT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_RES_ComShiftRegT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] UPM_STATUS_ComShiftRegT731H;
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                   -  TAP ASYNC RESET -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic dc_fdfx_powergood_b;
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//`UPM_CUTDC(dc_fdfx_powergood_b,~fdfx_powergood,1'b1)
assign dc_fdfx_powergood_b = ~fdfx_powergood;
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//                                                                                                      
//                                       - TCLK BUFFER -                                                
//                                                                                                      
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic ClkTapTH;
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
`UPM_CLKBF(ClkTapTH, tck)
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//                                                                                                      
//                                  - upm_reg IR select FF stage -                                        
//                                                                                                      
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic s2H; 
logic s3H; 
logic s4H; 
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//`UPM_ASYNC_RST_MSFF(s2H, s1, ClkTapTH, dc_fdfx_powergood_b) /* lintra s-50529 */ 
//`UPM_ASYNC_RST_MSFF(s3H, s2, ClkTapTH, dc_fdfx_powergood_b) /* lintra s-50529 */ 
//`UPM_ASYNC_RST_MSFF(s4H, s3, ClkTapTH, dc_fdfx_powergood_b) /* lintra s-50529 */ 
//------------------------------------------------------------------------------------------------------
assign s2H = s1;
assign s3H = s2;
assign s4H = s3;
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - IJTAG_COUNTER_RESULT TAP REGISTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
t_ta_ijtag_counter_result  IJTAG_COUNTER_RESULT_RegTnnnH;        
t_ta_ijtag_counter_result  IJTAG_COUNTER_RESULT_RegInTnnnH;      
t_ta_ijtag_counter_result  captureIJTAG_COUNTER_RESULT_RegTnnnH; 
logic                      IJTAG_COUNTER_RESULT_UpdateDRT731H;   
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
always_comb begin : IJTAG_COUNTER_RESULT_UPDATEDR
       IJTAG_COUNTER_RESULT_UpdateDRT731H = s3H & update;   /* lintra s-50519 */
       IJTAG_COUNTER_RESULT_RegInTnnnH    = (IJTAG_COUNTER_RESULT_UpdateDRT731H) ? t_ta_ijtag_counter_result'(CNTR_RES_ComShiftRegT731H[TA_sib_reg__upm_reg_IJTAG_COUNTER_RESULT_SIZE - 1 : 0]) : IJTAG_COUNTER_RESULT_RegTnnnH;
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Main register running at Tclk
`UPM_ASYNC_RST_MSFF (IJTAG_COUNTER_RESULT_RegTnnnH, IJTAG_COUNTER_RESULT_RegInTnnnH, ClkTapTH, dc_fdfx_powergood_b) /* lintra s-50529 */
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//External capture DR
always_comb begin : IJTAG_COUNTER_RESULT_EXTERNAL_CAPTURE_DR
       captureIJTAG_COUNTER_RESULT_RegTnnnH                = IJTAG_COUNTER_RESULT_RegTnnnH; //default 
       captureIJTAG_COUNTER_RESULT_RegTnnnH.OVERFLOW0      = overflow_o_0;                  
       captureIJTAG_COUNTER_RESULT_RegTnnnH.COUNTER_VALUE0 = upm_counter_o_0;               
end
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - IJTAG_COUNTER_CTRL TAP REGISTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
t_ta_ijtag_counter_ctrl  IJTAG_COUNTER_CTRL_RegTnnnH;      
t_ta_ijtag_counter_ctrl  IJTAG_COUNTER_CTRL_RegInTnnnH;    
logic                    IJTAG_COUNTER_CTRL_UpdateDRT731H; 
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
always_comb begin : IJTAG_COUNTER_CTRL_UPDATEDR
       IJTAG_COUNTER_CTRL_UpdateDRT731H = s2H & update;   /* lintra s-50519 */
       IJTAG_COUNTER_CTRL_RegInTnnnH    = (IJTAG_COUNTER_CTRL_UpdateDRT731H) ? t_ta_ijtag_counter_ctrl'(CNTR_CTRL_ComShiftRegT731H[TA_sib_reg__upm_reg_IJTAG_COUNTER_CTRL_SIZE - 1 : 0]) : IJTAG_COUNTER_CTRL_RegTnnnH;
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Main register running at Tclk
`UPM_ASYNC_RST_MSFF (IJTAG_COUNTER_CTRL_RegTnnnH, IJTAG_COUNTER_CTRL_RegInTnnnH, ClkTapTH, dc_fdfx_powergood_b) /* lintra s-50529 */
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - IJTAG_UPM_STATUS TAP REGISTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
t_ta_ijtag_upm_status  IJTAG_UPM_STATUS_RegTnnnH;        
t_ta_ijtag_upm_status  IJTAG_UPM_STATUS_RegInTnnnH;      
t_ta_ijtag_upm_status  captureIJTAG_UPM_STATUS_RegTnnnH; 
logic                  IJTAG_UPM_STATUS_UpdateDRT731H;   
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
always_comb begin : IJTAG_UPM_STATUS_UPDATEDR
       IJTAG_UPM_STATUS_UpdateDRT731H = s4H & update;   /* lintra s-50519 */
       IJTAG_UPM_STATUS_RegInTnnnH    = (IJTAG_UPM_STATUS_UpdateDRT731H) ? t_ta_ijtag_upm_status'(UPM_STATUS_ComShiftRegT731H[TA_sib_reg__upm_reg_IJTAG_UPM_STATUS_SIZE - 1 : 0]) : IJTAG_UPM_STATUS_RegTnnnH;
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Main register running at Tclk
`UPM_ASYNC_RST_MSFF (IJTAG_UPM_STATUS_RegTnnnH, IJTAG_UPM_STATUS_RegInTnnnH, ClkTapTH, dc_fdfx_powergood_b) /* lintra s-50529 */
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//External capture DR
always_comb begin : IJTAG_UPM_STATUS_EXTERNAL_CAPTURE_DR
       captureIJTAG_UPM_STATUS_RegTnnnH                       = IJTAG_UPM_STATUS_RegTnnnH;   //default 
       captureIJTAG_UPM_STATUS_RegTnnnH.FSM_STATE             = fsm_state_o;                 
       captureIJTAG_UPM_STATUS_RegTnnnH.FSM_ENABLE            = fsm_enable_o;                
       captureIJTAG_UPM_STATUS_RegTnnnH.WINDOW_COUNTER_ACTIVE = fsm_counter_active_o;        
       captureIJTAG_UPM_STATUS_RegTnnnH.COUNTER_CURRENT_VALUE = fsm_counter_current_value_o; 
       captureIJTAG_UPM_STATUS_RegTnnnH.CBB_CFG_ERROR         = cbb_power_en_error;   
	   captureIJTAG_UPM_STATUS_RegTnnnH.COUNTER_STATUS		  = counter_status_0;
end
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                       - EXTERNAL TAP COMMON SHIFT REGISTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_RES_ComShiftRegCaptureT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_RES_ComShiftRegTdiT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_RES_ComShiftRegInT731H;
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Capture DR
always_comb begin : RES_COMMON_SHIFT_TCLK_REG_CAPTURE
       CNTR_RES_ComShiftRegCaptureT731H = '0; //default 0
       unique casez(1'b1)
           s3H     : CNTR_RES_ComShiftRegCaptureT731H[TA_sib_reg__upm_reg_IJTAG_COUNTER_RESULT_SIZE - 1:0] = captureIJTAG_COUNTER_RESULT_RegTnnnH; //IJTAG_COUNTER_RESULT 
           default : CNTR_RES_ComShiftRegCaptureT731H[TA_UPM_REG_COM_SHIFT_REG_SIZE                 - 1:0] = '0;                                   //CAPTURE DEFAULT VALUE 
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Shift DR TDI input location
always_comb begin : RES_COMMON_SHIFT_TCK_REG_TDI
       CNTR_RES_ComShiftRegTdiT731H = {cntr_res_si, CNTR_RES_ComShiftRegT731H[TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:1] };    /* lintra s-50519 */ //Shift right
       unique casez(1'b1)
           s3H     : CNTR_RES_ComShiftRegTdiT731H[TA_sib_reg__upm_reg_IJTAG_COUNTER_RESULT_SIZE - 1] = cntr_res_si;   /* lintra s-50519 */ //IJTAG_COUNTER_RESULT 
           default : CNTR_RES_ComShiftRegTdiT731H[0]                                                 = 1'b0; 
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Shift or keep the previous value
always_comb begin : RES_COMMON_SHIFT_TCK_REG_SHIFT
       unique casez(1'b1)
           capture : CNTR_RES_ComShiftRegInT731H = CNTR_RES_ComShiftRegCaptureT731H; 
           shift   : CNTR_RES_ComShiftRegInT731H = CNTR_RES_ComShiftRegTdiT731H;     
           default : CNTR_RES_ComShiftRegInT731H = CNTR_RES_ComShiftRegT731H;        
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//common DR register
`UPM_ASYNC_RST_MSFF (CNTR_RES_ComShiftRegT731H, CNTR_RES_ComShiftRegInT731H, ClkTapTH,dc_fdfx_powergood_b)
//------------------------------------------------------------------------------------------------------
//################################################################################################################################################################################
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                       - EXTERNAL TAP COMMON SHIFT REGISTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_CTRL_ComShiftRegCaptureT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_CTRL_ComShiftRegTdiT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] CNTR_CTRL_ComShiftRegInT731H;
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Capture DR
always_comb begin : CTRL_COMMON_SHIFT_TCLK_REG_CAPTURE
       CNTR_CTRL_ComShiftRegCaptureT731H = '0; //default 0
       unique casez(1'b1)
           s2H     : CNTR_CTRL_ComShiftRegCaptureT731H[TA_sib_reg__upm_reg_IJTAG_COUNTER_CTRL_SIZE   - 1:0] = IJTAG_COUNTER_CTRL_RegTnnnH;          //IJTAG_COUNTER_CTRL 
           default : CNTR_CTRL_ComShiftRegCaptureT731H[TA_UPM_REG_COM_SHIFT_REG_SIZE                 - 1:0] = '0;                                   //CAPTURE DEFAULT VALUE 
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Shift DR TDI input location
always_comb begin : CTRL_COMMON_SHIFT_TCK_REG_TDI
       CNTR_CTRL_ComShiftRegTdiT731H = {cntr_ctrl_si, CNTR_CTRL_ComShiftRegT731H[TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:1] };    /* lintra s-50519 */ //Shift right
       unique casez(1'b1)
           s2H     : CNTR_CTRL_ComShiftRegTdiT731H[TA_sib_reg__upm_reg_IJTAG_COUNTER_CTRL_SIZE   - 1] = cntr_ctrl_si;   /* lintra s-50519 */ //IJTAG_COUNTER_CTRL 
           default : CNTR_CTRL_ComShiftRegTdiT731H[0]                                                 = 1'b0; 
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Shift or keep the previous value
always_comb begin : CTRL_COMMON_SHIFT_TCK_REG_SHIFT
       unique casez(1'b1)
           capture : CNTR_CTRL_ComShiftRegInT731H = CNTR_CTRL_ComShiftRegCaptureT731H; 
           shift   : CNTR_CTRL_ComShiftRegInT731H = CNTR_CTRL_ComShiftRegTdiT731H;     
           default : CNTR_CTRL_ComShiftRegInT731H = CNTR_CTRL_ComShiftRegT731H;        
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//common DR register
`UPM_ASYNC_RST_MSFF (CNTR_CTRL_ComShiftRegT731H, CNTR_CTRL_ComShiftRegInT731H, ClkTapTH,dc_fdfx_powergood_b)
//------------------------------------------------------------------------------------------------------
//############################################################################################################################################################################################################################
//################################################################################################################################################################################
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                       - EXTERNAL TAP COMMON SHIFT REGISTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] UPM_STATUS_ComShiftRegCaptureT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] UPM_STATUS_ComShiftRegTdiT731H;
logic [TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:0] UPM_STATUS_ComShiftRegInT731H;
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Capture DR
always_comb begin : STATUS_COMMON_SHIFT_TCLK_REG_CAPTURE
       UPM_STATUS_ComShiftRegCaptureT731H = '0; //default 0
       unique casez(1'b1)
           s4H     : UPM_STATUS_ComShiftRegCaptureT731H[TA_sib_reg__upm_reg_IJTAG_UPM_STATUS_SIZE     - 1:0] = captureIJTAG_UPM_STATUS_RegTnnnH;     //IJTAG_UPM_STATUS 
           default : UPM_STATUS_ComShiftRegCaptureT731H[TA_UPM_REG_COM_SHIFT_REG_SIZE                 - 1:0] = '0;                                   //CAPTURE DEFAULT VALUE 
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Shift DR TDI input location
always_comb begin : STATUS_COMMON_SHIFT_TCK_REG_TDI
       UPM_STATUS_ComShiftRegTdiT731H = {upm_status_si, UPM_STATUS_ComShiftRegT731H[TA_UPM_REG_COM_SHIFT_REG_SIZE - 1:1] };    /* lintra s-50519 */ //Shift right
       unique casez(1'b1)
           s4H     : UPM_STATUS_ComShiftRegTdiT731H[TA_sib_reg__upm_reg_IJTAG_UPM_STATUS_SIZE     - 1] = upm_status_si;   /* lintra s-50519 */ //IJTAG_UPM_STATUS 
           default : UPM_STATUS_ComShiftRegTdiT731H[0]                                                 = 1'b0; 
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//Shift or keep the previous value
always_comb begin : STATUS_COMMON_SHIFT_TCK_REG_SHIFT
       unique casez(1'b1)
           capture : UPM_STATUS_ComShiftRegInT731H = UPM_STATUS_ComShiftRegCaptureT731H; 
           shift   : UPM_STATUS_ComShiftRegInT731H = UPM_STATUS_ComShiftRegTdiT731H;     
           default : UPM_STATUS_ComShiftRegInT731H = UPM_STATUS_ComShiftRegT731H;        
       endcase
end
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//common DR register
`UPM_ASYNC_RST_MSFF (UPM_STATUS_ComShiftRegT731H, UPM_STATUS_ComShiftRegInT731H, ClkTapTH,dc_fdfx_powergood_b)
//------------------------------------------------------------------------------------------------------
//############################################################################################################################################################################################################################
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                       - FINAL TDO -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
//Final TDO
assign cntr_ctrl_so  = CNTR_CTRL_ComShiftRegT731H[0];  //TDO for IJTAG_COUNTER_CTRL 
                                 
assign cntr_res_so   = CNTR_RES_ComShiftRegT731H[0];   // IJTAG_COUNTER_RESULT
assign upm_status_so = UPM_STATUS_ComShiftRegT731H[0]; // TDO for IJTAG_UPM_STATUS
//------------------------------------------------------------------------------------------------------
logic counter_manual_i;
logic counter_start_i;
logic counter_stop_i;
logic [NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 :0] counter_init_i;
logic fsm_start_i;
logic mux_clk;
logic mux_rstn;
assign counter_manual_i = IJTAG_COUNTER_CTRL_RegTnnnH.WINDOW_MODE;
assign counter_start_i  = IJTAG_COUNTER_CTRL_RegTnnnH.START_MODE;
assign counter_stop_i   = IJTAG_COUNTER_CTRL_RegTnnnH.STOP_MODE;
assign counter_init_i   = IJTAG_COUNTER_CTRL_RegTnnnH.UPM_WINDOW_SIZE;
assign fsm_start_i      = s2H & update;
`UPM_CLKBF(mux_clk,tck)
assign mux_rstn = trstb ;
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - UPM CONTROLLER -
//
//______________________________________________________________________________________________________
//======================================================================================================
upm_controller # (
                .NUMBER_OF_BITS_IN_FSM (NUMBER_OF_BITS_IN_WINDOW_COUNTER) 
               )
upm_controller_upm_fabric (
        .tck_i                          (mux_clk),                                          //input 
        .trstn_i                        (mux_rstn & fdfx_powergood),                                        //input
        .counter_manual_i               (counter_manual_i),      //input 
        .counter_start_i                (counter_start_i),       //input
        .counter_stop_i                 (counter_stop_i),        //input  
        .fsm_start_i                    (fsm_start_i),                                 //input
        .counter_init_i                 (counter_init_i),  //input
		
        .cntr_start_o                   (ctrl_cntr_start_o),                            //output
        .cntr_stop_o                    (ctrl_cntr_stop_o),                             //output
        .fsm_counter_active_o           (fsm_counter_active_o),                         //output
        .fsm_counter_current_value_o    (fsm_counter_current_value_o),                  //output
        .fsm_state_o                    (fsm_state_o),                                  //output
        .fsm_enable_o                   (fsm_enable_o)                                  //output
);
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - UPM COUNTER -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic capture_i; // this reset the counter in auto mode when capture occurs
logic counter_capture_i;
assign counter_capture_i = capture & s2H & ~IJTAG_COUNTER_CTRL_RegTnnnH.WINDOW_MODE;
assign capture_i = counter_capture_i;
upm_counter # (
                .NUMBER_OF_BITS_IN_COUNTER (UPM_NUMBER_OF_BITS_IN_COUNTER) 
               )
upm_counter_upm_fabric (
        .tck_i             (mux_clk             ),   //input 
        .trstn_i           (mux_rstn & fdfx_powergood),   //input
        .clock_i           (upm_div_clk_0       ),   //input                                                        
        .cntr_start_i      (ctrl_cntr_start_o   ),   //input 
        .cntr_stop_i       (ctrl_cntr_stop_o    ),   //input 
        .capture_i         (capture_i           ),   //input
        .upm_counter_o     (upm_counter_o_0     ),   //output
        .overflow_o        (overflow_o_0        ),    //output
		.counter_status    (counter_status_0)
);
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - UPM CLK DIVIDER -
//
//______________________________________________________________________________________________________
//======================================================================================================
logic [4:0] en_div_i;
assign en_div_i = IJTAG_COUNTER_CTRL_RegTnnnH.CLOCK_DIVDER_SELECT;
upm_clk_divider 
   upm_clk_divider_upm_fabric (
        .fin       (cbb_clk_in[0]),                                //input
        .trstn_i   (mux_rstn & fdfx_powergood),                                 //input
        .en_div_i  (en_div_i),				//input
        .fout      (upm_div_clk_0)                              //output
);
`UPM_CLKBF(dfx_upm_dcm_out[0], upm_div_clk_0)
assign dfx_upm_dcm_out[1] = 1'b0;
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - DEBUG CLK EN -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
assign debug_clk_en  = IJTAG_COUNTER_CTRL_RegTnnnH.UPM_DEBUG_CLK_EN;
//------------------------------------------------------------------------------------------------------
assign tap_master_mode = IJTAG_COUNTER_CTRL_RegTnnnH.TAP_MASTER_MODE;
/*
generate
	if (1) begin : UPM_CHECKER_0
if( (CBB_HIP_TYPE == "UPM_THERMAL_1") || (CBB_HIP_TYPE == "UPM_THERMAL_2") || (CBB_HIP_TYPE == "UPM_THERMAL_3") || (CBB_HIP_TYPE == "UPM_THERMAL_4") || (CBB_HIP_TYPE == "UPM_THERMAL_5") || (CBB_HIP_TYPE == "UPM_THERMAL_6")) begin : UPM_THERMAL_CHECK
		
		initial begin
	    $display("ERROR_VAL :- Found 1 counters in permutation   %s", CBB_HIP_TYPE);
		$finish;
	end
	
end else begin : UPM_NON_THERMAL_CHECK
end
end
endgenerate
*/
