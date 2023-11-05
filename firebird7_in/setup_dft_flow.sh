# Set environment variables for NetBatch --target $NBPOOL --qslot $NBQSLOT
setenv NBPOOL zsc14_express
setenv NBQSLOT /XNE/irw/be
setenv NBCLASS "SLES12&&16G&&4C"


# Set environment variables for TEAMaker
setenv TEAMAKER_DFT_FLOW_HOME ./inputs/from_TEAMaker
setenv TEAMAKER_DFT_WORK_ROOT_PATH ./inputs/from_FlowAutomation
setenv TEAMAKER_DFT_TECHNOLOGY "p1278d3"


# For Netbatch and CAD tool license tracking, LM_PROJECT variable must be set
setenv LM_PROJECT NCSG


#====================================================================================================
# CAD Tool Loader Script (a pared-down version of teamaker_dft_flow_cad_setup.sh)
#
# NOTE:  Key CAD tool paths inside Intel are the following
#         /p/hdk/cad/
#         /p/cam/eda/
#        - Always review both locations as the versions are not consistent between the two
#====================================================================================================


#----------------------------------------------------------------------------------------------------
# - From MINT
#     - Tessent version  : tessent 2022.4
#     - VCS Version      : vcsmx L-2016.06-SP1-1
#     - VERDI Version    : verdi3 L-2017.12-SP2-6
#     - Spyglass Version : P-2019.06-SP1-1
#----------------------------------------------------------------------------------------------------
setenv MINT_PATH /p/hdk/cad/mint/v23ww09
setenv VCS_ARCH_OVERRIDE suse32

if (! $?PSETUP_SITE_DEF ) then
  setenv PSETUP_SITE_DEF ""
endif

setenv PREMINT_PSETUP_SITE_DEF $PSETUP_SITE_DEF
setenv PSETUP_SITE_DEF ${MINT_PATH}/bin/siteDef

source /p/hdk/rtl/proj_tools/psetup/master/16.01.01/6.0/bin/setupTool vcsmx L-2016.06-SP1-1 
source /p/hdk/rtl/proj_tools/psetup/master/16.01.01/6.0/bin/setupTool verdi3 N-2017.12-SP2-6 
source /p/hdk/rtl/proj_tools/psetup/master/16.01.01/6.0/bin/setupTool spyglass P-2019.06-SP1-1 
source /p/hdk/rtl/proj_tools/psetup/master/16.01.01/6.0/bin/setupTool tessent 2022.4
setenv PATH /p/hdk/cad/tessent/2022.4/bin:$PATH

setenv PSETUP_SITE_DEF $PREMINT_PSETUP_SITE_DEF

rehash

#----------------------------------------------------------------------------------------------------
# Setup for Tessent 2022.4
#----------------------------------------------------------------------------------------------------
echo "***I: Setting license variable for Tessent /p/hdk/cad/tessent/2022.4"
setenv MGLS_LICENSE_FILE {1717@mentor04p.elic.intel.com:1717@mentor14p.elic.intel.com:1717@mentor41p.elic.intel.com:1717@mentor06p.elic.intel.com:1717@mentor37p.elic.intel.com}
rehash


#----------------------------------------------------------------------------------------------------
# Setup for Design Compiler S-2021.06-SP5
#----------------------------------------------------------------------------------------------------
echo "***I: Setting license file and PATH for Synopsys Design Compiler /p/hdk/cad/designcompiler/Q-2019.12-SP5-1"
setenv SYNOPSYS /p/hdk/cad/designcompiler/Q-2019.12-SP5-1
setenv PATH {/p/hdk/cad/designcompiler/Q-2019.12-SP5-1/bin:$PATH}
setenv SNPSLMD_LICENSE_FILE 26586@synopsys01b.elic.intel.com:26586@synopsys34p.elic.intel.com:26586@synopsys33p.elic.intel.com:26586@synopsys03p.elic.intel.com:26586@synopsys02p.elic.intel.com:26586@synopsys07p.elic.intel.com:26586@synopsys20p.elic.intel.com:26586@synopsys11p.elic.intel.com:26586@synopsys01p.elic.intel.com:26586@synopsys68p.elic.intel.com:26586@synopsys69p.elic.intel.com:26586@synopsys58p.elic.intel.com:26586@synopsys21p.elic.intel.com:26586@synopsys36p.elic.intel.com:26586@synopsys04p.elic.intel.com:26586@synopsys31p.elic.intel.com:26586@synopsys16p.elic.intel.com
setenv SNPSLMD_DISABLE_DEBUG_LICENSE_CHECKS 1
setenv SNPSLMD_DISABLE_FAF_LICENSE_CHECKS 1
setenv SNPSLMD_DISABLE_NTA_LICENSE_CHECKS 1


#----------------------------------------------------------------------------------------------------
# Setup for Formality T-2022.03-SP3
#----------------------------------------------------------------------------------------------------
echo "***I: Setting license file and PATH for Synopsys Formality /p/hdk/cad/formality/T-2022.03-SP3"
setenv SYNOPSYS_HOME /p/hdk/cad/formality/T-2022.03-SP3
setenv PATH {/p/hdk/cad/formality/T-2022.03-SP3/bin:$PATH}
setenv FM_WAIT_LICENSE 1


#----------------------------------------------------------------------------------------------------
# Setup for Mentor QuestaSim
#----------------------------------------------------------------------------------------------------
echo "***I: Setting PATH for Mentor QuestaSim /p/hdk/rtl/cad/x86-64_linux44/mentor/questasim/2021.4"
setenv PATH {/p/hdk/rtl/cad/x86-64_linux44/mentor/questasim/2021.4/bin:$PATH}


#----------------------------------------------------------------------------------------------------
# Setup for Synopsys PrimeTime
#----------------------------------------------------------------------------------------------------
echo "***I: Setting PATH for Synopsys PrimeTime /p/hdk/cad/primetime/T-2022.03"
setenv PATH {/p/hdk/cad/primetime/T-2022.03/bin:$PATH}


#----------------------------------------------------------------------------------------------------
# Setup for Synopsys Library Compiler
#----------------------------------------------------------------------------------------------------
echo "***I: Setting PATH for Synopsys Library Compiler /p/hdk/cad/librarycompiler/T-2022.03-SP3"
setenv SYNOPSYS_LC_HOME /p/hdk/cad/librarycompiler/T-2022.03-SP3/common
setenv SYNOPSYS_LC_ROOT /p/hdk/cad/librarycompiler/T-2022.03-SP3/common
setenv PATH {/p/hdk/cad/librarycompiler/T-2022.03-SP3/common/bin:$PATH}
setenv PATH {/p/hdk/cad/librarycompiler/T-2022.03-SP3/common/linux64/lc/bin:$PATH}


#----------------------------------------------------------------------------------------------------
# Setup for Cadence LEC
#----------------------------------------------------------------------------------------------------
echo "***I: Setting PATH for Cadence Conformal-LEC /p/hdk/cad/conformal/22.10-s200"
setenv PATH {/p/hdk/cad/conformal/22.10-s200/bin:$PATH}
setenv CDS_LIC_FILE 5280@cadence14p.elic.intel.com:5280@cadence24p.elic.intel.com:5280@cadence11p.elic.intel.com:5280@cadence22p.elic.intel.com:5280@cadence47p.elic.intel.com:5280@cadence10p.elic.intel.com:5280@cadence01p.elic.intel.com:5280@cadence20p.elic.intel.com:5280@cadence03p.elic.intel.com:5280@cadence17b.elic.intel.com:5280@cadence22p.elic.intel.com 
rehash


# Do a final rehash to make sure all paths are current
rehash
