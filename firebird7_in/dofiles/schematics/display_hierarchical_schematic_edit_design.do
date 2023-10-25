no_transcript {
  set style [get_transcript_style] 
  set_transcript_style off
}
if {[catch {defer_schematic_updates -silent {
  add_schematic_connections [list CELL_WM_TIE_firebird7_in_F00_T01_L00/o] -to [list CELL_WM_BUF_firebird7_in_F00_T01_L00/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_connections [list clk] -to [list u_intest_edt_scan_bi_sol_0/tog_clk u_extest_edt_scan_bi_sol_0/tog_clk] -distance_limit 1 -display hierarchical_schematic
  add_schematic_objects -display hierarchical_schematic -highlight 0 [list \
    u_extest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/a \
    enable_red \
    enable_orange \
    enable_insysbist \
    enable_green \
    u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o \
    CELL_WM_BUF_firebird7_in_F00_T01_L00/o \
    u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/a \
    u_extest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o \
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
