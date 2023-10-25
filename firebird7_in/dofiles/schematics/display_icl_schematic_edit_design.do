no_transcript {
  set style [get_transcript_style] 
  set_transcript_style off
}
if {[catch {defer_schematic_updates -silent {
  add_schematic_connections [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.in0] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.in0] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_green_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_green_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.in0] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_green_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.in0 firebird7_in_gate_tessent_sib_spare_inst.scan_in_pipeline.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_spare_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.scan_in_pipeline.scan_out] -to [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_to_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.in0] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_orange_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_orange_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.in0] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_orange_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_red_inst.ijtag_from_so] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.in1] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_red_inst.ijtag_si] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.in0] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.out] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.sib.scan_in] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_red_inst.sib.scan_out] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.ijtag_si] -to [list {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].scan_in}] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].scan_out}] -to [list firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list ijtag_si] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.ijtag_si firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.ijtag_si firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_green_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.ijtag_si firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_so] -to [list ijtag_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_insysbist_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_orange_inst.ijtag_si firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_orange_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_red_inst.ijtag_si firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_red_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.ijtag_so] -to [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.ijtag_so] -to [list firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.ijtag_from_so] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.ijtag_so] -to [list firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_connections [list firebird7_in_gate_tessent_sib_spare_inst.ijtag_to_si] -to [list firebird7_in_gate_tessent_sib_spare_green_inst.ijtag_si firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.ijtag_si] -distance_limit 1 -display icl_schematic
  add_schematic_objects -display icl_schematic -highlight 0 [list \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].reset} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].reset} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[2]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[7]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[0]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[6]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[1]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[5]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[7]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[13]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[15]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[7]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[16]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[5]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[6]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[19]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[20]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[4]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[9]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[2]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[19]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[12]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[14]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[15]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[16]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[1]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[2]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[7]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[13]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[2]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[10]} \
    firebird7_in_gate_tessent_sib_spare_orange_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[9]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[17]} \
    firebird7_in_gate_tessent_sib_spare_green_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[11]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[0]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[5]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[8]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[16]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[11]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[10]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[7]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[14]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[5]} \
    firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[3]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[4]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[6]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[19]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[1]} \
    firebird7_in_gate_tessent_sib_spare_orange_inst.sib.out \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[14]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[15]} \
    firebird7_in_gate_tessent_sib_spare_red_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[16]} \
    firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[18]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[8]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[15]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[18]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[7]} \
    firebird7_in_gate_tessent_sib_spare_insysbist_inst.sib.out \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[0]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[5]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[12]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[3]} \
    firebird7_in_gate_tessent_sib_spare_insysbist_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[4]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].reset} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[17]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].reset} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[7]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[10]} \
    firebird7_in_gate_tessent_sib_spare_red_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[1]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[17]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[8]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[9]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[20]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[13]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[16]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[12]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[10]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[14]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[7]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[5]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[3]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[4]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[16]} \
    firebird7_in_gate_tessent_sib_spare_green_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[6]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[5]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[5]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].reset} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[6]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[11]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[15]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].reset} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[6]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[9]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[7]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[9]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[5]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[18]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[12]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[1]} \
    firebird7_in_gate_tessent_sib_spare_inst.sib.out \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[0]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[13]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].reset} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[2]} \
    firebird7_in_gate_tessent_sib_spare_red_inst.sib.out \
    firebird7_in_gate_tessent_sib_spare_orange_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[3]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[5]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[7]} \
    firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[11]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[7]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[12]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[1]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].reset} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[4]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[7]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[0]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[14]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[10]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[3]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].out[0]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[2]} \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].out[5]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[9]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[13]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[6]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[3]} \
    firebird7_in_gate_tessent_sib_spare_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[17]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[11]} \
    firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.sib.out \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[3]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[5]} \
    firebird7_in_gate_tessent_sib_intest_edt_scan_bi_sol_inst.sib.out \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[15]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[12]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[7]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].in[8]} \
    {firebird7_in_gate_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].out[5]} \
    firebird7_in_gate_tessent_sib_spare_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[4]} \
    firebird7_in_gate_tessent_sib_extest_edt_scan_bi_sol_inst.sib.reset \
    {firebird7_in_gate_tessent_tdr_spare_green_tdr_inst.tdr[7:0].in[4]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].out[2]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[14]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[8]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].out[8]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_status_inst.tdr[16:0].in[2]} \
    {firebird7_in_gate_tessent_tdr_spare_orange_tdr_inst.tdr[7:0].in[0]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[11]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[13]} \
    {firebird7_in_gate_tessent_tdr_extest_edt_scan_bi_sol_control_inst.tdr[19:0].out[10]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[1]} \
    {firebird7_in_gate_tessent_tdr_spare_red_tdr_inst.tdr[7:0].in[5]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_status_inst.tdr[17:0].in[7]} \
    firebird7_in_gate_tessent_sib_spare_green_inst.sib.out \
    firebird7_in_gate_tessent_sib_spare_insysbist_inst.scan_in_mux.select \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[19]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[18]} \
    {firebird7_in_gate_tessent_tdr_intest_edt_scan_bi_sol_control_inst.tdr[20:0].in[17]} \
  ]
}}]} {
  display_message -error "Error occurred while recreating schematic from a provided dofile.
  Please make sure that the specified file matches the current ICL model."
  set_transcript_style $style
  no_transcript {unset style}
  return_error
}
set_transcript_style $style
no_transcript {unset style}
