
////////////////////////////////
// Edit and Introspect Design //
////////////////////////////////

// Set the system mode to "insertion".
set_system_mode insertion

// The pre-DFT netlist must be uniquified (in other words, every design module should have a unique name).
// This is a one-time action.
dofile ./dofiles/common/uniquify_design.do

// Create watermark cells, which consist of one standard buffer cell and one standard tie-low cell.
set WATERMARK firebird7_in_F00_T01_L00
create_instance CELL_WM_BUF_$WATERMARK -of_module i0sbfn000ab1n02x5
create_instance CELL_WM_TIE_$WATERMARK -of_module i0stilo00ab1n02x5

// Connect the watermark tie-low cell to the watermark buffer cell with a named net.
create_connections CELL_WM_TIE_$WATERMARK/o CELL_WM_BUF_$WATERMARK/a -net_name NET_WM_TIE_$WATERMARK

// Create UPM instances.
create_instance u_upm_0 -of_module firebird7_in_dteg_upm_top_887242
create_instance u_upm_1 -of_module firebird7_in_dteg_upm_top_887242
create_instance u_upm_2 -of_module firebird7_in_dteg_upm_top_887242
create_instance u_upm_3 -of_module firebird7_in_dteg_upm_top_887242

// Create and connect the fdfx_powergood signal to each UPM (This is the reset port for UPM).
create_port fdfx_powergood
create_connection fdfx_powergood u_upm_0/dfx_upm_fdfx_powergood
create_connection fdfx_powergood u_upm_1/dfx_upm_fdfx_powergood
create_connection fdfx_powergood u_upm_2/dfx_upm_fdfx_powergood
create_connection fdfx_powergood u_upm_3/dfx_upm_fdfx_powergood

