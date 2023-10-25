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

# Synthesis of container '../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument'
read_sverilog { \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_bap.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_controller_assembly.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_controller.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m1.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m2.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m3.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m4.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m5.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m6.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m7.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m8.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m9.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m10.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m11.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m12.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m13.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m14.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m15.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m16.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m17.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m18.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m19.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m20.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m21.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m22.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m23.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m24.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m25.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m26.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m27.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m28.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m29.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m30.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m31.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m32.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m33.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m34.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m35.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m36.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m37.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m38.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m39.sv \
  ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m40.sv \
}

set_dont_touch [get_designs firebird7_in_gate1_tessent_mbist_bap]

current_design firebird7_in_gate1_tessent_mbist_c1_controller_assembly
set size_only_instances [get_cells -filter {is_hierarchical==false} -hierarchical tessent_persistent_cell_* -quiet]
  if {[sizeof_collection $size_only_instances] > 0 } {
    set_size_only -all_instances $size_only_instances
  }
source ../../tsdb_outdir/instruments/firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_controller_assembly.sdc
tessent_set_default_variables
tessent_create_functional_clocks
tessent_constrain_firebird7_in_gate1_tessent_mbist_c1_controller_assembly_non_modal
set CC [set_current_design_child_optimization]
compile_local -boundary_optimization
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m1.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m1 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m1_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m1_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m1_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m2.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m2 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m2_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m2_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m2_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m3.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m3 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m3_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m3_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m3_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m4.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m4 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m4_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m4_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m4_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m5.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m5 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m5_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m5_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m5_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m6.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m6 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m6_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m6_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m6_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m7.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m7 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m7_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m7_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m7_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m8.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m8 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m8_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m8_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m8_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m9.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m9 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m9_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m9_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m9_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m10.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m10 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m10_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m10_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m10_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m11.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m11 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m11_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m11_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m11_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m12.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m12 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m12_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m12_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m12_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m13.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m13 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m13_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m13_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m13_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m14.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m14 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m14_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m14_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m14_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m15.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m15 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m15_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m15_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m15_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m16.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m16 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m16_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m16_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m16_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m17.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m17 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m17_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m17_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m17_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m18.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m18 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m18_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m18_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m18_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m19.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m19 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m19_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m19_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m19_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m20.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m20 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m20_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m20_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m20_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m21.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m21 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m21_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m21_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m21_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m22.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m22 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m22_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m22_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m22_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m23.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m23 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m23_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m23_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m23_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m24.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m24 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m24_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m24_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m24_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m25.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m25 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m25_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m25_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m25_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m26.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m26 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m26_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m26_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m26_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m27.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m27 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m27_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m27_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m27_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m28.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m28 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m28_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m28_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m28_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m29.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m29 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m29_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m29_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m29_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m30.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m30 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m30_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m30_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m30_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m31.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m31 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m31_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m31_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m31_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m32.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m32 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m32_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m32_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m32_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m33.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m33 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m33_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m33_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m33_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m34.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m34 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m34_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m34_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m34_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m35.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m35 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m35_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m35_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m35_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m36.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m36 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m36_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m36_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m36_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m37.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m37 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m37_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m37_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m37_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m38.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m38 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m38_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m38_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m38_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m39.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m39 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m39_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m39_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m39_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_interface_m40.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_interface_m40 \
    firebird7_in_gate1_tessent_mbist_c1_interface_m40_STATUS \
    firebird7_in_gate1_tessent_mbist_c1_interface_m40_ColumnRedundancyAnalysis \
    firebird7_in_gate1_tessent_mbist_c1_interface_m40_RowRedundancyAnalysis \
  }]
write -f verilog -output firebird7_in_gate1_mbist.instrument/firebird7_in_gate1_tessent_mbist_c1_controller.vg \
  [check_modules { \
    firebird7_in_gate1_tessent_mbist_c1_controller \
    firebird7_in_gate1_tessent_mbist_c1_controller_ctl_comp \
    firebird7_in_gate1_tessent_mbist_c1_controller_pointer_cntrl \
    firebird7_in_gate1_tessent_mbist_c1_controller_add_format \
    firebird7_in_gate1_tessent_mbist_c1_controller_add_gen \
    firebird7_in_gate1_tessent_mbist_c1_controller_fsm \
    firebird7_in_gate1_tessent_mbist_c1_controller_signal_gen \
    firebird7_in_gate1_tessent_mbist_c1_controller_repeat_loop_cntrl \
    firebird7_in_gate1_tessent_mbist_c1_controller_delaycounter \
    firebird7_in_gate1_tessent_mbist_c1_controller_data_gen \
  }]
reset_current_design_child_optimization $CC
set_dont_touch [get_designs firebird7_in_gate1_tessent_mbist_c1_controller_assembly]
exit
exit

