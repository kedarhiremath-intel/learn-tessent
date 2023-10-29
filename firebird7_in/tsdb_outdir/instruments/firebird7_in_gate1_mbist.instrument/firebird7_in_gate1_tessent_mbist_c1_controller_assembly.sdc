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
#       Created on: Sun Oct 29 14:15:23 PDT 2023
#--------------------------------------------------------------------------

#
#  Procs table of content:
#
#    tessent_set_default_variables
#    tessent_create_functional_clocks
#    tessent_set_ijtag_non_modal
#    tessent_set_non_modal
#    set_ijtag_retargeting_options
#    tessent_set_memory_bist_non_modal
#    tessent_set_memory_bist_modal
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
  global time_unit_multiplier tessent_tck_period tessent_tck_clocks_list tessent_clock_mapping tessent_input_delay_percentage tessent_output_delay_percentage tessent_tck_clocks_group_created tessent_extra_control_setup_hold_cycles tessent_extra_tms_setup_hold_cycles tessent_mbist_create_bap_tck_generated_clock mbist_info tessent_hierarchy_separator tessent_path_cache tessent_timing_tool tessent_test_inst_regexp tessent_unmapped_functional_clocks
  #
  # This proc defines the default value of the variables used in instrument timing constraints
  #

  # Time units assumed ns
  set time_unit_multiplier 1.0

  set tessent_tck_period 100.0

  set tessent_tck_clocks_list [list tessent_tck]

  # Override these array elements to map to your clock names if you define your own clocks
  array set tessent_clock_mapping {
    tessent_tck tessent_tck
    clk_clk_bbm clk_clk_bbm
  }

  set tessent_input_delay_percentage 0.25

  set tessent_output_delay_percentage 0.25

  set tessent_tck_clocks_group_created 0

  set tessent_extra_control_setup_hold_cycles 0

  set tessent_extra_tms_setup_hold_cycles 0

  # You can set this variable to 0 if you do not want to create a generated clock inside the MemoryBist BAP instances.
  #  The drawback of doing this will be that clock tree synthesis will have to balance TCK from the BAP to the controllers and interfaces.
  set tessent_mbist_create_bap_tck_generated_clock 1

  # Use this mapping to find which unique identifier maps to which controller or interface instance.
  set mbist_info {
    bap1 {
      shift_en_port shift_en
      inst firebird7_in_gate1_tessent_mbist_bap_inst
      tck_type port
      tck tck
      to_bist toBist_reg
      from_bist fromBist_retime_reg
    }
    mbist1 {
      inst firebird7_in_gate1_tessent_mbist_c1_controller_inst
      bap_id bap1
      bist_port 0
      async_interface_present false
    }
    mbist1_m1 {inst m1_interface_instance}
    mbist1_m1_memory {inst m1_inst}
    mbist1_m2 {inst m2_interface_instance}
    mbist1_m2_memory {inst m2_inst}
    mbist1_m3 {inst m11_interface_instance}
    mbist1_m3_memory {inst m11_inst}
    mbist1_m4 {inst m12_interface_instance}
    mbist1_m4_memory {inst m12_inst}
    mbist1_m5 {inst m13_interface_instance}
    mbist1_m5_memory {inst m13_inst}
    mbist1_m6 {inst m14_interface_instance}
    mbist1_m6_memory {inst m14_inst}
    mbist1_m7 {inst m15_interface_instance}
    mbist1_m7_memory {inst m15_inst}
    mbist1_m8 {inst m16_interface_instance}
    mbist1_m8_memory {inst m16_inst}
    mbist1_m9 {inst m17_interface_instance}
    mbist1_m9_memory {inst m17_inst}
    mbist1_m10 {inst m18_interface_instance}
    mbist1_m10_memory {inst m18_inst}
    mbist1_m11 {inst m19_interface_instance}
    mbist1_m11_memory {inst m19_inst}
    mbist1_m12 {inst m20_interface_instance}
    mbist1_m12_memory {inst m20_inst}
    mbist1_m13 {inst m3_interface_instance}
    mbist1_m13_memory {inst m3_inst}
    mbist1_m14 {inst m21_interface_instance}
    mbist1_m14_memory {inst m21_inst}
    mbist1_m15 {inst m22_interface_instance}
    mbist1_m15_memory {inst m22_inst}
    mbist1_m16 {inst m23_interface_instance}
    mbist1_m16_memory {inst m23_inst}
    mbist1_m17 {inst m24_interface_instance}
    mbist1_m17_memory {inst m24_inst}
    mbist1_m18 {inst m25_interface_instance}
    mbist1_m18_memory {inst m25_inst}
    mbist1_m19 {inst m26_interface_instance}
    mbist1_m19_memory {inst m26_inst}
    mbist1_m20 {inst m27_interface_instance}
    mbist1_m20_memory {inst m27_inst}
    mbist1_m21 {inst m28_interface_instance}
    mbist1_m21_memory {inst m28_inst}
    mbist1_m22 {inst m29_interface_instance}
    mbist1_m22_memory {inst m29_inst}
    mbist1_m23 {inst m30_interface_instance}
    mbist1_m23_memory {inst m30_inst}
    mbist1_m24 {inst m4_interface_instance}
    mbist1_m24_memory {inst m4_inst}
    mbist1_m25 {inst m31_interface_instance}
    mbist1_m25_memory {inst m31_inst}
    mbist1_m26 {inst m32_interface_instance}
    mbist1_m26_memory {inst m32_inst}
    mbist1_m27 {inst m33_interface_instance}
    mbist1_m27_memory {inst m33_inst}
    mbist1_m28 {inst m34_interface_instance}
    mbist1_m28_memory {inst m34_inst}
    mbist1_m29 {inst m35_interface_instance}
    mbist1_m29_memory {inst m35_inst}
    mbist1_m30 {inst m36_interface_instance}
    mbist1_m30_memory {inst m36_inst}
    mbist1_m31 {inst m37_interface_instance}
    mbist1_m31_memory {inst m37_inst}
    mbist1_m32 {inst m38_interface_instance}
    mbist1_m32_memory {inst m38_inst}
    mbist1_m33 {inst m39_interface_instance}
    mbist1_m33_memory {inst m39_inst}
    mbist1_m34 {inst m40_interface_instance}
    mbist1_m34_memory {inst m40_inst}
    mbist1_m35 {inst m5_interface_instance}
    mbist1_m35_memory {inst m5_inst}
    mbist1_m36 {inst m6_interface_instance}
    mbist1_m36_memory {inst m6_inst}
    mbist1_m37 {inst m7_interface_instance}
    mbist1_m37_memory {inst m7_inst}
    mbist1_m38 {inst m8_interface_instance}
    mbist1_m38_memory {inst m8_inst}
    mbist1_m39 {inst m9_interface_instance}
    mbist1_m39_memory {inst m9_inst}
    mbist1_m40 {inst m10_interface_instance}
    mbist1_m40_memory {inst m10_inst}
  }

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
  

  set tessent_test_inst_regexp {(.*_tessent_mbist_.*|.*_interface_inst.*)}

  # Default set of unmapped functional clocks. To be mapped with tessent_clock_mapping array for real clock names.
  # Populated by tessent_create_functional_clocks.
  set tessent_unmapped_functional_clocks [list ]

}
proc tessent_create_functional_clocks {} {
global time_unit_multiplier tessent_clock_mapping tessent_unmapped_functional_clocks
  create_clock [tessent_get_ports [list {clk_clk_bbm}]]  \
    -period [expr 0.783*$time_unit_multiplier] \
    -name $tessent_clock_mapping(clk_clk_bbm) -add


  set tessent_unmapped_functional_clocks [lsort -unique [concat $tessent_unmapped_functional_clocks [list clk_clk_bbm]]]
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
    create_clock [tessent_get_ports [list {tck}]]  \
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
  set_false_path -from [tessent_get_ports [list {reset}]] 
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {capture_en}]  -clock_fall
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {shift_en}]  -clock_fall
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {update_en}] 
  set_input_delay $local_controls_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {ijtag_select}]  -clock_fall
  set_input_delay $local_input_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {si}]  -clock_fall
  set_output_delay $local_output_delay -clock $tessent_clock_mapping(tessent_tck) [tessent_get_ports {so}] 
  if {$tessent_extra_control_setup_hold_cycles > 0} {
    # Relaxing capture/shift/update timing with extra_control_setup_hold_cycles value
    set_multicycle_path -setup [expr 1 + $tessent_extra_control_setup_hold_cycles] \
        -from [tessent_get_ports [concat  \
            {bisr_se} \
            {shift_en} \
            {capture_en} \
            {update_en}]] 
    set_multicycle_path -hold [expr 2 * $tessent_extra_control_setup_hold_cycles] \
        -from [tessent_get_ports [concat  \
            {bisr_se} \
            {shift_en} \
            {capture_en} \
            {update_en}]] 
  }
  # Relaxing select timing with extra_control_setup_hold_cycles value, select can already be relaxed and its setup is additionally relaxed by stretching around capture_en rising edge
  set_multicycle_path -setup [expr 2 + (3 * $tessent_extra_control_setup_hold_cycles)] \
      -from [tessent_get_ports [list {ijtag_select}]] 
  set_multicycle_path -hold [expr 2 + (5 * $tessent_extra_control_setup_hold_cycles)] \
      -from [tessent_get_ports [list {ijtag_select}]] 
  
}
proc tessent_set_non_modal {} {
  tessent_set_ijtag_non_modal
  tessent_set_memory_bist_non_modal
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
proc tessent_set_memory_bist_non_modal {} {  
  
  global mbist_info tessent_clock_mapping tessent_apply_mbist_mux_constraints tessent_mbist_create_bap_tck_generated_clock tessent_tck_clocks_list tessent_tck_clocks_group_created 
  
    set bap1_interfaces_tck_name bap1_interfaces_tck
    set bap1_tck_name bap1_tck
  if {$tessent_mbist_create_bap_tck_generated_clock} {
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_C_TCK/clkout]  \
      -name $bap1_tck_name \
      -source [tessent_get_ports [list {tck}]]  \
      -add -master_clock $tessent_clock_mapping(tessent_tck) \
      -divide_by 1 \
      -combinational
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_I_TCK/clkout]  \
      -name $bap1_interfaces_tck_name \
      -source [tessent_get_ports [list {tck}]]  \
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
    # TCK from the BAP must only constrain the shift path, block false same-edge paths, they are constrained with functional clock
    set_false_path -rise_from [tessent_get_clocks $bap1_tck_name] -rise_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -rise_from [tessent_get_clocks $bap1_interfaces_tck_name] -rise_to [tessent_get_clocks $bap1_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_tck_name] -fall_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_interfaces_tck_name] -fall_to [tessent_get_clocks $bap1_tck_name]
  } else {
    set bap1_tck_clocks [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]
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
  set bap1_stable_buffers_l [list]
  lappend bap1_stable_buffers_l [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_MBISTPG_STABLE/o
  
  # Same edge (p->p) timing paths through these controller buffers are false path by protocol
  set_false_path -rise_from $bap1_tck_clocks -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_done_buffers_l $bap1_stable_buffers_l]]
  # Opposite edge (n->p) timing paths through these controller buffers are MCP 2 by protocol
  set_multicycle_path 2 -setup -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_stable_buffers_l]]
  set_multicycle_path 1 -hold  -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_stable_buffers_l]]
  
  ## Constraints for memory_bist controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INSTRUCTION*_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INSTRUCTION*_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_COUNTERA_ENDCOUNT_TRIGGER/o \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_COUNTERA_ENDCOUNT_TRIGGER/o \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1?]] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG2* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG0* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT*]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG2* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG0* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
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
  
  ## Constraints for memory_bist interface 'm1_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm2_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm11_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm12_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm13_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm14_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm15_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm16_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm17_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm18_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm19_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm20_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm3_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm21_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm22_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm23_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm24_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm25_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm26_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm27_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm28_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm29_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm30_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm4_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm31_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm32_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm33_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm34_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm35_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm36_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm37_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm38_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm39_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm40_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm5_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm6_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm7_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm8_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm9_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm10_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
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
  set_false_path -from [remove_from_collection [all_inputs] [tessent_get_ports [list bisr_clock bisr_se bisr_si capture_en clk_clk_bbm shift_en si tck update_en]] ] 
  set_false_path -to [remove_from_collection [all_outputs] [tessent_get_ports [list bisr_so so]] ] 
    set bap1_interfaces_tck_name bap1_interfaces_tck
    set bap1_tck_name bap1_tck
  if {$tessent_mbist_create_bap_tck_generated_clock} {
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_C_TCK/clkout]  \
      -name $bap1_tck_name \
      -source [tessent_get_ports [list {tck}]]  \
      -add -master_clock $tessent_clock_mapping(tessent_tck) \
      -divide_by 1 \
      -combinational
    create_generated_clock [tessent_get_pins [dict get $mbist_info bap1 inst]/tessent_persistent_cell_BUF_I_TCK/clkout]  \
      -name $bap1_interfaces_tck_name \
      -source [tessent_get_ports [list {tck}]]  \
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
    # TCK from the BAP must only constrain the shift path, block false same-edge paths, they are constrained with functional clock
    set_false_path -rise_from [tessent_get_clocks $bap1_tck_name] -rise_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -rise_from [tessent_get_clocks $bap1_interfaces_tck_name] -rise_to [tessent_get_clocks $bap1_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_tck_name] -fall_to [tessent_get_clocks $bap1_interfaces_tck_name]
    set_false_path -fall_from [tessent_get_clocks $bap1_interfaces_tck_name] -fall_to [tessent_get_clocks $bap1_tck_name]
  } else {
    set bap1_tck_clocks [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]
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
  set bap1_stable_buffers_l [list]
  lappend bap1_stable_buffers_l [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_MBISTPG_STABLE/o
  
  # Same edge (p->p) timing paths through these controller buffers are false path by protocol
  set_false_path -rise_from $bap1_tck_clocks -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_done_buffers_l $bap1_stable_buffers_l]]
  # Opposite edge (n->p) timing paths through these controller buffers are MCP 2 by protocol
  set_multicycle_path 2 -setup -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_stable_buffers_l]]
  set_multicycle_path 1 -hold  -fall_from [tessent_get_clocks $tessent_clock_mapping(tessent_tck)] -rise_to [tessent_get_clocks $tessent_clock_mapping(tessent_tck)]\
         -through [tessent_get_pins [concat $bap1_go_buffers_l $bap1_stable_buffers_l]]
  
  ## Constraints for memory_bist controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [concat  \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7?]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_CTL_COMP/STOP_ON_ERROR*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_CONFIG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MICROCODE_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/ALGO_SEL_CNT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/REDUCED_ADDR_CNT_EN_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/DIAG_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/BIRA_EN_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_SELECT_REG*] 
  set_multicycle_path -setup 3 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MEM_ARRAY_DUMP_MODE_R*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MIN*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/Y_ADD_CNT_MAX*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MIN*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/X_ADD_CNT_MAX*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INSTRUCTION*_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INSTRUCTION*_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_BIST_RUN/o] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/LAST_STATE_DONE_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?0?]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD*_CMD** \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_LOOP_CMD**]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_COUNTERA_ENDCOUNT_TRIGGER/o \
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/INST_POINTER*]] \
      -through [tessent_get_pins [concat  \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_X0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y1_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_Y0_MINMAX_TRIGGER/o \
          [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_COUNTERA_ENDCOUNT_TRIGGER/o \
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
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/EDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/WDATA_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/RUNTEST_EN_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_FSM/STATE*]] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1?]] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG**] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?1? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?0? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?1?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] \
      -through [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR*]] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?3? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?4? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?5? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?6? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG_reg?7? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG_reg?2? \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG_reg?2?]] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/A_SCAN_REGISTER*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/B_SCAN_REGISTER*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_SIGNAL_GEN/OPSET_SELECT_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_MAX_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP_POINTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP1_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP2_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_A_LOOP3_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_MAX_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP_POINTER_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP1_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP2_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/CNTR_B_LOOP3_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -setup 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -hold 0 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/X_ADDR_BIT_SEL_REG*] 
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1 inst]/MBISTPG_DATA_GEN/Y_ADDR_BIT_SEL_REG*] \
      -to [tessent_get_clocks $tessent_clock_mapping(clk_clk_bbm)] 
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
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG2* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG0* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_DELAYCOUNTER/DELAYCOUNTER_CNT*]] \
      -through [tessent_get_pins [dict get $mbist_info mbist1 inst]/tessent_persistent_cell_INH_LAST_ADDR_CNT/o] \
      -to [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BX_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/AY_ADD_REG* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_ADD_GEN/BY_ADD_REG*]] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [concat  \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG2* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG1* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT_REG0* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_A_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_REPEAT_LOOP_CNTRL/LOOP_B_CNTR* \
          [dict get $mbist_info mbist1 inst]/MBISTPG_COUNTER_A/COUNTERA_CNT* \
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
  
  ## Constraints for memory_bist interface 'm1_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m1 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m1 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm2_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m2 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m2 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm11_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m3 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m3 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm12_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m4 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m4 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm13_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m5 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m5 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm14_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m6 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m6 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm15_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m7 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m7 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm16_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m8 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m8 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm17_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m9 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m9 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm18_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m10 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m10 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm19_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m11 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m11 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm20_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m12 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m12 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm3_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m13 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m13 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm21_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m14 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m14 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm22_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m15 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m15 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm23_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m16 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m16 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm24_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m17 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m17 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm25_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m18 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m18 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm26_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m19 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m19 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm27_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m20 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m20 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm28_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m21 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m21 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm29_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m22 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m22 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm30_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m23 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m23 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm4_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m24 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m24 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm31_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m25 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m25 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm32_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m26 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m26 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm33_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m27 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m27 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm34_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m28 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m28 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm35_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m29 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m29 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm36_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m30 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m30 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm37_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m31 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m31 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm38_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m32 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m32 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm39_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m33 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m33 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm40_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m34 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m34 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm5_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m35 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m35 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm6_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m36 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m36 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm7_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m37 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m37 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm8_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m38 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m38 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm9_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m39 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m39 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
  ## Constraints for memory_bist interface 'm10_interface_instance'
  ##   of controller 'firebird7_in_gate1_tessent_mbist_c1_controller_inst'
  
  set_multicycle_path -setup 2 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -hold 1 \
      -from [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/BIST_INPUT_SELECT*] \
      -through [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_INPUT_SELECT_INT/o] 
  set_multicycle_path -setup 2 -start \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  set_multicycle_path -hold  1 -end   \
      -from [tessent_get_clocks [list $tessent_clock_mapping(clk_clk_bbm)]] \
      -through [tessent_get_cells [list [dict get $mbist_info mbist1 inst]/MBISTPG_POINTER_CNTRL/EXECUTE_ADD_REG_SELECT**]] \
      -to   [tessent_get_cells [dict get $mbist_info mbist1_m40 inst]/q_SCAN_IN*]  
  
  set_disable_timing  [tessent_get_pins [dict get $mbist_info mbist1_m40 inst]/tessent_persistent_cell_BIST_CLK_OR_TCK/s] 
  
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
    [tessent_get_mem_cells {m1_inst}] \
    [tessent_get_mem_cells {m2_inst}] \
    [tessent_get_mem_cells {m11_inst}] \
    [tessent_get_mem_cells {m12_inst}] \
    [tessent_get_mem_cells {m13_inst}] \
    [tessent_get_mem_cells {m14_inst}] \
    [tessent_get_mem_cells {m15_inst}] \
    [tessent_get_mem_cells {m16_inst}] \
    [tessent_get_mem_cells {m17_inst}] \
    [tessent_get_mem_cells {m18_inst}] \
    [tessent_get_mem_cells {m19_inst}] \
    [tessent_get_mem_cells {m20_inst}] \
    [tessent_get_mem_cells {m3_inst}] \
    [tessent_get_mem_cells {m21_inst}] \
    [tessent_get_mem_cells {m22_inst}] \
    [tessent_get_mem_cells {m23_inst}] \
    [tessent_get_mem_cells {m24_inst}] \
    [tessent_get_mem_cells {m25_inst}] \
    [tessent_get_mem_cells {m26_inst}] \
    [tessent_get_mem_cells {m27_inst}] \
    [tessent_get_mem_cells {m28_inst}] \
    [tessent_get_mem_cells {m29_inst}] \
    [tessent_get_mem_cells {m30_inst}] \
    [tessent_get_mem_cells {m4_inst}] \
    [tessent_get_mem_cells {m31_inst}] \
    [tessent_get_mem_cells {m32_inst}] \
    [tessent_get_mem_cells {m33_inst}] \
    [tessent_get_mem_cells {m34_inst}] \
    [tessent_get_mem_cells {m35_inst}] \
    [tessent_get_mem_cells {m36_inst}] \
    [tessent_get_mem_cells {m37_inst}] \
    [tessent_get_mem_cells {m38_inst}] \
    [tessent_get_mem_cells {m39_inst}] \
    [tessent_get_mem_cells {m40_inst}] \
    [tessent_get_mem_cells {m5_inst}] \
    [tessent_get_mem_cells {m6_inst}] \
    [tessent_get_mem_cells {m7_inst}] \
    [tessent_get_mem_cells {m8_inst}] \
    [tessent_get_mem_cells {m9_inst}] \
    [tessent_get_mem_cells {m10_inst}] ]]

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
    tessent_persistent*
  }

  set scan_instrument_instance_list {
  }

  set scan_related_instance_list {
  }

  set tcd_scan_instance_list {
  }

  set non_scan_instance_list {
    c1_gate1_m10_bisr_inst
    c1_gate1_m11_bisr_inst
    c1_gate1_m12_bisr_inst
    c1_gate1_m13_bisr_inst
    c1_gate1_m14_bisr_inst
    c1_gate1_m15_bisr_inst
    c1_gate1_m16_bisr_inst
    c1_gate1_m17_bisr_inst
    c1_gate1_m18_bisr_inst
    c1_gate1_m19_bisr_inst
    c1_gate1_m1_bisr_inst
    c1_gate1_m20_bisr_inst
    c1_gate1_m21_bisr_inst
    c1_gate1_m22_bisr_inst
    c1_gate1_m23_bisr_inst
    c1_gate1_m24_bisr_inst
    c1_gate1_m25_bisr_inst
    c1_gate1_m26_bisr_inst
    c1_gate1_m27_bisr_inst
    c1_gate1_m28_bisr_inst
    c1_gate1_m29_bisr_inst
    c1_gate1_m2_bisr_inst
    c1_gate1_m30_bisr_inst
    c1_gate1_m31_bisr_inst
    c1_gate1_m32_bisr_inst
    c1_gate1_m33_bisr_inst
    c1_gate1_m34_bisr_inst
    c1_gate1_m35_bisr_inst
    c1_gate1_m36_bisr_inst
    c1_gate1_m37_bisr_inst
    c1_gate1_m38_bisr_inst
    c1_gate1_m39_bisr_inst
    c1_gate1_m3_bisr_inst
    c1_gate1_m40_bisr_inst
    c1_gate1_m4_bisr_inst
    c1_gate1_m5_bisr_inst
    c1_gate1_m6_bisr_inst
    c1_gate1_m7_bisr_inst
    c1_gate1_m8_bisr_inst
    c1_gate1_m9_bisr_inst
    m10_inst
    m11_inst
    m12_inst
    m13_inst
    m14_inst
    m15_inst
    m16_inst
    m17_inst
    m18_inst
    m19_inst
    m1_inst
    m20_inst
    m21_inst
    m22_inst
    m23_inst
    m24_inst
    m25_inst
    m26_inst
    m27_inst
    m28_inst
    m29_inst
    m2_inst
    m30_inst
    m31_inst
    m32_inst
    m33_inst
    m34_inst
    m35_inst
    m36_inst
    m37_inst
    m38_inst
    m39_inst
    m3_inst
    m40_inst
    m4_inst
    m5_inst
    m6_inst
    m7_inst
    m8_inst
    m9_inst
  }

  set icl_design_instance_list {
    firebird7_in_gate1_tessent_mbist_bap_inst
    firebird7_in_gate1_tessent_mbist_c1_controller_inst
    m10_interface_instance
    m11_interface_instance
    m12_interface_instance
    m13_interface_instance
    m14_interface_instance
    m15_interface_instance
    m16_interface_instance
    m17_interface_instance
    m18_interface_instance
    m19_interface_instance
    m1_interface_instance
    m20_interface_instance
    m21_interface_instance
    m22_interface_instance
    m23_interface_instance
    m24_interface_instance
    m25_interface_instance
    m26_interface_instance
    m27_interface_instance
    m28_interface_instance
    m29_interface_instance
    m2_interface_instance
    m30_interface_instance
    m31_interface_instance
    m32_interface_instance
    m33_interface_instance
    m34_interface_instance
    m35_interface_instance
    m36_interface_instance
    m37_interface_instance
    m38_interface_instance
    m39_interface_instance
    m3_interface_instance
    m40_interface_instance
    m4_interface_instance
    m5_interface_instance
    m6_interface_instance
    m7_interface_instance
    m8_interface_instance
    m9_interface_instance
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
    tessent_persistent*
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
}

# Provide pre-2021.2 tessent-shell plugin proc mapping to 2021.3 convention, 
# so as to maintain backward-compatibility with older customer scripts.
set tessent_old_2_new_proc_name_mapping {
  {tessent_constrain_firebird7_in_gate1_tessent_mbist_c1_controller_assembly_non_modal tessent_set_non_modal no}
  {tessent_constrain_firebird7_in_gate1_tessent_mbist_c1_controller_assembly_mentor_memory_bist_non_modal tessent_set_memory_bist_non_modal no}
  {tessent_constrain_firebird7_in_gate1_tessent_mbist_c1_controller_assembly_mentor_ijtag_non_modal tessent_set_ijtag_non_modal no}
  {tessent_constrain_firebird7_in_gate1_tessent_mbist_c1_controller_assembly_mentor_memory_bist_modal tessent_set_memory_bist_modal no}
}
foreach line $tessent_old_2_new_proc_name_mapping {
  lassign $line old_proc_name new_proc_name arguments
  if {$arguments eq "yes"} {
    proc $old_proc_name args "$new_proc_name {*}\$args"
  } else {
    proc $old_proc_name {} $new_proc_name
  }
}
    
