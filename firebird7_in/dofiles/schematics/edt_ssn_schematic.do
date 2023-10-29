no_transcript {
  set style [get_transcript_style] 
  set_transcript_style off
}
if {[catch {defer_schematic_updates -silent {
  add_schematic_connections [list {firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_out[0]}] -to [list out_chan_0_pipe_0_mux_inst/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_out[1]}] -to [list out_chan_1_pipe_0_mux_inst/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_extest_edt_inst/edt_channels_out] -to [list out_chan_0_pipe_0_mux_inst_1/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/ext_edt_mode] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_en1[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list extest_edt_pipe_in_0/o] -to [list firebird7_in_gate2_tessent_edt_extest_edt_chan_in_0_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list extest_edt_pipe_out_0/o] -to [list firebird7_in_gate2_tessent_edt_extest_edt_chan_out_0_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_extest_edt_and_inst/o] -to [list extest_edt_pipe_in_0/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_extest_edt_chan_in_0_lockup_inst_last/o] -to [list insertion_or_4/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_extest_edt_chan_out_0_lockup_inst_last/o] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_in1[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst_1/o] -to [list intest_edt_pipe_in_0_1/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst_2/o] -to [list intest_edt_pipe_in_0_2/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst_3/o] -to [list intest_edt_pipe_in_0_3/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst/o] -to [list intest_edt_pipe_in_0/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_0_lockup_inst_last/o] -to [list insertion_or_3/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_1_lockup_inst_last/o] -to [list insertion_or_2/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_2_lockup_inst_last/o] -to [list insertion_or_1/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_3_lockup_inst_last/o] -to [list insertion_or/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_chan_out_0_lockup_inst_last/o] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_in0[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_edt_intest_edt_chan_out_1_lockup_inst_last/o] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_in0[1]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_out[0]}] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/from_scan_out[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_out[1]}] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/from_scan_out[1]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list in_chan_0_pipe_0_mux_inst_1/o] -to [list firebird7_in_gate2_tessent_edt_extest_edt_and_inst/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list in_chan_0_pipe_0_mux_inst/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst_3/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list in_chan_1_pipe_0_mux_inst/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst_2/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list in_chan_2_pipe_0_mux_inst/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst_1/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list in_chan_3_pipe_0_mux_inst/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_and_inst/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list insertion_or_1/o] -to [list {firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[2]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list insertion_or_2/o] -to [list {firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[1]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list insertion_or_3/o] -to [list {firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list insertion_or_4/o] -to [list firebird7_in_gate2_tessent_edt_extest_edt_inst/edt_channels_in] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list insertion_or/o] -to [list {firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[3]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list firebird7_in_gate2_tessent_tdr_sri_ctrl_inst/int_edt_mode] -to [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_en0[0]}] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list intest_edt_pipe_in_0_1/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_2_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list intest_edt_pipe_in_0_2/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_1_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list intest_edt_pipe_in_0_3/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_0_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list intest_edt_pipe_in_0/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_chan_in_3_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list intest_edt_pipe_out_0_1/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_chan_out_0_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list intest_edt_pipe_out_0/o] -to [list firebird7_in_gate2_tessent_edt_intest_edt_chan_out_1_lockup_inst_last/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list out_chan_0_pipe_0_mux_inst_1/o] -to [list extest_edt_pipe_out_0/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list out_chan_0_pipe_0_mux_inst/o] -to [list intest_edt_pipe_out_0_1/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list out_chan_1_pipe_0_mux_inst/o] -to [list intest_edt_pipe_out_0/d] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/to_scan_in[0]}] -to [list in_chan_0_pipe_0_mux_inst_1/b in_chan_0_pipe_0_mux_inst/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/to_scan_in[1]}] -to [list in_chan_1_pipe_0_mux_inst/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/to_scan_in[2]}] -to [list in_chan_2_pipe_0_mux_inst/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst/to_scan_in[3]}] -to [list in_chan_3_pipe_0_mux_inst/b] -distance_limit 1 -display hierarchical_schematic
  add_schematic_objects -display hierarchical_schematic -highlight 0 [list \
    in_chan_3_pipe_0_mux_inst/sa \
    in_chan_0_pipe_0_mux_inst_1/a \
    intest_edt_pipe_in_0_2/clk \
    firebird7_in_gate2_tessent_edt_intest_edt_and_inst_3/b \
    insertion_or_1/b \
    intest_edt_pipe_in_0_3/clk \
    insertion_or_2/b \
    out_chan_0_pipe_0_mux_inst/sa \
    in_chan_0_pipe_0_mux_inst_1/sa \
    in_chan_0_pipe_0_mux_inst/sa \
    firebird7_in_gate2_tessent_edt_extest_edt_chan_in_0_lockup_inst_last/clkb \
    firebird7_in_gate2_tessent_edt_intest_edt_chan_in_3_lockup_inst_last/clkb \
    extest_edt_pipe_in_0/clk \
    intest_edt_pipe_in_0/clk \
    firebird7_in_gate2_tessent_edt_intest_edt_and_inst_1/b \
    firebird7_in_gate2_tessent_edt_intest_edt_chan_out_1_lockup_inst_last/clkb \
    firebird7_in_gate2_tessent_edt_intest_edt_chan_in_1_lockup_inst_last/clkb \
    in_chan_1_pipe_0_mux_inst/sa \
    firebird7_in_gate2_tessent_edt_extest_edt_chan_out_0_lockup_inst_last/clkb \
    firebird7_in_gate2_tessent_edt_intest_edt_chan_in_2_lockup_inst_last/clkb \
    firebird7_in_gate2_tessent_edt_intest_edt_and_inst_2/b \
    firebird7_in_gate2_tessent_edt_intest_edt_chan_in_0_lockup_inst_last/clkb \
    {firebird7_in_gate2_tessent_ssn_scan_host_ssh_inst_chain_group_mux/mux_in1[1]} \
    firebird7_in_gate2_tessent_edt_intest_edt_and_inst/b \
    insertion_or_4/b \
    insertion_or/b \
    in_chan_3_pipe_0_mux_inst/a \
    in_chan_1_pipe_0_mux_inst/a \
    in_chan_2_pipe_0_mux_inst/sa \
    in_chan_2_pipe_0_mux_inst/a \
    firebird7_in_gate2_tessent_edt_extest_edt_and_inst/b \
    in_chan_0_pipe_0_mux_inst/a \
    out_chan_0_pipe_0_mux_inst_1/a \
    out_chan_1_pipe_0_mux_inst/sa \
    out_chan_0_pipe_0_mux_inst_1/sa \
    intest_edt_pipe_in_0_1/clk \
    extest_edt_pipe_out_0/clk \
    intest_edt_pipe_out_0/clk \
    firebird7_in_gate2_tessent_edt_intest_edt_chan_out_0_lockup_inst_last/clkb \
    intest_edt_pipe_out_0_1/clk \
    out_chan_1_pipe_0_mux_inst/a \
    insertion_or_3/b \
    out_chan_0_pipe_0_mux_inst/a \
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
