// This script will demonstrate and allow you to experiment with common Tessent design editing and introspection commands.
// We will insert the Watermark.


// Step 1. To perform design editing or introspection, you must be in 'insertion' mode.
set_system_mode insertion


// Step 2. The pre-DFT netlist must be uniquified (in other words, every design module should have a unique name).
dofile ./dofiles/common/uniquify_design.do


// Step 3. Create Watermark cells, which consist of one standard BUF cell and one standard TIE cell.
set WATERMARK firebird7_in_F00_T01_L00

create_instance CELL_WM_BUF_$WATERMARK -of_module i0sbfn000ab1n02x5
create_instance CELL_WM_TIE_$WATERMARK -of_module i0stilo00ab1n02x5


// Step 4. Connect the Watermark TIE cell to the BUF cell with a named net.
create_connections CELL_WM_TIE_$WATERMARK/o CELL_WM_BUF_$WATERMARK/a -net_name NET_WM_TIE_$WATERMARK

