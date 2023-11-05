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
//  Module i70idvapmd03apmm50bshipbm1m4
//
//------------------------------------------------------------------------------
`timescale 1ps/100fs
// `default_nettype none
///=====================================================================================================================
/// Original Author   : mmeng
/// Original Date     : 1/28/2022
///
/// Copyright (c) 2019 Intel Corporation
/// Intel Proprietary
///
/// The top level for DPM 
///
///=====================================================================================================================


`ifndef I70IDVAPMD03APMM50BSHIPBM1M4_SV
`define I70IDVAPMD03APMM50BSHIPBM1M4_SV

`celldefine
module i70idvapmd03apmm50bshipbm1m4 (
  
 // INPUT PORTS
  `ifndef INTEL_NO_PWR_PINS
     `ifdef INTC_UPF_FLOW

     `else
         inout wire vssx,
         inout wire vccx,
     `endif
  `endif

    input logic apm_en_cal,
    input logic apm_en_osc,
    input logic apm_en_sensor,
    input logic apm_en_step,
    input logic apm_osc_sel,

    input logic [1:0]  apm_xtor_sel,
    input logic [3:0]  apm_mux_sel,
    input logic [3:0]  apm_vdac_sel,

   // OUTPUT PORTS
    output  logic  apm_osc_out,  
    output  logic  apm_debug_out
);

///=====================================================================================================================
/// Global Verilog Setup Information
///=====================================================================================================================
   `ifdef INTEL_NO_PWR_PINS
         `ifdef INTC_UPF_FLOW

         `else
          supply0 vssx;
          supply1 vccx;
         `endif
   `endif


`ifndef EMULATION

i70idvapmd03apmm50bshipbm1m4_ip78xanasensor_anasensor_top ip78xanasensor_anasensor_top (
  
 // INPUT PORTS
    .apm_en_cal      (apm_en_cal),
    .apm_en_osc      (apm_en_osc),
    .apm_en_sensor   (apm_en_sensor),
    .apm_en_step     (apm_en_step),
    .apm_osc_sel     (apm_osc_sel),
    .apm_xtor_sel   (apm_xtor_sel),
    .apm_mux_sel    (apm_mux_sel),
    .apm_vdac_sel   (apm_vdac_sel),

   // OUTPUT PORTS
    .apm_osc_out    (apm_osc_out),
    .apm_debug_out  (apm_debug_out)
);

`else

// Simple grounded outputs during emulation
assign hfbankl = 1'b0;
assign apm_osc_out    = 1'b0;
assign apm_debug_out  = 1'b0;

`endif   // EMULATION

endmodule   // i70idvapmd03apmm50bshipbm1m4
`endcelldefine

`endif   // I70IDVAPMD03APMM50BSHIPBM1M4_SV

///=====================================================================================================================
///
/// i70idvapmd03apmm50bshipbm1m4_ip78xanasensor_anasensor_top.sv
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
/// The left oscillator bank for IDV DPM ab
///
///=====================================================================================================================
   
`ifndef I70IDVAPMD03APMM50BSHIPBM1M4_IP78XANASENSOR_ANASENSOR_TOP_SV
`define I70IDVAPMD03APMM50BSHIPBM1M4_IP78XANASENSOR_ANASENSOR_TOP_SV


// Verilog HDL and netlist files of
//------------------------------------------------------------------------------
//
//  INTEL CONFIDENTIAL
//
//  Copyright 2020 Intel Corporation All Rights Reserved.
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
//  dteg-dfxsecure_plugin
//
//  Source organization:
//  DTEG Engineering Group (DTEG)
//
//  Support Information:
//  HSD:
//
//  Revision:
//
//
//  Module ip78xanasensor_anasensor_top stub file
//
//------------------------------------------------------------------------------
// "ip78xanasensor ip78xanasensor_anasensor_top schematic"

// Netlisted models

