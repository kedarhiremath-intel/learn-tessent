// This script will demonstrate the basic steps to load a pre-DFT design into Tessent.


// Step 1. Set the context.
set_context dft -no_rtl -design_identifier gate1

// "dft" is the context for DFT insertion.
// "-no_rtl" is for netlist-based insertion.


// Step 2. Read the standard cell libraries.
dofile ./dofiles/common/read_standard_cell_libraries.do


// Step 3. Read the pre-DFT netlist.
read_verilog ./inputs/from_Customer/firebird7_in.v.gz


// Step 4. Elaborate the model.
set_current_design firebird7_in

// Review the warning message: "Undefined modules were found."


// Step 5. Add black boxes for any modules that are intentionally undefined.
add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}


// Step 6. Set the design level.
set_design_level physical_block


// Explore the design in Tessent visualizer with the 'open_visualizer' command.

// When you are finished, type in the 'exit' command.

