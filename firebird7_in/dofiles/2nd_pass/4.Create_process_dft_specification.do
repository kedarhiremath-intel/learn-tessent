// This script is a demonstration of how to insert Logic Test instrumentation using the Tessent DFT Specification.


check_design_rules

set spec [create_dft_specification -sri_sib_list {edt occ ssn} -replace]

// Step 1. Review the created DFT specification. See how the Logic Test requirements are automatically plugged in.

report_config_data $spec

set_config_value compress_concatenated_netlist -in_wrapper $spec on

// Step 2. You must add the OCC specification.
read_config_data -in_wrapper $spec -from_string "
  OCC {
    ijtag_host_interface : Sib(occ);
    capture_window_size : 5;
    kill_clock_mode : on;
    Controller(clk) {
      clock_intercept_nodes : clk;
    }
  }
"


// Step 3. You must add the EDT specification.
read_config_data -in_wrapper $spec -from_string "
  EDT {
    ijtag_host_interface : Sib(edt);
    Controller(intest_edt) {
      longest_chain_range : 250, 275;
      scan_chain_count : 371;
      input_channel_count : 4;
      output_channel_count : 2;
      Connections {
        mode_enables : DftSignal(int_edt_mode);
        EdtChannelsIn(4:1) {
          PipelineStage {
            leaf_instance_name : intest_edt_pipe_in_0;
          }
        }
        EdtChannelsOut(2:1) {
          PipelineStage {
            leaf_instance_name : intest_edt_pipe_out_0;
          }
        }
      }
      ShiftPowerOptions {
        present : on;
        full_control : on;
      }
    }
    Controller(extest_edt) {
      longest_chain_range : 250, 275;
      scan_chain_count : 5;
      input_channel_count : 1;
      output_channel_count : 1;
      Connections {
        mode_enables : DftSignal(ext_edt_mode);
        EdtChannelsIn(1) {
          PipelineStage {
            leaf_instance_name : extest_edt_pipe_in_0;
          }
        }
        EdtChannelsOut(1) {
          PipelineStage {
            leaf_instance_name : extest_edt_pipe_out_0;
          }
        }
      }
      ShiftPowerOptions {
        present : on;
        full_control : on;
      }
    }
  }
"

// Step 3. You must add the SSN specification.
read_config_data -in_wrapper $spec -from_string "
  SSN {
    DefaultChildConfiguration {
      bus_clock_period : 5.0ns;
    }
    ijtag_host_interface : Sib(ssn);
    Datapath(ssh) {
      output_bus_width : 20;
      Connections {
        bus_clock_in : ssn_bus_clock;
        bus_data_in : ssn_bus_in[19:0];
        bus_data_out : ssn_bus_out[19:0];
      }
      Pipeline(ssn_output_pipe) {
      }
      ScanHost(ssh) {
        OnChipCompareMode {
          present : on;
          sticky_status_resolution : ssh;
        }
      }
      Receiver1xPipeline(ssn_input_pipe) {
      }
    }
  }
"


// Step 4. Read the DFT Specifications for the INTEST and EXTEST BISOL, Control TDR and Status TDR.
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(sti_client) ./inputs/dft_specs/intest_edt_scan_bi_sol_sib_tdr.dft_spec
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(sti_client) ./inputs/dft_specs/extest_edt_scan_bi_sol_sib_tdr.dft_spec


// Step 5. Create a post-insertion procedure for the BISOL connections.
// Use "process_dft_specification.post_insertion" to perform custom editing between the insertion of the DFT components and the saving of the design.

proc process_dft_specification.post_insertion { root_wrapper args } {

  // Connect BISOL toggle clock input to input clock port.
  create_connections clk u_intest_edt_scan_bi_sol_0/tog_clk
  create_connections clk u_extest_edt_scan_bi_sol_0/tog_clk

  // Connect EDT output channels to BISOL inputs.
  create_connections firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_out u_intest_edt_scan_bi_sol_0/sol_in
  create_connections firebird7_in_gate2_tessent_edt_extest_edt_inst/edt_channels_out u_extest_edt_scan_bi_sol_0/sol_in

  // Connect BISOL control TDR "jam_edt_channels_in" to EDT input channel.
  intercept_connection firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[3] -cell_function_name or -input2 u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o
  intercept_connection firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[2] -cell_function_name or -input2 u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o
  intercept_connection firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[1] -cell_function_name or -input2 u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o
  intercept_connection firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in[0] -cell_function_name or -input2 u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o

  // TIP: You should use "foreach_in_collection" to make the above block of code cleaner.
  //  foreach_in_collection edt_channel_in [get_pins firebird7_in_gate2_tessent_edt_intest_edt_inst/edt_channels_in] {
  //    intercept_connection $edt_channel_in -cell_function_name or -input2 u_intest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o
  //  }

  intercept_connection firebird7_in_gate2_tessent_edt_extest_edt_inst/edt_channels_in -cell_function_name or -input2 u_extest_edt_scan_bi_sol_jam_edt_channels_in_buf_0/o

}

report_config_data $spec

process_dft_specification -validate_only

process_dft_specification -transcript_insertion_commands

