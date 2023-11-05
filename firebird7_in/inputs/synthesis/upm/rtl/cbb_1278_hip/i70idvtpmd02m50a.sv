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
//  Module i70idvtpmd02m50a
//
//------------------------------------------------------------------------------
/// i70idvtpmd02m50a.sv
///
/// Original Author   : hsreedha
/// Original Date     : 1/11/2022
///
/// Modified By       : 
/// Modified Date     : 
///
/// Copyright (c) 2021 Intel Corporation
/// Intel Proprietary
///
/// The left oscillator bank for IDV MIF ab
///
///=====================================================================================================================
   

module i70idvtpmd02m50a (
   // INPUT PORTS
   input logic [63:1] enosc,
   input logic sleep_b,
   input logic idvdebug_clki, 
  
   
   // OUTPUT PORTS
   output logic hfbankl
   
);

///=====================================================================================================================
/// Global Verilog Setup Information
///=====================================================================================================================

timeunit 1ps;
timeprecision 100fs;

parameter T_1  = 65.02;
parameter T_2  = 66.67;
parameter T_3  = 59.56;
parameter T_4  = 65.02;
parameter T_5  = 88.73;
parameter T_6  = 72.89;
parameter T_7  = 59.56;
parameter T_8  = 66.67;
parameter T_9  = 65.02;
parameter T_10 = 85.69;
parameter T_11 = 96.81;
parameter T_12 = 96.81;
parameter T_13 = 85.69;
parameter T_14 = 96.81;
parameter T_15 = 81.30;
parameter T_16 = 88.89;
parameter T_17 = 92.17;
parameter T_18 = 103.25;
parameter T_19 = 85.69;
parameter T_20 = 88.73;
parameter T_21 = 96.81;
parameter T_22 = 96.81;
//parameter T_23 = 10000;
//parameter T_24 = 10000;
//parameter T_25 = 10000;
//parameter T_26 = 10000;
//parameter T_27 = 10000;
//parameter T_28 = 10000;
//parameter T_29 = 10000;
//parameter T_30 = 10000;
//parameter T_31 = 10000;
parameter T_32 = 939.85;   
parameter T_33 = 939.85;  
parameter T_34 = 1072.39;  
parameter T_35 = 1072.39;  
parameter T_36 = 897.67;   
parameter T_37 = 897.67;   
parameter T_38 = 1008.88;  
parameter T_39 = 1008.88;  
parameter T_40 = 561.80;   
//parameter T_41 = 10000; 
//parameter T_42 = 10000; 
//parameter T_43 = 10000; 
//parameter T_44 = 10000; 
//parameter T_45 = 10000; 
//parameter T_46 = 10000; 
//parameter T_47 = 10000; 
parameter T_48 = 91996.32;   
parameter T_49 = 785545.95;  
parameter T_50 = 84175.08;   
parameter T_51 = 607902.74;  
//parameter T_52 = 10000;
//parameter T_53 = 10000;
//parameter T_54 = 10000;
//parameter T_55 = 10000;
//parameter T_56 = 10000;
//parameter T_57 = 10000;
//parameter T_58 = 10000;
//parameter T_59 = 10000;
//parameter T_60 = 10000;
//parameter T_61 = 10000;
//parameter T_62 = 10000;


///=====================================================================================================================
/// Internal Signal Declarations
///=====================================================================================================================

logic wiredandosc;
logic [63:1] osc;

///=====================================================================================================================
///                         Main i70idvtpmd02m50a Logic
///=====================================================================================================================

