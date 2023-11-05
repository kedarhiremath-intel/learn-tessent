
// Define the security level ports.
read_config_data -in_wrapper $spec/IjtagNetwork -from_string "
  DataInPorts {
    port_naming : secure_red, secure_orange, secure_insysbist;
  }
"

// Define procedure to add a ScanMux to a SIB for security protection, and to move the SIB network beneath that ScanMux.
proc add_sib_security { sib_id security_level } {
  set sib_element [get_config_elements Sib($sib_id) -hierarchical]
  set sib_name [get_config_value $sib_element -name]
  set elements_in_sib [get_config_elements "$sib_name/*(*)"]
  read_config_data -in_wrapper $sib_element -from_string "
    ScanMux(${sib_id}_secure_mux) {
      select : DataIn($security_level);
      Input(1) {
      }
    }
  "
  foreach_in_collection element_in_sib $elements_in_sib {
    move_config_element $element_in_sib -in_wrapper $sib_name/ScanMux(${sib_id}_secure_mux)/Input(1)
  }
}

set SECURE_RED        2
set SECURE_ORANGE     1
set SECURE_INSYSBIST  0

