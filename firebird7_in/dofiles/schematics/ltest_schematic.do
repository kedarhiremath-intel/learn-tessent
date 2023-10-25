no_transcript {
  set style [get_transcript_style] 
  set_transcript_style off
}
if {[catch {defer_schematic_updates -silent {
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/async_set_reset_static_disable] -to [list tessent_persistent_cell_async_set_reset_dynamic_disable/b firebird7_in_gate1_tessent_sib_sti_inst/ltest_async_set_reset_static_disable] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list clk] -to [list firebird7_in_gate2_tessent_occ_clk_inst/fast_clock u_extest_edt_scan_bi_sol_0/tog_clk u_intest_edt_scan_bi_sol_0/tog_clk] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/ext_edt_mode] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_en1[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/ext_ltest_en] -to [list firebird7_in_gate2_tessent_occ_clk_inst/shift_only_mode] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/int_edt_mode] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_en0[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/occ_kill_clock_en] -to [list firebird7_in_gate2_tessent_occ_clk_inst/kill_clock_en] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/scan_en] -to [list firebird7_in_gate2_tessent_occ_clk_inst/scan_en tessent_persistent_cell_async_set_reset_dynamic_disable/a u_teamaker_fscan_clk_ungate_or2/b firebird7_in_gate1_tessent_sib_sti_inst/ltest_scan_en] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/fscan_clkungate] -to [list u_teamaker_fscan_clk_ungate_or2/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/ltest_en] -to [list firebird7_in_gate1_tessent_sib_sti_inst/ltest_en] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/memory_bypass_en] -to [list firebird7_in_gate1_tessent_sib_sti_inst/ltest_mem_bypass_en] -distance_limit 1 -display hierarchical_schematic
  add_schematic_objects -display hierarchical_schematic -highlight 0 [list \
    u_teamaker_fscan_clk_ungate_or2/o \
    tessent_persistent_cell_async_set_reset_dynamic_disable/o \
  ]
}}]} {
  display_message -error "Error occurred while recreating schematic from a provided dofile.
  Please make sure that the specified file matches the current design model."
  set_transcript_style $style
  no_transcript {unset style}
  return_error
}
set_transcript_style $style
no_transcript {unset style}