assign #(T_1/2.0) osc[1] =  (enosc[1]) ? ~osc[1] : 1'b1;
assign #(T_2/2.0) osc[2] =  (enosc[2]) ? ~osc[2] : 1'b1;
assign #(T_3/2.0) osc[3] =  (enosc[3]) ? ~osc[3] : 1'b1;
assign #(T_4/2.0) osc[4] =  (enosc[4]) ? ~osc[4] : 1'b1;
assign #(T_5/2.0) osc[5] =  (enosc[5]) ? ~osc[5] : 1'b1;
assign #(T_6/2.0) osc[6] =  (enosc[6]) ? ~osc[6] : 1'b1;
assign #(T_7/2.0) osc[7] =  (enosc[7]) ? ~osc[7] : 1'b1;
assign #(T_8/2.0) osc[8] =  (enosc[8]) ? ~osc[8] : 1'b1;
assign #(T_9/2.0) osc[9] =  (enosc[9]) ? ~osc[9] : 1'b1;
assign #(T_10/2.0) osc[10] =  (enosc[10]) ? ~osc[10] : 1'b1;
assign #(T_11/2.0) osc[11] =  (enosc[11]) ? ~osc[11] : 1'b1;
assign #(T_12/2.0) osc[12] =  (enosc[12]) ? ~osc[12] : 1'b1;
assign #(T_13/2.0) osc[13] =  (enosc[13]) ? ~osc[13] : 1'b1;
assign #(T_14/2.0) osc[14] =  (enosc[14]) ? ~osc[14] : 1'b1;
assign #(T_15/2.0) osc[15] =  (enosc[15]) ? ~osc[15] : 1'b1;
assign #(T_16/2.0) osc[16] =  (enosc[16]) ? ~osc[16] : 1'b1;
assign #(T_17/2.0) osc[17] =  (enosc[17]) ? ~osc[17] : 1'b1;
assign #(T_18/2.0) osc[18] =  (enosc[18]) ? ~osc[18] : 1'b1;
assign #(T_19/2.0) osc[19] =  (enosc[19]) ? ~osc[19] : 1'b1;
assign #(T_20/2.0) osc[20] =  (enosc[20]) ? ~osc[20] : 1'b1;
assign #(T_21/2.0) osc[21] =  (enosc[21]) ? ~osc[21] : 1'b1;
assign #(T_22/2.0) osc[22] =  (enosc[22]) ? ~osc[22] : 1'b1;
assign  osc[23] =  1'b1;
assign  osc[24] =  1'b1;
assign  osc[25] =  1'b1;
assign  osc[26] =  1'b1;
assign  osc[27] =  1'b1;
assign  osc[28] =  1'b1;
assign  osc[29] =  1'b1;
assign  osc[30] =  1'b1;
assign  osc[31] =  1'b1;
assign #(T_32/2.0) osc[32] =  (enosc[32]) ? ~osc[32] : 1'b1;
assign #(T_33/2.0) osc[33] =  (enosc[33]) ? ~osc[33] : 1'b1;
assign #(T_34/2.0) osc[34] =  (enosc[34]) ? ~osc[34] : 1'b1;
assign #(T_35/2.0) osc[35] =  (enosc[35]) ? ~osc[35] : 1'b1;
assign #(T_36/2.0) osc[36] =  (enosc[36]) ? ~osc[36] : 1'b1;
assign #(T_37/2.0) osc[37] =  (enosc[37]) ? ~osc[37] : 1'b1;
assign #(T_38/2.0) osc[38] =  (enosc[38]) ? ~osc[38] : 1'b1;
assign #(T_39/2.0) osc[39] =  (enosc[39]) ? ~osc[39] : 1'b1;
assign #(T_40/2.0) osc[40] =  (enosc[40]) ? ~osc[40] : 1'b1;
assign osc[41] =  1'b1;
assign osc[42] =  1'b1;
assign osc[43] =  1'b1;
assign osc[44] =  1'b1;
assign osc[45] =  1'b1;
assign osc[46] =  1'b1;
assign osc[47] =  1'b1;
assign #(T_48/2.0) osc[48] =  (enosc[48]) ? ~osc[48] : 1'b1;
assign #(T_49/2.0) osc[49] =  (enosc[49]) ? ~osc[49] : 1'b1;
assign #(T_50/2.0) osc[50] =  (enosc[50]) ? ~osc[50] : 1'b1;
assign #(T_51/2.0) osc[51] =  (enosc[51]) ? ~osc[51] : 1'b1;
assign osc[52] =  1'b1;
assign osc[53] =  1'b1;
assign osc[54] =  1'b1;
assign osc[55] =  1'b1;
assign osc[56] =  1'b1;
assign osc[57] =  1'b1;
assign osc[58] =  1'b1;
assign osc[59] =  1'b1;
assign osc[60] =  1'b1;
assign osc[61] =  1'b1;
assign osc[62] =  1'b1;
assign osc[63] =  (enosc[63]) ? ~idvdebug_clki : 1'b1;


assign wiredandosc = &osc;
    

assign hfbankl = wiredandosc; 
    
endmodule   // i70idvtpmd02m50a
