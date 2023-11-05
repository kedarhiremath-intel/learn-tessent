##------------------------------------------------------------------------------
##
##  INTEL CONFIDENTIAL
##
##  Copyright 2021 Intel Corporation All Rights Reserved.
##
##  The source code contained or described herein and all documents related
##  to the source code (Material) are owned by Intel Corporation or its 
##  suppliers or licensors. Title to the Material remains with Intel
##  Corporation or its suppliers and licensors. The Material contains trade
##  secrets and proprietary and confidential information of Intel or its 
##  suppliers and licensors. The Material is protected by worldwide copyright
##  and trade secret laws and treaty provisions. No part of the Material may 
##  be used, copied, reproduced, modified, published, uploaded, posted,
##  transmitted, distributed, or disclosed in any way without Intel's prior
##  express written permission.
##
##  No license under any patent, copyright, trade secret or other intellectual
##  property right is granted to or conferred upon you by disclosure or
##  delivery of the Materials, either expressly, by implication, inducement,
##  estoppel or otherwise. Any license under such intellectual property rights
##  must be express and approved by Intel in writing.
##
##------------------------------------------------------------------------------
###########################################################################
# 
###########################################################################
set ::collage_ip_info::ip_top_module_name dteg_upm_top 
set ::collage_ip_info::ip_name dteg_upm_top
##set ::collage_ip_info::ip_version "ip-stap-12ww06.2-v1.5"
set _ip_name_ $::collage_ip_info::ip_top_module_name
#set _model_root_ $env(FC_DFX_ROOT)/external_ip/$_ip_name_/$::collage_ip_info::ip_version
set _model_root_ $env(WORKAREA)
set ::collage_ip_info::ip_intent_sp ""
#set ::collage_ip_info::ip_rtl_inc_dirs "$_model_root_/src/rtl/include"
                                        #$_model_root_/source/rtl/include/assertions"
