#--------------------------------------------------------------------------
#
#  Unpublished work. Copyright 2022 Siemens
#
#  This material contains trade secrets or otherwise confidential 
#  information owned by Siemens Industry Software Inc. or its affiliates 
#  (collectively, SISW), or its licensors. Access to and use of this 
#  information is strictly limited as set forth in the Customer's 
#  applicable agreements with SISW.
#
#--------------------------------------------------------------------------
#  File created by: Tessent Shell
#          Version: 2022.4
#       Created on: Tue Oct 24 19:30:12 PDT 2023
#--------------------------------------------------------------------------

#
#  Procs table of content:
#
#    tessent_set_default_variables
#    tessent_create_functional_clocks
#    tessent_set_ijtag_non_modal
#    tessent_set_non_modal
#    set_ijtag_retargeting_options
#    tessent_set_memory_bisr_non_modal
#    tessent_set_memory_bist_non_modal
#    tessent_set_memory_bist_modal
#    tessent_set_ltest_set_timing_variables_default
#    tessent_set_ltest_add_ssh_occ_dictionaries
#    tessent_set_ltest_ssn
#    tessent_set_ltest_create_clocks
#    tessent_set_ltest_non_modal
#    tessent_set_ltest_occ
#    tessent_set_ltest_modal_shift
#    tessent_set_ltest_modal_edt_fast_capture
#    tessent_set_ltest_modal_edt_slow_capture
#    tessent_set_ltest_modal_edt_shift
#    tessent_set_ltest_modal_bypass_shift
#    tessent_set_ltest_disable
#    tessent_set_ltest_pb_external_mode
#    tessent_set_ltest_core_external_mode
#    tessent_set_ltest_ssh_tck_timing
#    tessent_set_ltest_ssh
#    set_load_unload_timing_options
#    tessent_set_ltest_set_pin_delays
#    tessent_set_ltest_relax_xdomain_capture_paths
#    tessent_get_cts_skew_groups_dict
#    tessent_firebird7_in_set_dft_signals
#    tessent_get_cells
#    tessent_get_flops
#    tessent_get_pins
#    tessent_get_ports
#    tessent_map_to_verilog
#    tessent_remap_vhdl_path_list
#    tessent_remove_clock_groups
#    tessent_get_clock_source
#    tessent_set_clock_sense_stop_propagation
#    tessent_kill_functional_paths
#    tessent_get_mem_cells
#    tessent_get_clocks
#    tessent_get_preserve_instances
#    tessent_get_size_only_instances
#    tessent_get_optimize_instances
#
proc tessent_set_default_variables {} {
  global time_unit_multiplier tessent_tck_period tessent_tck_clocks_list tessent_clock_mapping tessent_input_delay_percentage tessent_output_delay_percentage tessent_tck_clocks_group_created tessent_extra_control_setup_hold_cycles tessent_extra_tms_setup_hold_cycles BisrCKPeriod bisr_si_delay_percentage bisr_so_delay_percentage bisr_se_input_delay_percentage bisr_control_input_delay_percentage tessent_mbisr_create_generated_clocks tessent_mbist_create_bap_tck_generated_clock mbist_info tessent_regQ tessent_edt_mapping tessent_ssh_mapping tessent_timing_options tessent_hierarchy_separator tessent_path_cache tessent_timing_tool tessent_test_inst_regexp tessent_unmapped_functional_clocks
  #
  # This proc defines the default value of the variables used in instrument timing constraints
  #

  # Time units assumed ns
  set time_unit_multiplier 1.0

  set tessent_tck_period 100.0

  set tessent_tck_clocks_list [list tessent_tck]

  # Override these array elements to map to your clock names if you define your own clocks
  array set tessent_clock_mapping {
    tessent_bisr_clock_bisr_clk tessent_bisr_clock_bisr_clk
    tessent_tck tessent_tck
    clk_bbm clk_bbm
  }

  set tessent_input_delay_percentage 0.25

  set tessent_output_delay_percentage 0.25

  set tessent_tck_clocks_group_created 0

  set tessent_extra_control_setup_hold_cycles 0

  set tessent_extra_tms_setup_hold_cycles 0

  set BisrCKPeriod 100

  set bisr_si_delay_percentage 0.25

  set bisr_so_delay_percentage 0.25

  set bisr_se_input_delay_percentage 0.25

  set bisr_control_input_delay_percentage 0.25

  set tessent_mbisr_create_generated_clocks 1

  # You can set this variable to 0 if you do not want to create a generated clock inside the MemoryBist BAP instances.
  #  The drawback of doing this will be that clock tree synthesis will have to balance TCK from the BAP to the controllers and interfaces.
  set tessent_mbist_create_bap_tck_generated_clock 1

  # Use this mapping to find which unique identifier maps to which controller or interface instance.
  set mbist_info {
    bap1 {
      shift_en_port ijtag_se
      inst ph0/firebird7_in_gate1_tessent_mbist_bap_inst
      tck_type port
      tck ijtag_tck
      to_bist toBist_reg
      from_bist fromBist_retime_reg
    }
    mbist1 {
      inst ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst
      bap_id bap1
      bist_port 0
      async_interface_present false
    }
    mbist1_m1 {inst ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m1_memory {inst ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i}
    mbist1_m2 {inst ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m2_memory {inst ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i}
    mbist1_m3 {inst ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m3_memory {inst ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i}
    mbist1_m4 {inst ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m4_memory {inst ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i}
    mbist1_m5 {inst ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m5_memory {inst ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i}
    mbist1_m6 {inst ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m6_memory {inst ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i}
    mbist1_m7 {inst ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m7_memory {inst ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i}
    mbist1_m8 {inst ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m8_memory {inst ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i}
    mbist1_m9 {inst ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m9_memory {inst ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i}
    mbist1_m10 {inst ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m10_memory {inst ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i}
    mbist1_m11 {inst ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m11_memory {inst ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i}
    mbist1_m12 {inst ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m12_memory {inst ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i}
    mbist1_m13 {inst ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m13_memory {inst ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i}
    mbist1_m14 {inst ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m14_memory {inst ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i}
    mbist1_m15 {inst ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m15_memory {inst ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i}
    mbist1_m16 {inst ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m16_memory {inst ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i}
    mbist1_m17 {inst ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m17_memory {inst ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i}
    mbist1_m18 {inst ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m18_memory {inst ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i}
    mbist1_m19 {inst ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m19_memory {inst ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i}
    mbist1_m20 {inst ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m20_memory {inst ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i}
    mbist1_m21 {inst ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m21_memory {inst ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i}
    mbist1_m22 {inst ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m22_memory {inst ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i}
    mbist1_m23 {inst ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m23_memory {inst ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i}
    mbist1_m24 {inst ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m24_memory {inst ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i}
    mbist1_m25 {inst ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m25_memory {inst ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i}
    mbist1_m26 {inst ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m26_memory {inst ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i}
    mbist1_m27 {inst ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst}
    mbist1_m27_memory {inst ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i}
    mbist1_m28 {inst ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst}
    mbist1_m28_memory {inst ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i}
    mbist1_m29 {inst ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst}
    mbist1_m29_memory {inst ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i}
    mbist1_m30 {inst ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst}
    mbist1_m30_memory {inst ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i}
    mbist1_m31 {inst ph0/i/p/gb1_b/m0/mem0_i_interface_inst}
    mbist1_m31_memory {inst ph0/i/p/gb1_b/m0/mem0_i}
    mbist1_m32 {inst ph0/i/p/gb1_b/m1/mem0_i_interface_inst}
    mbist1_m32_memory {inst ph0/i/p/gb1_b/m1/mem0_i}
    mbist1_m33 {inst ph0/i/p/gs1_s/m0/mem0_i_interface_inst}
    mbist1_m33_memory {inst ph0/i/p/gs1_s/m0/mem0_i}
    mbist1_m34 {inst ph0/i/p/gs1_s/m1/mem0_i_interface_inst}
    mbist1_m34_memory {inst ph0/i/p/gs1_s/m1/mem0_i}
    mbist1_m35 {inst ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m35_memory {inst ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i}
    mbist1_m36 {inst ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m36_memory {inst ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i}
    mbist1_m37 {inst ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m37_memory {inst ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i}
    mbist1_m38 {inst ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m38_memory {inst ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i}
    mbist1_m39 {inst ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m39_memory {inst ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i}
    mbist1_m40 {inst ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst}
    mbist1_m40_memory {inst ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i}
  }

  set tessent_regQ Q

  # Use this mapping to find which unique identifier maps to which EDT controller instance.
  array set tessent_edt_mapping {
    edt_inst0 firebird7_in_gate2_tessent_edt_extest_edt_inst
    edt_inst1 firebird7_in_gate2_tessent_edt_intest_edt_inst
  }

  # List of SSN Host instances.
  array set tessent_ssh_mapping {
    ssh0 firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst
  }

 # Test procedure timing specifications:
  tessent_set_ltest_set_timing_variables_default


  set tessent_hierarchy_separator /

  array set tessent_path_cache {
  }

  switch -glob [file tail [info nameofexecutable]] {
    common_shell_exec {set tessent_timing_tool dc_shell}
    oasys*            {set tessent_timing_tool oasys}
    rc                {set tessent_timing_tool encounter}
    genus             {set tessent_timing_tool genus}
    default           {set tessent_timing_tool pt_shell}
  }
  

  set tessent_test_inst_regexp {(.*_tessent_mbisr_.*|.*_bisr_inst.*|.*_tessent_mbist_.*|.*_interface_inst.*|.*_tessent_occ_.*)}

  # Default set of unmapped functional clocks. To be mapped with tessent_clock_mapping array for real clock names.
  # Populated by tessent_create_functional_clocks.
  set tessent_unmapped_functional_clocks [list ]

}
proc tessent_create_functional_clocks {} {
global time_unit_multiplier tessent_clock_mapping tessent_unmapped_functional_clocks
  create_clock [tessent_get_ports [list {clk}]]  \
    -period [expr 783.0*$time_unit_multiplier] \
    -name $tessent_clock_mapping(clk_bbm) -add


  set tessent_unmapped_functional_clocks [lsort -unique [concat $tessent_unmapped_functional_clocks [list clk_bbm]]]
}
proc tessent_set_ijtag_non_modal {} {  
  
  global time_unit_multiplier tessent_tck_period tessent_tck_clocks_list tessent_tck_clocks_group_created
  global tessent_clock_mapping tessent_input_delay tessent_input_delay_percentage tessent_output_delay tessent_output_delay_percentage
  global tessent_extra_control_setup_hold_cycles
  global tessent_extra_tms_setup_hold_cycles
  
  if {[info exists tessent_input_delay]} {
    set local_input_delay $tessent_input_delay
    set local_controls_input_delay $tessent_input_delay
    set local_tms_input_delay $tessent_input_delay
  } else {
    set local_input_delay [expr {$tessent_input_delay_percentage*$tessent_tck_period*$time_unit_multiplier}]
    set local_controls_input_delay [expr {$tessent_input_delay_percentage*(1+$tessent_extra_control_setup_hold_cycles)*$tessent_tck_period*$time_unit_multiplier}]
    set local_tms_input_delay [expr {$tessent_input_delay_percentage*(1+$tessent_extra_tms_setup_hold_cycles)*$tessent_tck_period*$time_unit_multiplier}]
  }
  if {[info exists tessent_output_delay]} {
    set local_output_delay $tessent_output_delay
  } else {
    set local_output_delay [expr {$tessent_output_delay_percentage*$tessent_tck_period*$time_unit_multiplier}]
  }
    
  if {[sizeof_collection [tessent_get_clocks $tessent_clock_mapping(tessent_tck) -quiet]] == 0} {
    create_clock [tessent_get_ports [list {ijtag_tck}]]  \
      -period [expr $tessent_tck_period*$time_unit_multiplier] \
      -name $tessent_clock_mapping(tessent_tck) -add
  
  }
  set mapped_tck_clock_list [list]
  foreach tck_clock $tessent_tck_clocks_list {
    lappend mapped_tck_clock_list $tessent_clock_mapping($tck_clock)
  }
  if {[sizeof_collection [tessent_get_clocks $mapped_tck_clock_list -quiet]] > 0} {
    tessent_remove_clock_groups -asynchronous tessent_tck_clock_group
    set_clock_groups -asynchronous -group [tessent_get_clocks $mapped_tck_clock_list] -name tessent_tck_clock_group
    set tessent_tck_clocks_group_created 1
  }
  set_false_path -from [tessent_get_ports [list {ijtag_reset}]] 
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_ce}]  -clock_fall
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_se}]  -clock_fall
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_ue}] 
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_sel}]  -clock_fall
  set_input_delay $local_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_si}]  -clock_fall
  set_output_delay $local_output_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_so}] 
  set_false_path -from [tessent_get_ports [list {secure_red}]] 
  set_false_path -from [tessent_get_ports [list {secure_orange}]] 
  set_false_path -from [tessent_get_ports [list {secure_insysbist}]] 
  set_false_path -from [tessent_get_ports [list {secure_green}]] 
  
  set scan_resource_sib_list {
    firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_spare_green_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_spare_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_spare_insysbist_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_spare_orange_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_spare_red_inst/to_enable_int*
    firebird7_in_gate1_tessent_sib_sti_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_edt_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_extest_edt_scan_bi_sol_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_intest_edt_scan_bi_sol_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_occ_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_sri_ctrl_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_sri_inst/to_enable_int*
    firebird7_in_gate2_tessent_sib_ssn_inst/to_enable_int*
  }
  # Relaxing IJTAG select signals
  set_multicycle_path -setup [expr 2 + (3 * $tessent_extra_control_setup_hold_cycles)] \
      -from [tessent_get_cells $scan_resource_sib_list] 
  set_multicycle_path -hold [expr 2 + (5 * $tessent_extra_control_setup_hold_cycles)] \
      -from [tessent_get_cells $scan_resource_sib_list] 
  if {$tessent_extra_control_setup_hold_cycles > 0} {
    # Relaxing capture/shift/update timing with extra_control_setup_hold_cycles value
    set_multicycle_path -setup [expr 1 + $tessent_extra_control_setup_hold_cycles] \
        -from [tessent_get_ports [concat  \
            {bisr_shift_en} \
            {ijtag_se} \
            {ijtag_ce} \
            {ijtag_ue}]] 
    set_multicycle_path -hold [expr 2 * $tessent_extra_control_setup_hold_cycles] \
        -from [tessent_get_ports [concat  \
            {bisr_shift_en} \
            {ijtag_se} \
            {ijtag_ce} \
            {ijtag_ue}]] 
  }
  # Relaxing select timing with extra_control_setup_hold_cycles value, select can already be relaxed and its setup is additionally relaxed by stretching around capture_en rising edge
  set_multicycle_path -setup [expr 2 + (3 * $tessent_extra_control_setup_hold_cycles)] \
      -from [tessent_get_ports [list {ijtag_sel}]] 
  set_multicycle_path -hold [expr 2 + (5 * $tessent_extra_control_setup_hold_cycles)] \
      -from [tessent_get_ports [list {ijtag_sel}]] 
  
}
proc tessent_set_non_modal {{logictest "on"}} {
  tessent_set_ijtag_non_modal
  tessent_set_memory_bisr_non_modal
  tessent_set_memory_bist_non_modal
  tessent_set_ltest_non_modal $logictest
}
proc set_ijtag_retargeting_options {args} {  
  
    # Issue the set_ijtag_retargeting_options command from within your master timing 
    # script in order establish the settings requirements for pattern generation.
    # Tessent Shell supports the same command with the same syntax, allowing you
    # to consistently specify these settings across your simulations, synthesis 
    # and STA runs. You may want to place the calls to this command into a file
    # and source it from Tessent Shell and your synthesis/timing tools.
    array set tessent_timing_option2var_mapping {
      -tck_period tessent_tck_period
      -extra_control_setup_hold_cycles tessent_extra_control_setup_hold_cycles
      -extra_tms_setup_hold_cycles tessent_extra_tms_setup_hold_cycles
    }
    foreach key [array names tessent_timing_option2var_mapping] {
      global [subst $tessent_timing_option2var_mapping($key)]
    }
    # Parse options, assuming default value from tessent_set_default_variables.
    foreach {key value} $args {
      if {![info exists tessent_timing_option2var_mapping($key)]} {
        set warning_list [list]
        lappend warning_list "Tessent SDC Warning: The option '$key' is not supported by the SDC version of set_ijtag_retargeting_options."
        lappend warning_list "                     Supported arguments are: [join [lsort [array get tessent_timing_option2var_mapping]]{, }]."
        puts [join $warning_list "\n"]
        continue
      }
      if {$key eq "-tck_period"} {
        #get only the number from -tck_period
        set value [regexp -inline {^[0-9]+(?:.[0-9]+)?} $value]
      }
      set [subst $tessent_timing_option2var_mapping($key)] $value
    }
  
}
proc tessent_set_memory_bisr_non_modal {} {
  global time_unit_multiplier tessent_tck_period tessent_tck_clocks_list tessent_clock_mapping tessent_input_delay_percentage tessent_output_delay_percentage tessent_tck_clocks_group_created tessent_extra_control_setup_hold_cycles tessent_extra_tms_setup_hold_cycles BisrCKPeriod bisr_si_delay_percentage bisr_so_delay_percentage bisr_se_input_delay_percentage bisr_control_input_delay_percentage tessent_mbisr_create_generated_clocks tessent_mbist_create_bap_tck_generated_clock mbist_info tessent_regQ tessent_edt_mapping tessent_ssh_mapping tessent_timing_options tessent_hierarchy_separator tessent_path_cache tessent_timing_tool tessent_test_inst_regexp tessent_unmapped_functional_clocks  
  
  set mapped_tck_clocks_list [list]
  foreach tck_clock $tessent_tck_clocks_list {
    lappend mapped_tck_clocks_list $tessent_clock_mapping($tck_clock)
  }
  
  set mapped_bisr_clock_list [list]
  foreach {clock_label mapped_clock} [array get tessent_clock_mapping tessent_bisr_clock*] {
    lappend mapped_bisr_clock_list $mapped_clock
  }
  create_clock [tessent_get_ports [list {bisr_clk}]]  \
    -period [expr $BisrCKPeriod*$time_unit_multiplier] \
    -name $tessent_clock_mapping(tessent_bisr_clock_bisr_clk) -add
  
  
  
  set bisrClocks [tessent_get_clocks $mapped_bisr_clock_list]
  puts "# BISR Clocks : [join [get_object_name $bisrClocks] ,]"
  
  set_clock_groups -asynchronous -group ${bisrClocks}
  
  set_input_delay [expr {${bisr_si_delay_percentage} * ${BisrCKPeriod}}] -clock $tessent_clock_mapping(tessent_bisr_clock_bisr_clk) -clock_fall [tessent_get_ports [list {bisr_si}]]
  set_output_delay [expr {${bisr_so_delay_percentage} * ${BisrCKPeriod}}] -clock $tessent_clock_mapping(tessent_bisr_clock_bisr_clk) [tessent_get_ports [list {bisr_so}]]
  set_input_delay [expr {${bisr_se_input_delay_percentage} * ${BisrCKPeriod}}] -clock $tessent_clock_mapping(tessent_bisr_clock_bisr_clk) -clock_fall [tessent_get_ports [list {bisr_shift_en}]]
  set_input_delay [expr {${bisr_control_input_delay_percentage} * ${BisrCKPeriod}}] -clock $tessent_clock_mapping(tessent_bisr_clock_bisr_clk) -clock_fall [tessent_get_ports [list {bisr_reset}]]
  
}
proc tessent_set_memory_bist_non_modal {} {  
  
  global mbist_info tessent_clock_mapping tessent_apply_mbist_mux_constraints tessent_mbist_create_bap_tck_generated_clock tessent_tck_clocks_list tessent_tck_clocks_group_created 
  
    set bap1_interfaces_tck_name bap1_interfaces_tck
    set bap1_tck_name bap1_tck
  if {$tessent_mbist_create_bap_tck_generated_clock} {
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_C_TCK/clkout]  \
      -name $bap1_tck_name \
      -source [tessent_get_ports [list {ijtag_tck}]]  \
      -add -master_clock $tessent_clock_mapping(tessent_tck) \
      -divide_by 1 \
      -combinational
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_I_TCK/clkout]  \
      -name $bap1_interfaces_tck_name \
      -source [tessent_get_ports [list {ijtag_tck}]]  \
      -add -master_clock $tessent_clock_mapping(tessent_tck) \
      -divide_by 1 \
      -combinational
    set bap1_tck_clocks [tessent_get_clocks [list $bap1_interfaces_tck_name $bap1_tck_name]]
    # Update the TCK asynchronous clock group
    set tessent_clock_mapping(bap1_tck) bap1_tck
    lappend tessent_tck_clocks_list bap1_tck
    set tessent_clock_mapping(bap1_interfaces_tck) bap1_interfaces_tck
    lappend tessent_tck_clocks_list bap1_interfaces_tck
    set mapped_tck_clock_list [list]
    foreach tck_clock $tessent_tck_clocks_list {
      lappend mapped_tck_clock_list $tessent_clock_mapping($tck_clock)
    }
    tessent_remove_clock_groups -asynchronous tessent_tck_clock_group
    set_clock_groups -asynchronous -name tessent_tck_clock_group -group [tessent_get_clocks $mapped_tck_clock_list]
    set tessent_tck_clocks_group_created 1
    set ts_bisr_clock_names [array names tessent_clock_mapping tessent_bisr_clock*]
    foreach ts_bisr_clock_name [lsort $ts_bisr_clock_names] {
      lappend ts_bisr_clock_names_mapped $tessent_clock_mapping($ts_bisr_clock_name)
    }
    set bisr_chain_clocks [tessent_get_clocks $ts_bisr_clock_names_mapped]
    # TCK from the BAP must only constrain the shift path, block false same-edge paths, they are constrained with functional clock
    set_false_path -rise_from [tessent_get_clocks $bap1_tck_name] -rise_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -rise_from [tessent_get_clocks $bap1_interfaces_tck_name] -rise_to [tessent_get_clocks $bap1_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_tck_name] -fall_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_interfaces_tck_name] -fall_to [tessent_get_clocks $bap1_tck_name]
    set_clock_groups -asynchronous -name bap1_tessent_bira_bisr_tck_group -group $bap1_tck_clocks -group $bisr_chain_clocks
  } else {
    set bap1_tck_clocks [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]
    set all_mbist_clock_pins [all_fanout -flat -endpoints -from [tessent_get_pins [list [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_C_TCK/clkout [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_I_TCK/clkout]]]
    set all_mbisr_clock_pins [all_fanout -flat -endpoints -from [tessent_get_ports [list "bisr_clk"]]]
    set_false_path -through $all_mbist_clock_pins -to [get_cells -of_objects $all_mbisr_clock_pins -filter {is_sequential==true && is_hierarchical==false}]
    set_false_path -through $all_mbisr_clock_pins -to [get_cells -of_objects $all_mbist_clock_pins -filter {is_sequential==true && is_hierarchical==false}]
  }
  
  # BIST_EN, BIST_HOLD are MCP by protocol
  set_multicycle_path -setup 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_bistEn_0/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_HOLD/o]] 
  set_multicycle_path -hold 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_bistEn_0/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_HOLD/o]] 
  # TDR bits are MCP by protocol to controller
  set_multicycle_path -setup 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_2_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ASYNC_RESET/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_TCK_MODE/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_ENABLE_MEM_RESET_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_REDUCED_ADDRESS_COUNT_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SELECT_TEST_DATA_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_MEM_ARRAY_DUMP_MODE_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIRA_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_DIAG_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_PRESERVE_FUSE_REGISTER_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHECK_REPAIR_NEEDED_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_INCLUDE_MEM_RESULTS_REG_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHAIN_BYPASS_EN_buf/o]] 
  set_multicycle_path -hold 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_2_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ASYNC_RESET/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_TCK_MODE/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_ENABLE_MEM_RESET_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_REDUCED_ADDRESS_COUNT_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SELECT_TEST_DATA_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_MEM_ARRAY_DUMP_MODE_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIRA_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_DIAG_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_PRESERVE_FUSE_REGISTER_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHECK_REPAIR_NEEDED_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_INCLUDE_MEM_RESULTS_REG_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHAIN_BYPASS_EN_buf/o]] 
  
  set bap1_go_buffers_l [list]
  lappend bap1_go_buffers_l [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_MBISTPG_GO/o
  set bap1_done_buffers_l [list]
  lappend bap1_done_buffers_l [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_MBISTPG_DONE/o
  
  # Same edge (p->p) timing paths through these controller buffers are false path by protocol
  set_false_path -rise_from $bap1_tck_clocks -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_done_buffers_l]]
  # Opposite edge (n->p) timing paths through these controller buffers are MCP 2 by protocol
  set_multicycle_path 2 -setup -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l]]
  set_multicycle_path 1 -hold  -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l]]
  
  ## Constraints for memory_bist controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?4?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?4?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?1?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?8?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?1?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?8?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?8?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?8?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/JCNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_DELAYCOUNTER_ENDCOUNT_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_LOOPCOUNTMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER4/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/JCNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_DELAYCOUNTER_ENDCOUNT_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_LOOPCOUNTMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER4/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0?]] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -setup 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_4/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_5/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_6/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_7/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_2/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -hold 1 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_4/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_5/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_6/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_7/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_2/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT*]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT*]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIST_EN_RETIME2*] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_ON/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_AND_DEFAULT_MODE/o]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIST_EN_RETIME2*] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_ON/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_AND_DEFAULT_MODE/o]] 
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_CLK_INT/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gb1_b/m0/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gb1_b/m1/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gs1_s/m0/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gs1_s/m1/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  # Stop TCK propagation on functional path.
  set tck_injection_pins [tessent_get_pins {tessent_persistent_cell_tck_mux_*/clk1} -hierarchical -silent]
  if {[sizeof_collection $tck_injection_pins] > 0} {
    set_disable_timing $tck_injection_pins
  }
  
}
proc tessent_set_memory_bist_modal {} {  
  
  global mbist_info tessent_clock_mapping tessent_apply_mbist_mux_constraints tessent_mbist_create_bap_tck_generated_clock tessent_tck_clocks_list tessent_tck_clocks_group_created 
  
  # Functional top level pins aren't used here.
  set_false_path -from [remove_from_collection [all_inputs] [tessent_get_ports [list bisr_clk bisr_shift_en bisr_si clk ijtag_ce ijtag_se ijtag_si ijtag_tck ijtag_ue]] ] 
  set_false_path -to [remove_from_collection [all_outputs] [tessent_get_ports [list bisr_so ijtag_so]] ] 
  # Select the test side of dft control points and clock muxes.
  set_case_analysis 1 [tessent_get_pins [list {firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/all_test}]] 
  # Disable scan mode control.
  set_case_analysis 0 [tessent_get_pins [list {firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/ltest_en}]] 
    set bap1_interfaces_tck_name bap1_interfaces_tck
    set bap1_tck_name bap1_tck
  if {$tessent_mbist_create_bap_tck_generated_clock} {
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_C_TCK/clkout]  \
      -name $bap1_tck_name \
      -source [tessent_get_ports [list {ijtag_tck}]]  \
      -add -master_clock $tessent_clock_mapping(tessent_tck) \
      -divide_by 1 \
      -combinational
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_I_TCK/clkout]  \
      -name $bap1_interfaces_tck_name \
      -source [tessent_get_ports [list {ijtag_tck}]]  \
      -add -master_clock $tessent_clock_mapping(tessent_tck) \
      -divide_by 1 \
      -combinational
    set bap1_tck_clocks [tessent_get_clocks [list $bap1_interfaces_tck_name $bap1_tck_name]]
    # Update the TCK asynchronous clock group
    set tessent_clock_mapping(bap1_tck) bap1_tck
    lappend tessent_tck_clocks_list bap1_tck
    set tessent_clock_mapping(bap1_interfaces_tck) bap1_interfaces_tck
    lappend tessent_tck_clocks_list bap1_interfaces_tck
    set mapped_tck_clock_list [list]
    foreach tck_clock $tessent_tck_clocks_list {
      lappend mapped_tck_clock_list $tessent_clock_mapping($tck_clock)
    }
    tessent_remove_clock_groups -asynchronous tessent_tck_clock_group
    set_clock_groups -asynchronous -name tessent_tck_clock_group -group [tessent_get_clocks $mapped_tck_clock_list]
    set tessent_tck_clocks_group_created 1
    set ts_bisr_clock_names [array names tessent_clock_mapping tessent_bisr_clock*]
    foreach ts_bisr_clock_name [lsort $ts_bisr_clock_names] {
      lappend ts_bisr_clock_names_mapped $tessent_clock_mapping($ts_bisr_clock_name)
    }
    set bisr_chain_clocks [tessent_get_clocks $ts_bisr_clock_names_mapped]
    # TCK from the BAP must only constrain the shift path, block false same-edge paths, they are constrained with functional clock
    set_false_path -rise_from [tessent_get_clocks $bap1_tck_name] -rise_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -rise_from [tessent_get_clocks $bap1_interfaces_tck_name] -rise_to [tessent_get_clocks $bap1_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_tck_name] -fall_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_interfaces_tck_name] -fall_to [tessent_get_clocks $bap1_tck_name]
    set_clock_groups -asynchronous -name bap1_tessent_bira_bisr_tck_group -group $bap1_tck_clocks -group $bisr_chain_clocks
  } else {
    set bap1_tck_clocks [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]
    set all_mbist_clock_pins [all_fanout -flat -endpoints -from [tessent_get_pins [list [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_C_TCK/clkout [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_I_TCK/clkout]]]
    set all_mbisr_clock_pins [all_fanout -flat -endpoints -from [tessent_get_ports [list "bisr_clk"]]]
    set_false_path -through $all_mbist_clock_pins -to [get_cells -of_objects $all_mbisr_clock_pins -filter {is_sequential==true && is_hierarchical==false}]
    set_false_path -through $all_mbisr_clock_pins -to [get_cells -of_objects $all_mbist_clock_pins -filter {is_sequential==true && is_hierarchical==false}]
  }
  
  # BIST_EN, BIST_HOLD are MCP by protocol
  set_multicycle_path -setup 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_bistEn_0/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_HOLD/o]] 
  set_multicycle_path -hold 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_bistEn_0/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_HOLD/o]] 
  # TDR bits are MCP by protocol to controller
  set_multicycle_path -setup 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_2_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ASYNC_RESET/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_TCK_MODE/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_ENABLE_MEM_RESET_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_REDUCED_ADDRESS_COUNT_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SELECT_TEST_DATA_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_MEM_ARRAY_DUMP_MODE_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIRA_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_DIAG_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_PRESERVE_FUSE_REGISTER_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHECK_REPAIR_NEEDED_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_INCLUDE_MEM_RESULTS_REG_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHAIN_BYPASS_EN_buf/o]] 
  set_multicycle_path -hold 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_2_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SETUP_0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ASYNC_RESET/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_TCK_MODE/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_ENABLE_MEM_RESET_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_REDUCED_ADDRESS_COUNT_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_SELECT_TEST_DATA_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ALGO_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_MEM_ARRAY_DUMP_MODE_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIRA_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_DIAG_EN_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_PRESERVE_FUSE_REGISTER_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHECK_REPAIR_NEEDED_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE0_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_FL_CNT_MODE1_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_INCLUDE_MEM_RESULTS_REG_buf/o \
          [dict get $mbist_info bap1 inst]/tessent_persistent_cell_CHAIN_BYPASS_EN_buf/o]] 
  # Enable all controllers.
  set_case_analysis 1 [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_bistEn_0/o] 
  # Turn memory_bist asynchronous reset OFF.
  set_case_analysis 1 [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BIST_ASYNC_RESET/o] 
  
  set bap1_go_buffers_l [list]
  lappend bap1_go_buffers_l [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_MBISTPG_GO/o
  set bap1_done_buffers_l [list]
  lappend bap1_done_buffers_l [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_MBISTPG_DONE/o
  
  # Same edge (p->p) timing paths through these controller buffers are false path by protocol
  set_false_path -rise_from $bap1_tck_clocks -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_done_buffers_l]]
  # Opposite edge (n->p) timing paths through these controller buffers are MCP 2 by protocol
  set_multicycle_path 2 -setup -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l]]
  set_multicycle_path 1 -hold  -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l]]
  
  ## Constraints for memory_bist controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?4?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT_reg?4?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?1?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?8?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?1?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/ERROR_CNT_REG_reg?8?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?8?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?15? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?14? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?13? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?12? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?11? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?10? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?9? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/FL_CNT_REG_reg?8?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/JCNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_DELAYCOUNTER_ENDCOUNT_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_LOOPCOUNTMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER4/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/JCNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_DELAYCOUNTER_ENDCOUNT_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_LOOPCOUNTMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/tessent_persistent_cell_NEXT_POINTER4/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0?]] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -setup 2 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_4/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_5/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_6/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_7/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_2/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -hold 1 \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_2/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_3/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_4/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_5/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_6/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_X_ADD_CNT_7/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_0/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_1/o \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/tessent_persistent_cell_Y_ADD_CNT_2/o]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT*]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT*]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIST_EN_RETIME2*] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_ON/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_AND_DEFAULT_MODE/o]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIST_EN_RETIME2*] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_ON/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_AND_DEFAULT_MODE/o]] 
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_CLK_INT/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gb1_b/m0/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gb1_b/m1/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gs1_s/m0/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/p/gs1_s/m1/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst'
  ##   of controller 'ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
}
proc tessent_set_ltest_set_timing_variables_default {} {  
  
  global tessent_slow_clock_period
  global tessent_scan_en_setup_extra_cycles
  global tessent_scan_en_hold_extra_cycles
  global tessent_edt_update_setup_extra_cycles
  global tessent_edt_update_hold_extra_cycles
  
  global tessent_ssn_bus_clock_network_period
  global tessent_ssn_bus_input_delay_percentage
  global tessent_ssn_bus_output_delay_percentage
  
  global tessent_ssn_bus_clock_scan_slow_period
  set tessent_slow_clock_period       40.
  
  # SSN Bus interface
  set tessent_ssn_bus_clock_network_period    2.5
  set tessent_ssn_bus_input_delay_percentage  25.
  set tessent_ssn_bus_output_delay_percentage 25.
  # SSH parameters
  set tessent_ssn_bus_clock_scan_slow_period 10.0
  # Number of dead cycles before/after signal transitions
  set tessent_scan_en_setup_extra_cycles    1
  set tessent_scan_en_hold_extra_cycles     1
  set tessent_edt_update_setup_extra_cycles 1
  set tessent_edt_update_hold_extra_cycles  1
  
  tessent_set_ltest_add_ssh_occ_dictionaries
  
}
proc tessent_set_ltest_add_ssh_occ_dictionaries {} {  
  
  
  global tessent_occ_dict
  global tessent_ssh_dict
  
  set tessent_occ_dict {
    occ0 {
      ssh_id ssh0
      ssh_source_clock shift_capture_clock
      instance_name firebird7_in_gate2_tessent_occ_clk_inst
      slow_clock_input slow_clock
      slow_clock_buffer_input tessent_persistent_cell_slow_clock_buf/a
    }
  }
  
  set tessent_ssh_dict {
    ssh0 {
      instance_name firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst
      shift_capture_clock {
        gated_pin clock_gen/clock_signals/tessent_persistent_cell_shift_capture_clock_cg/clkout
        div_pin clock_gen/clock_signals/tessent_persistent_cell_shift_capture_clock_div/q
      }
    }
  }
  
  
}
proc tessent_set_ltest_ssn {} {  
  
  
  global tessent_ssh_mapping
  global time_unit_multiplier
  global tessent_ssn_bus_clock_network_period
  
  set local_ssn_bus_clock_network_period   [expr $tessent_ssn_bus_clock_network_period * $time_unit_multiplier]
  
  create_clock [tessent_get_ports ssn_bus_clock] -name tessent_ssn_bus_clock_network -period $local_ssn_bus_clock_network_period -add
  
  # Virtual clock for ssn bus ports constraining and external timing budgeting
  create_clock -name tessent_ssn_virtual_bus_clock_network -period $local_ssn_bus_clock_network_period -add
  
  
  # Maximum SSN network speed
  set_clock_groups -physically_exclusive  -group {tessent_ssn*_bus_clock_network*}
  global tessent_ssn_bus_input_delay_percentage
  global tessent_ssn_bus_output_delay_percentage
  
  # SSN data bus ports constraints
  
  set local_ssn_bus_clock_network_period [expr $tessent_ssn_bus_clock_network_period * $time_unit_multiplier]
  set local_ssn_bus_input_delay  [expr $tessent_ssn_bus_input_delay_percentage/100.  * $local_ssn_bus_clock_network_period]
  set local_ssn_bus_output_delay [expr $tessent_ssn_bus_output_delay_percentage/100. * $local_ssn_bus_clock_network_period]
  
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[19]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[18]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[17]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[16]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[15]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[14]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[13]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[12]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[11]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[10]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[9]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[8]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[7]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[6]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[5]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[4]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[3]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[2]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[1]}]
  set_input_delay  $local_ssn_bus_input_delay  -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_in[0]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[19]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[18]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[17]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[16]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[15]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[14]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[13]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[12]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[11]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[10]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[9]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[8]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[7]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[6]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[5]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[4]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[3]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[2]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[1]}]
  set_output_delay $local_ssn_bus_output_delay -add_delay -clock tessent_ssn_virtual_bus_clock_network [tessent_get_ports {ssn_bus_out[0]}]
  
  #----------------------------------------------------------------------
  # SSN list of node connections
  #   pipeline 'firebird7_in_gate2_tessent_ssn_pipe_ssn_output_pipe_inst'
  #     --> SSN Bus Data Outputs
  #   scan_host 'firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst'
  #     --> pipeline 'firebird7_in_gate2_tessent_ssn_pipe_ssn_output_pipe_inst'
  #   output_pipeline 'firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_inst'
  #     --> scan_host 'firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst'
  #   SSN Bus Data Inputs
  #     --> output_pipeline 'firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_inst'
  #----------------------------------------------------------------------
  
  # No timing exceptions needed for your SSN data bus
  
  
}
proc tessent_set_ltest_create_clocks {} {  
  
  global time_unit_multiplier
  
  
  # SSN clocks ============================================================
  
  global time_unit_multiplier
  global tessent_ssn_bus_clock_network_period
  global tessent_ssn_bus_clock_scan_slow_period tessent_ssn_bus_clock_scan_fast_period
  
  set local_ssn_bus_clock_scan_slow_period [expr $tessent_ssn_bus_clock_scan_slow_period * $time_unit_multiplier]
  set local_ssn_bus_clock_network_period   [expr $tessent_ssn_bus_clock_network_period * $time_unit_multiplier]
  global tessent_ssh_mapping
  
  # Add SSN clock, data bus ports and inter-nodes MCP constraints
  tessent_set_ltest_ssn
  
  # Clock references for divided SSH clocks:
  # The reference clock of the flop-based SSH divided clock generator circuit just
  # needs to be 2x faster than the target slow scan clock, but if 2x exceeds the
  # maximum ssn bus network frequency, then pick that frequency instead.
  # With this convention, the SSH divided clock is always defined as a "-divided_by 2" clock.
  set freq_ratio [expr $local_ssn_bus_clock_scan_slow_period/$local_ssn_bus_clock_network_period]
  if {$freq_ratio >= 2.0} {
    set local_ssn_bus_clock_scan_fast_period [expr $local_ssn_bus_clock_scan_slow_period/2.0]
  } else {
    set local_ssn_bus_clock_scan_fast_period $local_ssn_bus_clock_network_period
  }
  
  create_clock [tessent_get_ports ssn_bus_clock] -name tessent_ssn_bus_clock_scan_fast_0 -period $local_ssn_bus_clock_scan_fast_period -add
  create_clock [tessent_get_ports ssn_bus_clock] -name tessent_ssn_bus_clock_scan_slow_0 -period $local_ssn_bus_clock_scan_slow_period -add
  
  create_generated_clock [tessent_get_pins firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/clock_gen/clock_signals/tessent_persistent_cell_edt_clock_div/q] \
                         -source [tessent_get_ports ssn_bus_clock] \
                         -name   tessent_ssh0_edt_clock_div \
                         -master tessent_ssn_bus_clock_scan_fast_0 -add  \
                         -divide_by 2
  
  create_generated_clock [tessent_get_pins firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/clock_gen/clock_signals/tessent_persistent_cell_edt_clock_cg/clkout] \
                         -source [tessent_get_ports ssn_bus_clock] \
                         -name   tessent_ssh0_edt_clock_gated \
                         -master tessent_ssn_bus_clock_scan_slow_0 -add  \
                         -combinational \
                         -divide_by 1
  
  create_generated_clock [tessent_get_pins firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/clock_gen/clock_signals/tessent_persistent_cell_shift_capture_clock_div/q] \
                         -source [tessent_get_ports ssn_bus_clock] \
                         -name   tessent_ssh0_shift_capture_clock_div \
                         -master tessent_ssn_bus_clock_scan_fast_0 -add  \
                         -divide_by 2
  
  create_generated_clock [tessent_get_pins firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/clock_gen/clock_signals/tessent_persistent_cell_shift_capture_clock_cg/clkout] \
                         -source [tessent_get_ports ssn_bus_clock] \
                         -name   tessent_ssh0_shift_capture_clock_gated \
                         -master tessent_ssn_bus_clock_scan_slow_0 -add  \
                         -combinational \
                         -divide_by 1
  
  
}
proc tessent_set_ltest_non_modal {{logictest on}} {  
  
  global tessent_edt_mapping
  global tessent_scan_en_setup_extra_cycles tessent_scan_en_hold_extra_cycles
  global tessent_edt_update_setup_extra_cycles tessent_edt_update_hold_extra_cycles
  
  # Relax SSH ijtag registers to SSH fsm flops
  tessent_set_ltest_ssh_tck_timing
  
  if {$logictest eq "off"} {
    # SSN bus only constraints, excluding the SSH scan modes
    tessent_set_ltest_ssn
    tessent_set_ltest_disable all_test_x
    return
  }
  
  tessent_set_ltest_create_clocks
  
  # Relax clock mux timing in On-Chip clock controllers (OCCs)
  tessent_set_ltest_occ
  
  # This OCC path is only valid in scan shift mode
  set  non_scan_clocks [remove_from_collection [all_clocks] [tessent_get_clocks "tessent_ssh*"]]
  if {[sizeof_collection $non_scan_clocks]} {
    set_false_path -from $non_scan_clocks -to [tessent_get_cells {
      firebird7_in_gate2_tessent_occ_clk_inst/occ_control/scan_out*
    }]
    set_false_path -to $non_scan_clocks -from [tessent_get_cells {
      firebird7_in_gate2_tessent_occ_clk_inst/occ_control/scan_out*
    }]
    set_false_path -from $non_scan_clocks -through [tessent_get_pins {
      firebird7_in_gate2_tessent_occ_clk_inst/tessent_persistent_cell_scan_in_buf/o
    }]
  }
  
  # SIB STI mini-occ multiplexer which selects between tck and test_clock
  set_disable_clock_gating_check [tessent_get_cells firebird7_in_gate1_tessent_sib_sti_inst/tessent_persistent_cell_ltest_clock_mux]
  
  
  # SSH constraints
  tessent_set_ltest_ssh non_modal
  
  # Relax hold time check from low power hold registers
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells $tessent_edt_mapping(edt_inst0)/firebird7_in_gate2_tessent_edt_extest_edt_controller_i/low_power_shift_controller_i/low_power_hold_reg*] 
  
  # Relax hold time check from low power hold registers
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells $tessent_edt_mapping(edt_inst1)/firebird7_in_gate2_tessent_edt_intest_edt_controller_i/low_power_shift_controller_i/low_power_hold_reg*] 
  
  
  
}
proc tessent_set_ltest_occ {} {  
  global tessent_timing_tool
  
  
  # Prevent tck propagation to functional domains
  set_disable_timing [tessent_get_pins {
    firebird7_in_gate2_tessent_occ_clk_inst/tessent_persistent_cell_inject_tck_mux/clk1
  }]
  
  # Muxes that switch long before logic test runs
  set_disable_clock_gating_check [tessent_get_cells {
    firebird7_in_gate2_tessent_occ_clk_inst/tessent_persistent_cell_inject_tck_mux
  }]
  
  # Scan_en toggles these OCC mux 'select' pin between load_unload and capture phases. 
  # Because their fast clock 'input0' pin is tied to zero during the switch, such  
  # mux end-up behaving like AND gates (scan_en & test_clock) and can be timed that way,
  # with a 'set_clock_gating_check -high' command.
  set mux_coll [tessent_get_cells {
    firebird7_in_gate2_tessent_occ_clk_inst/tessent_persistent_cell_clock_out*_mux
    firebird7_in_gate2_tessent_occ_clk_inst/occ_control/tessent_persistent_cell_SHIFT_REG_CLK*_mux
  }]
  foreach_in_collection mux $mux_coll {
    # Skip over RTL cells
    if {$tessent_timing_tool in {dc_shell pt_shell} && [get_attribute $mux is_hierarchical] eq "true"} {
        continue
    } elseif {$tessent_timing_tool in {genus encounter} && [get_property $mux obj_type] eq "hinst" } {
        continue
    }
    set_clock_gating_check -high $mux
  }
  
  
}
proc tessent_set_ltest_modal_shift {} {  
  
  global tessent_edt_mapping
  
  # Create clocks and set input/output delays for ports
  tessent_set_ltest_create_clocks
  # Set input/output delays for ports
  tessent_set_ltest_set_pin_delays
  
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_all_test/o]
  
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ltest_en/o]
  
  # Forcing scan_en active allows timing all shift paths 
  # while blocking all intra or inter domain capture paths.
  
  # SSN shift-mode constraints
  tessent_set_ltest_ssh shift
  
  # Relax clock mux timing in On-Chip clock controllers (OCCs)
  tessent_set_ltest_occ
  
  # edt_inst0.edt_low_power_shift_en:
    set_false_path -through [tessent_get_pins $tessent_edt_mapping(edt_inst0)/tessent_persistent_cell_edt_low_power_shift_en_buf/o]
  # edt_inst1.edt_low_power_shift_en:
    set_false_path -through [tessent_get_pins $tessent_edt_mapping(edt_inst1)/tessent_persistent_cell_edt_low_power_shift_en_buf/o]
  
  # Relax hold time check from low power hold registers
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells $tessent_edt_mapping(edt_inst0)/firebird7_in_gate2_tessent_edt_extest_edt_controller_i/low_power_shift_controller_i/low_power_hold_reg*] 
  
  # Relax hold time check from low power hold registers
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells $tessent_edt_mapping(edt_inst1)/firebird7_in_gate2_tessent_edt_intest_edt_controller_i/low_power_shift_controller_i/low_power_hold_reg*] 
  
  
  
}
proc tessent_set_ltest_modal_edt_fast_capture {} {  
  
  global tessent_edt_mapping
  global tessent_ssh_mapping
  
  
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_all_test/o]
  
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ltest_en/o]
  
  # Define each variable below to match your final ATPG settings in fast capture mode.
  # By default, all possible capture paths are covered.
  global memory_bypass_en_value
  if {[info exists memory_bypass_en_value]} {
    set_case_analysis $memory_bypass_en_value [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_memory_bypass_en/o]
  }
  global async_set_reset_static_disable_value
  if {[info exists async_set_reset_static_disable_value]} {
    set_case_analysis $async_set_reset_static_disable_value [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_async_set_reset_static_disable/o]
  }
  
  # Block all shift-only paths
  set_case_analysis 0 [tessent_get_pins $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_scan_en_buf/o]
  
  # Relax clock mux timing in On-Chip clock controllers (OCCs)
  tessent_set_ltest_occ
  
  # Define the 'tessent_block_edt_bypass_in_fast_capture' global variable in your calling script 
  # if you want to block the chain concatenation timing paths, which may exist at-speed if 
  # the destination chain SI flop keeps shifting during capture. That should normally not happen 
  # when using Tessent scan insertion tools, but if these paths do exist in your design
  # and you don't intend running edt_bypass mode along with fast_capture, then apply the 
  # constraints below.
  global tessent_block_edt_bypass_in_fast_capture
  if {[info exists tessent_block_edt_bypass_in_fast_capture]} {
    # edt_inst0.edt_bypass:
      set_case_analysis 0 [tessent_get_pins $tessent_edt_mapping(edt_inst0)/tessent_persistent_cell_edt_bypass_buf/o]
    # edt_inst1.edt_bypass:
      set_case_analysis 0 [tessent_get_pins $tessent_edt_mapping(edt_inst1)/tessent_persistent_cell_edt_bypass_buf/o]
  }
  
  # edt_inst0.channels_out*:
    set_false_path -through [tessent_get_pins $tessent_edt_mapping(edt_inst0)/tessent_persistent_cell_edt_channels_out_*_buf/o]
  # edt_inst1.channels_out*:
    set_false_path -through [tessent_get_pins $tessent_edt_mapping(edt_inst1)/tessent_persistent_cell_edt_channels_out_*_buf/o]
  
  
}
proc tessent_set_ltest_modal_edt_slow_capture {} {  
  
  global tessent_edt_mapping
  global tessent_scan_input_delay tessent_scan_output_delay
  
  # Create clocks and set input/output delays for ports
  tessent_set_ltest_create_clocks
  # Set input/output delays for ports
  tessent_set_ltest_set_pin_delays
  
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_all_test/o]
  
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ltest_en/o]
  
  #
  # In slow capture mode, tessent_*shift_capture_clock* propagates to all your scan flops, through sub-trees made 
  # of your individual functional clock domains, each assumably controlled by a different OCC.
  # Usually, all intra-domain paths have a zero-hold constraint and all cross-domain paths get
  # at least one clock cycle of hold.
  #
  # Setting global TCL variables in your calling script gives your the following choices:
  #
  #   1- If you know that clock tree synthesis balanced all tessent_*shift_capture_clock* fanout and fixed all hold
  #      violations, your can set 'tessent_time_hold_in_slow_capture' to 1
  #   2- If not, you can choose to simplify your SDC constraints by globally relaxing the hold 
  #      from same-edge tessent_*shift_capture_clock* to itself, assuming that your functional mode STA run
  #      would cover the hold of all intra-domain hold timing path, since your functional clock
  #      tree is the same as your test clock tree. If so desired, do nothing else in your script.
  #      Note that retimed hold paths won't be relaxed and stay 1/2 cycle of tests clock.
  #   3- Or get accurate intra-domain zero-hold check while relaxing all paths across OCC domains, 
  #      by setting 'tessent_relax_xdomain_capture_paths' to 1, at the cost of a more 
  #      complex set of timing constraints, with new generated clocks defined on each and every
  #      OCC controllers. Note that if you use your own custom OCCs, you might have to create or 
  #      complete the list of OCC instance data in TCL global variable 'tessent_occ_dict' before
  #      calling the current proc. See Tessent user's manual to this effect.
  
  global tessent_time_hold_in_slow_capture
  global tessent_relax_xdomain_capture_paths
  if {[info exists tessent_relax_xdomain_capture_paths] && $tessent_relax_xdomain_capture_paths == 1} {
      tessent_set_ltest_relax_xdomain_capture_paths 
  } elseif {!([info exists tessent_time_hold_in_slow_capture] && $tessent_time_hold_in_slow_capture == 1)} {
      set_multicycle_path -hold 1 -rise_from [tessent_get_clocks tessent_*shift_capture_clock*] -rise_to [tessent_get_clocks tessent_*shift_capture_clock*]
      set_multicycle_path -hold 1 -fall_from [tessent_get_clocks tessent_*shift_capture_clock*] -fall_to [tessent_get_clocks tessent_*shift_capture_clock*]
  }
  
  tessent_set_ltest_ssh non_modal
  
  # Relax clock mux timing in On-Chip clock controllers (OCCs)
  tessent_set_ltest_occ
  
  
  # Relax hold time check from low power hold registers
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells $tessent_edt_mapping(edt_inst0)/firebird7_in_gate2_tessent_edt_extest_edt_controller_i/low_power_shift_controller_i/low_power_hold_reg*] 
  
  # Relax hold time check from low power hold registers
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells $tessent_edt_mapping(edt_inst1)/firebird7_in_gate2_tessent_edt_intest_edt_controller_i/low_power_shift_controller_i/low_power_hold_reg*] 
  
  
  
}
proc tessent_set_ltest_modal_edt_shift {} {  
  global tessent_edt_mapping
  
  tessent_set_ltest_modal_shift
  # edt_inst0.edt_bypass:
    set_case_analysis 0 [tessent_get_pins $tessent_edt_mapping(edt_inst0)/tessent_persistent_cell_edt_bypass_buf/o]
  # edt_inst1.edt_bypass:
    set_case_analysis 0 [tessent_get_pins $tessent_edt_mapping(edt_inst1)/tessent_persistent_cell_edt_bypass_buf/o]
  
  
}
proc tessent_set_ltest_modal_bypass_shift {} {  
  global tessent_edt_mapping
  
  tessent_set_ltest_modal_shift
  # edt_inst0.edt_bypass:
    set_case_analysis 1 [tessent_get_pins $tessent_edt_mapping(edt_inst0)/tessent_persistent_cell_edt_bypass_buf/o]
  # edt_inst1.edt_bypass:
    set_case_analysis 1 [tessent_get_pins $tessent_edt_mapping(edt_inst1)/tessent_persistent_cell_edt_bypass_buf/o]
  
  
}
proc tessent_set_ltest_disable {{mode all_test_on}} {  
  
  # Invoke this proc when running modal signoff STA checks in any other modes than edt or lbist.
  # It turns all ltest-related DftSignals off and disables your logicbist controller when present.
  # It also prevents tessent_tck from propagating to functional domains.
  
  global tessent_ssh_mapping
  global tessent_clock_mapping
  
  # Force SSH scan_en/edt_update outputs off
  set_case_analysis 0 [tessent_get_pins $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_scan_en_buf/o]
  set_case_analysis 0 [tessent_get_pins $tessent_ssh_mapping(ssh0)/clock_gen/tessent_persistent_cell_edt_update_mux/o]
  
  # Turn off all logictest-related dft_signals.
  tessent_firebird7_in_set_dft_signals $mode
  
  # Prevent tessent_tck from propagating to functional domains and avoid bogus clock gating check warnings.
  set_disable_timing             [tessent_get_pins  {firebird7_in_gate2_tessent_occ_clk_inst/tessent_persistent_cell_inject_tck_mux/*}]
  set_disable_clock_gating_check [tessent_get_cells {firebird7_in_gate2_tessent_occ_clk_inst/tessent_persistent_cell_clock_out*_mux}]
  
  # Stop tessent_tck from propagating to core logic
  set_disable_timing [tessent_get_pins $tessent_ssh_mapping(ssh0)/clock_gen/clock_signals/tessent_persistent_cell_edt_clock_buf/clkout]
  set_disable_timing [tessent_get_pins $tessent_ssh_mapping(ssh0)/clock_gen/clock_signals/tessent_persistent_cell_shift_capture_clock_buf/clkout]
  
  
}
proc tessent_set_ltest_pb_external_mode {} {  
  
  # Call this proc after any one of the above xxx_ltest_modal_xxx procs, so as to force your core
  # in the external version of its shift, bypass, or capture mode. 
  # Although our modal procs try to cover both internal and external mode paths in the same STA run,
  # the external mode constraints below might be needed when extracting your core timing model 
  # for later use in your parent module flow. These constraints will prevent ambiguous timing 
  # paths to affect the accuracy of your core extracted model timing arcs.
  set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ext_ltest_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_int_ltest_en/o]
  
  
}
proc tessent_set_ltest_core_external_mode {} {  
  
  # This proc maintains backward-compatibility with your older timing scripts by 
  # providing you with a translation from the old name:
  #    tessent_set_ltest_core_external_mode
  # to the following new name:
  
    tessent_set_ltest_pb_external_mode
  
  
}
proc tessent_set_ltest_ssh_tck_timing {} {  
  
      global tessent_ssh_mapping
    
      # SSH TDR register states are static during test. 
      foreach ssh_id [array names tessent_ssh_mapping] {
        set ssh_flops [tessent_get_flops [list $tessent_ssh_mapping($ssh_id)/* $tessent_ssh_mapping($ssh_id)/*/* $tessent_ssh_mapping($ssh_id)/*/*/*] -filter is_hierarchical==false -silent]
        if {[sizeof_collection $ssh_flops]} {
          # The SSH was instantiated in this design
          set ssh_ijtag_flops   [tessent_get_flops $tessent_ssh_mapping($ssh_id)/ijtag_registers/* -filter {is_hierarchical==false}]
          set ssh_fsm_flops [remove_from_collection $ssh_flops $ssh_ijtag_flops]
          # bus_sync_reset_ff* is not a valid endpoint because its D pin is tied off (Primetime UITE-216)
          # set ssh_fsm_flops [remove_from_collection $ssh_fsm_flops [tessent_get_flops $tessent_ssh_mapping($ssh_id)/fsm/bus_sync_reset_ff* -silent]] 
          set_multicycle_path 2 -from $ssh_ijtag_flops -to $ssh_fsm_flops
          set_false_path -hold  -from $ssh_ijtag_flops -to $ssh_fsm_flops
        }
      }
    
  
}
proc tessent_set_ltest_ssh {{mode non_modal}} {  
  
  
  global tessent_ssh_mapping
  global time_unit_multiplier
  global tessent_ssn_bus_clock_network_period
  global tessent_clock_mapping
  global tessent_scan_en_setup_extra_cycles
  global tessent_scan_en_hold_extra_cycles
  global tessent_edt_update_setup_extra_cycles
  global tessent_edt_update_hold_extra_cycles
  
  
  # Mutually exclusive logictest scan mode clocks
  set_clock_groups -physically_exclusive \
                   -group {tessent_ssn_bus_clock_scan_fast* tessent_ssh*_div} \
                   -group {tessent_ssn_bus_clock_scan_slow* tessent_ssh*_gated}
  # SSN clocks are asynchronous to all other clocks
  set_clock_groups -asynchronous -name ssn_clocks \
                   -group {tessent_ssn* tessent_ssh*}
  
  
  # tessent_ssn_bus_clock_scan_fast* is only used as a master clock for SSH divided clock constraints,
  # All SSH internal logic should be timed with the faster tessent_ssh_bus_clock_network clock.
    set_false_path -from [tessent_get_clocks tessent_ssn_bus_clock_scan_fast*] -to [tessent_get_clocks tessent_ssn_bus_clock_scan_fast*]
  # ... and no SSH negedge flop is active when running with SSH divided clocks
    set_false_path -fall_from [tessent_get_clocks tessent_ssn_bus_clock_scan_fast*]
    set_false_path -fall_to   [tessent_get_clocks tessent_ssn_bus_clock_scan_fast*]
  
  # SSN host ssh0 ---------------------------------
  
  # ssh0 scan_en:
  if {$mode eq "shift"} {
    set_case_analysis 1 [tessent_get_pins $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_scan_en_buf/o]
  } else {
    # SE actual MCP numbers depend on the target scan flops clock polarity. 
    # See documentation for more details. 
    set seSource    "$tessent_ssh_mapping(ssh0)/tessent_persistent_cell_scan_en_buf/o"
    set seSetupPos  [expr 1 + $tessent_scan_en_setup_extra_cycles]
    set seHoldPos   [expr 1 + $tessent_scan_en_hold_extra_cycles]
    set seSetupNeg  [expr 1 + $seSetupPos]
    set seHoldNeg             $tessent_scan_en_hold_extra_cycles
    set_multicycle_path -setup   $seSetupPos -start \
                        -through [tessent_get_pins $seSource] \
                        -rise_to [tessent_get_clocks tessent_ssh*_gated]
    set_multicycle_path -hold    [expr ($seSetupPos-1) + $seHoldPos] -start \
                        -through [tessent_get_pins $seSource] \
                        -rise_to [tessent_get_clocks tessent_ssh*_gated]
    set_multicycle_path -setup   $seSetupNeg -start \
                        -through [tessent_get_pins $seSource] \
                        -fall_to [tessent_get_clocks tessent_ssh*_gated]
    set_multicycle_path -hold    [expr ($seSetupNeg-1) + $seHoldNeg] -start \
                        -through [tessent_get_pins $seSource] \
                        -fall_to [tessent_get_clocks tessent_ssh*_gated]
    # SE MCPs from ssn fast clock to divided scan clock
    set seSetupPos_div  [expr $seSetupPos * 2]
    set seHoldPos_div   [expr $seHoldPos  * 2]
    set seSetupNeg_div  [expr $seSetupPos_div + 1]
    set seHoldNeg_div   [expr $seHoldPos_div  - 1]
    set_multicycle_path -setup   $seSetupPos_div -start \
                        -through [tessent_get_pins $seSource] \
                        -rise_to [tessent_get_clocks tessent_ssh*_div]
    set_multicycle_path -hold    [expr ($seSetupPos_div-1) + $seHoldPos_div] -start \
                        -through [tessent_get_pins $seSource] \
                        -rise_to [tessent_get_clocks tessent_ssh*_div]
    set_multicycle_path -setup   $seSetupNeg_div -start \
                        -through [tessent_get_pins $seSource] \
                        -fall_to [tessent_get_clocks tessent_ssh*_div]
    set_multicycle_path -hold    [expr ($seSetupNeg_div-1) + $seHoldNeg_div] -start \
                        -through [tessent_get_pins $seSource] \
                        -fall_to [tessent_get_clocks tessent_ssh*_div]
  }
  
  # ssh0 edt_update:
    set_false_path -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/clock_gen/edt_update_delayed*] \
                   -to   [tessent_get_clocks tessent_ssh*_gated]
    # MCPs with ssn slow clock
    set setup      [expr 1 + $tessent_edt_update_setup_extra_cycles]
    set hold                  $tessent_edt_update_hold_extra_cycles
    set_multicycle_path -setup $setup -start \
                   -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/clock_gen/edt_update_ret*] \
                   -to   [tessent_get_clocks tessent_ssh*_gated]
    set_multicycle_path -hold  [expr $setup-1 + $hold] -start \
                   -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/clock_gen/edt_update_ret*] \
                   -to   [tessent_get_clocks tessent_ssh*_gated]
    # MCPs with ssn fast clock
    set setup     [expr 1 + $tessent_edt_update_setup_extra_cycles * 2]
    set hold      [expr 1 + $tessent_edt_update_hold_extra_cycles * 2]
    set_multicycle_path -setup $setup -start \
                   -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/clock_gen/edt_update_delayed*] \
                   -to   [tessent_get_clocks tessent_ssh*_div]
    set_multicycle_path -hold  [expr $setup-1 + $hold] -start \
                   -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/clock_gen/edt_update_delayed*] \
                   -to   [tessent_get_clocks tessent_ssh*_div]
  
  # ssh0 to_scan_in:
    # posedge flop source for divided clock is inactive with gated clock
    set_false_path -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/datapath/to_scan_in*_ret_for_div*] \
                   -to   [tessent_get_clocks tessent_ssh*_gated]
    # Source flop clocked by tessent_ssn_bus_clock_scan_fast toggles in the middle of the destination divided clock period.
    set_multicycle_path -hold  1 -start \
                   -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/datapath/to_scan_in*_ret_for_div*] \
                   -to   [tessent_get_clocks tessent_ssh*_div]
  
  # ssh0 from_scan_out:
    # with gated clock, all chain SO are captured by a single strobing flop. All other paths are false.
    set_false_path -from    [tessent_get_clocks tessent_ssh*_gated]  \
                   -through [tessent_get_pins   $tessent_ssh_mapping(ssh0)/datapath/tessent_persistent_cell_from_scan_out*_mux*/o]
  
    # With gated clock, chain SO TE flop is captured by the TE strobe register
    set_false_path -fall_from [tessent_get_clocks tessent_ssh*_gated] \
                   -to        [tessent_get_cells  $tessent_ssh_mapping(ssh0)/datapath/from_scan_out*_ret_p*]
    # With gated clock, chain SO LE flop is captured by the LE strobe register
    set_false_path -rise_from [tessent_get_clocks tessent_ssh*_gated] \
                   -to        [tessent_get_cells  $tessent_ssh_mapping(ssh0)/datapath/from_scan_out*_ret_n*]
  
    # Divided clock to fast clock logic inside the SSH
    set_multicycle_path -setup 2 -end \
                   -from    [tessent_get_clocks tessent_ssh*_div] \
                   -through [tessent_get_pins $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_from_scan_out*_and/a] \
                   -to   [tessent_get_clocks tessent_ssn_bus_clock_scan_fast_0]
    set_multicycle_path -hold  1 -end \
                   -from    [tessent_get_clocks tessent_ssh*_div] \
                   -through [tessent_get_pins $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_from_scan_out*_and/a] \
                   -to   [tessent_get_clocks tessent_ssn_bus_clock_scan_fast_0]
  
  # ssh0: SSH Loopback paths are either at slow scan speed or mcp2 of scan fast clock.
  #          So they can be timed with only the slow scan clock.
  #          Any other sneaky paths from/to scanned domains through loopback logic are false
    set non_ssn_slow_clocks [remove_from_collection [all_clocks] [tessent_get_clocks tessent_ssn_bus_clock_scan_slow*]]
    set_false_path \
            -from    $non_ssn_slow_clocks \
            -through [tessent_get_pins   $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_to_scan_in*_buf/o] \
            -through [tessent_get_pins   $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_from_scan_out*_and/a]
    set_false_path \
            -through [tessent_get_pins   $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_to_scan_in*_buf/o] \
            -through [tessent_get_pins   $tessent_ssh_mapping(ssh0)/tessent_persistent_cell_from_scan_out*_and/a] \
            -to      $non_ssn_slow_clocks
  
  # Block tessent_tck used as capture clock
  set_disable_timing [tessent_get_pins $tessent_ssh_mapping(ssh0)/clock_gen/clock_signals/tessent_persistent_cell_*_or2/b]
  
  # ssh0 enable_sync is static during test, and fans out to ltest logic through the scan_en and edt_update signals.
    set_false_path -from [tessent_get_cells $tessent_ssh_mapping(ssh0)/fsm/enable_sync*] \
                 -to   [tessent_get_clocks "tessent_ssh*_gated tessent_ssh*_div"]
  
  
  # These multiplexers switch clocks statically. 
  # Suppress noisy clock gating check warnings (ex: Primetime PTE-060)
    set_disable_clock_gating_check [tessent_get_cells $tessent_ssh_mapping(ssh0)/*clock_mux]
  
  # SSH negedge flops are only active when running the ssn network at scan slow clock speed.
  # Some other negedge flops in SSN bus nodes might still be active with the same clock.
    set negedge_flops_list [list \
      $tessent_ssh_mapping(ssh0)/clock_gen/edt_update_ret* \
      $tessent_ssh_mapping(ssh0)/datapath/to_scan_in*_ret_not_for_div* \
      $tessent_ssh_mapping(ssh0)/datapath/from_scan_out*_ret_n* \
      $tessent_ssh_mapping(ssh0)/datapath/last_in_bits_in_current_bus_word_ret* \
    ]
    set_false_path -from [tessent_get_clocks {tessent_ssn_bus_clock_network*}] \
                   -to   [tessent_get_cells  $negedge_flops_list]
    set_false_path -to   [tessent_get_clocks {tessent_ssn_bus_clock_network*}] \
                   -from [tessent_get_cells  $negedge_flops_list]
  
  
}
proc set_load_unload_timing_options {args} {  
  
  # Issue the set_load_unload_timing_options command from within your master timing 
  # script in order  modify your SSN/SSH signals timing specifications.
  # Tessent Shell supports the same command with the same syntax, allowing you
  # to consistently specify this timing across your simulation patterns, synthesis 
  # and STA runs. You may want to place that command into a file and source it from
  # both TS and your synthesis/timing tools.
  set usage ""
  set argv [list]
  foreach {key value} $args {
    if {$key eq "-ssn_usage"} {
      puts "Warning: option '-ssn_usage' is deprecated. Use option '-usage ssn' instead"
      set usage "ssn"
    } elseif {$key eq "-usage"} {
      set usage [string tolower $value]
      if {$usage in {direct}} {
        error "Option '-usage' value 'direct' is not supported in SDC context"
        return
      } elseif {$usage ni {ssn}} {
        error "Option '-usage' invalid value '$usage'. Only 'ssn' is currently supported in SDC context"
        return
      }
    } else {
      lappend argv $key $value
    }
  }
  if {$usage eq ""} {
    error "Option '-usage' is mandatory"
    return
  }
  
  array set tessent_timing_option2var_mapping {
    -ssn_bus_clock_period           tessent_ssn_bus_clock_network_period
    -shift_clock_period             tessent_ssn_bus_clock_scan_slow_period
    -scan_en_setup_extra_cycles     tessent_scan_en_setup_extra_cycles
    -scan_en_hold_extra_cycles      tessent_scan_en_hold_extra_cycles
    -edt_update_setup_extra_cycles  tessent_edt_update_setup_extra_cycles
    -edt_update_hold_extra_cycles   tessent_edt_update_hold_extra_cycles
  }
  
  foreach key [array names tessent_timing_option2var_mapping] {
    global [subst $tessent_timing_option2var_mapping($key)]
  }
  
  # Parse options, assuming default value from tessent_set_default_variables.
  foreach {key value} $argv {
    if {![info exists tessent_timing_option2var_mapping($key)]} {
      error "set_load_unload_timing_options -- bad option '$key'"
    } else {
      set [subst $tessent_timing_option2var_mapping($key)] $value
    }
  }
  
  # Now convert periods specified with time multipliers (us,ns,ps,fs) to nanoseconds units,
  # for consistency with the global $time_unit_multiplier variable definition
  array set time_multiplier {
    us  1000.
    ns  1.
    ps  0.001
    fs  0.000001
  }
  foreach period_var {tessent_ssn_bus_clock_network_period tessent_ssn_bus_clock_scan_slow_period} {
    set period [set $period_var]
    if {[regexp {[^0-9\.]+} $period time_unit]} {
      # Then a time unit was specified
      if {[info exists time_multiplier($time_unit)]} {
        set period [regsub $time_unit $period ""]
        set period [expr $period * $time_multiplier($time_unit)]
      } else {
        error "set_load_unload_timing_options -- '$period_var' bad time unit '$time_unit' specification"
        return
      }
      set $period_var $period
    }
    puts "'$period_var' set to '$period' nanoseconds"
  }
  
  
}
proc tessent_set_ltest_set_pin_delays {} {  
  
  
}
proc tessent_set_ltest_relax_xdomain_capture_paths {{sta_scope current_level}} {  
  
  global tessent_occ_dict
  global tessent_ssh_dict
  
  if {![info exists tessent_occ_dict]} {
    # nothing to process if no OCC dictionary
    return
  }    
  set occ_dict $tessent_occ_dict
  set ssh_dict $tessent_ssh_dict
  
  dict for {occ_id occ_dict} $occ_dict {
    foreach mode {gated div} {
      dict with occ_dict {
        set gclock_pin    "$instance_name/$slow_clock_input"
        if {[info exists slow_clock_buffer_input]} {
          set buffer_pin        "$instance_name/$slow_clock_buffer_input"
          if {[sizeof_collection [tessent_get_pins $buffer_pin -silent]]} {
            set gclock_pin $buffer_pin
          }
        }
        if {[sizeof_collection [tessent_get_pins $gclock_pin -silent]] == 0} {
          # No place to define the OCC clock; drop it.
          continue
        }
        set ssh_instance_name [dict get $ssh_dict $ssh_id instance_name]
        set ssh_source_pin    [dict get $ssh_dict $ssh_id $ssh_source_clock ${mode}_pin]
        set ssh_master_clock  "tessent_${ssh_id}_${ssh_source_clock}_${mode}"
        create_generated_clock \
           [tessent_get_pins $gclock_pin] \
           -source [tessent_get_pins $ssh_instance_name/$ssh_source_pin] \
           -combinational \
           -add -master $ssh_master_clock \
           -name tessent_${ssh_id}_${occ_id}_scan_clock_${mode}
      }
    }
  }
  # Relax all cross-domain hold; Keep setup=1.
  foreach mode {gated div} {
    # all_occ_clocks below includes non-OCC tessent_ssh* clocks, so as to cover
    # boundary-scan and sib sti circuity.
    set all_occ_clocks [tessent_get_clocks tessent_ssh*_$mode -quiet]
    foreach_in_collection occ_clock $all_occ_clocks {
      set other_occ_clocks [remove_from_collection $all_occ_clocks $occ_clock]
      set_multicycle_path 1 -hold -from $occ_clock -to $other_occ_clocks
    }
  }
  
  
}
proc tessent_get_cts_skew_groups_dict {} {  
  
  # This proc returns a dictionary of clock source pins from where clock tree synthesis balancing should stop.
  # Use it in your CTS script, along with your proper tool command.
  # In Synopsys ICC, invoke:
  #     set_clock_tree_exceptions -exclude_pins <exclude_pin>
  # In Cadence Innovus, invoke:
  #     create_ccopt_skew_group  -sources <exclude_pin> -auto_sinks -skew_group <group name>
  # The effect of that command is:
  # * to prevent adding delay buffers to the small OCC internal clock tree, due to balancing with 
  #   all flops in the OCC fanout, therefore helping the OCC clock_enable signals meet setup timing.
  # * to prevents adding long delays to the SSN clock tree due to balancing with the functional 
  #   clock tree in the fanout of each SSN scan host (SSH).
  #
  # You can use the dictionary the following way:
  #    set cts_skew_groups_dict [tessent_get_cts_skew_groups_dict]
  #    dict for {skew_group sub_dict} $cts_skew_groups_dict {
  #      dict with sub_dict {
  #        foreach pin $cts_exclude_pins {
  #           puts "$skew_group : $dc_instance/$pin"
  #           <insert your CTS command here>
  #        }
  #      }
  #    }
  set return_dict {
    cts_skew_group(occ0) {
      dc_instance      firebird7_in_gate2_tessent_occ_clk_inst
      cts_exclude_pins {occ_control/tessent_persistent_cell_ltest_ntc_sync_cell/clk occ_control/tessent_persistent_cell_cgc_SHIFT_REG_CLK/clk occ_control/tessent_persistent_cell_SHIFT_REG_CLK_mux/clk1}
    }
    cts_skew_group(ssh0) {
      dc_instance      firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst
      cts_exclude_pins {clock_gen/clock_signals/tessent_persistent_cell_edt_clock_buf/clkout clock_gen/clock_signals/tessent_persistent_cell_shift_capture_clock_buf/clkout}
    }
  }
  return $return_dict
  
  
}
proc tessent_firebird7_in_set_dft_signals {{mode reset}} {
#
# Force all dft_signal sources to either their reset or all_test value when applicable.
#   argument mode :== reset | all_test_on | all_test_x
#
  if {$mode eq "all_test_on"} {
    set_case_analysis 1 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_all_test/o]
  } elseif {$mode eq "reset"} {
    set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_all_test/o]
  }
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_occ_kill_clock_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_se_pipeline_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ext_mode/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_int_mode/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ext_edt_mode/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_int_edt_mode/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ext_ltest_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_int_ltest_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_tck_occ_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_async_set_reset_static_disable/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_memory_bypass_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_ltest_en/o]
  set_case_analysis 0 [tessent_get_pins firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/tessent_persistent_cell_fscan_clkungate/o]

}
proc tessent_get_cells {path_list args} {
  set actualArgs [list]
  set silent 0
  set warning_list [list]
  foreach argValue $args {
    if { $argValue eq "" } { continue }
    if { $argValue eq "-silent" } { set silent 1; continue }
    lappend actualArgs $argValue
  }
  # Quietly try verilog syntax first. If not found, try VHDL remapping
  set cell_col {}
  foreach path $path_list {
    set cell_col_tmp [get_cells [list [tessent_map_to_verilog $path]] {*}$actualArgs -quiet]
    if { [sizeof_collection $cell_col_tmp] == 0 && [regexp {%TSSEP%} $path]} {
      # try a partially ungrouped path with known markers
      set cell_col_tmp [get_cells [list [tessent_map_to_verilog $path -mappings [list {%TSSEP%} {?}]]] {*}$actualArgs -quiet]
    } 
    if { [sizeof_collection $cell_col_tmp] == 0 } {
      set cell_col_tmp [get_cells [tessent_map_to_verilog [tessent_remap_vhdl_path_list [list $path]]] {*}$actualArgs -quiet]
    } 
    if {[sizeof_collection $cell_col_tmp] > 0} {
      append_to_collection cell_col $cell_col_tmp -unique
    } else {
      lappend warning_list "Tessent SDC warning: Cell was not found with pattern '${path}'"
    }
  }
  if {[sizeof_collection $cell_col] > 0} {
    if {[llength $warning_list] > 0 && !$silent} {
      puts [join $warning_list "\n"]
    }
    return $cell_col
  } elseif {!$silent} {
    puts "Tessent SDC error: No cell found with pattern(s) '${path_list}'"
  }
  return
 
}
proc tessent_get_flops {path_list args} {
  global tessent_timing_tool
  set cell_col [tessent_get_cells $path_list {*}$args]
  
  if {[sizeof_collection $cell_col] == 0} {return {}}

  switch -- $tessent_timing_tool {
    encounter {set flop_col [filter sequential true $cell_col]}
    default   {set flop_col [filter_collection $cell_col "is_sequential == true"]}
  }

  return $flop_col
 
}
proc tessent_get_pins {path_list args} {
  global tessent_timing_tool
  set pin_col {}
  set actualArgs [list]
  set silent 0
  set hierarchical ""
  set warning_list [list]
  foreach argValue $args {
    if { $argValue eq "" } { continue }
    if { $argValue eq "-silent" } { set silent 1; continue }
    if { [regexp {^-hier(archical)?$} $argValue] } { set hierarchical "-hierarchical"; continue }
    lappend actualArgs $argValue
  }
  switch -- $tessent_timing_tool {
    pt_shell {set pin_name_attribute "lib_pin_name"}
    default  {set pin_name_attribute "name"}
  }
  foreach path $path_list {
    set pin_sep_index [string last / $path]
    set mapped_cells [tessent_get_cells [list [string range $path 0 [expr $pin_sep_index - 1]]] -silent {*}$hierarchical]
    if {[sizeof_collection $mapped_cells] > 0} {
      set pin_col_tmp [get_pins -of_objects $mapped_cells -filter "$pin_name_attribute =~ [string range $path [expr $pin_sep_index + 1] end]" {*}$actualArgs -quiet]
    } else {
      set pin_col_tmp {}
    }
    if {[sizeof_collection $pin_col_tmp] > 0} {
      append_to_collection pin_col $pin_col_tmp -unique
    } else {
      lappend warning_list "Tessent SDC warning: Pin was not found with pattern '${path}'"
    }
  }
  if {[sizeof_collection $pin_col] > 0} {
    if {[llength $warning_list] > 0 && !$silent} {
      puts [join $warning_list "\n"]
    }
    return $pin_col
  } elseif {!$silent} {
    puts "Tessent SDC error: No pin found with pattern(s) '${path_list}'"
  }
  return
   
}
proc tessent_get_ports {port_patterns args} {
  global tessent_timing_tool
  set actualArgs [list]
  set silent 0
  set warning_list [list]
  foreach argValue $args {
    if { $argValue eq "" } { continue }
    if { $argValue eq "-silent" } { set silent 1; continue }
    lappend actualArgs $argValue
  }
  # Quietly try verilog syntax first. If not found, try advanced remapping
  set port_col {}
  foreach port_pattern $port_patterns {
    set port_col_tmp [get_ports [list [tessent_map_to_verilog $port_pattern]] {*}$actualArgs -quiet]
    if { [sizeof_collection $port_col_tmp] == 0 } {
      set port_col_tmp [get_ports [tessent_map_to_verilog [tessent_remap_vhdl_path_list [list $port_pattern] -type ports]] {*}$actualArgs -quiet]
    } 
    if {[sizeof_collection $port_col_tmp] > 0} {
      append_to_collection port_col $port_col_tmp -unique
    } else {
      lappend warning_list "Tessent SDC warning: Port was not found with pattern '${port_pattern}'"
    }
  }
  set sc [sizeof_collection $port_col]
  if {$sc > 0} {
    if {[llength $warning_list] > 0 && !$silent} {
      puts [join $warning_list "\n"]
    }
    if {$sc == 1 && $tessent_timing_tool eq "oasys"} {
      return [index_collection $port_col 0]
    } else {
      return $port_col
    }
  } elseif {!$silent} {
    puts "Tessent SDC error: No port found with pattern(s) '${port_patterns}'"
  }
  return
  
}
proc tessent_map_to_verilog {path_list args} {
  global tessent_hierarchy_separator tessent_custom_mapping_regsub

  set ARGS(-mappings) [list]
  array set ARGS $args

  set mapped_paths $path_list
  if {[array size tessent_custom_mapping_regsub] > 0} {
    foreach custom_re [array names tessent_custom_mapping_regsub] {
      set mapped_paths [regsub -all $custom_re $mapped_paths $tessent_custom_mapping_regsub($custom_re)]
    }
  }
  array set map_array {
    [ ?
    ] ?
    ) ?
    ( ?
    . ?
    - ?
  }
  set map_array(%TSSEP%) $tessent_hierarchy_separator
  if {$tessent_hierarchy_separator ne "/"} {
    set map_array(/) $tessent_hierarchy_separator
  }
  if {[string is list $ARGS(-mappings)]} {
    array set map_array $ARGS(-mappings)
  }
  set mapped_paths [string map [array get map_array] $mapped_paths]
  return $mapped_paths
  
}
proc tessent_remap_vhdl_path_list {path_list args} {
  global tessent_path_cache
  set remapped_path_list [list]
  array set ARGS {
    -type cells
  }
  array set ARGS $args
  set type $ARGS(-type)
  set get_cmd "get_${type}"
  foreach path $path_list {
    # Check if we have that full path cached
    if {[info exists tessent_path_cache($path)]} {
      set pathMapped $tessent_path_cache($path)
    } else {
      set pathMapped ""
      set pathUnmapped ""
      foreach sub_path [split $path "/"] {
        if {$pathUnmapped eq ""} {
          set slash ""
        } else {
          set slash "/"
        }
        append pathUnmapped $slash $sub_path
        # Problematic paths are the following:
        #   - Paths with unrolled VHDL generate loops
        #   - non-standard change names that would trim the trailing underscore of multi-bit register names
        #   - Complex ports in some timing tools

        # Check if we have that hiercarchy cached
        if {[info exists tessent_path_cache($pathUnmapped)]} {
          set pathMapped $tessent_path_cache($pathUnmapped)
          continue
        }
        append pathMapped $slash $sub_path
        # If for port, go straight into Complex ports mapping
        if {$type eq "ports"} {
          # Some timing tools address complex identifiers like Tessent Shell: <id>.<id> 
          # Some other timing tools address those same complex construct like this <id>[<id>]
          # Try to exclude indexes from identifier as is bus was intact
          #     i.s. <id>.<id>[n] -> <id>[id][n]
          set pathMappedTemp [regsub -all {\.([^\.\[]+)} $pathMapped {[\1]}]
          if {[sizeof_collection [$get_cmd -quiet [tessent_map_to_verilog $pathMappedTemp]]] > 0} {
            set pathMapped $pathMappedTemp
            set tessent_path_cache($pathUnmapped) $pathMapped
            continue
          }
          # Try to include indexes as part of a full "escaped" identifier 
          #     i.e. <id>.<id>[n] -> <id>[<id>[n]]
          set pathMappedTemp [regsub -all {\.([^\.]+)} $pathMapped {[\1]}]
          if {[sizeof_collection [$get_cmd -quiet [tessent_map_to_verilog $pathMappedTemp]]] > 0} {
            set pathMapped $pathMappedTemp
            set tessent_path_cache($pathUnmapped) $pathMapped
            continue
          }
          # rest of the mappings are for cells
          continue
        }
        # Try verilog first on this hierarchy
        if {[sizeof_collection [$get_cmd -quiet [tessent_map_to_verilog $pathMapped]]] > 0} {
          set tessent_path_cache($pathUnmapped) $pathMapped
          continue
        }
        # Unrolled VHDL loop from HDLE - closing bracket of a generate loop identifier was removed
        set pathMappedTemp [regsub {[\])]\.} $pathMapped {.}]
        if {[sizeof_collection [$get_cmd -quiet [tessent_map_to_verilog $pathMappedTemp]]] > 0} {
          set pathMapped $pathMappedTemp
          set tessent_path_cache($pathUnmapped) $pathMapped
          continue
        }
        # Identifier that would simply have had its last character trimmed
        #   This would be an underscore, adding '?' to support some pre-mapped paths in constraints
        set pathMappedTemp [regsub {[\]\?]$} $pathMapped {}]
        if {[sizeof_collection [$get_cmd -quiet [tessent_map_to_verilog $pathMappedTemp]]] > 0} {
          set pathMapped $pathMappedTemp
          set tessent_path_cache($pathUnmapped) $pathMapped
          continue
        }
      }
    }
    lappend remapped_path_list $pathMapped 
  }
  return $remapped_path_list

}
proc tessent_remove_clock_groups {group_type group_name_list} {
  global tessent_timing_tool tessent_tck_clocks_group_created
  if {!$tessent_tck_clocks_group_created} {return}
  switch -- $tessent_timing_tool {
    dc_shell  {remove_clock_groups $group_type $group_name_list; set tessent_tck_clocks_group_created 0}
    pt_shell  {remove_clock_groups $group_type -name $group_name_list; set tessent_tck_clocks_group_created 0}
    encounter {#remove_clock_groups command does not exist}
    genus     {#remove_clock_groups command does not exist}
    default   {#do not assume remove_clock_groups exists}
  }
 
}
proc tessent_get_clock_source {clk} {
  global tessent_timing_tool
  set clockSource0 ""
  switch -- $tessent_timing_tool {
    encounter {set clockSource0 [lindex [get_attribute sources [tessent_get_clocks $clk]] 0]}
    genus     {set clockSource0 [lindex [get_db [tessent_get_clocks $clk] .sources] 0]}
    default   {set clockSource0 [index_collection [get_attribute [tessent_get_clocks $clk] sources] 0]}
  }
  return $clockSource0
 
}
proc tessent_set_clock_sense_stop_propagation {clk pin cell} {
  global tessent_timing_tool
  if {$tessent_timing_tool in {genus encounter} || ![get_attribute $cell is_hierarchical]} {
    set target $pin
  } else {
    set target ""
    foreach_in_collection ipin [tessent_get_pins [get_attribute $cell full_name]/*/*] {
      if {[get_attribute $ipin direction] eq "in" && [get_attribute [all_connected $ipin] full_name] eq [get_attribute $pin full_name]} {
        append_to_collection target $ipin
      }
    }
    if {[sizeof_collection $target] > 0} {
      puts "Tessent SDC note: Hierarchical pin '[get_attribute $pin full_name]' maps to libcell pin(s) [join [get_attribute $target full_name] ,]."
    } else {
      puts "Tessent SDC error: Failed to map hierarchical pin '[get_attribute $pin full_name]' to libcell pin."
      return
    }
  }
  if {$tessent_timing_tool eq "pt_shell"} {
    set_sense -type clock -clocks $clk -stop_propagation $target
  } else {
    set_clock_sense -clocks $clk -stop_propagation $target
  }
 
}
proc tessent_kill_functional_paths {{verbose OFF}} {

  global ClockSeqCellModuleRegExp ClockSeqCellInstanceRegExp
  global CreateDisabledFlopsReport
  global tessent_test_inst_regexp
  global tessent_clock_mapping tessent_unmapped_functional_clocks
  set funcFlops {}
  set mapped_functional_clocks [list]
  foreach clk $tessent_unmapped_functional_clocks {
    lappend mapped_functional_clocks $tessent_clock_mapping($clk)
  }
  if {[llength $mapped_functional_clocks] == 0} {return}
  foreach_in_collection clk [tessent_get_clocks $mapped_functional_clocks] {
      set funcFlops [add_to_collection $funcFlops [all_registers -clock $clk]]
  }
  
  set funcFlops [filter_collection $funcFlops -regexp full_name!~"$tessent_test_inst_regexp"]
  
  # Exclude memory cell instances and their collar flops
  
  set funcFlops [remove_from_collection $funcFlops [ list  \
    [tessent_get_mem_cells {ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/gb1_b/m0/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/gb1_b/m1/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/gs1_s/m0/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/p/gs1_s/m1/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i}] \
    [tessent_get_mem_cells {ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i}] ]]

  if {[sizeof_collection $funcFlops] > 0} {
    puts "\n##################### Disabling timing to all functional registers #############################"

    set use_set_disable_timing 0
 
    # Exclude clock gating sequential cells by their module name, if needed
    if [info exists ClockSeqCellModuleRegExp] {
      set excludeRegExp "ref_name=~\"${ClockSeqCellModuleRegExp}\""
      set CScells [filter_collection $funcFlops -regexp $excludeRegExp]
      puts "\nExcluding sequential clock cells instances: "
      foreach_in_collection flop $CScells {
         set flopName [get_attribute $flop full_name]
         puts "     $flopName"
      }
      set funcFlops [remove_from_collection $funcFlops $CScells]
      set use_set_disable_timing 1
    }
 
    # Exclude clock gating sequential cells by their instance name, if needed
    if [info exists ClockSeqCellInstanceRegExp] {
      set excludeRegExp "full_name=~\"${ClockSeqCellInstanceRegExp}\""
      set ClockCells [filter_collection $funcFlops -regexp $excludeRegExp]
      puts "\nExcluding instances: "
      foreach_in_collection flop $ClockCells {
         set flopName [get_attribute $flop full_name]
         puts "     $flopName"
      }
      set funcFlops [remove_from_collection $funcFlops $ClockCells]
      set use_set_disable_timing 1
    }
 
    # Disable all flops in $funcFlops
    set funcFlops [sort_collection $funcFlops full_name]
    if {$use_set_disable_timing} {
        puts "Disabling functional registers with a set_disable_timing command:"
    } else {
        puts "Disabling functional registers with a set_false_path -to command:"
    }
    foreach_in_collection flop $funcFlops {
        set flopName [get_attribute $flop full_name]
        if {$verbose == "ON"} {
            puts "Disabling register: $flopName"
        }
        if {$use_set_disable_timing} {
            set_disable_timing [tessent_get_pins $flopName/*]
        } else {
            set_false_path -to [tessent_get_cells $flopName]
        }
    }
 

    # Create report file
    if {[info exists CreateDisabledFlopsReport]} {
        puts "\ntessent_kill_functional_paths: Creating report file \"DisabledFunctionalFlops.report\". \n"
        redirect DisabledFunctionalFlops.report {
            foreach_in_collection flop $funcFlops {
                set flopName [get_attribute $flop full_name]
                puts "$flopName"
            }
        }
    }
 
  }
  
}
proc tessent_get_mem_cells {inpath} {
  set out_cells [tessent_get_cells $inpath]
  foreach_in_collection cell $out_cells {
    if {[get_attribute $cell is_hierarchical] eq "true"} {
      set cell_path [get_attribute $cell full_name]
      if {[sizeof_collection [get_cells -quiet "$cell_path/*"]]>0} {
        set out_cells [add_to_collection $out_cells [tessent_get_mem_cells "$cell_path/*"]]
      }
    }
  }
  return [filter_collection $out_cells "is_sequential==true"]
  
}
proc tessent_get_clocks {patternList args} {
  # Genus does not support more than one <pattern> for 'get_clocks <pattern>'
  set C {}
  foreach p $patternList {
    append_to_collection C [get_clocks $p {*}$args] -unique
  }
  return $C
 
}
proc tessent_get_preserve_instances {select} {
  # The 'select' argument identifies a list of instances to be returned.
  # The instances must be preserved in the post-synthesis netlist in order to perform further actions on it:
  #   add_core_instances
  #   scan_insertion       superset of 'add_core_instances' list
  #   icl_extract          superset of 'scan_insertion' list

  set persistent_design_instance_glob_list {
    tessent_persistent_cell_*
  }

  set scan_instrument_instance_list {
    firebird7_in_gate2_tessent_occ_clk_inst
    firebird7_in_gate2_tessent_edt_extest_edt_inst
    firebird7_in_gate2_tessent_edt_intest_edt_inst
    firebird7_in_gate2_tessent_ssn_pipe_ssn_output_pipe_inst
    firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_inst
    firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst
  }

  set scan_related_instance_list {
    firebird7_in_gate1_tessent_sib_sti_inst
  }

  set tcd_scan_instance_list {
  }

  set non_scan_instance_list {
    firebird7_in_gate1_tessent_scanmux_green_sec_mux_inst
    firebird7_in_gate1_tessent_scanmux_insysbist_sec_mux_inst
    firebird7_in_gate1_tessent_scanmux_orange_sec_mux_inst
    firebird7_in_gate1_tessent_scanmux_red_sec_mux_inst
    firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst
    firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst
    firebird7_in_gate1_tessent_sib_spare_green_inst
    firebird7_in_gate1_tessent_sib_spare_inst
    firebird7_in_gate1_tessent_sib_spare_insysbist_inst
    firebird7_in_gate1_tessent_sib_spare_orange_inst
    firebird7_in_gate1_tessent_sib_spare_red_inst
    firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst
    firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst
    firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst
    firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst
    firebird7_in_gate2_tessent_edt_extest_edt_tdr_inst
    firebird7_in_gate2_tessent_edt_intest_edt_tdr_inst
    firebird7_in_gate2_tessent_sib_edt_inst
    firebird7_in_gate2_tessent_sib_extest_edt_scan_bi_sol_inst
    firebird7_in_gate2_tessent_sib_intest_edt_scan_bi_sol_inst
    firebird7_in_gate2_tessent_sib_occ_inst
    firebird7_in_gate2_tessent_sib_sri_ctrl_inst
    firebird7_in_gate2_tessent_sib_sri_inst
    firebird7_in_gate2_tessent_sib_ssn_inst
    firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_control_inst
    firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status_inst
    firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_control_inst
    firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_status_inst
    firebird7_in_gate2_tessent_tdr_sri_ctrl_inst
    ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i
    ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_bisr_inst
    ph0/i/firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst
    ph0/i/firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst
    ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i
    ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_bisr_inst
    ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i
    ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_bisr_inst
    ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i
    ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_bisr_inst
    ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i
    ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_bisr_inst
    ph0/i/p/gb1_b/m0/mem0_i
    ph0/i/p/gb1_b/m0/mem0_i_bisr_inst
    ph0/i/p/gb1_b/m1/mem0_i
    ph0/i/p/gb1_b/m1/mem0_i_bisr_inst
    ph0/i/p/gs1_s/m0/mem0_i
    ph0/i/p/gs1_s/m0/mem0_i_bisr_inst
    ph0/i/p/gs1_s/m1/mem0_i
    ph0/i/p/gs1_s/m1/mem0_i_bisr_inst
    u_extest_edt_scan_bi_sol_0
    u_intest_edt_scan_bi_sol_0
  }

  set icl_design_instance_list {
    firebird7_in_gate1_tessent_sib_mbist_inst
    firebird7_in_gate1_tessent_tdr_sti_ctrl_inst
    ph0/firebird7_in_gate1_tessent_mbist_bap_inst
    ph0/i/d/m/g0_b0/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_25_inst
    ph0/i/d/m/g0_b0/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_65_inst
    ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g10_b10/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_14_inst
    ph0/i/d/m/g10_b10/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_54_inst
    ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g11_b11/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_13_inst
    ph0/i/d/m/g11_b11/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_53_inst
    ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g12_b12/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_11_inst
    ph0/i/d/m/g12_b12/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_51_inst
    ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g13_b13/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_10_inst
    ph0/i/d/m/g13_b13/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_50_inst
    ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g14_b14/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_49_inst
    ph0/i/d/m/g14_b14/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_9_inst
    ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g15_b15/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_48_inst
    ph0/i/d/m/g15_b15/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_8_inst
    ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g16_b16/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_47_inst
    ph0/i/d/m/g16_b16/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_7_inst
    ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g17_b17/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_46_inst
    ph0/i/d/m/g17_b17/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_6_inst
    ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g18_b18/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_45_inst
    ph0/i/d/m/g18_b18/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_5_inst
    ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g19_b19/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_44_inst
    ph0/i/d/m/g19_b19/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_4_inst
    ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g1_b1/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_24_inst
    ph0/i/d/m/g1_b1/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_64_inst
    ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g20_b20/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_3_inst
    ph0/i/d/m/g20_b20/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_43_inst
    ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g21_b21/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_2_inst
    ph0/i/d/m/g21_b21/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_42_inst
    ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g22_b22/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_31_inst
    ph0/i/d/m/g22_b22/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_71_inst
    ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g23_b23/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_30_inst
    ph0/i/d/m/g23_b23/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_70_inst
    ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g24_b24/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_29_inst
    ph0/i/d/m/g24_b24/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_69_inst
    ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g25_b25/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_28_inst
    ph0/i/d/m/g25_b25/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_68_inst
    ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g26_b26/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_27_inst
    ph0/i/d/m/g26_b26/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_67_inst
    ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g27_b27/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_26_inst
    ph0/i/d/m/g27_b27/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_66_inst
    ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g28_b28/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_23_inst
    ph0/i/d/m/g28_b28/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_63_inst
    ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g29_b29/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_12_inst
    ph0/i/d/m/g29_b29/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_52_inst
    ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g2_b2/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_22_inst
    ph0/i/d/m/g2_b2/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_62_inst
    ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g30_b30/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_1_inst
    ph0/i/d/m/g30_b30/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_41_inst
    ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g31_b31/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_0_inst
    ph0/i/d/m/g31_b31/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_40_inst
    ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g3_b3/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_21_inst
    ph0/i/d/m/g3_b3/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_61_inst
    ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g4_b4/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_20_inst
    ph0/i/d/m/g4_b4/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_60_inst
    ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g5_b5/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_19_inst
    ph0/i/d/m/g5_b5/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_59_inst
    ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g6_b6/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_18_inst
    ph0/i/d/m/g6_b6/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_58_inst
    ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g7_b7/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_17_inst
    ph0/i/d/m/g7_b7/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_57_inst
    ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g8_b8/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_16_inst
    ph0/i/d/m/g8_b8/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_56_inst
    ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/d/m/g9_b9/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_15_inst
    ph0/i/d/m/g9_b9/db/gen_100_dRam/firebird7_in_gate1_tessent_data_mux_55_inst
    ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst
    ph0/i/p/f/m/ram0/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_35_inst
    ph0/i/p/f/m/ram0/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_75_inst
    ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst
    ph0/i/p/f/m/ram1/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_34_inst
    ph0/i/p/f/m/ram1/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_74_inst
    ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst
    ph0/i/p/f/m/ram2/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_33_inst
    ph0/i/p/f/m/ram2/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_73_inst
    ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst
    ph0/i/p/f/m/ram3/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_32_inst
    ph0/i/p/f/m/ram3/gen_100_pRam/firebird7_in_gate1_tessent_data_mux_72_inst
    ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst
    ph0/i/p/gb1_b/m0/firebird7_in_gate1_tessent_data_mux_39_inst
    ph0/i/p/gb1_b/m0/firebird7_in_gate1_tessent_data_mux_79_inst
    ph0/i/p/gb1_b/m0/mem0_i_interface_inst
    ph0/i/p/gb1_b/m1/firebird7_in_gate1_tessent_data_mux_38_inst
    ph0/i/p/gb1_b/m1/firebird7_in_gate1_tessent_data_mux_78_inst
    ph0/i/p/gb1_b/m1/mem0_i_interface_inst
    ph0/i/p/gs1_s/m0/firebird7_in_gate1_tessent_data_mux_37_inst
    ph0/i/p/gs1_s/m0/firebird7_in_gate1_tessent_data_mux_77_inst
    ph0/i/p/gs1_s/m0/mem0_i_interface_inst
    ph0/i/p/gs1_s/m1/firebird7_in_gate1_tessent_data_mux_36_inst
    ph0/i/p/gs1_s/m1/firebird7_in_gate1_tessent_data_mux_76_inst
    ph0/i/p/gs1_s/m1/mem0_i_interface_inst
  }

  set keyList [list add_core_instances scan_insertion icl_extract]
  set concatDict {
    add_core_instances { persistent_design_instance_glob_list scan_instrument_instance_list scan_related_instance_list }
    scan_insertion     { tcd_scan_instance_list non_scan_instance_list }
    icl_extract        { icl_design_instance_list }
  }
  set instanceColl {}
  # Nothing to return when 'select' is unknown
  if { [lsearch -exact $keyList $select] < 0 } {
    return $instanceColl
  }
  # Assemble a superset list depending on the 'select' value
  # based on the list of list of variables names to concatenate
  # for each 'select' value.
  foreach {validSelect concatVarnameList} $concatDict {
    foreach concatVarname $concatVarnameList {
      set getCellsArg [expr {[string match *_glob_list $concatVarname] ? "-hierarchical" : ""}]
      foreach instancePattern [set $concatVarname] {
        append_to_collection instanceColl [tessent_get_cells $instancePattern -filter {is_hierarchical==true} $getCellsArg -silent] -unique
      }
    }
    if { $select eq $validSelect } {
      break
    }
  }
  return $instanceColl

}
proc tessent_get_size_only_instances {} {
  set persistent_cell_instance_glob_list {
    tessent_persistent_cell_*
  }

  set instanceColl {}
  foreach instancePattern $persistent_cell_instance_glob_list {
    append_to_collection instanceColl [get_cells $instancePattern -filter {is_hierarchical==false} -hierarchical -quiet] -unique
  }

  # Preserve MemoryBist scan observation logic in memory interfaces
  global mbist_info
  set mbist_interf_ids [lsearch -regexp -all -inline [dict keys $mbist_info] {^mbist[0-9]+_m[0-9]+$}]
  foreach mbist_interf_id $mbist_interf_ids {
    append_to_collection instanceColl [tessent_get_flops [list "[dict get $mbist_info $mbist_interf_id inst]/*SCAN_OBS_FLOPS*" "[dict get $mbist_info $mbist_interf_id inst]/*_SCAN_IN*"] -silent] -unique
  }

  return $instanceColl
}
proc tessent_get_optimize_instances {} {
  set optimize_instance_list {
    ph0/firebird7_in_gate1_tessent_mbist_bap_inst/firebird7_in_gate1_tessent_mbist_controller_sib_ctl_bypass_inst
    ph0/firebird7_in_gate1_tessent_mbist_bap_inst/firebird7_in_gate1_tessent_mbist_controller_sib_inst0
    ph0/firebird7_in_gate1_tessent_mbist_bap_inst/firebird7_in_gate1_tessent_mbist_controller_sib_tdr_bypass_inst
    ph0/firebird7_in_gate1_tessent_mbist_bap_inst/tdr_inst
    ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g0_b0/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g10_b10/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g11_b11/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g12_b12/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g13_b13/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g14_b14/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g15_b15/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g16_b16/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g17_b17/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g18_b18/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g19_b19/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g1_b1/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g20_b20/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g21_b21/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g22_b22/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g23_b23/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g24_b24/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g25_b25/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g26_b26/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g27_b27/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g28_b28/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g29_b29/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g2_b2/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g30_b30/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g31_b31/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g3_b3/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g4_b4/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g5_b5/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g6_b6/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g7_b7/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g8_b8/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/d/m/g9_b9/db/gen_100_dRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_ADD_FORMAT
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_ADD_GEN
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_CTL_COMP
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_DATA_GEN
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_DELAYCOUNTER
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_FSM
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_POINTER_CNTRL
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_REPEAT_LOOP_CNTRL
    ph0/i/firebird7_in_gate1_tessent_mbist_c1_controller_inst/MBISTPG_SIGNAL_GEN
    ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/f/m/ram0/gen_100_pRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/f/m/ram1/gen_100_pRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/f/m/ram2/gen_100_pRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/f/m/ram3/gen_100_pRam/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/gb1_b/m0/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/gb1_b/m0/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/gb1_b/m0/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/gb1_b/m1/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/gb1_b/m1/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/gb1_b/m1/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/gs1_s/m0/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/gs1_s/m0/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/gs1_s/m0/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
    ph0/i/p/gs1_s/m1/mem0_i_interface_inst/MBISTPG_STATUS
    ph0/i/p/gs1_s/m1/mem0_i_interface_inst/MBIST_ColumnRedundancyAnalysis
    ph0/i/p/gs1_s/m1/mem0_i_interface_inst/MBIST_RowRedundancyAnalysis_INST
  }

  set instanceColl {}
  foreach instancePattern $optimize_instance_list {
    append_to_collection instanceColl [tessent_get_cells $instancePattern -silent]
  }
  return $instanceColl

}

# Provide pre-2021.2 tessent-shell plugin proc mapping to 2021.3 convention, 
# so as to maintain backward-compatibility with older customer scripts.
set tessent_old_2_new_proc_name_mapping {
  {tessent_constrain_firebird7_in_mentor_ltest_modal_edt_fast_capture tessent_set_ltest_modal_edt_fast_capture no}
  {tessent_constrain_firebird7_in_mentor_ijtag_non_modal tessent_set_ijtag_non_modal no}
  {tessent_constrain_firebird7_in_mentor_ltest_create_clocks tessent_set_ltest_create_clocks no}
  {tessent_constrain_firebird7_in_mentor_ltest_set_pin_delays tessent_set_ltest_set_pin_delays no}
  {tessent_constrain_firebird7_in_mentor_ltest_modal_bypass_shift tessent_set_ltest_modal_bypass_shift no}
  {tessent_constrain_firebird7_in_mentor_memory_bisr_non_modal tessent_set_memory_bisr_non_modal no}
  {tessent_constrain_firebird7_in_mentor_ltest_ssn tessent_set_ltest_ssn no}
  {tessent_constrain_firebird7_in_mentor_memory_bist_non_modal tessent_set_memory_bist_non_modal no}
  {tessent_constrain_firebird7_in_mentor_ltest_occ tessent_set_ltest_occ no}
  {tessent_constrain_firebird7_in_mentor_ltest_set_timing_variables_default tessent_set_ltest_set_timing_variables_default no}
  {tessent_constrain_firebird7_in_non_modal tessent_set_non_modal yes}
  {tessent_constrain_firebird7_in_mentor_ltest_modal_shift tessent_set_ltest_modal_shift no}
  {tessent_constrain_firebird7_in_mentor_memory_bist_modal tessent_set_memory_bist_modal no}
  {tessent_constrain_firebird7_in_mentor_ltest_disable tessent_set_ltest_disable yes}
  {tessent_constrain_firebird7_in_mentor_ltest_relax_xdomain_capture_paths tessent_set_ltest_relax_xdomain_capture_paths yes}
  {tessent_constrain_firebird7_in_mentor_ltest_ssh tessent_set_ltest_ssh yes}
  {tessent_constrain_firebird7_in_mentor_ltest_ssh_tck_timing tessent_set_ltest_ssh_tck_timing no}
  {tessent_constrain_firebird7_in_mentor_ltest_modal_edt_shift tessent_set_ltest_modal_edt_shift no}
  {tessent_constrain_firebird7_in_mentor_ltest_core_external_mode tessent_set_ltest_core_external_mode no}
  {tessent_constrain_firebird7_in_mentor_ltest_add_ssh_occ_dictionaries tessent_set_ltest_add_ssh_occ_dictionaries no}
  {tessent_constrain_firebird7_in_mentor_ltest_non_modal tessent_set_ltest_non_modal yes}
  {tessent_constrain_firebird7_in_mentor_ltest_pb_external_mode tessent_set_ltest_pb_external_mode no}
  {tessent_constrain_firebird7_in_mentor_ltest_modal_edt_slow_capture tessent_set_ltest_modal_edt_slow_capture no}
}
foreach line $tessent_old_2_new_proc_name_mapping {
  lassign $line old_proc_name new_proc_name arguments
  if {$arguments eq "yes"} {
    proc $old_proc_name args "$new_proc_name {*}\$args"
  } else {
    proc $old_proc_name {} $new_proc_name
  }
}
    
