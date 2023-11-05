# compile_local {{{
if { [info commands compile_local] eq "" } {
  proc compile_local {args} {
    set dont_touch_instances [get_cells -filter {is_hierarchical==false} -hierarchical tessent_persistent_cell_* ]
    if {[sizeof_collection $dont_touch_instances] > 0 } { set_dont_touch $dont_touch_instances }
    eval compile -scan $args
    set_app_var verilogout_no_tri true
    change_names -hier -verbose -rules slash
    change_names -hier -verbose -rules exclamation_rule
    change_names -hier -verbose -rules open_bracket
    change_names -hier -verbose -rules close_bracket
    change_names -hier -verbose -rules standard_names
    change_names -hier -verbose -rules standard_netnames
    change_names -hier -verbose -rules reg_names
  }
}
#}}}

# Setup and utility procedures {{{
set_app_var hdlin_enable_upf_compatible_naming true
set_app_var hdlin_mux_size_only 2

proc check_modules { module_list } {
  set local_error_status 0
  set curDesignName [get_object_name [current_design]]
  set curDesignMod  ""
  set modList [list]
  foreach moduleNameRaw $module_list {
    set doRemove [expr {[string index $moduleNameRaw 0] eq "-"}]
    set moduleName [string trimleft $moduleNameRaw "-"]
    set addCurrentDesign [expr {$curDesignName eq $moduleName ||  $curDesignName eq [string trimright $moduleName *]}]
    set moduleCollection [get_designs -hierarchical ${moduleName} -quiet]
    if { [sizeof_collection $moduleCollection] == 0 } {
      if { !$doRemove } {
        set moduleCollection [get_designs ${moduleName}_0 -quiet]
        if { [sizeof_collection $moduleCollection] == 1 } {
          rename_design $moduleCollection $moduleName
          lappend modList $moduleName
        } elseif { $addCurrentDesign } {
          set curDesignMod $curDesignName
        } else {
          puts "Error: at least one module with name '${moduleName}' or '${moduleName}_0' is expected."
          incr local_error_status
        }
      }
    } else {
      if { $doRemove } {
        foreach foundModuleName [get_object_name $moduleCollection] {
          set modList [lsearch -all -exact -inline -not $modList $foundModuleName]
        }
      } else {
        if { $addCurrentDesign } {
          set curDesignMod $curDesignName
        }
        foreach foundModuleName [get_object_name $moduleCollection] {
          if { $foundModuleName ne $curDesignName} {
            lappend modList $foundModuleName
          }
        }
      }
    }
  }
  if { $local_error_status > 0 } {
    exit 1
  }
  return [concat $curDesignMod $modList]
}
proc get_child_instances_list { { instance_name_list {{}} } } {
  set L [list]
  foreach instance_name $instance_name_list {
    set pfx [expr {$instance_name eq "" ? "" : "${instance_name}/"}]
    foreach_in_collection c [get_cells ${pfx}* -quiet -filter is_hierarchical==true] {
      lappend L [get_object_name $c]
    }
  }
  return $L
}
proc set_boundary_optimization_on_instances { instances_list state } {
  set C {}
  redirect /dev/null {
    foreach inst $instances_list {
      append_to_collection C [get_cells $inst]
    }
    set_boundary_optimization $C $state
  }
  return $C
}
proc report_boundary_optimization_on_instances { instances_list } {
  report_attributes -cell $instances_list
}
proc set_current_design_child_optimization { } {
  set CC {}
  set T [get_child_instances_list]
  if { [llength $T] > 0 } {
    puts "Info: Disabling boundary optimization for instances:"
    foreach instPath $T {
      puts "        $instPath"
    }
  }
  append_to_collection CC [set_boundary_optimization_on_instances $T false]
  set TT [get_child_instances_list $T]
  if { [llength $TT] > 0 } {
    puts "Info: Enabling boundary optimization for sub-instances:"
    foreach instPath $TT {
      puts "        $instPath"
    }
  }
  append_to_collection CC [set_boundary_optimization_on_instances $TT true]
  return $CC
}
proc reset_current_design_child_optimization { cell_collection } {
  if { [sizeof_collection $cell_collection] == 0 } { return }
  redirect /dev/null { remove_attribute $cell_collection boundary_optimization }
}
# }}}

