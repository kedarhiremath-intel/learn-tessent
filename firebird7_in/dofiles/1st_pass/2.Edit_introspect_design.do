// This script will demonstrate basic design editing commands to insert watermark cells.


// Step 1. Set the system mode to "insertion".
set_system_mode insertion


// Step 2. The pre-DFT netlist must be uniquified (in other words, every design module should have a unique name).
// This is a one-time action.
dofile ./dofiles/common/uniquify_design.do


// Step 3. Create watermark cells, which consist of one standard buffer cell and one standard tie-low cell.
set WATERMARK firebird7_in_F00_T01_L00

create_instance CELL_WM_BUF_$WATERMARK -of_module i0sbfn000ab1n02x5
create_instance CELL_WM_TIE_$WATERMARK -of_module i0stilo00ab1n02x5

// TIP: We already told Tessent that "i0sbfn000ab1n02x5" is the preferred library cell for buffers.
//   get_dft_cell -cell_selection ctech_lib buffer
// Rather than hard-code that value, we can use the TCL square bracket syntax.
//   create_instance CELL_WM_BUF_$WATERMARK -of_module [get_dft_cell -cell_selection ctech_lib buffer]


// Step 4. Connect the watermark tie-low cell to the watermark buffer cell with a named net.
create_connections CELL_WM_TIE_$WATERMARK/o CELL_WM_BUF_$WATERMARK/a -net_name NET_WM_TIE_$WATERMARK


// This a good spot to play around and experiment with design editing, introspection, and tracing commands.


// To view the schematic,
// set_system_mode setup
// dofile ./dofiles/schematics/open_hierarhical_schematic_watermark.do

