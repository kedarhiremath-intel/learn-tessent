
////////////////////////////////
// Specify Scan Configuration //
////////////////////////////////

//Set Scan Insertion Options
set_scan_insertion_options -single_class_chains on -single_wrapper_type_chains on -single_power_domain_chains on -single_cluster_chains on

// Step. Use the "add_scan_modes" command to add the scan modes for INTEST and EXTEST.
add_scan_mode int_mode -type internal -chain_length 250 -edt_instances firebird7_in_gate2_tessent_edt_intest_edt_inst -enable_dft_signal int_edt_mode -single_power_domain_chains on
add_scan_mode ext_mode -type external -chain_length 250 -edt_instances firebird7_in_gate2_tessent_edt_extest_edt_inst -enable_dft_signal ext_edt_mode -single_power_domain_chains on

