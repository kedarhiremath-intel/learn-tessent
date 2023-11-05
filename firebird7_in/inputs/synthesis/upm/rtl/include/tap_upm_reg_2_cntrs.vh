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
//  %header_collateral%
//
//  Source organization:
//  %header_organization%
//
//  Support Information:
//  %header_support%
//
//  Revision:
//  %header_tag%
//
//  Module tap_upm_reg_2_cntrs
//
//------------------------------------------------------------------------------

`ifndef TAP_UPM_REG_2_CNTRS_VH
`define TAP_UPM_REG_2_CNTRS_VH
//______________________________________________________________________________________________________
//======================================================================================================
//
//                             - upm_reg_2_cntrs struct definitions -
//
//______________________________________________________________________________________________________
//======================================================================================================

//-------------------------------------------------------------------------------------------------------
//IJTAG_COUNTER_CTRL struct definition
typedef struct packed {
		logic 										   TAP_MASTER_MODE;
        logic                                          UPM_DEBUG_CLK_EN;    //parameterized  enable/disable clock debug. 
        logic [NUMBER_OF_BITS_IN_WINDOW_COUNTER-1:0]   UPM_WINDOW_SIZE;     //parameterized 
        logic [4:0]                                    CLOCK_DIVDER_SELECT; //[7:3] 
        logic                                          STOP_MODE;           //[2:2] 
        logic                                          START_MODE;          //[1:1] 
        logic                                          WINDOW_MODE;         //[0:0] 
} t_ta_ijtag_counter_ctrl;

localparam IJTAG_COUNTER_CTRL_LEN = NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 + 1;
//-------------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------------
//IJTAG_COUNTER_RESULT struct definition
typedef struct packed {
        logic [UPM_NUMBER_OF_BITS_IN_COUNTER-1:0]   COUNTER_VALUE1; //parameterized 
        logic                                       OVERFLOW1;      //parameterized 
        logic [UPM_NUMBER_OF_BITS_IN_COUNTER-1:0]   COUNTER_VALUE0; //parameterized 
        logic                                       OVERFLOW0;      //[0:0] 
} t_ta_ijtag_counter_result;

localparam IJTAG_COUNTER_RESULT_LEN = 2*UPM_NUMBER_OF_BITS_IN_COUNTER + 2;
//-------------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------------
//IJTAG_UPM_STATUS struct definition
typedef struct packed {
		logic 										   COUNTER_STATUS_1;
		logic 										   COUNTER_STATUS_0;
        logic                                          CBB_CFG_ERROR;         //parameterized  Indecates whether more than once CBB is enabled. 1: more than once cbb is enabled. 0: only one cbb is enabled 
        logic [NUMBER_OF_BITS_IN_WINDOW_COUNTER-1:0]   COUNTER_CURRENT_VALUE; //parameterized 
        logic                                          WINDOW_COUNTER_ACTIVE; //[6:6] 
        logic                                          FSM_ENABLE;            //[5:5] 
        logic [4:0]                                    FSM_STATE;             //[4:0] 
} t_ta_ijtag_upm_status;

localparam IJTAG_UPM_STATUS_LEN = NUMBER_OF_BITS_IN_WINDOW_COUNTER + 10;
//-------------------------------------------------------------------------------------------------------










//______________________________________________________________________________________________________
//======================================================================================================
//                                                                                                      
//                                   - upm_reg_2_cntrs register size -                                            
//                                                                                                      
//______________________________________________________________________________________________________
//======================================================================================================

//------------------------------------------------------------------------------------------------------
localparam TA_sib_reg__upm_reg_2_cntrs_IJTAG_COUNTER_CTRL_SIZE   = NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 + 1; 
localparam TA_sib_reg__upm_reg_2_cntrs_IJTAG_COUNTER_RESULT_SIZE = 2*UPM_NUMBER_OF_BITS_IN_COUNTER  + 2; 
localparam TA_sib_reg__upm_reg_2_cntrs_IJTAG_UPM_STATUS_SIZE     = NUMBER_OF_BITS_IN_WINDOW_COUNTER + 10; 
//------------------------------------------------------------------------------------------------------










//______________________________________________________________________________________________________
//======================================================================================================
//                                                                                                      
//                                   - common shift register -                                          
//                                                                                                      
//______________________________________________________________________________________________________
//======================================================================================================

//------------------------------------------------------------------------------------------------------
//compare size
localparam TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE0 = TA_sib_reg__upm_reg_2_cntrs_IJTAG_COUNTER_CTRL_SIZE;
localparam TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE1 = (TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE0 > TA_sib_reg__upm_reg_2_cntrs_IJTAG_COUNTER_RESULT_SIZE)? TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE0 : TA_sib_reg__upm_reg_2_cntrs_IJTAG_COUNTER_RESULT_SIZE;
localparam TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE2 = (TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE1 > TA_sib_reg__upm_reg_2_cntrs_IJTAG_UPM_STATUS_SIZE)? TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE1 : TA_sib_reg__upm_reg_2_cntrs_IJTAG_UPM_STATUS_SIZE;
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//upm_reg_2_cntrs common shift register size
localparam TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE = TA_UPM_REG_2_CNTRS_COM_SHIFT_REG_SIZE2;
//------------------------------------------------------------------------------------------------------










`endif
