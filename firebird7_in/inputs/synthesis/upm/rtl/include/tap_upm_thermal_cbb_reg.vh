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
//  Module tap_upm_thermal_cbb_reg
//
//------------------------------------------------------------------------------

`ifndef TAP_UPM_THERMAL_CBB_REG_VH
`define TAP_UPM_THERMAL_CBB_REG_VH
//______________________________________________________________________________________________________
//======================================================================================================
//
//                             - upm_cbb_reg struct definitions -
//
//______________________________________________________________________________________________________
//======================================================================================================

//-------------------------------------------------------------------------------------------------------
//IJTAG_CBB_REG struct definition
typedef struct packed {
        logic [THERMAL_ADDR_SIZE-1:0]   UPM_ADDR;     //parameterized 
        logic                           POWER_ENABLE; //[0:0] 
} t_ta_ijtag_thermal_cbb_reg;

localparam IJTAG_CBB_REG_LEN = THERMAL_ADDR_SIZE + 1;
//-------------------------------------------------------------------------------------------------------










//______________________________________________________________________________________________________
//======================================================================================================
//                                                                                                      
//                                   - upm_cbb_reg register size -                                            
//                                                                                                      
//______________________________________________________________________________________________________
//======================================================================================================

//------------------------------------------------------------------------------------------------------
localparam TA_sib_reg__upm_thermal_cbb_reg_IJTAG_CBB_REG_SIZE = THERMAL_ADDR_SIZE + 1; 
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
localparam TA_UPM_THERMAL_CBB_REG_COM_SHIFT_REG_SIZE0 = TA_sib_reg__upm_thermal_cbb_reg_IJTAG_CBB_REG_SIZE;
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//upm_cbb_reg common shift register size
localparam TA_UPM_THERMAL_CBB_REG_COM_SHIFT_REG_SIZE = TA_UPM_THERMAL_CBB_REG_COM_SHIFT_REG_SIZE0;
//------------------------------------------------------------------------------------------------------










`endif
