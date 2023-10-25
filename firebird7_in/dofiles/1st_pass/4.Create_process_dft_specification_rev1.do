// This script is a basic demonstration of how to insert DFT logic using the Tessent DFT Specification.
// We will insert Spare Test Data Registers (TDRs), BISOL Control and Status TDRs, and implement Secure SIBs using the ScanMux approach.


// Step 1. Go to in 'analysis' mode.
// Note: The 'check_design_rules' command is equivalent to 'set_system_mode analysis'.

check_design_rules


// Step 2. Create the DFT specification. You should assign the DFT specification to a variable (like "spec") so that you can read and manipulate it as needed.

set spec [create_dft_specification -replace]

report_config_data $spec

// Notice that the new DFT specification is empty.


// Step 3. You can set a single value of a configuration element with the "set_config_value" command.

// For example, you should set the "compress_concatenation_netlist" value to "on".
// This will gzip the output netlist (the netlist will be a *.vg.gz file) to save disk memory.
set_config_value compress_concatenated_netlist -in_wrapper $spec on


// Step 4. You can read configuration data from a string using the "read_config_data -from_string" command.
// For example, you must add an IJTAG network with Spare SIBs and TDRs to the DFT specification.
// If there is a late ECO that requires a TDR bit for DFT controllability/observability, these Spare TDRs will come in handy.
read_config_data -in_wrapper $spec -from_string "
  IjtagNetwork {
    DataInPorts {
      port_naming : secure_red, secure_orange, secure_insysbist, secure_green;
    }
    HostScanInterface(ijtag) {
      Sib(spare) {
        Sib(spare_red) {
          Tdr(spare_red_tdr) {
            length : 8;
          }
        }
        Sib(spare_orange) {
          Tdr(spare_orange_tdr) {
            length : 8;
          }
        }
        Sib(spare_insysbist) {
          Tdr(spare_insysbist_tdr) {
            length : 8;
          }
        }
        Sib(spare_green) {
          Tdr(spare_green_tdr) {
            length : 8;
          }
        }
      }
    }
  }
"

report_config_data $spec

// Note that we are not actually changing the design - we are only changing the specification.
// The design will change in a later step, when we execute the "process_dft_specification" instruction.


// Step 5. You can move configuration data around using the "move_config_element" command.
// For this example, we will implement the SIB security with a scan mux. This is different from the TEAMaker implementation.
// You must make the SIBs secure, so that the elements hosted by every SIB are accessible only at the correct security level.

// Red Security ScanMux:
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_red) -from_string "
  ScanMux(red_sec_mux) {
    select : DataIn(3);
    Input(1) {
    }
  }
"

// Orange Security ScanMux:
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_orange) -from_string "
  ScanMux(orange_sec_mux) {
    select : DataIn(2);
    Input(1) {
    }
  }
"

// Insysbist Security ScanMux:
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_insysbist) -from_string "
  ScanMux(insysbist_sec_mux) {
    select : DataIn(1);
    Input(1) {
    }
  }
"

// Green Security ScanMux:
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_green) -from_string "
  ScanMux(green_sec_mux) {
    select : DataIn(0);
    Input(1) {
    }
  }
"

// Now we will move the Spare TDRs to the input of the ScanMux, so that it is protected by the security signal.
move_config_element $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_red)/Tdr(spare_red_tdr) -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_red)/ScanMux(red_sec_mux)/Input(1)

move_config_element $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_orange)/Tdr(spare_orange_tdr) -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_orange)/ScanMux(orange_sec_mux)/Input(1)

move_config_element $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_insysbist)/Tdr(spare_insysbist_tdr) -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_insysbist)/ScanMux(insysbist_sec_mux)/Input(1)

move_config_element $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_green)/Tdr(spare_green_tdr) -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag)/Sib(spare)/Sib(spare_green)/ScanMux(green_sec_mux)/Input(1)


// Step 6. You can also read configuration data from a file with the "read_config_data" command.
// For example, the DFT specification data for the control and status TDRs for BISOL are in a separate file.
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/extest_edt_scan_bi_sol_sib_tdr.dft_spec
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/intest_edt_scan_bi_sol_sib_tdr.dft_spec


// Step 7. With the "display_specification" command, you can work with the DFT Specification in a GUI.
//display_specification


// Step 8. The final step is to process the DFT specification.

// You can use the "-validate_only" option to check the DFT specification for syntax errors.
process_dft_specification -validate_only

// We will use the "-transcript_insertion_commands" option.
process_dft_specification -transcript_insertion_commands

// Look through the messages printed on the screen.

