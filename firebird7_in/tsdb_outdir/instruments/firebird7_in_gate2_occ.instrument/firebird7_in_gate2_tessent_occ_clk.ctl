//-------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Tue Oct 24 19:28:52 PDT 2023
//-------------------------------------------------


STIL 1.0 {
  Design 2005;
  CTL 2005;
}
Header {
  Title "CTL for design 'firebird7_in_gate2_tessent_occ_clk'";
  Date "Tue Oct 24 19:28:52 PDT 2023";
  Source "Tessent Shell 2022.4";
}
Signals {
  fast_clock In;
  slow_clock In;
  scan_en In;
  shift_only_mode In;
  kill_clock_en In;
  ijtag_tck In;
  ijtag_reset In;
  ijtag_sel In;
  ijtag_ce In;
  ijtag_se In;
  ijtag_ue In;
  ijtag_si In;
  ijtag_so Out;
  clock_out Out;
  scan_in In;
  scan_out Out;
}
SignalGroups {
  all_inputs = 'fast_clock + slow_clock + scan_en + shift_only_mode + kill_clock_en + ijtag_tck + ijtag_reset + ijtag_sel + ijtag_ce + ijtag_se + ijtag_ue + ijtag_si + scan_in';
  all_outputs = 'ijtag_so + clock_out + scan_out';
  all_ports = 'all_inputs + all_outputs';
}
ScanStructures {
  ScanChain "chain_0" {
    ScanLength 5;
    ScanIn scan_in;
    ScanOut scan_out;
    ScanEnable scan_en;
    ScanMasterClock slow_clock;
  }
}
Timing timing {
}
MacroDefs {
}
Environment firebird7_in_gate2_tessent_occ_clk {
  CTLMode internal_test {
    TestMode InternalTest;
    DomainReferences {
    }
    Internal {
      slow_clock {
        DataType ScanMasterClock {
          ActiveState ForceUp;
        }
      }
      scan_en {
        DataType ScanEnable {
          ActiveState ForceUp;
        }
      }
      scan_in {
        ScanStyle MultiplexedData;
        DataType ScanDataIn {
          ScanDataType Internal;
        }
        CaptureClock slow_clock {
          LeadingEdge ;
        }
      }
      scan_out {
        ScanStyle MultiplexedData;
        DataType ScanDataOut {
          ScanDataType Internal;
        }
        LaunchClock slow_clock {
          TrailingEdge ;
        }
      }
    }
  }
}

