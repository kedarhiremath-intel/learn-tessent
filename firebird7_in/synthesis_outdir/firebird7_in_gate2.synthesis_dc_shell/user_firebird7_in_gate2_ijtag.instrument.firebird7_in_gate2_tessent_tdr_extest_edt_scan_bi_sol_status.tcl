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
  firebird7_in_gate2_cells.instrument
  firebird7_in_gate2_edt.instrument
  firebird7_in_gate2_ijtag.instrument
  firebird7_in_gate2_occ.instrument
  firebird7_in_gate2_ssn.instrument
}
foreach subDir $synth_subdir_list { file mkdir ${subDir}/ }
# }}}

# Synthesis of container '../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument'
read_file -format verilog { \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_extest_edt_scan_bi_sol.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_intest_edt_scan_bi_sol.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_sri.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_ssn.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_occ.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_edt.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_sib_sri_ctrl.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_scanmux_sri_secure_mux.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_scanmux_intest_edt_scan_bi_sol_secure_mux.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_scanmux_extest_edt_scan_bi_sol_secure_mux.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_tdr_sri_ctrl.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_control.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_status.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_control.v \
  ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status.v \
}

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_extest_edt_scan_bi_sol]

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_intest_edt_scan_bi_sol]

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_sri]

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_ssn]

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_occ]

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_edt]

set_dont_touch [get_designs firebird7_in_gate2_tessent_sib_sri_ctrl]

set_dont_touch [get_designs firebird7_in_gate2_tessent_scanmux_sri_secure_mux]

set_dont_touch [get_designs firebird7_in_gate2_tessent_scanmux_intest_edt_scan_bi_sol_secure_mux]

set_dont_touch [get_designs firebird7_in_gate2_tessent_scanmux_extest_edt_scan_bi_sol_secure_mux]

set_dont_touch [get_designs firebird7_in_gate2_tessent_tdr_sri_ctrl]

set_dont_touch [get_designs firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_control]

set_dont_touch [get_designs firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_status]

set_dont_touch [get_designs firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_control]

current_design firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status
set size_only_instances [get_cells -filter {is_hierarchical==false} -hierarchical tessent_persistent_cell_* -quiet]
  if {[sizeof_collection $size_only_instances] > 0 } {
    set_size_only -all_instances $size_only_instances
  }
source ../../tsdb_outdir/instruments/firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_ijtag.sdc
firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status
compile_local
write -f verilog -output firebird7_in_gate2_ijtag.instrument/firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status.vg \
  [check_modules firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status]
set_dont_touch [get_designs firebird7_in_gate2_tessent_tdr_extest_edt_scan_bi_sol_status]

exit

