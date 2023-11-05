
///////////////////////////
// Step 1. Run Synthesis //
///////////////////////////

set_run_synthesis_options dc_shell -command_name "dc_shell -wait 600"
run_synthesis \
   -generate_scripts_only \
   -startup_file "./inputs/synthesis/tessent_synthesis_i0s_synopsys_dc.setup" \
   -pre_compilation_commands { \
      "set dont_touch_instances [get_cells -filter {is_hierarchical==false} -hierarchical tessent_persistent_cell_* ]" \
      "if {[sizeof_collection $dont_touch_instances] > 0 } { set_dont_touch $dont_touch_instances }" \
    } \
   -compilation_options "-scan" \
   -post_compilation_commands { \
      "set_app_var verilogout_no_tri true" \
      "change_names -hier -verbose -rules slash" \
      "change_names -hier -verbose -rules exclamation_rule" \
      "change_names -hier -verbose -rules open_bracket" \
      "change_names -hier -verbose -rules close_bracket" \
      "change_names -hier -verbose -rules standard_names" \
      "change_names -hier -verbose -rules standard_netnames" \
      "change_names -hier -verbose -rules reg_names" \
   }

// Split the synthesis scripts for the Tessent DFT components into separate scripts for faster TAT
system "./inputs/synthesis/split_tessent_synthesis_script.pl synthesis_outdir/${block}_${design_id}.synthesis_dc_shell/dc_shell.synthesis_tcl"

// Run the split synthesis scripts.  Wait for them all to finish.  Append synthesized components to DFT netlist
system "./inputs/synthesis/run_split_tessent_synthesis_jobs.pl synthesis_outdir/${block}_${design_id}.synthesis_dc_shell 500 | tee logfiles/run_split_tessent_synthesis_jobs_${design_id}.log"


////////////////////////////////////////////
// Step 2. Concatenate Netlist Generation //
////////////////////////////////////////////

system "zcat ./tsdb_outdir/dft_inserted_designs/${block}_${design_id}.dft_inserted_design/${block}.vg_no_instruments.gz > ./tsdb_outdir/dft_inserted_designs/${block}_${design_id}.dft_inserted_design/${block}.vg"
system "cat ./synthesis_outdir/${block}_${design_id}.synthesis_dc_shell/*/*.vg >> ./tsdb_outdir/dft_inserted_designs/${block}_${design_id}.dft_inserted_design/${block}.vg"
system "gzip -9f ./tsdb_outdir/dft_inserted_designs/${block}_${design_id}.dft_inserted_design/${block}.vg"
cd synthesis_outdir/${block}_${design_id}.synthesis_dc_shell
system "./file_copy.script"
cd ../..

