
////////////////////////////////
// Edit and Introspect Design //
////////////////////////////////

// You must be in the "insertion" mode for design editing and introspection.
set_system_mode insertion


// You must create instances of BISOL for every EDT that will be inserted at the current design level.
create_instance u_intest_edt_scan_bi_sol_0 -of_module firebird7_in_intest_edt_scan_bi_sol_NUM_SOL_INPUTS2_SOLCTR_SIZE15
create_instance u_extest_edt_scan_bi_sol_0 -of_module firebird7_in_extest_edt_scan_bi_sol_NUM_SOL_INPUTS1_SOLCTR_SIZE15


// Using the TCL square bracket syntax, you can create instances of the standard cell buffer.
create_instance u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0 -of_module [get_dft_cell -cell_selection ctech_lib buffer]
create_instance u_extest_edt_scan_bi_sol_jam_edt_channels_in_buf_0 -of_module [get_dft_cell -cell_selection ctech_lib buffer]


// Create OR gate for FSCAN_CLKUNGATE.
create_instance u_teamaker_fscan_clk_ungate_or2 -of_module [get_dft_cell -cell_selection ctech_lib -inputs 2 or]

