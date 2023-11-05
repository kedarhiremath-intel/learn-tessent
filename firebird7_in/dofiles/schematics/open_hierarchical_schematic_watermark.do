no_transcript {
  set style [get_transcript_style] 
  set_transcript_style off
}
if {[catch {defer_schematic_updates -silent {
  add_schematic_connections [list CELL_WM_TIE_firebird7_in_F00_T01_L00/o] -to [list CELL_WM_BUF_firebird7_in_F00_T01_L00/a] -distance_limit 1 -display hierarchical_schematic
  add_schematic_objects -display hierarchical_schematic -highlight 0 [list \
    CELL_WM_BUF_firebird7_in_F00_T01_L00/o \
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