# Create sub-directories for synthesized files {{{
variable synth_gate_extension "vg"
variable synth_subdir_list {
  firebird7_in_gate1_ijtag.instrument
  firebird7_in_gate1_mbisr.instrument
  firebird7_in_gate1_mbist.instrument
}
foreach subDir $synth_subdir_list { file mkdir ${subDir}/ }
# }}}

# Synthesis of container '../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument'
read_sverilog { \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_array_trim_fuse_override.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_array_pwrmgmt.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_upm.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_spare.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_sti.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_mbist.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_spare_green.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_spare_insysbist.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_spare_orange.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_sib_spare_red.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_sti_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_spare_red_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_spare_orange_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_spare_insysbist_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_upm_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_array_pwrmgmt_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_array_trim_fuse_override_secure_mux.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_sti_ctrl.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_spare_red_tdr.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_spare_orange_tdr.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_spare_green_tdr.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_1.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_2.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_3.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_4.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_5.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_6.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_7.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_8.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_9.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_10.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_11.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_12.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_13.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_14.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_15.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_16.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_17.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_18.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_19.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_20.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_21.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_22.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_23.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_24.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_25.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_26.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_27.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_28.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_29.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_30.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_31.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_32.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_33.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_34.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_35.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_36.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_37.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_38.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_39.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_40.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_1.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_2.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_3.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_4.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_5.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_6.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_7.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_8.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_9.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_10.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_11.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_12.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_13.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_14.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_15.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_16.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_17.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_18.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_19.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_20.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_21.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_22.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_23.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_24.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_25.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_26.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_27.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_28.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_29.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_30.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_31.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_32.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_33.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_34.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_35.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_36.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_37.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_38.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_39.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w19_40.sv \
}

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_array_trim_fuse_override]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_array_pwrmgmt]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_upm]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_spare]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_sti]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_mbist]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_spare_green]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_spare_insysbist]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_spare_orange]

set_dont_touch [get_designs firebird7_in_gate1_tessent_sib_spare_red]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_sti_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_spare_red_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_spare_orange_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_spare_insysbist_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_upm_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_array_pwrmgmt_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_scanmux_array_trim_fuse_override_secure_mux]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_sti_ctrl]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_spare_red_tdr]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_spare_orange_tdr]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_spare_green_tdr]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr]

set_dont_touch [get_designs firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_1]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_2]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_3]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_4]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_5]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_6]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_7]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_8]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_9]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_10]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_11]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_12]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_13]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_14]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_15]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_16]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_17]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_18]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_19]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_20]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_21]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_22]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_23]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_24]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_25]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_26]

current_design firebird7_in_gate1_tessent_data_mux_w3_27
set size_only_instances [get_cells -filter {is_hierarchical==false} -hierarchical tessent_persistent_cell_* -quiet]
  if {[sizeof_collection $size_only_instances] > 0 } {
    set_size_only -all_instances $size_only_instances
  }
compile_local
write -f verilog -output firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_data_mux_w3_27.vg \
  [check_modules firebird7_in_gate1_tessent_data_mux_w3_27]
set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_27]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_28]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_29]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_30]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_31]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_32]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_33]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_34]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_35]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_36]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_37]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_38]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_39]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w3_40]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_1]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_2]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_3]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_4]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_5]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_6]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_7]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_8]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_9]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_10]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_11]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_12]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_13]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_14]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_15]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_16]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_17]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_18]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_19]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_20]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_21]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_22]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_23]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_24]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_25]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_26]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_27]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_28]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_29]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_30]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_31]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_32]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_33]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_34]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_35]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_36]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_37]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_38]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_39]

set_dont_touch [get_designs firebird7_in_gate1_tessent_data_mux_w19_40]

exit

