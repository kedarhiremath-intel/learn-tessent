`timescale 1ps/100fs
//=====================================================================================================================
// Original Author   : mmeng (System Verilog)
// New      Author   : davidadu (Verilog)
//
// Copyright (c) 2019 Intel Corporation
// Intel Proprietary
//=====================================================================================================================

`celldefine
module i70idvdpmd03m50dshipbm1m3 (
   enosc,
   sleep_b,
   idvdebug_clki,
   hfbankl
);

   // INPUT PORTS
   input  [63:1] enosc ;

   input  sleep_b ;
   input  idvdebug_clki ;
   
   // OUTPUT PORTS
   output hfbankl ;

endmodule   // i70idvdpmd03m50ashipbm1m3
`endcelldefine