// Library - 
// LAST TIME SAVED: Oct 11 09:30:33 2021
// NETLIST TIME: Jan 27 10:13:20 2022

module i70idvapmd03apmm50bshipbm1m4_ip78xanasensor_anasensor_top (

        apm_osc_out  ,
        apm_debug_out,
        apm_en_cal   ,
        apm_en_osc   ,
        apm_en_sensor,
        apm_en_step  ,
        apm_mux_sel  ,
        apm_osc_sel  ,
        apm_vdac_sel ,
        apm_xtor_sel
    );

    output  logic  apm_osc_out,  apm_debug_out;

    input logic apm_en_cal, apm_en_osc, apm_en_sensor, apm_en_step, apm_osc_sel;

    input logic [1:0]  apm_xtor_sel;
    input logic [3:0]  apm_mux_sel;
    input logic [3:0]  apm_vdac_sel;

    real T; //default value 0

    assign apm_debug_out = 1'b0;

    always_comb
    begin

        //Sensor disabled
        if (apm_en_sensor == 1'b0) begin
            T=0;
        end

        //Oscillator output disabled
        else if (apm_en_osc == 1'b0) begin
            T=0;
        end

        //Oscillators and sensors are both enabled
        else if (apm_en_cal == 1'b1) begin
            //T = find_period_by_vdac(apm_osc_sel, apm_vdac_sel);

            case (apm_osc_sel)
                1'b0: //N
                    case (apm_vdac_sel)
                        4'b0000:T = 0;
                        4'b0001:T = 0;
                        4'b0010:T = 184128.1532;
                        4'b0011:T = 37936.26707;
                        4'b0100:T = 10152.28426;
                        4'b0101:T = 4081.632653;
                        4'b0110:T = 2132.196162;
                        4'b0111:T = 1317.523057;
                        4'b1000:T = 917.4311927;
                        default T = 0; //TBD
                    endcase
                1'b1: //P
                    case (apm_vdac_sel)
                        4'b0000:T = 1041.666667;
                        4'b0001:T = 1492.537313;
                        4'b0010:T = 2375.296912;
                        4'b0011:T = 4366.812227;
                        4'b0100:T = 10010.01001;
                        4'b0101:T = 31847.13376;
                        4'b0110:T = 149031.2966;
                        4'b0111:T = 0;
                        4'b1000:T = 0;
                        default T = 0; //TBD
                    endcase
                default : T= 0;//TBD
            endcase
        end
        //bank A is selected
        else if(apm_mux_sel[3] == 1'b1) begin
            if (apm_mux_sel[0] == 1'b0) begin
                case(apm_osc_sel)
                    1'b0 : T =4746.08448;
                    1'b1 : T = 24636.61;
                    default:T=0;    //TBD
                endcase
            end
            else if (apm_mux_sel[0] == 1) begin
                case(apm_osc_sel)
                    1'b0 : T =31645.56962;
                    1'b1 : T = 4761.904762;
                    default:T=0; //TBD
                endcase
            end else begin
                T = 0; //TBD
            end
        end
        //MUX sel combinations
        else if(apm_mux_sel[3] == 1'b0) begin
            case(apm_mux_sel[2:0])
                //NVT measurement
                3'b000: begin
                    if(apm_osc_sel == 1'b0) begin
                        case (apm_xtor_sel[1:0])
                            2'b00: T = 235294.1176;
                            2'b01: T = 196078.4314;
                            2'b10: T = 94339.62264;
                            2'b11: T = 31347.96238;
                            default: T = 0; //TBD
                        endcase
                    end
                    else if(apm_osc_sel == 1'b1) begin
                        case (apm_xtor_sel[1:0])
                            2'b00:T = 1966.955153;
                            2'b01:T = 2298.850575;
                            2'b10:T = 3039.513678;
                            2'b11:T = 4784.688995;
                            default: T = 0; //TBD
                        endcase
                    end else begin
                        T = 0; //TBD
                    end
                end

                //PVT measurement
                3'b001:
                begin
                    if(apm_osc_sel == 1'b0) begin
                        case (apm_xtor_sel[1:0])
                            2'b00:T = 238948.626;
                            2'b01:T = 221729.49;
                            2'b10:T = 115606.9364;
                            2'b11:T = 37037.03704;
                            default:T = 0; //TBD
                        endcase
                    end
                    else if(apm_osc_sel == 1'b1) begin
                        case (apm_xtor_sel[1:0])
                            2'b00: T = 1834.862385;
                            2'b01: T = 2157.497303;
                            2'b10: T = 2824.858757;
                            2'b11: T = 4166.666667;
                            default:T = 0; //TBD
                        endcase
                    end else begin
                        T = 0; //TBD
                    end
                end

                //NGM measurement
                3'b010:
                begin
                    if(apm_en_step == 1'b0) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 190114.0684;
                                2'b01:T = 111111.1111;
                                2'b10:T = 56497.17514;
                                2'b11:T = 20703.93375;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel = 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 2347.41784;
                                2'b01:T = 2873.563218;
                                2'b10:T = 3690.0369;
                                2'b11:T = 5952.380952;
                                default:T = 0;
                            endcase

                        end else begin  //apm_osc_sel = 1
                            T = 0;
                        end
                    end // apm_en_step = 0
                    else if (apm_en_step == 1'b1) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00: T = 37878.78788;
                                2'b01: T = 22471.91011;
                                2'b10: T = 13477.08895;
                                2'b11: T = 6666.666667;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 4366.812227;
                                2'b01:T = 5617.977528;
                                2'b10:T = 8064.516129;
                                2'b11:T = 15436.86323;
                                default:T = 0;
                            endcase


                        end else begin //apm_osc_sel = 1
                            T = 0;
                        end

                    end else begin //apm_en_step = 1
                        T = 0;
                    end
                end
                //PGM measurement
                3'b011:
                begin
                    if(apm_en_step == 1'b0) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T =  2392.344498;
                                2'b01:T =  2994.011976;
                                2'b10:T =  4132.231405;
                                2'b11:T =  6451.612903;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel = 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 107665.8053;
                                2'b01:T = 60642.81383;
                                2'b10:T = 31645.56962;
                                2'b11:T = 15928.63969;
                                default:T = 0;
                            endcase

                        end else begin  //apm_osc_sel = 1
                            T = 0;
                        end
                    end // apm_en_step = 0
                    else if (apm_en_step == 1'b1) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00: T = 6451.612903;
                                2'b01: T = 9259.259259;
                                2'b10: T = 15313.93568;
                                2'b11: T = 31746.03175;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 15905.83744;
                                2'b01:T = 10905.12541;
                                2'b10:T = 7225.433526;
                                2'b11:T = 4739.336493;
                                default:T = 0;
                            endcase


                        end else begin //apm_osc_sel = 1
                            T = 0;
                        end

                    end else begin //apm_en_step = 1
                        T = 0;
                    end
                end

                //NROUT measurement
                3'b100:
                begin
                    if(apm_en_step == 1'b0) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T =  207039.3375;
                                2'b01:T =  220458.5538;
                                2'b10:T =  228310.5023;
                                2'b11:T =  233535.731;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel = 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 2262.443439;
                                2'b01:T = 2171.175474;
                                2'b10:T = 2092.050209;
                                2'b11:T = 1981.178801;
                                default:T = 0;
                            endcase

                        end else begin  //apm_osc_sel = 1
                            T = 0;
                        end
                    end // apm_en_step = 0
                    else if (apm_en_step == 1'b1) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00: T = 156985.8713;
                                2'b01: T = 177336.4072;
                                2'b10: T = 197083.1691;
                                2'b11: T = 220653.1333;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 2531.64557;
                                2'b01:T = 2411.381722;
                                2'b10:T = 2306.273063;
                                2'b11:T = 2170.845544;
                                default:T = 0;
                            endcase


                        end else begin //apm_osc_sel = 1
                            T = 0;
                        end

                    end else begin //apm_en_step = 1
                        T = 0;
                    end
                end

                //PROUT measurement
                3'b101:
                begin
                    if(apm_en_step == 1'b0) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T =  1965.408805;
                                2'b01:T =  1932.36715;
                                2'b10:T =  1865.671642;
                                2'b11:T =  1798.884691;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel = 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 176897.2227;
                                2'b01:T = 192233.7562;
                                2'b10:T = 208333.3333;
                                2'b11:T = 213675.2137;
                                default:T = 0;
                            endcase

                        end else begin  //apm_osc_sel = 1
                            T = 0;
                        end
                    end // apm_en_step = 0
                    else if (apm_en_step == 1'b1) begin
                        if(apm_osc_sel == 1'b0) begin
                            case (apm_xtor_sel[1:0])
                                2'b00: T = 2226.675573;
                                2'b01: T = 2145.922747;
                                2'b10: T = 2047.502048;
                                2'b11: T = 1964.636542;
                                default:T = 0;
                            endcase
                        end //apm_osc_sel 0
                        else if(apm_osc_sel == 1'b1) begin
                            case (apm_xtor_sel[1:0])
                                2'b00:T = 131130.3436;
                                2'b01:T = 148588.4101;
                                2'b10:T = 166057.7881;
                                2'b11:T = 185632.0772;
                                default:T = 0;
                            endcase


                        end else begin //apm_osc_sel = 1
                            T = 0;
                        end

                    end else begin //apm_en_step = 1
                        T = 0;
                    end
                end


                //Logic High
                3'b110:
                begin
                    if(apm_osc_sel == 1'b0)
                        T = 917.4311927;
                    else
                        T = 0;
                end

                //Logic low
                3'b111:
                begin
                    if(apm_osc_sel == 1'b1)
                        T = 1041.666667;
                    else
                        T = 0;
                end


            endcase
        end

        else begin
            T = 0; //TBD
        end
    end
////*******************FUNCTIONS****************************






 //   function real find_period_by_vdac(apm_osc_sel,apm_vdac_sel);
 //       real T;
 //       case (apm_osc_sel)
 //           1'b0: //N
 //               case (apm_vdac_sel)
 //                   4'b0000:T = 0;
 //                   4'b0001:T = 0;
 //                   4'b0010:T = 184128.1532;
 //                   4'b0011:T = 37936.26707;
 //                   4'b0100:T = 10152.28426;
 //                   4'b0101:T = 4081.632653;
 //                   4'b0110:T = 2132.196162;
 //                   4'b0111:T = 1317.523057;
 //                   4'b1000:T = 917.4311927;
 //                   default T = 0; //TBD
 //               endcase
 //           1'b1: //P
 //               case (apm_vdac_sel)
 //                   4'b0000:T = 1041.666667;
 //                   4'b0001:T = 1492.537313;
 //                   4'b0010:T = 2375.296912;
 //                   4'b0011:T = 4366.812227;
 //                   4'b0100:T = 10010.01001;
 //                   4'b0101:T = 31847.13376;
 //                   4'b0110:T = 149031.2966;
 //                   4'b0111:T = 0;
 //                   4'b1000:T = 0;
 //                   default T = 0; //TBD
 //               endcase
 //           default : T= 0;//TBD
 //       endcase
 //       return T;
 //   endfunction

    assign  #(T/2) apm_osc_out = (T>0) ? ~apm_osc_out: 1'b0 ;


endmodule   // i70idvapmd03apmm50bshipbm1m4_ip78xanasensor_anasensor_top

`endif //I70IDVAPMD03APMM50BSHIPBM1M4_IP78XANASENSOR_ANASENSOR_TOP_SV