set ::collage_ip_info::ip_input_language SystemVerilog
set ::collage_ip_info::ip_input_files "$_model_root_/src/rtl/FBIST4.0/foveros_bist/dteg_upm_top.sv"
set ::collage_ip_info::ip_plugin_dir "" ; # Directories - space separated list - with tcl plugin files
set ::collage_ip_info::ip_ifc_def_hook "foveros_bist_create_ifc_instances" ; # Set this to procedure to add IP interfaces - defined below
set ::collage_ip_info::ip_plugin_dirs "" ; 
######################################################################
# Interface instantiations
######################################################################
proc foveros_bist_create_ifc_instances {} {
  set ip_name $::collage_ip_info::ip_name
  set instance [create_interface_instance "fbist_tap_tck" \
	    -type consumer -interface IOSF::DFX::RTDR_CTRL -version 1.5 -associationformat "_%s"]
    #set_interface_parameter_attribute -instance $ifc_inst_name  <name of param> Value <value of param>
    set port_map {
        TAP_TCK              fbist_ijtag_tck
        RTDR_PROG_RST_B      fbist_ijtag_reset_b
    }
	set rtdr_open_ports {RTDR_RTI RTDR_SELECTIR RTDR_POWERGOOD_RST_B }
    set rtdr_open_params {}
    collage_set_open_interface -ifc_inst_name "fbist_tap_tck" -parameters $rtdr_open_params -ports $rtdr_open_ports
    collage_set_interface_link -ifc_inst_name "fbist_tap_tck" -ports $port_map
	set instance [create_interface_instance "fbist_ijtag" \
	    -type consumer -interface IOSF::DFX::RTDR -version 1.5 -associationformat "_%s"]
    #set_interface_parameter_attribute -instance $ifc_inst_name  <name of param> Value <value of param>
    set port_map_ijtag {
		 RTDR_IRDEC     fbist_ijtag_select
         RTDR_SHIFT     fbist_ijtag_shift
         RTDR_TDI       fbist_ijtag_si 
         RTDR_TDO       fbist_ijtag_so 
         RTDR_CAPTURE   fbist_ijtag_capture
         RTDR_UPDATE    fbist_ijtag_update
    }
	set ijtag_open_ports {REMOTE_TCK }
    set ijtag_open_params {}
    collage_set_open_interface -ifc_inst_name "fbist_ijtag" -parameters $ijtag_open_params -ports $ijtag_open_ports
    collage_set_interface_link -ifc_inst_name "fbist_ijtag" -ports $port_map_ijtag
  ##################################################
  # 
  # IOSF DFX (scan)
  # 
  ##################################################
  set ifc_inst_name "scan_foveros_bist_sip"
  set instance [create_interface_instance $ifc_inst_name \
		    -type consumer -interface IOSF::DFX::SCAN -version 2.2]
  set port_map {
    FSCAN_CLKUNGATE       "fbist_fscan_clkungate" 
    FSCAN_MODE            "fbist_fscan_mode"
    FSCAN_SHIFTEN         "fbist_fscan_se"  
    FSCAN_LATCHOPEN       "<open>"
    FSCAN_LATCHCLOSED_B   "<open>"
    FSCAN_BYPLATRST_B     "fbist_fscan_bypset_b"
    FSCAN_RSTBYPEN        "fbist_fscan_rstbypen"
    FSCAN_BYPRST_B        "fbist_fscan_byprst_b" 
    FSCAN_SDI             "<open>"
    ASCAN_SDO             "<open>"
    FSCAN_CLKGENCTRLEN    "<open>"
    FSCAN_CLKGENCTRL      "<open>"
	FSCAN_CLKUNGATE_SYN   "fbist_fscan_clkungate_syn" 
    FSCAN_RAM_RDDIS_B     "<open>"
    FSCAN_RAM_WRDIS_B     "<open>"
    FSCAN_RAM_AWT_MODE    "<open>"
    FSCAN_RAM_AWT_REN     "<open>"
    FSCAN_RAM_AWT_WEN     "<open>"
    FSCAN_RAM_BYPSEL      "<open>"
    FSCAN_RAM_ODIS_B      "<open>"
  }
  set param_map {}
  collage_set_interface_link -ifc_inst_name $ifc_inst_name -ports $port_map -parameters $param_map
  set fscan_open_ports {}
  set fscan_open_params {NUM_CLKGENCTRL NUM_CLKGENCTRLEN NUM_SDI NUM_SDO}
  collage_set_open_interface -ifc_inst_name $ifc_inst_name -ports $fscan_open_ports -parameters $fscan_open_params
  return
}
######################################################################
setenv COLLAGE_INTF_DEF /p/com/eda/intel/collage_intf_def/2.5/
collage_add_ifc_def_files -files $::env(COLLAGE_INTF_DEF)/rtl_interface_defs/iosf_dfx/iosf_dfx_rtdr_interface.1.5.tcl
collage_add_ifc_def_files -files $::env(COLLAGE_INTF_DEF)/rtl_interface_defs/iosf_dfx/iosf_dfx_scan_interface.2.2.tcl
collage_simple_build_flow -exit -copy_corekit -copy_corekit_dir $::env(WORKAREA)/integration/collage/coreKit/
######################################################################
# Lines below are generic and should not include design specific info
######################################################################
#collage_add_ifc_def_files -files $::env(COLLAGE_INTF_DEF)/rtl_interface_defs/iosf_dfx/iosf_foveros_bist_interface.tcl
#file mkdir "$::env(WORKAREA)/integration/collage/ipxact/"
#file mkdir "$::env(WORKAREA)/integration/collage/ipxact/2009"
#file mkdir "$::env(WORKAREA)/integration/collage/ipxact/2009/$::collage_ip_info::ip_name"
#file mkdir "$::env(WORKAREA)/integration/collage/ipxact/2014"
#file mkdir "$::env(WORKAREA)/integration/collage/ipxact/2014/$::collage_ip_info::ip_name"
##collage_simple_build_flow -disable_ipxact
#collage_simple_build_flow -exit -copy_corekit -copy_corekit_dir $::env(WORKAREA)/integration/collage/coreKit/
#gui_set_pref_value -key xml_schema_version -value 1685-2014
#write_ipxact_component -directory "$::env(WORKAREA)/integration/collage/ipxact/2014/$::collage_ip_info::ip_name" -unconfigured
#gui_set_pref_value -key xml_schema_version -value 1685-2009
#write_ipxact_component -directory "$::env(WORKAREA)/integration/collage/ipxact/2009/$::collage_ip_info::ip_name" -unconfigured
#exit
