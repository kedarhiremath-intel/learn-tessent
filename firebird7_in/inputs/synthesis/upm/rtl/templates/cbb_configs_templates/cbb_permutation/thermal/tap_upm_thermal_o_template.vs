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
logic [1:0] cbb_clk;
logic power_enable_hip;
logic ijtag_power_enable;
logic [1:0] clk_out_pre;
logic [11:0] upm_address;

//module upm_cbb_control_2_cntrs instantiation
upm_cbb_control_2_cntrs #(
       .THERMAL_ADDR_SIZE(5),
	   .OUTPUT_SIZE(12)
)
u_upm_cbb_control_2_cntrs (
        .so_out                  (so_out                  ), //upm_cbb_wrapper::CREATE_MODULE::input  
        .shift_out               (shift_out               ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .update_out              (update_out              ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .tck_out                 (tck_out                 ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .capture_out             (capture_out             ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .si_out                  (si_out                  ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .sel_out                 (sel_out                 ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .fdfx_powergood          (fdfx_powergood          ), //upm_cbb_wrapper::TOP::input  
        .update                  (update                  ), //upm_cbb_wrapper::TOP::input  
        .shift                   (shift                   ), //upm_cbb_wrapper::TOP::input  
        .capture                 (capture                 ), //upm_cbb_wrapper::TOP::input  
        .tck                     (tck                     ), //upm_cbb_wrapper::TOP::input 
        .power_enable_hip(power_enable_hip),
        .si                      (si                      ), //upm_cbb_wrapper::TOP::input  
        .sel                     (sel                     ), //upm_cbb_wrapper::TOP::input  
        .so                      (so                      ), //upm_cbb_wrapper::TOP::output 
        .clk_debug               (clk_debug               ), //upm_cbb_wrapper::UNIT interface::input 
        .power_enable_prev       (power_enable_prev       ), //upm_cbb_wrapper::UNIT interface::input 
        .iso_n                   (iso_n                   ), //upm_cbb_wrapper::UNIT interface::input 
        .power_enable_error_prev (power_enable_error_prev ), //upm_cbb_wrapper::UNIT interface::input 
        .clk_in                  (clk_in                  ), //upm_cbb_wrapper::UNIT interface::input 
        .power_enable_next       (power_enable_next       ), //upm_cbb_wrapper::UNIT interface::output 
        .power_enable_error_next (power_enable_error_next ), //upm_cbb_wrapper::UNIT interface::output 
        .clk_out                 (clk_out                 ),  //upm_cbb_wrapper::UNIT interface::output 
        .cbb_clk                 (cbb_clk                 ),  //upm_cbb_wrapper::UNIT interface::output 
        .power_enable            (ijtag_power_enable      ),  //upm_cbb_wrapper::UNIT interface::output 
        .upm_address             (upm_address             )  //upm_cbb_wrapper::UNIT interface::output 
);


//------------------------------------------------------------------------------------------------------





logic [12:1] thermal_addr_hip;


[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]

logic [12:1] thermal_addr_system;
logic [12:1] thermal_addr_ijtag;


upm_address_decoder_thermal u_upm_address_decoder_thermal_n_sys(
		.power_enable(system_cbb_pwr_en),
      .address     (system_cbb_cbb_addr[4:0]),
      .dec_address (thermal_addr_system)
);


//assign thermal_addr_system = system_cbb_cbb_addr;

assign thermal_addr_ijtag = upm_address;

`UPM_MUX_2TO1(power_enable_hip,  system_mode, system_cbb_pwr_en, ijtag_power_enable)

`UPM_MUX_2TO1(thermal_addr_hip,  system_mode, thermal_addr_system, thermal_addr_ijtag)

[% END %]	

[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 0 %]

assign thermal_addr_hip = upm_address;
assign power_enable_hip = ijtag_power_enable;

[% END %]	
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - CBB_HIP -
//
//______________________________________________________________________________________________________
//======================================================================================================

//------------------------------------------------------------------------------------------------------
[% IF upm_variables.DFX_UPM_CFG_1278 == 3 %]
i70idvrotd03m50cshipbm1m3 inst_i70idvrotd03m50cshipbm1m3 (
[% IF upm_variables.DFX_UPM_PWR_PINS == 1 %]
	.vssx			 (1'b0),
	.vccidvl         (1'b1),
[% END %]
  .enosc           (thermal_addr_hip), 
  .sleep_b         (power_enable_hip), 
  .idvdebug_clki   (clk_debug), 
  .hfbankl         (cbb_clk[0]),
  .hfbanklvt       (cbb_clk[1])
  
 );


[% END %]
[% IF upm_variables.DFX_UPM_CFG_1278 == 2 %]
i70idvrotd02m50cshipbm1m3 inst_i70idvrotd02m50cshipbm1m3 (
[% IF upm_variables.DFX_UPM_PWR_PINS == 1 %]
	.vssx			 (1'b0),
	.vccidvl         (1'b1),
[% END %]
  .enosc           (thermal_addr_hip), 
  .sleep_b         (power_enable_hip), 
  .idvdebug_clki   (clk_debug), 
  .hfbankl         (cbb_clk[0]),
  .hfbanklvt       (cbb_clk[1])
  
 );
 [% END %]
 
[% IF upm_variables.DFX_UPM_CFG_1278 == 6 %]
i70idvrotd06m50cshipbm1m3 inst_i70idvrotd06m50cshipbm1m3 (
[% IF upm_variables.DFX_UPM_PWR_PINS == 1 %]
	.vssx			 (1'b0),
	.vccidvl         (1'b1),
[% END %]
  .enosc           (thermal_addr_hip), 
  .sleep_b         (power_enable_hip), 
  .idvdebug_clki   (clk_debug), 
  .hfbankl         (cbb_clk[0]),
  .hfbanklvt       (cbb_clk[1])
  
 );
 [% END %]
 
 
[% IF upm_variables.DFX_UPM_CFG_1278 == 4 %]
i70idvrotd04m50cshipbm1m3 inst_i70idvrotd04m50cshipbm1m3 (
[% IF upm_variables.DFX_UPM_PWR_PINS == 1 %]
	.vssx			 (1'b0),
	.vccidvl         (1'b1),
[% END %]
  .enosc           (thermal_addr_hip), 
  .sleep_b         (power_enable_hip), 
  .idvdebug_clki   (clk_debug), 
  .hfbankl         (cbb_clk[0]),
  .hfbanklvt       (cbb_clk[1])
  
 );
 [% END %]
//------------------------------------------------------------------------------------------------------

