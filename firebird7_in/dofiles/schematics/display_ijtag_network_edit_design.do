no_transcript {
  set style [get_transcript_style] 
  set_transcript_style off
}
if {[catch {defer_schematic_updates -silent {
  add_schematic_connections [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.so] -to [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.si firebird7_in_gate_tessent_sib_spare_inst.scan_in_pipeline.si] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.so] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.si {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.so] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.si {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.so] -to [list ijtag_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_pipeline.so] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.si {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.so] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.si {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.so] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.si {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.so] -to [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].so}] -to [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].so}] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].so}] -to [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].si}] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].so}] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].so}] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].so}] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].so}] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].so}] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.from_so] -distance_limit 1 -display ijtag_network
  add_schematic_connections [list ijtag_si] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.si {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].si}] -distance_limit 1 -display ijtag_network
}}]} {
  display_message -error "Error occurred while recreating schematic from a provided dofile.
  Please make sure that the specified file matches the current IJTAG Network."
  set_transcript_style $style
  no_transcript {unset style}
  return_error
}
set_transcript_style $style
no_transcript {unset style}
