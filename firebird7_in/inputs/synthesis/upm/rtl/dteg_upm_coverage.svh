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
//  Module upm_cbb_wrapper_cbb_n :  hip wrapper module
//
//------------------------------------------------------------------------------
//----------------------------------------------------------------------
// NOTE: Log history is at end of file.
//----------------------------------------------------------------------
//
//    FILENAME    :  dteg_upm_coverage.svh
//    DESIGNER    :  jeffin.jose@intel.com
//    PROJECT     :  
//    PURPOSE     : 
//    DESCRIPTION : 
//-----------------------------------------------------------------------------
  //covergroup system_mode @ (posedge dfx_upm_func_clk);
  //  cp_sys_mode_en:     coverpoint sys_mode_en;
  //endgroup
  //
  //system_mode system_mode_inst;
  `ifndef UPM_SVA_OFF
  bit tap_master_set;

  covergroup ijtag_reset_check;

    cp_powergood_reset:     coverpoint dfx_upm_fdfx_powergood;
    cp_reset:               coverpoint dfx_upm_trstb;

  endgroup: ijtag_reset_check

   //covergroup apm_cbb_program;

   //cp_apm_en_sensor: coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_en_sensor {
   //                     bins apm_en_sensor_disabled = {1'b0};
   //                     bins apm_en_sensor_enabled = {1'b1};
   //                     }

   //cp_apm_en_cal:    coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_en_cal {
   //                     bins apm_en_cal_disabled = {1'b0};
   //                     bins apm_en_cal_enabled = {1'b1};
   //                     }

   //cp_apm_en_osc:    coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_en_osc {
   //                     bins apm_en_osc_disabled = {1'b0};
   //                     bins apm_en_osc_enabled = {1'b1};
   //                     }

   //cp_apm_en_step:   coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_en_step {
   //                     bins apm_en_step_disabled = {1'b0};
   //                     bins apm_en_step_enabled = {1'b1};
   //                     }

   //cp_apm_osc_sel:   coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_osc_sel {
   //                     bins apm_osc_sel_disabled = {1'b0};
   //                     bins apm_osc_sel_enabled = {1'b1};
   //                     }

   //cp_apm_xtor_sel:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_xtor_sel[1:0] {
   //                     bins apm_xtor_sel_0 = {2'b00};
   //                     bins apm_xtor_sel_1 = {2'b01};
   //                     //bins apm_xtor_sel_2 = {2'b10};
   //                     //bins apm_xtor_sel_3 = {2'b11};
   //                     }

   //cp_apm_mux_sel:   coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_mux_sel[3:0] {
   //                     bins apm_mux_sel_8 = {4'b1000};
   //                     bins apm_mux_sel_9 = {4'b1001};

   //                     }

   //cp_apm_vdac_sel:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_vdac_sel[3:0] {
   //                     bins apm_vdac_sel[] = {[4'b0000:4'b0110]};
   //                     }

   //cp_apm_osc_out:   coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_APM.upm_cbb_wrapper_asensor.upm_cbb_wrapper_ip78xanasensor.apm_osc_out {
   //                     bins apm_osc_out_0 = {1'b0};
   //                     bins apm_osc_out_1 = {1'b1};
   //                     }

   //cp_power_off:   cross cp_apm_en_sensor,cp_apm_en_osc;

   ////cp_caliberation:  cross cp_apm_en_sensor,cp_apm_en_osc,cp_apm_en_cal,cp_apm_vdac_sel;

   ////cp_bank:  cross cp_apm_en_sensor,cp_apm_en_osc,cp_apm_en_cal,cp_apm_osc_sel,cp_apm_mux_sel;

   ////cp_mux: cross cp_apm_en_sensor,cp_apm_en_osc,cp_apm_osc_sel,cp_apm_xtor_sel;
   //endgroup

 // covergroup system_reset_check;
 //   cp_sys_reset: coverpoint dfx_upm_sys_rstn;
 // endgroup

  //covergroup mode;
  //  cp_tap_master_mode:     coverpoint tap_master_mode {
  //     bins disabled = {1'b0};
  //     bins enabled  = {1'b1};
  // }
  //endgroup

  //covergroup upm_sys_ctrl_program;

  //  cp_sys_mode:       coverpoint  upm1.upm_reg.system_mode {
  //     bins sys_mode_disabled = {1'b0};
  //     bins sys_mode_enabled  = {1'b1};
  //  }
  // 
  //  cp_sys_cbb_pwr_en: coverpoint cbb_wrapper_top.system_cbb_pwr_en[15:0] {
  //    bins sys_cbb_pwr_en[] = {[16'h0:16'h10000]};
  //  }

  //  cp_sys_cbb_addr:   coverpoint cbb_wrapper_top.system_cbb_cbb_addr[15:0] {
  //    bins sys_cbb_addr[] = {[6'b000000:6'b111111]};
  //    ignore_bins sys_cbb_addr_excluded = {6'b010111,6'b111111};
  //  }
  //  
  //  cp_sys_en: coverpoint dfx_upm_sys_en {
  //    bins sys_disabled = {1'b0};
  //    bins sys_enabled = {1'b1};
  //  }

  //  cp_clock_dcm_out: coverpoint dfx_upm_clock_dcm_out {
  //    bins clk_dcm_disabled = {1'b0};
  //    bins clk_dcm_enabled = {1'b1};
  //  }

  //  cp_sys_rstn:      coverpoint dfx_upm_sys_rstn {
  //    bins sys_rstn_disabled = {1'b0};
  //    bins sys_rstn_enabled = {1'b1};
  //  }

  //  cp_system_clock_divider: coverpoint system_clock_divider[4:0] {
  //     bins  system_divider1   = {5'b00001}; 
  //     bins  system_divider2   = {5'b00010};
  //     bins  system_divider4   = {5'b00100}; 
  //     bins  system_divider8   = {5'b01000}; 
  //     bins  system_divider16  = {5'b10000}; 
  //  }

  //  cp_system_window_mode: coverpoint system_window_mode {
  //     bins  system_auto   = {1'h0}; 
  //     bins  system_manual = {1'h1};
  //  }
  //  cp_system_counter_start: coverpoint system_counter_start {
  //     bins  system_counter_not_start = {1'h0}; 
  //     bins  system_counter_start = {1'h1};
  //  }
  //  
  //  cp_sys_clock_divider_X_cp_sys_window_mode_X_dfx_upm_sys_en: cross cp_system_clock_divider,cp_system_window_mode,cp_sys_en;

  //endgroup

  covergroup upm_ctrl_reg_program;

    cp_tap_master:     coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.IJTAG_COUNTER_CTRL_RegTnnnH.TAP_MASTER_MODE {
       bins disabled = {1'b0};
       bins enabled  = {1'b1};
    }

    cp_clock_divider:  coverpoint  upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.IJTAG_COUNTER_CTRL_RegTnnnH.CLOCK_DIVDER_SELECT[4:0] {
       bins  divider1   = {5'b00001}; 
       bins  divider2   = {5'b00010};
       bins  divider4   = {5'b00100}; 
       bins  divider8   = {5'b01000}; 
       bins  divider16  = {5'b10000}; 
    }

    cp_start_mode:     coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.IJTAG_COUNTER_CTRL_RegTnnnH.START_MODE {
       bins start_not = {1'b0};
       bins start_bit = {1'b1};
    }

    cp_stop_mode:      coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.IJTAG_COUNTER_CTRL_RegTnnnH.STOP_MODE {
       bins stop_not = {1'b0};
       bins stop_bit = {1'b1};
    }
   
    cp_debug_clk:      coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.IJTAG_COUNTER_CTRL_RegTnnnH.UPM_DEBUG_CLK_EN {
      bins debug_clk_disabled = {1'b0}; 
      bins debug_clk_enabled  = {1'b1}; 
    }

    cp_window_mode:    coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.IJTAG_COUNTER_CTRL_RegTnnnH.WINDOW_MODE {
       bins  auto   = {1'h0}; 
       bins  manual = {1'h1};
    }

   cp_cbb0_pwr: coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_A.upm_cbb_wrapper_cbb_1_top.upm_cbb_wrapper_cbb_1.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.POWER_ENABLE {
       bins cbb0_pwr_disabled = {1'h0}; 
       bins cbb0_pwr_enabled = {1'h1};
    }

  cp_cbb0_addr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_A.upm_cbb_wrapper_cbb_1_top.upm_cbb_wrapper_cbb_1.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.UPM_ADDR[5:0]  {
       bins  cbb0_addr[] = {[6'b000000:6'b111111]};
    }

   cp_clock_divider_X_cp_window_mode: cross cp_clock_divider,cp_window_mode; 

//    cp_cbb0_pwr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_1.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.POWER_ENABLE {
//       bins cbb0_pwr_disabled = {1'h0}; 
//       bins cbb0_pwr_enabled = {1'h1};
//    }
//    cp_cbb1_pwr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_o_1.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.POWER_ENABLE  {
//       bins cbb1_pwr_disabled = {1'h0}; 
//       bins cbb1_pwr_enabled = {1'h1};
//    }
//    
//    cp_cbb2_pwr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_o_2.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.POWER_ENABLE  {
//       bins cbb2_pwr_disabled = {1'h0}; 
//       bins cbb2_pwr_enabled = {1'h1};
//    }
//
//    cp_cbb3_pwr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_n.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.POWER_ENABLE  {
//       bins cbb3_pwr_disabled = {1'h0}; 
//       bins cbb3_pwr_enabled = {1'h1};
//    }
//
//  cp_cbb0_addr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_1.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.UPM_ADDR[5:0]  {
//       bins  cbb0_addr[] = {[6'b000000:6'b111111]};
//       //ignore_bins cbb0_addr_excluded = {6'b001111, 6'b111111};
//    }
//
//  cp_cbb1_addr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_o_1.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.UPM_ADDR[5:0] {
//       bins  cbb1_addr[] = {[6'b000000:6'b111111]};
//       //ignore_bins cbb1_addr_excluded = {6'b001111, 6'b111111};
//    }
//
//  cp_cbb2_addr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_o_2.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.UPM_ADDR[5:0]{
//       bins  cbb2_addr[] = {[6'b000000:6'b111111]};
//       //ignore_bins cbb2_addr_excluded = {6'b001111, 6'b111111};
//    }
//
//  cp_cbb3_addr:  coverpoint cbb_wrapper_top.UPM_CBB_CONFIGS.UPM_T_ABCD.upm_cbb_wrapper_cbb_4_top.upm_cbb_wrapper_cbb_n.upm_cbb_control.upm_cbb_reg.IJTAG_CBB_REG_RegTnnnH.UPM_ADDR[5:0]{
//       bins  cbb3_addr[] = {[6'b000000:6'b111111]};
//       //ignore_bins cbb3_addr_excluded = {6'b001111, 6'b111111};
//    }
//   
//   cp_cbb0_pwr_X_cp_cbb1_pwr_cp_cbb2_pwr_X_cp_cbb3_pwr : cross cp_cbb0_pwr,cp_cbb1_pwr,cp_cbb2_pwr,cp_cbb3_pwr;
//   
   cp_clock_divider_X_cp_cbb0_addr: cross cp_clock_divider,cp_cbb0_addr;
//   
//   cp_clock_divider_X_cp_cbb1_addr: cross cp_clock_divider,cp_cbb1_addr;
//   
//   cp_clock_divider_X_cp_cbb2_addr: cross cp_clock_divider,cp_cbb2_addr;
//   
//   cp_clock_divider_X_cp_cbb3_addr: cross cp_clock_divider,cp_cbb3_addr;
//
   cp_window_mode_X_cp_cbb0_addr: cross cp_window_mode,cp_cbb0_addr;
//   
//   cp_window_mode_X_cp_cbb1_addr: cross cp_window_mode,cp_cbb1_addr;
//   
//   cp_window_mode_X_cp_cbb2_addr: cross cp_window_mode,cp_cbb2_addr;
//   
//   cp_window_mode_X_cp_cbb3_addr: cross cp_window_mode,cp_cbb3_addr;
//
//   //cp_debug_clk_tap_master_override: cross cp_debug_clk,cp_tap_master;
//        
   cp_clock_divider_X_cp_window_mode_X_cp_tap_master: cross cp_clock_divider,cp_window_mode,cp_tap_master;

   endgroup: upm_ctrl_reg_program
   

   covergroup upm_status_mon;
                                
    cp_fsm_state:    coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.FSM_STATE[4:0] {
         bins fsm_state_0 = {5'b00000};
         bins fsm_state_1 = {5'b00001};
         bins fsm_state_2 = {5'b00010};
         bins fsm_state_4 = {5'b00100};
         bins fsm_state_8 = {5'b01000};
      }

    cp_counter_status:    coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.COUNTER_STATUS {
         bins low  = {1'h0};
         bins high = {1'h1};
      }

    cp_window_counter_active:    coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.WINDOW_COUNTER_ACTIVE {
         bins low  = {1'h0};
         bins high = {1'h1};
      }

    cp_fsm_enable:    coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.FSM_ENABLE {
         bins low  = {1'h0};
         bins high = {1'h1};
     }
    
    cp_cbb_cfg_error:    coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.CBB_CFG_ERROR{
         bins low   = {1'h0};
         bins high  = {1'h1};
     }
   cp_cntr_current_value: coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.COUNTER_CURRENT_VALUE[15:0]{
       wildcard bins  bit_0 = {16'b????_????_????_???1};
       wildcard bins  bit_1 = {16'b????_????_????_??1?};
       wildcard bins  bit_2 = {16'b????_????_????_?1??};
       wildcard bins  bit_3 = {16'b????_????_????_1???};
       wildcard bins  bit_4 = {16'b????_????_???1_????};
       wildcard bins  bit_5 = {16'b????_????_??1?_????};
       wildcard bins  bit_6 = {16'b????_????_?1??_????};
       wildcard bins  bit_7 = {16'b????_????_1???_????};
       wildcard bins  bit_8 = {16'b????_???1_????_????};
       wildcard bins  bit_9 = {16'b????_??1?_????_????};
       wildcard bins  bit_10 = {16'b????_?1??_????_????};
       wildcard bins  bit_11 = {16'b????_1???_????_????};
       wildcard bins  bit_12 = {16'b???1_????_????_????};
       wildcard bins  bit_13 = {16'b??1?_????_????_????};
       wildcard bins  bit_14 = {16'b?1??_????_????_????};
       ignore_bins  bit_15 = {16'b1???_????_????_????};

     }
      
   endgroup: upm_status_mon
   
   covergroup upm_result_mon;
       cp_overflow:   coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_COUNTER_RESULT_RegTnnnH.OVERFLOW0 {
       bins overflow_not_set = {1'h0};
       bins overflow_set = {1'h1};
       }
    
    cp_counter_value:   coverpoint upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_COUNTER_RESULT_RegTnnnH.COUNTER_VALUE0[19:0] {
       wildcard bins  bit_0 = {20'b????_????_????_????_???1};
       wildcard bins  bit_1 = {20'b????_????_????_????_??1?};
       wildcard bins  bit_2 = {20'b????_????_????_????_?1??};
       wildcard bins  bit_3 = {20'b????_????_????_????_1???};
       wildcard bins  bit_4 = {20'b????_????_????_???1_????};
       wildcard bins  bit_5 = {20'b????_????_????_??1?_????};
       wildcard bins  bit_6 = {20'b????_????_????_?1??_????};
       wildcard bins  bit_7 = {20'b????_????_????_1???_????};
       wildcard bins  bit_8 = {20'b????_????_???1_????_????};
       wildcard bins  bit_9 = {20'b????_????_??1?_????_????};
       wildcard bins  bit_10 = {20'b????_????_?1??_????_????};
       wildcard bins  bit_11 = {20'b????_????_1???_????_????};
       wildcard bins  bit_12 = {20'b????_???1_????_????_????};
       wildcard bins  bit_13 = {20'b????_??1?_????_????_????};
       wildcard bins  bit_14 = {20'b????_?1??_????_????_????};
       wildcard bins  bit_15 = {20'b????_1???_????_????_????};
       wildcard bins  bit_16 = {20'b???1_????_????_????_????};
       wildcard bins  bit_17 = {20'b??1?_????_????_????_????};
       wildcard bins  bit_18 = {20'b?1??_????_????_????_????};
       wildcard bins  bit_19 = {20'b1???_????_????_????_????};
             }

    //cp_overflow_0_X_cp_overflow_1: cross cp_overflow_0,cp_overflow_1;

   endgroup: upm_result_mon
  
  ijtag_reset_check ijtag_reset_check_inst;
  //system_reset_check system_reset_check_inst;
  //mode mode_inst;
  upm_ctrl_reg_program upm_ctrl_reg_program_inst;
  upm_status_mon upm_status_mon_inst;
  upm_result_mon upm_result_mon_inst;
  //apm_cbb_program apm_cbb_program_inst;
  //upm_sys_ctrl_program upm_sys_ctrl_program_inst;
  
  initial begin
    ijtag_reset_check_inst = new();
    //system_reset_check_inst =new ();
    //mode_inst = new();
    upm_ctrl_reg_program_inst = new();
    upm_status_mon_inst =new();
    upm_result_mon_inst = new();
    //apm_cbb_program_inst = new();
    //upm_sys_ctrl_program_inst = new();
  end

  always @(posedge dfx_upm_tck) begin
      ijtag_reset_check_inst.sample();
      //mode_inst.sample();
      upm_ctrl_reg_program_inst.sample();
      upm_status_mon_inst.sample();
      upm_result_mon_inst.sample();
      //apm_cbb_program_inst.sample();
  end

 // always @(posedge dfx_upm_func_clk) begin
     
  //   upm_sys_ctrl_program_inst.sample();
   //  system_reset_check_inst.sample();

//  end

  //Assertions
  property CHECK_COUNTER_STATUS;
       @ (posedge dfx_upm_tck) disable iff(dfx_upm_fdfx_powergood==0 || upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.COUNTER_STATUS !== 1'bx )
       ($fell(upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_UPM_STATUS_RegTnnnH.COUNTER_STATUS)) |-> $stable(upm1.UPM_REGS.UPM_NON_THERMAL.u_upm_reg.captureIJTAG_COUNTER_RESULT_RegTnnnH.COUNTER_VALUE0[19:0]) ; 
   endproperty
   // cannot give assertion always,add only in cover property
   ASSERT_COUNTER_STATUS: assert property (CHECK_COUNTER_STATUS)  $display (" CHECK_COUNTER_STATUS assertion hit at %0t ",$realtime);
       else
       $error ("DFx_UPM check failed: CHECK_COUNTER_STATUS assertion failed at %0t ",$realtime);
   COVER_COUNTER_STATUS: cover property (CHECK_COUNTER_STATUS)  $display (" CHECK_COUNTER_STATUS cover property hit at %0t ",$realtime);

`endif
