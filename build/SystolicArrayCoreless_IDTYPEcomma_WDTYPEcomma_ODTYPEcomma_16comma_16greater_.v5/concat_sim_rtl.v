
//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  assign idat = dat;
  assign rdy = irdy;
  assign ivld = vld;

endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  assign dat = idat;
  assign irdy = rdy;
  assign vld = ivld;

endmodule



//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/mgc_out_dreg_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_out_dreg_v2 (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input    [width-1:0] d;
  output   [width-1:0] z;

  wire     [width-1:0] z;

  assign z = d;

endmodule

//------> ../td_ccore_solutions/Fifo_ODTYPE_16__221b3917049bbc5c28349b3242b352d67c53_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:47:34 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_16_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_16_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;
  reg [15:0] regs_9_sva_dfm;
  reg [15:0] regs_10_sva_dfm;
  reg [15:0] regs_11_sva_dfm;
  reg [15:0] regs_12_sva_dfm;
  reg [15:0] regs_13_sva_dfm;
  reg [15:0] regs_14_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd97),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd98),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd117),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_14_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_14_sva_dfm <= 16'b0000000000000000;
      regs_13_sva_dfm <= 16'b0000000000000000;
      regs_12_sva_dfm <= 16'b0000000000000000;
      regs_11_sva_dfm <= 16'b0000000000000000;
      regs_10_sva_dfm <= 16'b0000000000000000;
      regs_9_sva_dfm <= 16'b0000000000000000;
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_14_sva_dfm <= regs_13_sva_dfm;
      regs_13_sva_dfm <= regs_12_sva_dfm;
      regs_12_sva_dfm <= regs_11_sva_dfm;
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_16
// ------------------------------------------------------------------


module Fifo_ODTYPE_16 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_16_run Fifo_ODTYPE_16_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_15__0588a2793143081c26ab62d19350374879f4_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:47:41 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_15_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_15_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;
  reg [15:0] regs_9_sva_dfm;
  reg [15:0] regs_10_sva_dfm;
  reg [15:0] regs_11_sva_dfm;
  reg [15:0] regs_12_sva_dfm;
  reg [15:0] regs_13_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd94),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd95),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd118),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_13_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_13_sva_dfm <= 16'b0000000000000000;
      regs_12_sva_dfm <= 16'b0000000000000000;
      regs_11_sva_dfm <= 16'b0000000000000000;
      regs_10_sva_dfm <= 16'b0000000000000000;
      regs_9_sva_dfm <= 16'b0000000000000000;
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_13_sva_dfm <= regs_12_sva_dfm;
      regs_12_sva_dfm <= regs_11_sva_dfm;
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_15
// ------------------------------------------------------------------


module Fifo_ODTYPE_15 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_15_run Fifo_ODTYPE_15_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_14__45e500b517c70224a67c6e90729192d87795_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:47:48 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_14_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_14_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;
  reg [15:0] regs_9_sva_dfm;
  reg [15:0] regs_10_sva_dfm;
  reg [15:0] regs_11_sva_dfm;
  reg [15:0] regs_12_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd91),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd92),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd119),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_12_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_12_sva_dfm <= 16'b0000000000000000;
      regs_11_sva_dfm <= 16'b0000000000000000;
      regs_10_sva_dfm <= 16'b0000000000000000;
      regs_9_sva_dfm <= 16'b0000000000000000;
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_12_sva_dfm <= regs_11_sva_dfm;
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_14
// ------------------------------------------------------------------


module Fifo_ODTYPE_14 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_14_run Fifo_ODTYPE_14_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_13__cfc4e6d714c299c88f1ea11a4aa19dcd7536_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:47:55 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_13_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_13_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;
  reg [15:0] regs_9_sva_dfm;
  reg [15:0] regs_10_sva_dfm;
  reg [15:0] regs_11_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd88),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd89),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd120),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_11_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_11_sva_dfm <= 16'b0000000000000000;
      regs_10_sva_dfm <= 16'b0000000000000000;
      regs_9_sva_dfm <= 16'b0000000000000000;
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_13
// ------------------------------------------------------------------


module Fifo_ODTYPE_13 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_13_run Fifo_ODTYPE_13_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_12__20588fe682fdeb9113d6793626c8c22872d7_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:02 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_12_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_12_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;
  reg [15:0] regs_9_sva_dfm;
  reg [15:0] regs_10_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd85),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd86),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd121),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_10_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_10_sva_dfm <= 16'b0000000000000000;
      regs_9_sva_dfm <= 16'b0000000000000000;
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_12
// ------------------------------------------------------------------


module Fifo_ODTYPE_12 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_12_run Fifo_ODTYPE_12_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_11__917724a8fd2b9046ed510e9c8c2f6e0c7078_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:09 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_11_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_11_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;
  reg [15:0] regs_9_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd82),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd83),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd122),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_9_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_9_sva_dfm <= 16'b0000000000000000;
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_11
// ------------------------------------------------------------------


module Fifo_ODTYPE_11 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_11_run Fifo_ODTYPE_11_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_10__98cb450ab203be4fbf6a1bbccd8ea7be6e1a_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:15 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_10_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_10_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;
  reg [15:0] regs_8_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd79),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd80),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd123),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_8_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_8_sva_dfm <= 16'b0000000000000000;
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_10
// ------------------------------------------------------------------


module Fifo_ODTYPE_10 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_10_run Fifo_ODTYPE_10_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_9__59d17ff0eccb20043113c483bd4832ad6bb0_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:22 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_9_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_9_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;
  reg [15:0] regs_7_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd76),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd77),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd124),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_7_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_7_sva_dfm <= 16'b0000000000000000;
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_9
// ------------------------------------------------------------------


module Fifo_ODTYPE_9 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_9_run Fifo_ODTYPE_9_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_8__fe12db0fc7a2f935da96abaa8a4058ea6952_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:29 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_8_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_8_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;
  reg [15:0] regs_6_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd73),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd74),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd125),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_6_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_6_sva_dfm <= 16'b0000000000000000;
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_8
// ------------------------------------------------------------------


module Fifo_ODTYPE_8 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_8_run Fifo_ODTYPE_8_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_7__d003a84803bb8a29bae7687df0b778f666f4_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:36 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_7_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_7_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;
  reg [15:0] regs_5_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd70),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd71),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd126),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_5_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_5_sva_dfm <= 16'b0000000000000000;
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_7
// ------------------------------------------------------------------


module Fifo_ODTYPE_7 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_7_run Fifo_ODTYPE_7_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_6__ef9cbbb510dc9b7e23fbd9ad2a0b75166496_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:43 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_6_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_6_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;
  reg [15:0] regs_4_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd67),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd68),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd127),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_4_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_4_sva_dfm <= 16'b0000000000000000;
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_6
// ------------------------------------------------------------------


module Fifo_ODTYPE_6 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_6_run Fifo_ODTYPE_6_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_5__3e4e6554e1972e837dfae32d6649bb6d6238_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:49 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_5_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_5_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;
  reg [15:0] regs_3_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd64),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd65),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd128),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_3_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_3_sva_dfm <= 16'b0000000000000000;
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_5
// ------------------------------------------------------------------


module Fifo_ODTYPE_5 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_5_run Fifo_ODTYPE_5_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_4__156db601d575e3447c254544adc35f885fda_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:48:56 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_4_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_4_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;
  reg [15:0] regs_2_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd61),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd62),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd129),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_2_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_2_sva_dfm <= 16'b0000000000000000;
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_4
// ------------------------------------------------------------------


module Fifo_ODTYPE_4 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_4_run Fifo_ODTYPE_4_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_3__7b12ca58716272e54ee61060556848705d7c_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:03 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_3_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_3_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [15:0] regs_0_sva;
  reg [15:0] regs_1_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd58),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd59),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd130),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_1_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_1_sva_dfm <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( regs_and_cse ) begin
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_3
// ------------------------------------------------------------------


module Fifo_ODTYPE_3 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_3_run Fifo_ODTYPE_3_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_2__d9255459d1985bba09ce948bd73b39735b1e_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:10 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_2_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_2_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  reg [15:0] regs_0_sva;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd55),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd56),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd131),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_0_sva;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en & ccs_ccore_start_rsci_idat ) begin
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_2
// ------------------------------------------------------------------


module Fifo_ODTYPE_2 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_2_run Fifo_ODTYPE_2_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_16__d38d5c3f7f7d770ed3944fd5fef6db0b7c26_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:23 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_16_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_16_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;
  reg [7:0] regs_9_sva_dfm;
  reg [7:0] regs_10_sva_dfm;
  reg [7:0] regs_11_sva_dfm;
  reg [7:0] regs_12_sva_dfm;
  reg [7:0] regs_13_sva_dfm;
  reg [7:0] regs_14_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd50),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd51),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd133),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_14_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_14_sva_dfm <= 8'b00000000;
      regs_13_sva_dfm <= 8'b00000000;
      regs_12_sva_dfm <= 8'b00000000;
      regs_11_sva_dfm <= 8'b00000000;
      regs_10_sva_dfm <= 8'b00000000;
      regs_9_sva_dfm <= 8'b00000000;
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_14_sva_dfm <= regs_13_sva_dfm;
      regs_13_sva_dfm <= regs_12_sva_dfm;
      regs_12_sva_dfm <= regs_11_sva_dfm;
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_16
// ------------------------------------------------------------------


module Fifo_IDTYPE_16 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_16_run Fifo_IDTYPE_16_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_15__a3693e6df94c682291b73c0533bd535379c8_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:30 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_15_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_15_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;
  reg [7:0] regs_9_sva_dfm;
  reg [7:0] regs_10_sva_dfm;
  reg [7:0] regs_11_sva_dfm;
  reg [7:0] regs_12_sva_dfm;
  reg [7:0] regs_13_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd47),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd48),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd134),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_13_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_13_sva_dfm <= 8'b00000000;
      regs_12_sva_dfm <= 8'b00000000;
      regs_11_sva_dfm <= 8'b00000000;
      regs_10_sva_dfm <= 8'b00000000;
      regs_9_sva_dfm <= 8'b00000000;
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_13_sva_dfm <= regs_12_sva_dfm;
      regs_12_sva_dfm <= regs_11_sva_dfm;
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_15
// ------------------------------------------------------------------


module Fifo_IDTYPE_15 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_15_run Fifo_IDTYPE_15_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_14__6ed558445f9b0ba26813510e683ff2e6776a_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:37 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_14_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_14_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;
  reg [7:0] regs_9_sva_dfm;
  reg [7:0] regs_10_sva_dfm;
  reg [7:0] regs_11_sva_dfm;
  reg [7:0] regs_12_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd44),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd45),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd135),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_12_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_12_sva_dfm <= 8'b00000000;
      regs_11_sva_dfm <= 8'b00000000;
      regs_10_sva_dfm <= 8'b00000000;
      regs_9_sva_dfm <= 8'b00000000;
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_12_sva_dfm <= regs_11_sva_dfm;
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_14
// ------------------------------------------------------------------


module Fifo_IDTYPE_14 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_14_run Fifo_IDTYPE_14_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_13__3ab39e6656c571656f9f918808a98c90750c_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:45 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_13_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_13_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;
  reg [7:0] regs_9_sva_dfm;
  reg [7:0] regs_10_sva_dfm;
  reg [7:0] regs_11_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd41),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd42),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd136),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_11_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_11_sva_dfm <= 8'b00000000;
      regs_10_sva_dfm <= 8'b00000000;
      regs_9_sva_dfm <= 8'b00000000;
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_11_sva_dfm <= regs_10_sva_dfm;
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_13
// ------------------------------------------------------------------


module Fifo_IDTYPE_13 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_13_run Fifo_IDTYPE_13_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_12__41334737f9db89f3401ddbdb180284a372ae_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:52 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_12_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_12_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;
  reg [7:0] regs_9_sva_dfm;
  reg [7:0] regs_10_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd38),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd39),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd137),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_10_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_10_sva_dfm <= 8'b00000000;
      regs_9_sva_dfm <= 8'b00000000;
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_10_sva_dfm <= regs_9_sva_dfm;
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_12
// ------------------------------------------------------------------


module Fifo_IDTYPE_12 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_12_run Fifo_IDTYPE_12_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_11__b143065b8a794d7c3150cb2396006f267050_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:59 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_11_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_11_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;
  reg [7:0] regs_9_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd35),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd36),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd138),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_9_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_9_sva_dfm <= 8'b00000000;
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_9_sva_dfm <= regs_8_sva_dfm;
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_11
// ------------------------------------------------------------------


module Fifo_IDTYPE_11 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_11_run Fifo_IDTYPE_11_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_10__2ffa16ce99a732e8d71a5f721f0f2d316df3_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:06 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_10_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_10_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;
  reg [7:0] regs_8_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd32),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd33),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd139),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_8_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_8_sva_dfm <= 8'b00000000;
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_8_sva_dfm <= regs_7_sva_dfm;
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_10
// ------------------------------------------------------------------


module Fifo_IDTYPE_10 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_10_run Fifo_IDTYPE_10_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_9__3850d4c5a858cb636c57c5c7832e8f086b8a_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:13 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_9_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_9_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;
  reg [7:0] regs_7_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd29),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd30),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd140),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_7_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_7_sva_dfm <= 8'b00000000;
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_7_sva_dfm <= regs_6_sva_dfm;
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_9
// ------------------------------------------------------------------


module Fifo_IDTYPE_9 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_9_run Fifo_IDTYPE_9_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_8__088804bffe2cbc7474b0591ee11c8c42692d_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:20 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_8_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_8_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;
  reg [7:0] regs_6_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd26),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd27),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd141),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_6_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_6_sva_dfm <= 8'b00000000;
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_6_sva_dfm <= regs_5_sva_dfm;
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_8
// ------------------------------------------------------------------


module Fifo_IDTYPE_8 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_8_run Fifo_IDTYPE_8_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_7__219aaa96b5533f6efa14178ba0ae3f9266d0_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:27 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_7_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_7_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;
  reg [7:0] regs_5_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd23),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd24),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd142),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_5_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_5_sva_dfm <= 8'b00000000;
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_5_sva_dfm <= regs_4_sva_dfm;
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_7
// ------------------------------------------------------------------


module Fifo_IDTYPE_7 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_7_run Fifo_IDTYPE_7_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_6__4caa842e06e3cce2ef6eb0925cfd318a6473_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:34 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_6_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_6_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;
  reg [7:0] regs_4_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd20),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd21),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd143),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_4_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_4_sva_dfm <= 8'b00000000;
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_4_sva_dfm <= regs_3_sva_dfm;
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_6
// ------------------------------------------------------------------


module Fifo_IDTYPE_6 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_6_run Fifo_IDTYPE_6_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_5__74b9abe40f59f3bac195e723964a8a776216_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:41 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_5_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_5_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;
  reg [7:0] regs_3_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd17),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd18),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd144),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_3_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_3_sva_dfm <= 8'b00000000;
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_3_sva_dfm <= regs_2_sva_dfm;
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_5
// ------------------------------------------------------------------


module Fifo_IDTYPE_5 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_5_run Fifo_IDTYPE_5_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_4__99dd0c69a5e527ded4c3d01075afb99b5fb9_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:48 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_4_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_4_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;
  reg [7:0] regs_2_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd14),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd15),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd145),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_2_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_2_sva_dfm <= 8'b00000000;
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_2_sva_dfm <= regs_1_sva_dfm;
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_4
// ------------------------------------------------------------------


module Fifo_IDTYPE_4 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_4_run Fifo_IDTYPE_4_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_3__9ab5ce9495ab244439c9135630c9d9035d5c_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:50:55 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_3_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_3_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire regs_and_cse;
  reg [7:0] regs_0_sva;
  reg [7:0] regs_1_sva_dfm;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd11),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd12),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd146),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign regs_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_1_sva_dfm;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_1_sva_dfm <= 8'b00000000;
      regs_0_sva <= 8'b00000000;
    end
    else if ( regs_and_cse ) begin
      regs_1_sva_dfm <= regs_0_sva;
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_3
// ------------------------------------------------------------------


module Fifo_IDTYPE_3 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_3_run Fifo_IDTYPE_3_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_2__e3a3a79fd6d2b9552fe00c731f1f97345afd_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:51:02 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_2_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_2_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  reg [7:0] regs_0_sva;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd8),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd9),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd147),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= regs_0_sva;
    end
  end
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      regs_0_sva <= 8'b00000000;
    end
    else if ( ccs_ccore_en & ccs_ccore_start_rsci_idat ) begin
      regs_0_sva <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_2
// ------------------------------------------------------------------


module Fifo_IDTYPE_2 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_2_run Fifo_IDTYPE_2_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../ProcessingElementless_IDTYPEcomma_WDTYPEcomma_ODTYPEgreater_.v1/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:20:49 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    ProcessingElement_IDTYPE_WDTYPE_ODTYPE_run
// ------------------------------------------------------------------


module ProcessingElement_IDTYPE_WDTYPE_ODTYPE_run (
  clk, arst_n, input_in_rsc_dat, psum_in_rsc_dat, weight_rsc_dat, input_out_rsc_z,
      psum_out_rsc_z, ccs_ccore_en
);
  input clk;
  input arst_n;
  input [7:0] input_in_rsc_dat;
  input [15:0] psum_in_rsc_dat;
  input [7:0] weight_rsc_dat;
  output [7:0] input_out_rsc_z;
  output [15:0] psum_out_rsc_z;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_in_rsci_idat;
  wire [15:0] psum_in_rsci_idat;
  wire [7:0] weight_rsci_idat;
  reg [7:0] input_out_rsci_d;
  reg [15:0] psum_out_rsci_d;
  wire [16:0] nl_psum_out_rsci_d;

  wire[15:0] mul_nl;

  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd1),
  .width(32'sd8)) input_in_rsci (
      .dat(input_in_rsc_dat),
      .idat(input_in_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd2),
  .width(32'sd16)) psum_in_rsci (
      .dat(psum_in_rsc_dat),
      .idat(psum_in_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd3),
  .width(32'sd8)) weight_rsci (
      .dat(weight_rsc_dat),
      .idat(weight_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd4),
  .width(32'sd8)) input_out_rsci (
      .d(input_out_rsci_d),
      .z(input_out_rsc_z)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd5),
  .width(32'sd16)) psum_out_rsci (
      .d(psum_out_rsci_d),
      .z(psum_out_rsc_z)
    );
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      psum_out_rsci_d <= 16'b0000000000000000;
      input_out_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      psum_out_rsci_d <= nl_psum_out_rsci_d[15:0];
      input_out_rsci_d <= input_in_rsci_idat;
    end
  end
  assign mul_nl = conv_s2u_16_16($signed((input_in_rsci_idat)) * $signed((weight_rsci_idat)));
  assign nl_psum_out_rsci_d  = psum_in_rsci_idat + (mul_nl);

  function automatic [15:0] conv_s2u_16_16 ;
    input [15:0]  vector ;
  begin
    conv_s2u_16_16 = vector;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    ProcessingElement_IDTYPE_WDTYPE_ODTYPE
// ------------------------------------------------------------------


module ProcessingElement_IDTYPE_WDTYPE_ODTYPE (
  clk, arst_n, input_in_rsc_dat, psum_in_rsc_dat, weight_rsc_dat, input_out_rsc_z,
      psum_out_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_en
);
  input clk;
  input arst_n;
  input [7:0] input_in_rsc_dat;
  input [15:0] psum_in_rsc_dat;
  input [7:0] weight_rsc_dat;
  output [7:0] input_out_rsc_z;
  output [15:0] psum_out_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE_run ProcessingElement_IDTYPE_WDTYPE_ODTYPE_run_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .input_in_rsc_dat(input_in_rsc_dat),
      .psum_in_rsc_dat(psum_in_rsc_dat),
      .weight_rsc_dat(weight_rsc_dat),
      .input_out_rsc_z(input_out_rsc_z),
      .psum_out_rsc_z(psum_out_rsc_z),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_ODTYPE_1__9c4a99f532013522e5120280b322b342544e_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:49:16 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_1_run
// ------------------------------------------------------------------


module Fifo_ODTYPE_1_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_clk, ccs_ccore_arst, ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [15:0] input_rsci_idat;
  reg [15:0] output_rsci_d;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd53),
  .width(32'sd16)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd54),
  .width(32'sd16)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 16'b0000000000000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_ODTYPE_1
// ------------------------------------------------------------------


module Fifo_ODTYPE_1 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [15:0] input_rsc_dat;
  output [15:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_ODTYPE_1_run Fifo_ODTYPE_1_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Fifo_IDTYPE_1__93d204e0bede44f1c5761a5d5c8023bb542f_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 20:51:09 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_1_run
// ------------------------------------------------------------------


module Fifo_IDTYPE_1_run (
  input_rsc_dat, output_rsc_z, ccs_ccore_clk, ccs_ccore_arst, ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [7:0] input_rsci_idat;
  reg [7:0] output_rsci_d;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd6),
  .width(32'sd8)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd7),
  .width(32'sd8)) output_rsci (
      .d(output_rsci_d),
      .z(output_rsc_z)
    );
  always @(posedge ccs_ccore_clk or negedge ccs_ccore_arst) begin
    if ( ~ ccs_ccore_arst ) begin
      output_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      output_rsci_d <= input_rsci_idat;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Fifo_IDTYPE_1
// ------------------------------------------------------------------


module Fifo_IDTYPE_1 (
  input_rsc_dat, output_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_arst,
      ccs_ccore_en
);
  input [7:0] input_rsc_dat;
  output [7:0] output_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_arst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Fifo_IDTYPE_1_run Fifo_IDTYPE_1_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .output_rsc_z(output_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_arst(ccs_ccore_arst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_ram_sync_1R1W.v 
module ccs_ram_sync_1R1W
#(
parameter data_width = 8,
parameter addr_width = 7,
parameter depth = 128
)(
	radr, wadr, d, we, re, clk, q
);

	input [addr_width-1:0] radr;
	input [addr_width-1:0] wadr;
	input [data_width-1:0] d;
	input we;
	input re;
	input clk;
	output[data_width-1:0] q;

   // synopsys translate_off
	reg [data_width-1:0] q;

	reg [data_width-1:0] mem [depth-1:0];
		
	always @(posedge clk) begin
		if (we) begin
			mem[wadr] <= d; // Write port
		end
		if (re) begin
			q <= mem[radr] ; // read port
		end
	end
   // synopsys translate_on

endmodule

//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   ctorng@caddy01
//  Generated date: Sun Sep 25 22:03:05 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_164_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_164_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_163_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_163_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_162_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_162_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_161_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_161_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_160_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_160_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_159_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_159_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_158_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_158_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_157_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_157_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_156_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_156_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_155_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_155_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_154_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_154_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_153_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_153_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_152_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_152_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_151_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_151_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_150_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_150_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_149_16_8_256_256_16_5_gen
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_149_16_8_256_256_16_5_gen
    (
  we, d, wadr, q, re, radr, radr_d, wadr_d, d_d, we_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d,
      port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [15:0] d;
  output [7:0] wadr;
  input [15:0] q;
  output re;
  output [7:0] radr;
  input [7:0] radr_d;
  input [7:0] wadr_d;
  input [15:0] d_d;
  input we_d;
  input re_d;
  output [15:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_run_fsm (
  clk, arst_n, run_wen, fsm_output
);
  input clk;
  input arst_n;
  input run_wen;
  output [1:0] fsm_output;
  reg [1:0] fsm_output;


  // FSM State Type Declaration for SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_run_fsm_1
  parameter
    run_rlp_C_0 = 1'd0,
    main_C_0 = 1'd1;

  reg [0:0] state_var;
  reg [0:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 2'b10;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 2'b01;
        state_var_NS = main_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller (
  clk, arst_n, run_wen, run_wten, input_rsci_wen_comp, weight_rsci_wen_comp, output_rsci_wen_comp,
      paramsIn_rsci_wen_comp, loopIndicesIn_rsci_wen_comp
);
  input clk;
  input arst_n;
  output run_wen;
  output run_wten;
  input input_rsci_wen_comp;
  input weight_rsci_wen_comp;
  input output_rsci_wen_comp;
  input paramsIn_rsci_wen_comp;
  input loopIndicesIn_rsci_wen_comp;


  // Interconnect Declarations
  reg run_wten_reg;


  // Interconnect Declarations for Component Instantiations 
  assign run_wen = input_rsci_wen_comp & weight_rsci_wen_comp & output_rsci_wen_comp
      & paramsIn_rsci_wen_comp & loopIndicesIn_rsci_wen_comp;
  assign run_wten = run_wten_reg;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      run_wten_reg <= 1'b0;
    end
    else begin
      run_wten_reg <= ~ run_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_wait_dp (
  ensig_cgo_iro, ensig_cgo_iro_1, run_wen, ensig_cgo, accum_fifo_15_rsci_ccs_ccore_en,
      ensig_cgo_1, output_fifo_0_rsci_ccs_ccore_en
);
  input ensig_cgo_iro;
  input ensig_cgo_iro_1;
  input run_wen;
  input ensig_cgo;
  output accum_fifo_15_rsci_ccs_ccore_en;
  input ensig_cgo_1;
  output output_fifo_0_rsci_ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  assign accum_fifo_15_rsci_ccs_ccore_en = run_wen & (ensig_cgo | ensig_cgo_iro);
  assign output_fifo_0_rsci_ccs_ccore_en = run_wen & (ensig_cgo_1 | ensig_cgo_iro_1);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    CGHpart
// ------------------------------------------------------------------


module CGHpart (
  CGHpart_isig
);
  input CGHpart_isig;



  // Interconnect Declarations for Component Instantiations 
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_15_i_q_d, accum_buf_rsc_0_15_i_q_d_mxwt, accum_buf_rsc_0_15_i_biwt,
      accum_buf_rsc_0_15_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_15_i_q_d;
  output [15:0] accum_buf_rsc_0_15_i_q_d_mxwt;
  input accum_buf_rsc_0_15_i_biwt;
  input accum_buf_rsc_0_15_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_15_i_bcwt;
  reg [15:0] accum_buf_rsc_0_15_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_15_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_15_i_q_d, accum_buf_rsc_0_15_i_q_d_bfwt,
      accum_buf_rsc_0_15_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_15_i_bcwt <= 1'b0;
      accum_buf_rsc_0_15_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_15_i_bcwt <= ~((~(accum_buf_rsc_0_15_i_bcwt | accum_buf_rsc_0_15_i_biwt))
          | accum_buf_rsc_0_15_i_bdwt);
      accum_buf_rsc_0_15_i_q_d_bfwt <= accum_buf_rsc_0_15_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_15_i_oswt, accum_buf_rsc_0_15_i_biwt, accum_buf_rsc_0_15_i_bdwt,
      accum_buf_rsc_0_15_i_we_d_run_sct_pff, accum_buf_rsc_0_15_i_iswt0_1_pff, accum_buf_rsc_0_15_i_re_d_run_sct_pff,
      accum_buf_rsc_0_15_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_15_i_oswt;
  output accum_buf_rsc_0_15_i_biwt;
  output accum_buf_rsc_0_15_i_bdwt;
  output accum_buf_rsc_0_15_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_15_i_iswt0_1_pff;
  output accum_buf_rsc_0_15_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_15_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_15_i_bdwt = accum_buf_rsc_0_15_i_oswt & run_wen;
  assign accum_buf_rsc_0_15_i_biwt = (~ run_wten) & accum_buf_rsc_0_15_i_oswt;
  assign accum_buf_rsc_0_15_i_we_d_run_sct_pff = accum_buf_rsc_0_15_i_iswt0_1_pff
      & run_wen;
  assign accum_buf_rsc_0_15_i_re_d_run_sct_pff = accum_buf_rsc_0_15_i_oswt_pff &
      run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_14_i_q_d, accum_buf_rsc_0_14_i_q_d_mxwt, accum_buf_rsc_0_14_i_biwt,
      accum_buf_rsc_0_14_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_14_i_q_d;
  output [15:0] accum_buf_rsc_0_14_i_q_d_mxwt;
  input accum_buf_rsc_0_14_i_biwt;
  input accum_buf_rsc_0_14_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_14_i_bcwt;
  reg [15:0] accum_buf_rsc_0_14_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_14_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_14_i_q_d, accum_buf_rsc_0_14_i_q_d_bfwt,
      accum_buf_rsc_0_14_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_14_i_bcwt <= 1'b0;
      accum_buf_rsc_0_14_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_14_i_bcwt <= ~((~(accum_buf_rsc_0_14_i_bcwt | accum_buf_rsc_0_14_i_biwt))
          | accum_buf_rsc_0_14_i_bdwt);
      accum_buf_rsc_0_14_i_q_d_bfwt <= accum_buf_rsc_0_14_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_14_i_oswt, accum_buf_rsc_0_14_i_biwt, accum_buf_rsc_0_14_i_bdwt,
      accum_buf_rsc_0_14_i_we_d_run_sct_pff, accum_buf_rsc_0_14_i_iswt0_1_pff, accum_buf_rsc_0_14_i_re_d_run_sct_pff,
      accum_buf_rsc_0_14_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_14_i_oswt;
  output accum_buf_rsc_0_14_i_biwt;
  output accum_buf_rsc_0_14_i_bdwt;
  output accum_buf_rsc_0_14_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_14_i_iswt0_1_pff;
  output accum_buf_rsc_0_14_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_14_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_14_i_bdwt = accum_buf_rsc_0_14_i_oswt & run_wen;
  assign accum_buf_rsc_0_14_i_biwt = (~ run_wten) & accum_buf_rsc_0_14_i_oswt;
  assign accum_buf_rsc_0_14_i_we_d_run_sct_pff = accum_buf_rsc_0_14_i_iswt0_1_pff
      & run_wen;
  assign accum_buf_rsc_0_14_i_re_d_run_sct_pff = accum_buf_rsc_0_14_i_oswt_pff &
      run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_13_i_q_d, accum_buf_rsc_0_13_i_q_d_mxwt, accum_buf_rsc_0_13_i_biwt,
      accum_buf_rsc_0_13_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_13_i_q_d;
  output [15:0] accum_buf_rsc_0_13_i_q_d_mxwt;
  input accum_buf_rsc_0_13_i_biwt;
  input accum_buf_rsc_0_13_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_13_i_bcwt;
  reg [15:0] accum_buf_rsc_0_13_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_13_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_13_i_q_d, accum_buf_rsc_0_13_i_q_d_bfwt,
      accum_buf_rsc_0_13_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_13_i_bcwt <= 1'b0;
      accum_buf_rsc_0_13_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_13_i_bcwt <= ~((~(accum_buf_rsc_0_13_i_bcwt | accum_buf_rsc_0_13_i_biwt))
          | accum_buf_rsc_0_13_i_bdwt);
      accum_buf_rsc_0_13_i_q_d_bfwt <= accum_buf_rsc_0_13_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_13_i_oswt, accum_buf_rsc_0_13_i_biwt, accum_buf_rsc_0_13_i_bdwt,
      accum_buf_rsc_0_13_i_we_d_run_sct_pff, accum_buf_rsc_0_13_i_iswt0_1_pff, accum_buf_rsc_0_13_i_re_d_run_sct_pff,
      accum_buf_rsc_0_13_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_13_i_oswt;
  output accum_buf_rsc_0_13_i_biwt;
  output accum_buf_rsc_0_13_i_bdwt;
  output accum_buf_rsc_0_13_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_13_i_iswt0_1_pff;
  output accum_buf_rsc_0_13_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_13_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_13_i_bdwt = accum_buf_rsc_0_13_i_oswt & run_wen;
  assign accum_buf_rsc_0_13_i_biwt = (~ run_wten) & accum_buf_rsc_0_13_i_oswt;
  assign accum_buf_rsc_0_13_i_we_d_run_sct_pff = accum_buf_rsc_0_13_i_iswt0_1_pff
      & run_wen;
  assign accum_buf_rsc_0_13_i_re_d_run_sct_pff = accum_buf_rsc_0_13_i_oswt_pff &
      run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_12_i_q_d, accum_buf_rsc_0_12_i_q_d_mxwt, accum_buf_rsc_0_12_i_biwt,
      accum_buf_rsc_0_12_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_12_i_q_d;
  output [15:0] accum_buf_rsc_0_12_i_q_d_mxwt;
  input accum_buf_rsc_0_12_i_biwt;
  input accum_buf_rsc_0_12_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_12_i_bcwt;
  reg [15:0] accum_buf_rsc_0_12_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_12_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_12_i_q_d, accum_buf_rsc_0_12_i_q_d_bfwt,
      accum_buf_rsc_0_12_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_12_i_bcwt <= 1'b0;
      accum_buf_rsc_0_12_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_12_i_bcwt <= ~((~(accum_buf_rsc_0_12_i_bcwt | accum_buf_rsc_0_12_i_biwt))
          | accum_buf_rsc_0_12_i_bdwt);
      accum_buf_rsc_0_12_i_q_d_bfwt <= accum_buf_rsc_0_12_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_12_i_oswt, accum_buf_rsc_0_12_i_biwt, accum_buf_rsc_0_12_i_bdwt,
      accum_buf_rsc_0_12_i_we_d_run_sct_pff, accum_buf_rsc_0_12_i_iswt0_1_pff, accum_buf_rsc_0_12_i_re_d_run_sct_pff,
      accum_buf_rsc_0_12_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_12_i_oswt;
  output accum_buf_rsc_0_12_i_biwt;
  output accum_buf_rsc_0_12_i_bdwt;
  output accum_buf_rsc_0_12_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_12_i_iswt0_1_pff;
  output accum_buf_rsc_0_12_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_12_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_12_i_bdwt = accum_buf_rsc_0_12_i_oswt & run_wen;
  assign accum_buf_rsc_0_12_i_biwt = (~ run_wten) & accum_buf_rsc_0_12_i_oswt;
  assign accum_buf_rsc_0_12_i_we_d_run_sct_pff = accum_buf_rsc_0_12_i_iswt0_1_pff
      & run_wen;
  assign accum_buf_rsc_0_12_i_re_d_run_sct_pff = accum_buf_rsc_0_12_i_oswt_pff &
      run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_11_i_q_d, accum_buf_rsc_0_11_i_q_d_mxwt, accum_buf_rsc_0_11_i_biwt,
      accum_buf_rsc_0_11_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_11_i_q_d;
  output [15:0] accum_buf_rsc_0_11_i_q_d_mxwt;
  input accum_buf_rsc_0_11_i_biwt;
  input accum_buf_rsc_0_11_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_11_i_bcwt;
  reg [15:0] accum_buf_rsc_0_11_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_11_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_11_i_q_d, accum_buf_rsc_0_11_i_q_d_bfwt,
      accum_buf_rsc_0_11_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_11_i_bcwt <= 1'b0;
      accum_buf_rsc_0_11_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_11_i_bcwt <= ~((~(accum_buf_rsc_0_11_i_bcwt | accum_buf_rsc_0_11_i_biwt))
          | accum_buf_rsc_0_11_i_bdwt);
      accum_buf_rsc_0_11_i_q_d_bfwt <= accum_buf_rsc_0_11_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_11_i_oswt, accum_buf_rsc_0_11_i_biwt, accum_buf_rsc_0_11_i_bdwt,
      accum_buf_rsc_0_11_i_we_d_run_sct_pff, accum_buf_rsc_0_11_i_iswt0_1_pff, accum_buf_rsc_0_11_i_re_d_run_sct_pff,
      accum_buf_rsc_0_11_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_11_i_oswt;
  output accum_buf_rsc_0_11_i_biwt;
  output accum_buf_rsc_0_11_i_bdwt;
  output accum_buf_rsc_0_11_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_11_i_iswt0_1_pff;
  output accum_buf_rsc_0_11_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_11_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_11_i_bdwt = accum_buf_rsc_0_11_i_oswt & run_wen;
  assign accum_buf_rsc_0_11_i_biwt = (~ run_wten) & accum_buf_rsc_0_11_i_oswt;
  assign accum_buf_rsc_0_11_i_we_d_run_sct_pff = accum_buf_rsc_0_11_i_iswt0_1_pff
      & run_wen;
  assign accum_buf_rsc_0_11_i_re_d_run_sct_pff = accum_buf_rsc_0_11_i_oswt_pff &
      run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_10_i_q_d, accum_buf_rsc_0_10_i_q_d_mxwt, accum_buf_rsc_0_10_i_biwt,
      accum_buf_rsc_0_10_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_10_i_q_d;
  output [15:0] accum_buf_rsc_0_10_i_q_d_mxwt;
  input accum_buf_rsc_0_10_i_biwt;
  input accum_buf_rsc_0_10_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_10_i_bcwt;
  reg [15:0] accum_buf_rsc_0_10_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_10_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_10_i_q_d, accum_buf_rsc_0_10_i_q_d_bfwt,
      accum_buf_rsc_0_10_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_10_i_bcwt <= 1'b0;
      accum_buf_rsc_0_10_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_10_i_bcwt <= ~((~(accum_buf_rsc_0_10_i_bcwt | accum_buf_rsc_0_10_i_biwt))
          | accum_buf_rsc_0_10_i_bdwt);
      accum_buf_rsc_0_10_i_q_d_bfwt <= accum_buf_rsc_0_10_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_10_i_oswt, accum_buf_rsc_0_10_i_biwt, accum_buf_rsc_0_10_i_bdwt,
      accum_buf_rsc_0_10_i_we_d_run_sct_pff, accum_buf_rsc_0_10_i_iswt0_1_pff, accum_buf_rsc_0_10_i_re_d_run_sct_pff,
      accum_buf_rsc_0_10_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_10_i_oswt;
  output accum_buf_rsc_0_10_i_biwt;
  output accum_buf_rsc_0_10_i_bdwt;
  output accum_buf_rsc_0_10_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_10_i_iswt0_1_pff;
  output accum_buf_rsc_0_10_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_10_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_10_i_bdwt = accum_buf_rsc_0_10_i_oswt & run_wen;
  assign accum_buf_rsc_0_10_i_biwt = (~ run_wten) & accum_buf_rsc_0_10_i_oswt;
  assign accum_buf_rsc_0_10_i_we_d_run_sct_pff = accum_buf_rsc_0_10_i_iswt0_1_pff
      & run_wen;
  assign accum_buf_rsc_0_10_i_re_d_run_sct_pff = accum_buf_rsc_0_10_i_oswt_pff &
      run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_9_i_q_d, accum_buf_rsc_0_9_i_q_d_mxwt, accum_buf_rsc_0_9_i_biwt,
      accum_buf_rsc_0_9_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_9_i_q_d;
  output [15:0] accum_buf_rsc_0_9_i_q_d_mxwt;
  input accum_buf_rsc_0_9_i_biwt;
  input accum_buf_rsc_0_9_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_9_i_bcwt;
  reg [15:0] accum_buf_rsc_0_9_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_9_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_9_i_q_d, accum_buf_rsc_0_9_i_q_d_bfwt,
      accum_buf_rsc_0_9_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_9_i_bcwt <= 1'b0;
      accum_buf_rsc_0_9_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_9_i_bcwt <= ~((~(accum_buf_rsc_0_9_i_bcwt | accum_buf_rsc_0_9_i_biwt))
          | accum_buf_rsc_0_9_i_bdwt);
      accum_buf_rsc_0_9_i_q_d_bfwt <= accum_buf_rsc_0_9_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_9_i_oswt, accum_buf_rsc_0_9_i_biwt, accum_buf_rsc_0_9_i_bdwt,
      accum_buf_rsc_0_9_i_we_d_run_sct_pff, accum_buf_rsc_0_9_i_iswt0_1_pff, accum_buf_rsc_0_9_i_re_d_run_sct_pff,
      accum_buf_rsc_0_9_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_9_i_oswt;
  output accum_buf_rsc_0_9_i_biwt;
  output accum_buf_rsc_0_9_i_bdwt;
  output accum_buf_rsc_0_9_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_9_i_iswt0_1_pff;
  output accum_buf_rsc_0_9_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_9_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_9_i_bdwt = accum_buf_rsc_0_9_i_oswt & run_wen;
  assign accum_buf_rsc_0_9_i_biwt = (~ run_wten) & accum_buf_rsc_0_9_i_oswt;
  assign accum_buf_rsc_0_9_i_we_d_run_sct_pff = accum_buf_rsc_0_9_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_9_i_re_d_run_sct_pff = accum_buf_rsc_0_9_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_8_i_q_d, accum_buf_rsc_0_8_i_q_d_mxwt, accum_buf_rsc_0_8_i_biwt,
      accum_buf_rsc_0_8_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_8_i_q_d;
  output [15:0] accum_buf_rsc_0_8_i_q_d_mxwt;
  input accum_buf_rsc_0_8_i_biwt;
  input accum_buf_rsc_0_8_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_8_i_bcwt;
  reg [15:0] accum_buf_rsc_0_8_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_8_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_8_i_q_d, accum_buf_rsc_0_8_i_q_d_bfwt,
      accum_buf_rsc_0_8_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_8_i_bcwt <= 1'b0;
      accum_buf_rsc_0_8_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_8_i_bcwt <= ~((~(accum_buf_rsc_0_8_i_bcwt | accum_buf_rsc_0_8_i_biwt))
          | accum_buf_rsc_0_8_i_bdwt);
      accum_buf_rsc_0_8_i_q_d_bfwt <= accum_buf_rsc_0_8_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_8_i_oswt, accum_buf_rsc_0_8_i_biwt, accum_buf_rsc_0_8_i_bdwt,
      accum_buf_rsc_0_8_i_we_d_run_sct_pff, accum_buf_rsc_0_8_i_iswt0_1_pff, accum_buf_rsc_0_8_i_re_d_run_sct_pff,
      accum_buf_rsc_0_8_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_8_i_oswt;
  output accum_buf_rsc_0_8_i_biwt;
  output accum_buf_rsc_0_8_i_bdwt;
  output accum_buf_rsc_0_8_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_8_i_iswt0_1_pff;
  output accum_buf_rsc_0_8_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_8_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_8_i_bdwt = accum_buf_rsc_0_8_i_oswt & run_wen;
  assign accum_buf_rsc_0_8_i_biwt = (~ run_wten) & accum_buf_rsc_0_8_i_oswt;
  assign accum_buf_rsc_0_8_i_we_d_run_sct_pff = accum_buf_rsc_0_8_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_8_i_re_d_run_sct_pff = accum_buf_rsc_0_8_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_7_i_q_d, accum_buf_rsc_0_7_i_q_d_mxwt, accum_buf_rsc_0_7_i_biwt,
      accum_buf_rsc_0_7_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_7_i_q_d;
  output [15:0] accum_buf_rsc_0_7_i_q_d_mxwt;
  input accum_buf_rsc_0_7_i_biwt;
  input accum_buf_rsc_0_7_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_7_i_bcwt;
  reg [15:0] accum_buf_rsc_0_7_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_7_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_7_i_q_d, accum_buf_rsc_0_7_i_q_d_bfwt,
      accum_buf_rsc_0_7_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_7_i_bcwt <= 1'b0;
      accum_buf_rsc_0_7_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_7_i_bcwt <= ~((~(accum_buf_rsc_0_7_i_bcwt | accum_buf_rsc_0_7_i_biwt))
          | accum_buf_rsc_0_7_i_bdwt);
      accum_buf_rsc_0_7_i_q_d_bfwt <= accum_buf_rsc_0_7_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_7_i_oswt, accum_buf_rsc_0_7_i_biwt, accum_buf_rsc_0_7_i_bdwt,
      accum_buf_rsc_0_7_i_we_d_run_sct_pff, accum_buf_rsc_0_7_i_iswt0_1_pff, accum_buf_rsc_0_7_i_re_d_run_sct_pff,
      accum_buf_rsc_0_7_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_7_i_oswt;
  output accum_buf_rsc_0_7_i_biwt;
  output accum_buf_rsc_0_7_i_bdwt;
  output accum_buf_rsc_0_7_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_7_i_iswt0_1_pff;
  output accum_buf_rsc_0_7_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_7_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_7_i_bdwt = accum_buf_rsc_0_7_i_oswt & run_wen;
  assign accum_buf_rsc_0_7_i_biwt = (~ run_wten) & accum_buf_rsc_0_7_i_oswt;
  assign accum_buf_rsc_0_7_i_we_d_run_sct_pff = accum_buf_rsc_0_7_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_7_i_re_d_run_sct_pff = accum_buf_rsc_0_7_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_6_i_q_d, accum_buf_rsc_0_6_i_q_d_mxwt, accum_buf_rsc_0_6_i_biwt,
      accum_buf_rsc_0_6_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_6_i_q_d;
  output [15:0] accum_buf_rsc_0_6_i_q_d_mxwt;
  input accum_buf_rsc_0_6_i_biwt;
  input accum_buf_rsc_0_6_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_6_i_bcwt;
  reg [15:0] accum_buf_rsc_0_6_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_6_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_6_i_q_d, accum_buf_rsc_0_6_i_q_d_bfwt,
      accum_buf_rsc_0_6_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_6_i_bcwt <= 1'b0;
      accum_buf_rsc_0_6_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_6_i_bcwt <= ~((~(accum_buf_rsc_0_6_i_bcwt | accum_buf_rsc_0_6_i_biwt))
          | accum_buf_rsc_0_6_i_bdwt);
      accum_buf_rsc_0_6_i_q_d_bfwt <= accum_buf_rsc_0_6_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_6_i_oswt, accum_buf_rsc_0_6_i_biwt, accum_buf_rsc_0_6_i_bdwt,
      accum_buf_rsc_0_6_i_we_d_run_sct_pff, accum_buf_rsc_0_6_i_iswt0_1_pff, accum_buf_rsc_0_6_i_re_d_run_sct_pff,
      accum_buf_rsc_0_6_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_6_i_oswt;
  output accum_buf_rsc_0_6_i_biwt;
  output accum_buf_rsc_0_6_i_bdwt;
  output accum_buf_rsc_0_6_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_6_i_iswt0_1_pff;
  output accum_buf_rsc_0_6_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_6_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_6_i_bdwt = accum_buf_rsc_0_6_i_oswt & run_wen;
  assign accum_buf_rsc_0_6_i_biwt = (~ run_wten) & accum_buf_rsc_0_6_i_oswt;
  assign accum_buf_rsc_0_6_i_we_d_run_sct_pff = accum_buf_rsc_0_6_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_6_i_re_d_run_sct_pff = accum_buf_rsc_0_6_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_5_i_q_d, accum_buf_rsc_0_5_i_q_d_mxwt, accum_buf_rsc_0_5_i_biwt,
      accum_buf_rsc_0_5_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_5_i_q_d;
  output [15:0] accum_buf_rsc_0_5_i_q_d_mxwt;
  input accum_buf_rsc_0_5_i_biwt;
  input accum_buf_rsc_0_5_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_5_i_bcwt;
  reg [15:0] accum_buf_rsc_0_5_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_5_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_5_i_q_d, accum_buf_rsc_0_5_i_q_d_bfwt,
      accum_buf_rsc_0_5_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_5_i_bcwt <= 1'b0;
      accum_buf_rsc_0_5_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_5_i_bcwt <= ~((~(accum_buf_rsc_0_5_i_bcwt | accum_buf_rsc_0_5_i_biwt))
          | accum_buf_rsc_0_5_i_bdwt);
      accum_buf_rsc_0_5_i_q_d_bfwt <= accum_buf_rsc_0_5_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_5_i_oswt, accum_buf_rsc_0_5_i_biwt, accum_buf_rsc_0_5_i_bdwt,
      accum_buf_rsc_0_5_i_we_d_run_sct_pff, accum_buf_rsc_0_5_i_iswt0_1_pff, accum_buf_rsc_0_5_i_re_d_run_sct_pff,
      accum_buf_rsc_0_5_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_5_i_oswt;
  output accum_buf_rsc_0_5_i_biwt;
  output accum_buf_rsc_0_5_i_bdwt;
  output accum_buf_rsc_0_5_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_5_i_iswt0_1_pff;
  output accum_buf_rsc_0_5_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_5_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_5_i_bdwt = accum_buf_rsc_0_5_i_oswt & run_wen;
  assign accum_buf_rsc_0_5_i_biwt = (~ run_wten) & accum_buf_rsc_0_5_i_oswt;
  assign accum_buf_rsc_0_5_i_we_d_run_sct_pff = accum_buf_rsc_0_5_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_5_i_re_d_run_sct_pff = accum_buf_rsc_0_5_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_4_i_q_d, accum_buf_rsc_0_4_i_q_d_mxwt, accum_buf_rsc_0_4_i_biwt,
      accum_buf_rsc_0_4_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_4_i_q_d;
  output [15:0] accum_buf_rsc_0_4_i_q_d_mxwt;
  input accum_buf_rsc_0_4_i_biwt;
  input accum_buf_rsc_0_4_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_4_i_bcwt;
  reg [15:0] accum_buf_rsc_0_4_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_4_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_4_i_q_d, accum_buf_rsc_0_4_i_q_d_bfwt,
      accum_buf_rsc_0_4_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_4_i_bcwt <= 1'b0;
      accum_buf_rsc_0_4_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_4_i_bcwt <= ~((~(accum_buf_rsc_0_4_i_bcwt | accum_buf_rsc_0_4_i_biwt))
          | accum_buf_rsc_0_4_i_bdwt);
      accum_buf_rsc_0_4_i_q_d_bfwt <= accum_buf_rsc_0_4_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_4_i_oswt, accum_buf_rsc_0_4_i_biwt, accum_buf_rsc_0_4_i_bdwt,
      accum_buf_rsc_0_4_i_we_d_run_sct_pff, accum_buf_rsc_0_4_i_iswt0_1_pff, accum_buf_rsc_0_4_i_re_d_run_sct_pff,
      accum_buf_rsc_0_4_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_4_i_oswt;
  output accum_buf_rsc_0_4_i_biwt;
  output accum_buf_rsc_0_4_i_bdwt;
  output accum_buf_rsc_0_4_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_4_i_iswt0_1_pff;
  output accum_buf_rsc_0_4_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_4_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_4_i_bdwt = accum_buf_rsc_0_4_i_oswt & run_wen;
  assign accum_buf_rsc_0_4_i_biwt = (~ run_wten) & accum_buf_rsc_0_4_i_oswt;
  assign accum_buf_rsc_0_4_i_we_d_run_sct_pff = accum_buf_rsc_0_4_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_4_i_re_d_run_sct_pff = accum_buf_rsc_0_4_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_3_i_q_d, accum_buf_rsc_0_3_i_q_d_mxwt, accum_buf_rsc_0_3_i_biwt,
      accum_buf_rsc_0_3_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_3_i_q_d;
  output [15:0] accum_buf_rsc_0_3_i_q_d_mxwt;
  input accum_buf_rsc_0_3_i_biwt;
  input accum_buf_rsc_0_3_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_3_i_bcwt;
  reg [15:0] accum_buf_rsc_0_3_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_3_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_3_i_q_d, accum_buf_rsc_0_3_i_q_d_bfwt,
      accum_buf_rsc_0_3_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_3_i_bcwt <= 1'b0;
      accum_buf_rsc_0_3_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_3_i_bcwt <= ~((~(accum_buf_rsc_0_3_i_bcwt | accum_buf_rsc_0_3_i_biwt))
          | accum_buf_rsc_0_3_i_bdwt);
      accum_buf_rsc_0_3_i_q_d_bfwt <= accum_buf_rsc_0_3_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_3_i_oswt, accum_buf_rsc_0_3_i_biwt, accum_buf_rsc_0_3_i_bdwt,
      accum_buf_rsc_0_3_i_we_d_run_sct_pff, accum_buf_rsc_0_3_i_iswt0_1_pff, accum_buf_rsc_0_3_i_re_d_run_sct_pff,
      accum_buf_rsc_0_3_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_3_i_oswt;
  output accum_buf_rsc_0_3_i_biwt;
  output accum_buf_rsc_0_3_i_bdwt;
  output accum_buf_rsc_0_3_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_3_i_iswt0_1_pff;
  output accum_buf_rsc_0_3_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_3_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_3_i_bdwt = accum_buf_rsc_0_3_i_oswt & run_wen;
  assign accum_buf_rsc_0_3_i_biwt = (~ run_wten) & accum_buf_rsc_0_3_i_oswt;
  assign accum_buf_rsc_0_3_i_we_d_run_sct_pff = accum_buf_rsc_0_3_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_3_i_re_d_run_sct_pff = accum_buf_rsc_0_3_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_2_i_q_d, accum_buf_rsc_0_2_i_q_d_mxwt, accum_buf_rsc_0_2_i_biwt,
      accum_buf_rsc_0_2_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_2_i_q_d;
  output [15:0] accum_buf_rsc_0_2_i_q_d_mxwt;
  input accum_buf_rsc_0_2_i_biwt;
  input accum_buf_rsc_0_2_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_2_i_bcwt;
  reg [15:0] accum_buf_rsc_0_2_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_2_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_2_i_q_d, accum_buf_rsc_0_2_i_q_d_bfwt,
      accum_buf_rsc_0_2_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_2_i_bcwt <= 1'b0;
      accum_buf_rsc_0_2_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_2_i_bcwt <= ~((~(accum_buf_rsc_0_2_i_bcwt | accum_buf_rsc_0_2_i_biwt))
          | accum_buf_rsc_0_2_i_bdwt);
      accum_buf_rsc_0_2_i_q_d_bfwt <= accum_buf_rsc_0_2_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_2_i_oswt, accum_buf_rsc_0_2_i_biwt, accum_buf_rsc_0_2_i_bdwt,
      accum_buf_rsc_0_2_i_we_d_run_sct_pff, accum_buf_rsc_0_2_i_iswt0_1_pff, accum_buf_rsc_0_2_i_re_d_run_sct_pff,
      accum_buf_rsc_0_2_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_2_i_oswt;
  output accum_buf_rsc_0_2_i_biwt;
  output accum_buf_rsc_0_2_i_bdwt;
  output accum_buf_rsc_0_2_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_2_i_iswt0_1_pff;
  output accum_buf_rsc_0_2_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_2_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_2_i_bdwt = accum_buf_rsc_0_2_i_oswt & run_wen;
  assign accum_buf_rsc_0_2_i_biwt = (~ run_wten) & accum_buf_rsc_0_2_i_oswt;
  assign accum_buf_rsc_0_2_i_we_d_run_sct_pff = accum_buf_rsc_0_2_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_2_i_re_d_run_sct_pff = accum_buf_rsc_0_2_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_1_i_q_d, accum_buf_rsc_0_1_i_q_d_mxwt, accum_buf_rsc_0_1_i_biwt,
      accum_buf_rsc_0_1_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_1_i_q_d;
  output [15:0] accum_buf_rsc_0_1_i_q_d_mxwt;
  input accum_buf_rsc_0_1_i_biwt;
  input accum_buf_rsc_0_1_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_1_i_bcwt;
  reg [15:0] accum_buf_rsc_0_1_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_1_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_1_i_q_d, accum_buf_rsc_0_1_i_q_d_bfwt,
      accum_buf_rsc_0_1_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_1_i_bcwt <= 1'b0;
      accum_buf_rsc_0_1_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_1_i_bcwt <= ~((~(accum_buf_rsc_0_1_i_bcwt | accum_buf_rsc_0_1_i_biwt))
          | accum_buf_rsc_0_1_i_bdwt);
      accum_buf_rsc_0_1_i_q_d_bfwt <= accum_buf_rsc_0_1_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_1_i_oswt, accum_buf_rsc_0_1_i_biwt, accum_buf_rsc_0_1_i_bdwt,
      accum_buf_rsc_0_1_i_we_d_run_sct_pff, accum_buf_rsc_0_1_i_iswt0_1_pff, accum_buf_rsc_0_1_i_re_d_run_sct_pff,
      accum_buf_rsc_0_1_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_1_i_oswt;
  output accum_buf_rsc_0_1_i_biwt;
  output accum_buf_rsc_0_1_i_bdwt;
  output accum_buf_rsc_0_1_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_1_i_iswt0_1_pff;
  output accum_buf_rsc_0_1_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_1_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_1_i_bdwt = accum_buf_rsc_0_1_i_oswt & run_wen;
  assign accum_buf_rsc_0_1_i_biwt = (~ run_wten) & accum_buf_rsc_0_1_i_oswt;
  assign accum_buf_rsc_0_1_i_we_d_run_sct_pff = accum_buf_rsc_0_1_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_1_i_re_d_run_sct_pff = accum_buf_rsc_0_1_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_dp
    (
  clk, arst_n, accum_buf_rsc_0_0_i_q_d, accum_buf_rsc_0_0_i_q_d_mxwt, accum_buf_rsc_0_0_i_biwt,
      accum_buf_rsc_0_0_i_bdwt
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_0_i_q_d;
  output [15:0] accum_buf_rsc_0_0_i_q_d_mxwt;
  input accum_buf_rsc_0_0_i_biwt;
  input accum_buf_rsc_0_0_i_bdwt;


  // Interconnect Declarations
  reg accum_buf_rsc_0_0_i_bcwt;
  reg [15:0] accum_buf_rsc_0_0_i_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_0_i_q_d_mxwt = MUX_v_16_2_2(accum_buf_rsc_0_0_i_q_d, accum_buf_rsc_0_0_i_q_d_bfwt,
      accum_buf_rsc_0_0_i_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      accum_buf_rsc_0_0_i_bcwt <= 1'b0;
      accum_buf_rsc_0_0_i_q_d_bfwt <= 16'b0000000000000000;
    end
    else begin
      accum_buf_rsc_0_0_i_bcwt <= ~((~(accum_buf_rsc_0_0_i_bcwt | accum_buf_rsc_0_0_i_biwt))
          | accum_buf_rsc_0_0_i_bdwt);
      accum_buf_rsc_0_0_i_q_d_bfwt <= accum_buf_rsc_0_0_i_q_d_mxwt;
    end
  end

  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_ctrl
    (
  run_wen, run_wten, accum_buf_rsc_0_0_i_oswt, accum_buf_rsc_0_0_i_biwt, accum_buf_rsc_0_0_i_bdwt,
      accum_buf_rsc_0_0_i_we_d_run_sct_pff, accum_buf_rsc_0_0_i_iswt0_1_pff, accum_buf_rsc_0_0_i_re_d_run_sct_pff,
      accum_buf_rsc_0_0_i_oswt_pff
);
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_0_i_oswt;
  output accum_buf_rsc_0_0_i_biwt;
  output accum_buf_rsc_0_0_i_bdwt;
  output accum_buf_rsc_0_0_i_we_d_run_sct_pff;
  input accum_buf_rsc_0_0_i_iswt0_1_pff;
  output accum_buf_rsc_0_0_i_re_d_run_sct_pff;
  input accum_buf_rsc_0_0_i_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign accum_buf_rsc_0_0_i_bdwt = accum_buf_rsc_0_0_i_oswt & run_wen;
  assign accum_buf_rsc_0_0_i_biwt = (~ run_wten) & accum_buf_rsc_0_0_i_oswt;
  assign accum_buf_rsc_0_0_i_we_d_run_sct_pff = accum_buf_rsc_0_0_i_iswt0_1_pff &
      run_wen;
  assign accum_buf_rsc_0_0_i_re_d_run_sct_pff = accum_buf_rsc_0_0_i_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_dp
    (
  clk, arst_n, loopIndicesIn_rsci_oswt, loopIndicesIn_rsci_wen_comp, loopIndicesIn_rsci_idat_mxwt,
      loopIndicesIn_rsci_biwt, loopIndicesIn_rsci_bdwt, loopIndicesIn_rsci_bcwt,
      loopIndicesIn_rsci_idat
);
  input clk;
  input arst_n;
  input loopIndicesIn_rsci_oswt;
  output loopIndicesIn_rsci_wen_comp;
  output [47:0] loopIndicesIn_rsci_idat_mxwt;
  input loopIndicesIn_rsci_biwt;
  input loopIndicesIn_rsci_bdwt;
  output loopIndicesIn_rsci_bcwt;
  reg loopIndicesIn_rsci_bcwt;
  input [47:0] loopIndicesIn_rsci_idat;


  // Interconnect Declarations
  reg [47:0] loopIndicesIn_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign loopIndicesIn_rsci_wen_comp = (~ loopIndicesIn_rsci_oswt) | loopIndicesIn_rsci_biwt
      | loopIndicesIn_rsci_bcwt;
  assign loopIndicesIn_rsci_idat_mxwt = MUX_v_48_2_2(loopIndicesIn_rsci_idat, loopIndicesIn_rsci_idat_bfwt,
      loopIndicesIn_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      loopIndicesIn_rsci_bcwt <= 1'b0;
      loopIndicesIn_rsci_idat_bfwt <= 48'b000000000000000000000000000000000000000000000000;
    end
    else begin
      loopIndicesIn_rsci_bcwt <= ~((~(loopIndicesIn_rsci_bcwt | loopIndicesIn_rsci_biwt))
          | loopIndicesIn_rsci_bdwt);
      loopIndicesIn_rsci_idat_bfwt <= loopIndicesIn_rsci_idat_mxwt;
    end
  end

  function automatic [47:0] MUX_v_48_2_2;
    input [47:0] input_0;
    input [47:0] input_1;
    input [0:0] sel;
    reg [47:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_48_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl
    (
  run_wen, loopIndicesIn_rsci_oswt, loopIndicesIn_rsci_biwt, loopIndicesIn_rsci_bdwt,
      loopIndicesIn_rsci_bcwt, loopIndicesIn_rsci_irdy_run_sct, loopIndicesIn_rsci_ivld
);
  input run_wen;
  input loopIndicesIn_rsci_oswt;
  output loopIndicesIn_rsci_biwt;
  output loopIndicesIn_rsci_bdwt;
  input loopIndicesIn_rsci_bcwt;
  output loopIndicesIn_rsci_irdy_run_sct;
  input loopIndicesIn_rsci_ivld;


  // Interconnect Declarations
  wire loopIndicesIn_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign loopIndicesIn_rsci_bdwt = loopIndicesIn_rsci_oswt & run_wen;
  assign loopIndicesIn_rsci_biwt = loopIndicesIn_rsci_ogwt & loopIndicesIn_rsci_ivld;
  assign loopIndicesIn_rsci_ogwt = loopIndicesIn_rsci_oswt & (~ loopIndicesIn_rsci_bcwt);
  assign loopIndicesIn_rsci_irdy_run_sct = loopIndicesIn_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_dp
    (
  clk, arst_n, paramsIn_rsci_oswt, paramsIn_rsci_wen_comp, paramsIn_rsci_idat_mxwt,
      paramsIn_rsci_biwt, paramsIn_rsci_bdwt, paramsIn_rsci_bcwt, paramsIn_rsci_idat
);
  input clk;
  input arst_n;
  input paramsIn_rsci_oswt;
  output paramsIn_rsci_wen_comp;
  output [79:0] paramsIn_rsci_idat_mxwt;
  input paramsIn_rsci_biwt;
  input paramsIn_rsci_bdwt;
  output paramsIn_rsci_bcwt;
  reg paramsIn_rsci_bcwt;
  input [143:0] paramsIn_rsci_idat;


  // Interconnect Declarations
  reg [47:0] reg_paramsIn_rsci_idat_bfwt_ftd;
  reg [31:0] reg_paramsIn_rsci_idat_bfwt_ftd_17;
  wire [47:0] paramsIn_rsci_idat_mxwt_opt_127_80;
  wire [31:0] paramsIn_rsci_idat_mxwt_opt_63_32;


  // Interconnect Declarations for Component Instantiations 
  assign paramsIn_rsci_wen_comp = (~ paramsIn_rsci_oswt) | paramsIn_rsci_biwt | paramsIn_rsci_bcwt;
  assign paramsIn_rsci_idat_mxwt_opt_127_80 = MUX_v_48_2_2((paramsIn_rsci_idat[127:80]),
      reg_paramsIn_rsci_idat_bfwt_ftd, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt_opt_63_32 = MUX_v_32_2_2((paramsIn_rsci_idat[63:32]),
      reg_paramsIn_rsci_idat_bfwt_ftd_17, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt = {paramsIn_rsci_idat_mxwt_opt_127_80 , paramsIn_rsci_idat_mxwt_opt_63_32};
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      paramsIn_rsci_bcwt <= 1'b0;
      reg_paramsIn_rsci_idat_bfwt_ftd <= 48'b000000000000000000000000000000000000000000000000;
      reg_paramsIn_rsci_idat_bfwt_ftd_17 <= 32'b00000000000000000000000000000000;
    end
    else begin
      paramsIn_rsci_bcwt <= ~((~(paramsIn_rsci_bcwt | paramsIn_rsci_biwt)) | paramsIn_rsci_bdwt);
      reg_paramsIn_rsci_idat_bfwt_ftd <= paramsIn_rsci_idat_mxwt_opt_127_80;
      reg_paramsIn_rsci_idat_bfwt_ftd_17 <= paramsIn_rsci_idat_mxwt_opt_63_32;
    end
  end

  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [47:0] MUX_v_48_2_2;
    input [47:0] input_0;
    input [47:0] input_1;
    input [0:0] sel;
    reg [47:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_48_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl
    (
  run_wen, paramsIn_rsci_oswt, paramsIn_rsci_biwt, paramsIn_rsci_bdwt, paramsIn_rsci_bcwt,
      paramsIn_rsci_irdy_run_sct, paramsIn_rsci_ivld
);
  input run_wen;
  input paramsIn_rsci_oswt;
  output paramsIn_rsci_biwt;
  output paramsIn_rsci_bdwt;
  input paramsIn_rsci_bcwt;
  output paramsIn_rsci_irdy_run_sct;
  input paramsIn_rsci_ivld;


  // Interconnect Declarations
  wire paramsIn_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign paramsIn_rsci_bdwt = paramsIn_rsci_oswt & run_wen;
  assign paramsIn_rsci_biwt = paramsIn_rsci_ogwt & paramsIn_rsci_ivld;
  assign paramsIn_rsci_ogwt = paramsIn_rsci_oswt & (~ paramsIn_rsci_bcwt);
  assign paramsIn_rsci_irdy_run_sct = paramsIn_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_dp
    (
  clk, arst_n, output_rsci_oswt, output_rsci_wen_comp, output_rsci_biwt, output_rsci_bdwt,
      output_rsci_bcwt
);
  input clk;
  input arst_n;
  input output_rsci_oswt;
  output output_rsci_wen_comp;
  input output_rsci_biwt;
  input output_rsci_bdwt;
  output output_rsci_bcwt;
  reg output_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign output_rsci_wen_comp = (~ output_rsci_oswt) | output_rsci_biwt | output_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      output_rsci_bcwt <= 1'b0;
    end
    else begin
      output_rsci_bcwt <= ~((~(output_rsci_bcwt | output_rsci_biwt)) | output_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl
    (
  run_wen, output_rsci_oswt, output_rsci_irdy, output_rsci_biwt, output_rsci_bdwt,
      output_rsci_bcwt, output_rsci_ivld_run_sct
);
  input run_wen;
  input output_rsci_oswt;
  input output_rsci_irdy;
  output output_rsci_biwt;
  output output_rsci_bdwt;
  input output_rsci_bcwt;
  output output_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire output_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign output_rsci_bdwt = output_rsci_oswt & run_wen;
  assign output_rsci_biwt = output_rsci_ogwt & output_rsci_irdy;
  assign output_rsci_ogwt = output_rsci_oswt & (~ output_rsci_bcwt);
  assign output_rsci_ivld_run_sct = output_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_dp
    (
  clk, arst_n, weight_rsci_oswt, weight_rsci_wen_comp, weight_rsci_idat_mxwt, weight_rsci_biwt,
      weight_rsci_bdwt, weight_rsci_bcwt, weight_rsci_idat
);
  input clk;
  input arst_n;
  input weight_rsci_oswt;
  output weight_rsci_wen_comp;
  output [127:0] weight_rsci_idat_mxwt;
  input weight_rsci_biwt;
  input weight_rsci_bdwt;
  output weight_rsci_bcwt;
  reg weight_rsci_bcwt;
  input [127:0] weight_rsci_idat;


  // Interconnect Declarations
  reg [127:0] weight_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign weight_rsci_wen_comp = (~ weight_rsci_oswt) | weight_rsci_biwt | weight_rsci_bcwt;
  assign weight_rsci_idat_mxwt = MUX_v_128_2_2(weight_rsci_idat, weight_rsci_idat_bfwt,
      weight_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_rsci_bcwt <= 1'b0;
    end
    else begin
      weight_rsci_bcwt <= ~((~(weight_rsci_bcwt | weight_rsci_biwt)) | weight_rsci_bdwt);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_rsci_idat_bfwt <= 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ weight_rsci_bcwt ) begin
      weight_rsci_idat_bfwt <= weight_rsci_idat_mxwt;
    end
  end

  function automatic [127:0] MUX_v_128_2_2;
    input [127:0] input_0;
    input [127:0] input_1;
    input [0:0] sel;
    reg [127:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_128_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl
    (
  run_wen, weight_rsci_oswt, weight_rsci_biwt, weight_rsci_bdwt, weight_rsci_bcwt,
      weight_rsci_irdy_run_sct, weight_rsci_ivld
);
  input run_wen;
  input weight_rsci_oswt;
  output weight_rsci_biwt;
  output weight_rsci_bdwt;
  input weight_rsci_bcwt;
  output weight_rsci_irdy_run_sct;
  input weight_rsci_ivld;


  // Interconnect Declarations
  wire weight_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign weight_rsci_bdwt = weight_rsci_oswt & run_wen;
  assign weight_rsci_biwt = weight_rsci_ogwt & weight_rsci_ivld;
  assign weight_rsci_ogwt = weight_rsci_oswt & (~ weight_rsci_bcwt);
  assign weight_rsci_irdy_run_sct = weight_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_dp
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_dp
    (
  clk, arst_n, input_rsci_oswt, input_rsci_wen_comp, input_rsci_idat_mxwt, input_rsci_biwt,
      input_rsci_bdwt, input_rsci_bcwt, input_rsci_idat
);
  input clk;
  input arst_n;
  input input_rsci_oswt;
  output input_rsci_wen_comp;
  output [127:0] input_rsci_idat_mxwt;
  input input_rsci_biwt;
  input input_rsci_bdwt;
  output input_rsci_bcwt;
  reg input_rsci_bcwt;
  input [127:0] input_rsci_idat;


  // Interconnect Declarations
  reg [127:0] input_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign input_rsci_wen_comp = (~ input_rsci_oswt) | input_rsci_biwt | input_rsci_bcwt;
  assign input_rsci_idat_mxwt = MUX_v_128_2_2(input_rsci_idat, input_rsci_idat_bfwt,
      input_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      input_rsci_bcwt <= 1'b0;
      input_rsci_idat_bfwt <= 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else begin
      input_rsci_bcwt <= ~((~(input_rsci_bcwt | input_rsci_biwt)) | input_rsci_bdwt);
      input_rsci_idat_bfwt <= input_rsci_idat_mxwt;
    end
  end

  function automatic [127:0] MUX_v_128_2_2;
    input [127:0] input_0;
    input [127:0] input_1;
    input [0:0] sel;
    reg [127:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_128_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl
    (
  run_wen, input_rsci_oswt, input_rsci_biwt, input_rsci_bdwt, input_rsci_bcwt, input_rsci_irdy_run_sct,
      input_rsci_ivld
);
  input run_wen;
  input input_rsci_oswt;
  output input_rsci_biwt;
  output input_rsci_bdwt;
  input input_rsci_bcwt;
  output input_rsci_irdy_run_sct;
  input input_rsci_ivld;


  // Interconnect Declarations
  wire input_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign input_rsci_bdwt = input_rsci_oswt & run_wen;
  assign input_rsci_biwt = input_rsci_ogwt & input_rsci_ivld;
  assign input_rsci_ogwt = input_rsci_oswt & (~ input_rsci_bcwt);
  assign input_rsci_irdy_run_sct = input_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1 (
  clk, arst_n, accum_buf_rsc_0_15_i_q_d, run_wen, run_wten, accum_buf_rsc_0_15_i_oswt,
      accum_buf_rsc_0_15_i_q_d_mxwt, accum_buf_rsc_0_15_i_we_d_pff, accum_buf_rsc_0_15_i_iswt0_1_pff,
      accum_buf_rsc_0_15_i_re_d_pff, accum_buf_rsc_0_15_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_15_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_15_i_oswt;
  output [15:0] accum_buf_rsc_0_15_i_q_d_mxwt;
  output accum_buf_rsc_0_15_i_we_d_pff;
  input accum_buf_rsc_0_15_i_iswt0_1_pff;
  output accum_buf_rsc_0_15_i_re_d_pff;
  input accum_buf_rsc_0_15_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_15_i_biwt;
  wire accum_buf_rsc_0_15_i_bdwt;
  wire accum_buf_rsc_0_15_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_15_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_15_i_oswt(accum_buf_rsc_0_15_i_oswt),
      .accum_buf_rsc_0_15_i_biwt(accum_buf_rsc_0_15_i_biwt),
      .accum_buf_rsc_0_15_i_bdwt(accum_buf_rsc_0_15_i_bdwt),
      .accum_buf_rsc_0_15_i_we_d_run_sct_pff(accum_buf_rsc_0_15_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_15_i_iswt0_1_pff(accum_buf_rsc_0_15_i_iswt0_1_pff),
      .accum_buf_rsc_0_15_i_re_d_run_sct_pff(accum_buf_rsc_0_15_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_15_i_oswt_pff(accum_buf_rsc_0_15_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_accum_buf_rsc_0_15_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_15_i_q_d(accum_buf_rsc_0_15_i_q_d),
      .accum_buf_rsc_0_15_i_q_d_mxwt(accum_buf_rsc_0_15_i_q_d_mxwt),
      .accum_buf_rsc_0_15_i_biwt(accum_buf_rsc_0_15_i_biwt),
      .accum_buf_rsc_0_15_i_bdwt(accum_buf_rsc_0_15_i_bdwt)
    );
  assign accum_buf_rsc_0_15_i_we_d_pff = accum_buf_rsc_0_15_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_15_i_re_d_pff = accum_buf_rsc_0_15_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1 (
  clk, arst_n, accum_buf_rsc_0_14_i_q_d, run_wen, run_wten, accum_buf_rsc_0_14_i_oswt,
      accum_buf_rsc_0_14_i_q_d_mxwt, accum_buf_rsc_0_14_i_we_d_pff, accum_buf_rsc_0_14_i_iswt0_1_pff,
      accum_buf_rsc_0_14_i_re_d_pff, accum_buf_rsc_0_14_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_14_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_14_i_oswt;
  output [15:0] accum_buf_rsc_0_14_i_q_d_mxwt;
  output accum_buf_rsc_0_14_i_we_d_pff;
  input accum_buf_rsc_0_14_i_iswt0_1_pff;
  output accum_buf_rsc_0_14_i_re_d_pff;
  input accum_buf_rsc_0_14_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_14_i_biwt;
  wire accum_buf_rsc_0_14_i_bdwt;
  wire accum_buf_rsc_0_14_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_14_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_14_i_oswt(accum_buf_rsc_0_14_i_oswt),
      .accum_buf_rsc_0_14_i_biwt(accum_buf_rsc_0_14_i_biwt),
      .accum_buf_rsc_0_14_i_bdwt(accum_buf_rsc_0_14_i_bdwt),
      .accum_buf_rsc_0_14_i_we_d_run_sct_pff(accum_buf_rsc_0_14_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_14_i_iswt0_1_pff(accum_buf_rsc_0_14_i_iswt0_1_pff),
      .accum_buf_rsc_0_14_i_re_d_run_sct_pff(accum_buf_rsc_0_14_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_14_i_oswt_pff(accum_buf_rsc_0_14_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_accum_buf_rsc_0_14_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_14_i_q_d(accum_buf_rsc_0_14_i_q_d),
      .accum_buf_rsc_0_14_i_q_d_mxwt(accum_buf_rsc_0_14_i_q_d_mxwt),
      .accum_buf_rsc_0_14_i_biwt(accum_buf_rsc_0_14_i_biwt),
      .accum_buf_rsc_0_14_i_bdwt(accum_buf_rsc_0_14_i_bdwt)
    );
  assign accum_buf_rsc_0_14_i_we_d_pff = accum_buf_rsc_0_14_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_14_i_re_d_pff = accum_buf_rsc_0_14_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1 (
  clk, arst_n, accum_buf_rsc_0_13_i_q_d, run_wen, run_wten, accum_buf_rsc_0_13_i_oswt,
      accum_buf_rsc_0_13_i_q_d_mxwt, accum_buf_rsc_0_13_i_we_d_pff, accum_buf_rsc_0_13_i_iswt0_1_pff,
      accum_buf_rsc_0_13_i_re_d_pff, accum_buf_rsc_0_13_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_13_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_13_i_oswt;
  output [15:0] accum_buf_rsc_0_13_i_q_d_mxwt;
  output accum_buf_rsc_0_13_i_we_d_pff;
  input accum_buf_rsc_0_13_i_iswt0_1_pff;
  output accum_buf_rsc_0_13_i_re_d_pff;
  input accum_buf_rsc_0_13_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_13_i_biwt;
  wire accum_buf_rsc_0_13_i_bdwt;
  wire accum_buf_rsc_0_13_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_13_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_13_i_oswt(accum_buf_rsc_0_13_i_oswt),
      .accum_buf_rsc_0_13_i_biwt(accum_buf_rsc_0_13_i_biwt),
      .accum_buf_rsc_0_13_i_bdwt(accum_buf_rsc_0_13_i_bdwt),
      .accum_buf_rsc_0_13_i_we_d_run_sct_pff(accum_buf_rsc_0_13_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_13_i_iswt0_1_pff(accum_buf_rsc_0_13_i_iswt0_1_pff),
      .accum_buf_rsc_0_13_i_re_d_run_sct_pff(accum_buf_rsc_0_13_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_13_i_oswt_pff(accum_buf_rsc_0_13_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_accum_buf_rsc_0_13_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_13_i_q_d(accum_buf_rsc_0_13_i_q_d),
      .accum_buf_rsc_0_13_i_q_d_mxwt(accum_buf_rsc_0_13_i_q_d_mxwt),
      .accum_buf_rsc_0_13_i_biwt(accum_buf_rsc_0_13_i_biwt),
      .accum_buf_rsc_0_13_i_bdwt(accum_buf_rsc_0_13_i_bdwt)
    );
  assign accum_buf_rsc_0_13_i_we_d_pff = accum_buf_rsc_0_13_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_13_i_re_d_pff = accum_buf_rsc_0_13_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1 (
  clk, arst_n, accum_buf_rsc_0_12_i_q_d, run_wen, run_wten, accum_buf_rsc_0_12_i_oswt,
      accum_buf_rsc_0_12_i_q_d_mxwt, accum_buf_rsc_0_12_i_we_d_pff, accum_buf_rsc_0_12_i_iswt0_1_pff,
      accum_buf_rsc_0_12_i_re_d_pff, accum_buf_rsc_0_12_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_12_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_12_i_oswt;
  output [15:0] accum_buf_rsc_0_12_i_q_d_mxwt;
  output accum_buf_rsc_0_12_i_we_d_pff;
  input accum_buf_rsc_0_12_i_iswt0_1_pff;
  output accum_buf_rsc_0_12_i_re_d_pff;
  input accum_buf_rsc_0_12_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_12_i_biwt;
  wire accum_buf_rsc_0_12_i_bdwt;
  wire accum_buf_rsc_0_12_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_12_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_12_i_oswt(accum_buf_rsc_0_12_i_oswt),
      .accum_buf_rsc_0_12_i_biwt(accum_buf_rsc_0_12_i_biwt),
      .accum_buf_rsc_0_12_i_bdwt(accum_buf_rsc_0_12_i_bdwt),
      .accum_buf_rsc_0_12_i_we_d_run_sct_pff(accum_buf_rsc_0_12_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_12_i_iswt0_1_pff(accum_buf_rsc_0_12_i_iswt0_1_pff),
      .accum_buf_rsc_0_12_i_re_d_run_sct_pff(accum_buf_rsc_0_12_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_12_i_oswt_pff(accum_buf_rsc_0_12_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_accum_buf_rsc_0_12_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_12_i_q_d(accum_buf_rsc_0_12_i_q_d),
      .accum_buf_rsc_0_12_i_q_d_mxwt(accum_buf_rsc_0_12_i_q_d_mxwt),
      .accum_buf_rsc_0_12_i_biwt(accum_buf_rsc_0_12_i_biwt),
      .accum_buf_rsc_0_12_i_bdwt(accum_buf_rsc_0_12_i_bdwt)
    );
  assign accum_buf_rsc_0_12_i_we_d_pff = accum_buf_rsc_0_12_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_12_i_re_d_pff = accum_buf_rsc_0_12_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1 (
  clk, arst_n, accum_buf_rsc_0_11_i_q_d, run_wen, run_wten, accum_buf_rsc_0_11_i_oswt,
      accum_buf_rsc_0_11_i_q_d_mxwt, accum_buf_rsc_0_11_i_we_d_pff, accum_buf_rsc_0_11_i_iswt0_1_pff,
      accum_buf_rsc_0_11_i_re_d_pff, accum_buf_rsc_0_11_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_11_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_11_i_oswt;
  output [15:0] accum_buf_rsc_0_11_i_q_d_mxwt;
  output accum_buf_rsc_0_11_i_we_d_pff;
  input accum_buf_rsc_0_11_i_iswt0_1_pff;
  output accum_buf_rsc_0_11_i_re_d_pff;
  input accum_buf_rsc_0_11_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_11_i_biwt;
  wire accum_buf_rsc_0_11_i_bdwt;
  wire accum_buf_rsc_0_11_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_11_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_11_i_oswt(accum_buf_rsc_0_11_i_oswt),
      .accum_buf_rsc_0_11_i_biwt(accum_buf_rsc_0_11_i_biwt),
      .accum_buf_rsc_0_11_i_bdwt(accum_buf_rsc_0_11_i_bdwt),
      .accum_buf_rsc_0_11_i_we_d_run_sct_pff(accum_buf_rsc_0_11_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_11_i_iswt0_1_pff(accum_buf_rsc_0_11_i_iswt0_1_pff),
      .accum_buf_rsc_0_11_i_re_d_run_sct_pff(accum_buf_rsc_0_11_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_11_i_oswt_pff(accum_buf_rsc_0_11_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_accum_buf_rsc_0_11_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_11_i_q_d(accum_buf_rsc_0_11_i_q_d),
      .accum_buf_rsc_0_11_i_q_d_mxwt(accum_buf_rsc_0_11_i_q_d_mxwt),
      .accum_buf_rsc_0_11_i_biwt(accum_buf_rsc_0_11_i_biwt),
      .accum_buf_rsc_0_11_i_bdwt(accum_buf_rsc_0_11_i_bdwt)
    );
  assign accum_buf_rsc_0_11_i_we_d_pff = accum_buf_rsc_0_11_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_11_i_re_d_pff = accum_buf_rsc_0_11_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1 (
  clk, arst_n, accum_buf_rsc_0_10_i_q_d, run_wen, run_wten, accum_buf_rsc_0_10_i_oswt,
      accum_buf_rsc_0_10_i_q_d_mxwt, accum_buf_rsc_0_10_i_we_d_pff, accum_buf_rsc_0_10_i_iswt0_1_pff,
      accum_buf_rsc_0_10_i_re_d_pff, accum_buf_rsc_0_10_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_10_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_10_i_oswt;
  output [15:0] accum_buf_rsc_0_10_i_q_d_mxwt;
  output accum_buf_rsc_0_10_i_we_d_pff;
  input accum_buf_rsc_0_10_i_iswt0_1_pff;
  output accum_buf_rsc_0_10_i_re_d_pff;
  input accum_buf_rsc_0_10_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_10_i_biwt;
  wire accum_buf_rsc_0_10_i_bdwt;
  wire accum_buf_rsc_0_10_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_10_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_10_i_oswt(accum_buf_rsc_0_10_i_oswt),
      .accum_buf_rsc_0_10_i_biwt(accum_buf_rsc_0_10_i_biwt),
      .accum_buf_rsc_0_10_i_bdwt(accum_buf_rsc_0_10_i_bdwt),
      .accum_buf_rsc_0_10_i_we_d_run_sct_pff(accum_buf_rsc_0_10_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_10_i_iswt0_1_pff(accum_buf_rsc_0_10_i_iswt0_1_pff),
      .accum_buf_rsc_0_10_i_re_d_run_sct_pff(accum_buf_rsc_0_10_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_10_i_oswt_pff(accum_buf_rsc_0_10_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_accum_buf_rsc_0_10_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_10_i_q_d(accum_buf_rsc_0_10_i_q_d),
      .accum_buf_rsc_0_10_i_q_d_mxwt(accum_buf_rsc_0_10_i_q_d_mxwt),
      .accum_buf_rsc_0_10_i_biwt(accum_buf_rsc_0_10_i_biwt),
      .accum_buf_rsc_0_10_i_bdwt(accum_buf_rsc_0_10_i_bdwt)
    );
  assign accum_buf_rsc_0_10_i_we_d_pff = accum_buf_rsc_0_10_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_10_i_re_d_pff = accum_buf_rsc_0_10_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1 (
  clk, arst_n, accum_buf_rsc_0_9_i_q_d, run_wen, run_wten, accum_buf_rsc_0_9_i_oswt,
      accum_buf_rsc_0_9_i_q_d_mxwt, accum_buf_rsc_0_9_i_we_d_pff, accum_buf_rsc_0_9_i_iswt0_1_pff,
      accum_buf_rsc_0_9_i_re_d_pff, accum_buf_rsc_0_9_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_9_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_9_i_oswt;
  output [15:0] accum_buf_rsc_0_9_i_q_d_mxwt;
  output accum_buf_rsc_0_9_i_we_d_pff;
  input accum_buf_rsc_0_9_i_iswt0_1_pff;
  output accum_buf_rsc_0_9_i_re_d_pff;
  input accum_buf_rsc_0_9_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_9_i_biwt;
  wire accum_buf_rsc_0_9_i_bdwt;
  wire accum_buf_rsc_0_9_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_9_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_9_i_oswt(accum_buf_rsc_0_9_i_oswt),
      .accum_buf_rsc_0_9_i_biwt(accum_buf_rsc_0_9_i_biwt),
      .accum_buf_rsc_0_9_i_bdwt(accum_buf_rsc_0_9_i_bdwt),
      .accum_buf_rsc_0_9_i_we_d_run_sct_pff(accum_buf_rsc_0_9_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_9_i_iswt0_1_pff(accum_buf_rsc_0_9_i_iswt0_1_pff),
      .accum_buf_rsc_0_9_i_re_d_run_sct_pff(accum_buf_rsc_0_9_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_9_i_oswt_pff(accum_buf_rsc_0_9_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_accum_buf_rsc_0_9_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_9_i_q_d(accum_buf_rsc_0_9_i_q_d),
      .accum_buf_rsc_0_9_i_q_d_mxwt(accum_buf_rsc_0_9_i_q_d_mxwt),
      .accum_buf_rsc_0_9_i_biwt(accum_buf_rsc_0_9_i_biwt),
      .accum_buf_rsc_0_9_i_bdwt(accum_buf_rsc_0_9_i_bdwt)
    );
  assign accum_buf_rsc_0_9_i_we_d_pff = accum_buf_rsc_0_9_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_9_i_re_d_pff = accum_buf_rsc_0_9_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1 (
  clk, arst_n, accum_buf_rsc_0_8_i_q_d, run_wen, run_wten, accum_buf_rsc_0_8_i_oswt,
      accum_buf_rsc_0_8_i_q_d_mxwt, accum_buf_rsc_0_8_i_we_d_pff, accum_buf_rsc_0_8_i_iswt0_1_pff,
      accum_buf_rsc_0_8_i_re_d_pff, accum_buf_rsc_0_8_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_8_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_8_i_oswt;
  output [15:0] accum_buf_rsc_0_8_i_q_d_mxwt;
  output accum_buf_rsc_0_8_i_we_d_pff;
  input accum_buf_rsc_0_8_i_iswt0_1_pff;
  output accum_buf_rsc_0_8_i_re_d_pff;
  input accum_buf_rsc_0_8_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_8_i_biwt;
  wire accum_buf_rsc_0_8_i_bdwt;
  wire accum_buf_rsc_0_8_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_8_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_8_i_oswt(accum_buf_rsc_0_8_i_oswt),
      .accum_buf_rsc_0_8_i_biwt(accum_buf_rsc_0_8_i_biwt),
      .accum_buf_rsc_0_8_i_bdwt(accum_buf_rsc_0_8_i_bdwt),
      .accum_buf_rsc_0_8_i_we_d_run_sct_pff(accum_buf_rsc_0_8_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_8_i_iswt0_1_pff(accum_buf_rsc_0_8_i_iswt0_1_pff),
      .accum_buf_rsc_0_8_i_re_d_run_sct_pff(accum_buf_rsc_0_8_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_8_i_oswt_pff(accum_buf_rsc_0_8_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_accum_buf_rsc_0_8_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_8_i_q_d(accum_buf_rsc_0_8_i_q_d),
      .accum_buf_rsc_0_8_i_q_d_mxwt(accum_buf_rsc_0_8_i_q_d_mxwt),
      .accum_buf_rsc_0_8_i_biwt(accum_buf_rsc_0_8_i_biwt),
      .accum_buf_rsc_0_8_i_bdwt(accum_buf_rsc_0_8_i_bdwt)
    );
  assign accum_buf_rsc_0_8_i_we_d_pff = accum_buf_rsc_0_8_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_8_i_re_d_pff = accum_buf_rsc_0_8_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1 (
  clk, arst_n, accum_buf_rsc_0_7_i_q_d, run_wen, run_wten, accum_buf_rsc_0_7_i_oswt,
      accum_buf_rsc_0_7_i_q_d_mxwt, accum_buf_rsc_0_7_i_we_d_pff, accum_buf_rsc_0_7_i_iswt0_1_pff,
      accum_buf_rsc_0_7_i_re_d_pff, accum_buf_rsc_0_7_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_7_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_7_i_oswt;
  output [15:0] accum_buf_rsc_0_7_i_q_d_mxwt;
  output accum_buf_rsc_0_7_i_we_d_pff;
  input accum_buf_rsc_0_7_i_iswt0_1_pff;
  output accum_buf_rsc_0_7_i_re_d_pff;
  input accum_buf_rsc_0_7_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_7_i_biwt;
  wire accum_buf_rsc_0_7_i_bdwt;
  wire accum_buf_rsc_0_7_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_7_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_7_i_oswt(accum_buf_rsc_0_7_i_oswt),
      .accum_buf_rsc_0_7_i_biwt(accum_buf_rsc_0_7_i_biwt),
      .accum_buf_rsc_0_7_i_bdwt(accum_buf_rsc_0_7_i_bdwt),
      .accum_buf_rsc_0_7_i_we_d_run_sct_pff(accum_buf_rsc_0_7_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_7_i_iswt0_1_pff(accum_buf_rsc_0_7_i_iswt0_1_pff),
      .accum_buf_rsc_0_7_i_re_d_run_sct_pff(accum_buf_rsc_0_7_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_7_i_oswt_pff(accum_buf_rsc_0_7_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_accum_buf_rsc_0_7_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_7_i_q_d(accum_buf_rsc_0_7_i_q_d),
      .accum_buf_rsc_0_7_i_q_d_mxwt(accum_buf_rsc_0_7_i_q_d_mxwt),
      .accum_buf_rsc_0_7_i_biwt(accum_buf_rsc_0_7_i_biwt),
      .accum_buf_rsc_0_7_i_bdwt(accum_buf_rsc_0_7_i_bdwt)
    );
  assign accum_buf_rsc_0_7_i_we_d_pff = accum_buf_rsc_0_7_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_7_i_re_d_pff = accum_buf_rsc_0_7_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1 (
  clk, arst_n, accum_buf_rsc_0_6_i_q_d, run_wen, run_wten, accum_buf_rsc_0_6_i_oswt,
      accum_buf_rsc_0_6_i_q_d_mxwt, accum_buf_rsc_0_6_i_we_d_pff, accum_buf_rsc_0_6_i_iswt0_1_pff,
      accum_buf_rsc_0_6_i_re_d_pff, accum_buf_rsc_0_6_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_6_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_6_i_oswt;
  output [15:0] accum_buf_rsc_0_6_i_q_d_mxwt;
  output accum_buf_rsc_0_6_i_we_d_pff;
  input accum_buf_rsc_0_6_i_iswt0_1_pff;
  output accum_buf_rsc_0_6_i_re_d_pff;
  input accum_buf_rsc_0_6_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_6_i_biwt;
  wire accum_buf_rsc_0_6_i_bdwt;
  wire accum_buf_rsc_0_6_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_6_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_6_i_oswt(accum_buf_rsc_0_6_i_oswt),
      .accum_buf_rsc_0_6_i_biwt(accum_buf_rsc_0_6_i_biwt),
      .accum_buf_rsc_0_6_i_bdwt(accum_buf_rsc_0_6_i_bdwt),
      .accum_buf_rsc_0_6_i_we_d_run_sct_pff(accum_buf_rsc_0_6_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_6_i_iswt0_1_pff(accum_buf_rsc_0_6_i_iswt0_1_pff),
      .accum_buf_rsc_0_6_i_re_d_run_sct_pff(accum_buf_rsc_0_6_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_6_i_oswt_pff(accum_buf_rsc_0_6_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_accum_buf_rsc_0_6_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_6_i_q_d(accum_buf_rsc_0_6_i_q_d),
      .accum_buf_rsc_0_6_i_q_d_mxwt(accum_buf_rsc_0_6_i_q_d_mxwt),
      .accum_buf_rsc_0_6_i_biwt(accum_buf_rsc_0_6_i_biwt),
      .accum_buf_rsc_0_6_i_bdwt(accum_buf_rsc_0_6_i_bdwt)
    );
  assign accum_buf_rsc_0_6_i_we_d_pff = accum_buf_rsc_0_6_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_6_i_re_d_pff = accum_buf_rsc_0_6_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1 (
  clk, arst_n, accum_buf_rsc_0_5_i_q_d, run_wen, run_wten, accum_buf_rsc_0_5_i_oswt,
      accum_buf_rsc_0_5_i_q_d_mxwt, accum_buf_rsc_0_5_i_we_d_pff, accum_buf_rsc_0_5_i_iswt0_1_pff,
      accum_buf_rsc_0_5_i_re_d_pff, accum_buf_rsc_0_5_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_5_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_5_i_oswt;
  output [15:0] accum_buf_rsc_0_5_i_q_d_mxwt;
  output accum_buf_rsc_0_5_i_we_d_pff;
  input accum_buf_rsc_0_5_i_iswt0_1_pff;
  output accum_buf_rsc_0_5_i_re_d_pff;
  input accum_buf_rsc_0_5_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_5_i_biwt;
  wire accum_buf_rsc_0_5_i_bdwt;
  wire accum_buf_rsc_0_5_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_5_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_5_i_oswt(accum_buf_rsc_0_5_i_oswt),
      .accum_buf_rsc_0_5_i_biwt(accum_buf_rsc_0_5_i_biwt),
      .accum_buf_rsc_0_5_i_bdwt(accum_buf_rsc_0_5_i_bdwt),
      .accum_buf_rsc_0_5_i_we_d_run_sct_pff(accum_buf_rsc_0_5_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_5_i_iswt0_1_pff(accum_buf_rsc_0_5_i_iswt0_1_pff),
      .accum_buf_rsc_0_5_i_re_d_run_sct_pff(accum_buf_rsc_0_5_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_5_i_oswt_pff(accum_buf_rsc_0_5_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_accum_buf_rsc_0_5_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_5_i_q_d(accum_buf_rsc_0_5_i_q_d),
      .accum_buf_rsc_0_5_i_q_d_mxwt(accum_buf_rsc_0_5_i_q_d_mxwt),
      .accum_buf_rsc_0_5_i_biwt(accum_buf_rsc_0_5_i_biwt),
      .accum_buf_rsc_0_5_i_bdwt(accum_buf_rsc_0_5_i_bdwt)
    );
  assign accum_buf_rsc_0_5_i_we_d_pff = accum_buf_rsc_0_5_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_5_i_re_d_pff = accum_buf_rsc_0_5_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1 (
  clk, arst_n, accum_buf_rsc_0_4_i_q_d, run_wen, run_wten, accum_buf_rsc_0_4_i_oswt,
      accum_buf_rsc_0_4_i_q_d_mxwt, accum_buf_rsc_0_4_i_we_d_pff, accum_buf_rsc_0_4_i_iswt0_1_pff,
      accum_buf_rsc_0_4_i_re_d_pff, accum_buf_rsc_0_4_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_4_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_4_i_oswt;
  output [15:0] accum_buf_rsc_0_4_i_q_d_mxwt;
  output accum_buf_rsc_0_4_i_we_d_pff;
  input accum_buf_rsc_0_4_i_iswt0_1_pff;
  output accum_buf_rsc_0_4_i_re_d_pff;
  input accum_buf_rsc_0_4_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_4_i_biwt;
  wire accum_buf_rsc_0_4_i_bdwt;
  wire accum_buf_rsc_0_4_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_4_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_4_i_oswt(accum_buf_rsc_0_4_i_oswt),
      .accum_buf_rsc_0_4_i_biwt(accum_buf_rsc_0_4_i_biwt),
      .accum_buf_rsc_0_4_i_bdwt(accum_buf_rsc_0_4_i_bdwt),
      .accum_buf_rsc_0_4_i_we_d_run_sct_pff(accum_buf_rsc_0_4_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_4_i_iswt0_1_pff(accum_buf_rsc_0_4_i_iswt0_1_pff),
      .accum_buf_rsc_0_4_i_re_d_run_sct_pff(accum_buf_rsc_0_4_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_4_i_oswt_pff(accum_buf_rsc_0_4_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_accum_buf_rsc_0_4_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_4_i_q_d(accum_buf_rsc_0_4_i_q_d),
      .accum_buf_rsc_0_4_i_q_d_mxwt(accum_buf_rsc_0_4_i_q_d_mxwt),
      .accum_buf_rsc_0_4_i_biwt(accum_buf_rsc_0_4_i_biwt),
      .accum_buf_rsc_0_4_i_bdwt(accum_buf_rsc_0_4_i_bdwt)
    );
  assign accum_buf_rsc_0_4_i_we_d_pff = accum_buf_rsc_0_4_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_4_i_re_d_pff = accum_buf_rsc_0_4_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1 (
  clk, arst_n, accum_buf_rsc_0_3_i_q_d, run_wen, run_wten, accum_buf_rsc_0_3_i_oswt,
      accum_buf_rsc_0_3_i_q_d_mxwt, accum_buf_rsc_0_3_i_we_d_pff, accum_buf_rsc_0_3_i_iswt0_1_pff,
      accum_buf_rsc_0_3_i_re_d_pff, accum_buf_rsc_0_3_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_3_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_3_i_oswt;
  output [15:0] accum_buf_rsc_0_3_i_q_d_mxwt;
  output accum_buf_rsc_0_3_i_we_d_pff;
  input accum_buf_rsc_0_3_i_iswt0_1_pff;
  output accum_buf_rsc_0_3_i_re_d_pff;
  input accum_buf_rsc_0_3_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_3_i_biwt;
  wire accum_buf_rsc_0_3_i_bdwt;
  wire accum_buf_rsc_0_3_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_3_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_3_i_oswt(accum_buf_rsc_0_3_i_oswt),
      .accum_buf_rsc_0_3_i_biwt(accum_buf_rsc_0_3_i_biwt),
      .accum_buf_rsc_0_3_i_bdwt(accum_buf_rsc_0_3_i_bdwt),
      .accum_buf_rsc_0_3_i_we_d_run_sct_pff(accum_buf_rsc_0_3_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_3_i_iswt0_1_pff(accum_buf_rsc_0_3_i_iswt0_1_pff),
      .accum_buf_rsc_0_3_i_re_d_run_sct_pff(accum_buf_rsc_0_3_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_3_i_oswt_pff(accum_buf_rsc_0_3_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_accum_buf_rsc_0_3_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_3_i_q_d(accum_buf_rsc_0_3_i_q_d),
      .accum_buf_rsc_0_3_i_q_d_mxwt(accum_buf_rsc_0_3_i_q_d_mxwt),
      .accum_buf_rsc_0_3_i_biwt(accum_buf_rsc_0_3_i_biwt),
      .accum_buf_rsc_0_3_i_bdwt(accum_buf_rsc_0_3_i_bdwt)
    );
  assign accum_buf_rsc_0_3_i_we_d_pff = accum_buf_rsc_0_3_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_3_i_re_d_pff = accum_buf_rsc_0_3_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1 (
  clk, arst_n, accum_buf_rsc_0_2_i_q_d, run_wen, run_wten, accum_buf_rsc_0_2_i_oswt,
      accum_buf_rsc_0_2_i_q_d_mxwt, accum_buf_rsc_0_2_i_we_d_pff, accum_buf_rsc_0_2_i_iswt0_1_pff,
      accum_buf_rsc_0_2_i_re_d_pff, accum_buf_rsc_0_2_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_2_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_2_i_oswt;
  output [15:0] accum_buf_rsc_0_2_i_q_d_mxwt;
  output accum_buf_rsc_0_2_i_we_d_pff;
  input accum_buf_rsc_0_2_i_iswt0_1_pff;
  output accum_buf_rsc_0_2_i_re_d_pff;
  input accum_buf_rsc_0_2_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_2_i_biwt;
  wire accum_buf_rsc_0_2_i_bdwt;
  wire accum_buf_rsc_0_2_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_2_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_2_i_oswt(accum_buf_rsc_0_2_i_oswt),
      .accum_buf_rsc_0_2_i_biwt(accum_buf_rsc_0_2_i_biwt),
      .accum_buf_rsc_0_2_i_bdwt(accum_buf_rsc_0_2_i_bdwt),
      .accum_buf_rsc_0_2_i_we_d_run_sct_pff(accum_buf_rsc_0_2_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_2_i_iswt0_1_pff(accum_buf_rsc_0_2_i_iswt0_1_pff),
      .accum_buf_rsc_0_2_i_re_d_run_sct_pff(accum_buf_rsc_0_2_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_2_i_oswt_pff(accum_buf_rsc_0_2_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_accum_buf_rsc_0_2_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_2_i_q_d(accum_buf_rsc_0_2_i_q_d),
      .accum_buf_rsc_0_2_i_q_d_mxwt(accum_buf_rsc_0_2_i_q_d_mxwt),
      .accum_buf_rsc_0_2_i_biwt(accum_buf_rsc_0_2_i_biwt),
      .accum_buf_rsc_0_2_i_bdwt(accum_buf_rsc_0_2_i_bdwt)
    );
  assign accum_buf_rsc_0_2_i_we_d_pff = accum_buf_rsc_0_2_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_2_i_re_d_pff = accum_buf_rsc_0_2_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1 (
  clk, arst_n, accum_buf_rsc_0_1_i_q_d, run_wen, run_wten, accum_buf_rsc_0_1_i_oswt,
      accum_buf_rsc_0_1_i_q_d_mxwt, accum_buf_rsc_0_1_i_we_d_pff, accum_buf_rsc_0_1_i_iswt0_1_pff,
      accum_buf_rsc_0_1_i_re_d_pff, accum_buf_rsc_0_1_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_1_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_1_i_oswt;
  output [15:0] accum_buf_rsc_0_1_i_q_d_mxwt;
  output accum_buf_rsc_0_1_i_we_d_pff;
  input accum_buf_rsc_0_1_i_iswt0_1_pff;
  output accum_buf_rsc_0_1_i_re_d_pff;
  input accum_buf_rsc_0_1_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_1_i_biwt;
  wire accum_buf_rsc_0_1_i_bdwt;
  wire accum_buf_rsc_0_1_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_1_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_1_i_oswt(accum_buf_rsc_0_1_i_oswt),
      .accum_buf_rsc_0_1_i_biwt(accum_buf_rsc_0_1_i_biwt),
      .accum_buf_rsc_0_1_i_bdwt(accum_buf_rsc_0_1_i_bdwt),
      .accum_buf_rsc_0_1_i_we_d_run_sct_pff(accum_buf_rsc_0_1_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_1_i_iswt0_1_pff(accum_buf_rsc_0_1_i_iswt0_1_pff),
      .accum_buf_rsc_0_1_i_re_d_run_sct_pff(accum_buf_rsc_0_1_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_1_i_oswt_pff(accum_buf_rsc_0_1_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_accum_buf_rsc_0_1_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_1_i_q_d(accum_buf_rsc_0_1_i_q_d),
      .accum_buf_rsc_0_1_i_q_d_mxwt(accum_buf_rsc_0_1_i_q_d_mxwt),
      .accum_buf_rsc_0_1_i_biwt(accum_buf_rsc_0_1_i_biwt),
      .accum_buf_rsc_0_1_i_bdwt(accum_buf_rsc_0_1_i_bdwt)
    );
  assign accum_buf_rsc_0_1_i_we_d_pff = accum_buf_rsc_0_1_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_1_i_re_d_pff = accum_buf_rsc_0_1_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1 (
  clk, arst_n, accum_buf_rsc_0_0_i_q_d, run_wen, run_wten, accum_buf_rsc_0_0_i_oswt,
      accum_buf_rsc_0_0_i_q_d_mxwt, accum_buf_rsc_0_0_i_we_d_pff, accum_buf_rsc_0_0_i_iswt0_1_pff,
      accum_buf_rsc_0_0_i_re_d_pff, accum_buf_rsc_0_0_i_oswt_pff
);
  input clk;
  input arst_n;
  input [15:0] accum_buf_rsc_0_0_i_q_d;
  input run_wen;
  input run_wten;
  input accum_buf_rsc_0_0_i_oswt;
  output [15:0] accum_buf_rsc_0_0_i_q_d_mxwt;
  output accum_buf_rsc_0_0_i_we_d_pff;
  input accum_buf_rsc_0_0_i_iswt0_1_pff;
  output accum_buf_rsc_0_0_i_re_d_pff;
  input accum_buf_rsc_0_0_i_oswt_pff;


  // Interconnect Declarations
  wire accum_buf_rsc_0_0_i_biwt;
  wire accum_buf_rsc_0_0_i_bdwt;
  wire accum_buf_rsc_0_0_i_we_d_run_sct_iff;
  wire accum_buf_rsc_0_0_i_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_0_i_oswt(accum_buf_rsc_0_0_i_oswt),
      .accum_buf_rsc_0_0_i_biwt(accum_buf_rsc_0_0_i_biwt),
      .accum_buf_rsc_0_0_i_bdwt(accum_buf_rsc_0_0_i_bdwt),
      .accum_buf_rsc_0_0_i_we_d_run_sct_pff(accum_buf_rsc_0_0_i_we_d_run_sct_iff),
      .accum_buf_rsc_0_0_i_iswt0_1_pff(accum_buf_rsc_0_0_i_iswt0_1_pff),
      .accum_buf_rsc_0_0_i_re_d_run_sct_pff(accum_buf_rsc_0_0_i_re_d_run_sct_iff),
      .accum_buf_rsc_0_0_i_oswt_pff(accum_buf_rsc_0_0_i_oswt_pff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_accum_buf_rsc_0_0_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_0_i_q_d(accum_buf_rsc_0_0_i_q_d),
      .accum_buf_rsc_0_0_i_q_d_mxwt(accum_buf_rsc_0_0_i_q_d_mxwt),
      .accum_buf_rsc_0_0_i_biwt(accum_buf_rsc_0_0_i_biwt),
      .accum_buf_rsc_0_0_i_bdwt(accum_buf_rsc_0_0_i_bdwt)
    );
  assign accum_buf_rsc_0_0_i_we_d_pff = accum_buf_rsc_0_0_i_we_d_run_sct_iff;
  assign accum_buf_rsc_0_0_i_re_d_pff = accum_buf_rsc_0_0_i_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci (
  clk, arst_n, loopIndicesIn_rsc_dat, loopIndicesIn_rsc_vld, loopIndicesIn_rsc_rdy,
      run_wen, loopIndicesIn_rsci_oswt, loopIndicesIn_rsci_wen_comp, loopIndicesIn_rsci_idat_mxwt
);
  input clk;
  input arst_n;
  input [47:0] loopIndicesIn_rsc_dat;
  input loopIndicesIn_rsc_vld;
  output loopIndicesIn_rsc_rdy;
  input run_wen;
  input loopIndicesIn_rsci_oswt;
  output loopIndicesIn_rsci_wen_comp;
  output [47:0] loopIndicesIn_rsci_idat_mxwt;


  // Interconnect Declarations
  wire loopIndicesIn_rsci_biwt;
  wire loopIndicesIn_rsci_bdwt;
  wire loopIndicesIn_rsci_bcwt;
  wire loopIndicesIn_rsci_irdy_run_sct;
  wire loopIndicesIn_rsci_ivld;
  wire [47:0] loopIndicesIn_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd104),
  .width(32'sd48)) loopIndicesIn_rsci (
      .rdy(loopIndicesIn_rsc_rdy),
      .vld(loopIndicesIn_rsc_vld),
      .dat(loopIndicesIn_rsc_dat),
      .irdy(loopIndicesIn_rsci_irdy_run_sct),
      .ivld(loopIndicesIn_rsci_ivld),
      .idat(loopIndicesIn_rsci_idat)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .loopIndicesIn_rsci_oswt(loopIndicesIn_rsci_oswt),
      .loopIndicesIn_rsci_biwt(loopIndicesIn_rsci_biwt),
      .loopIndicesIn_rsci_bdwt(loopIndicesIn_rsci_bdwt),
      .loopIndicesIn_rsci_bcwt(loopIndicesIn_rsci_bcwt),
      .loopIndicesIn_rsci_irdy_run_sct(loopIndicesIn_rsci_irdy_run_sct),
      .loopIndicesIn_rsci_ivld(loopIndicesIn_rsci_ivld)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .loopIndicesIn_rsci_oswt(loopIndicesIn_rsci_oswt),
      .loopIndicesIn_rsci_wen_comp(loopIndicesIn_rsci_wen_comp),
      .loopIndicesIn_rsci_idat_mxwt(loopIndicesIn_rsci_idat_mxwt),
      .loopIndicesIn_rsci_biwt(loopIndicesIn_rsci_biwt),
      .loopIndicesIn_rsci_bdwt(loopIndicesIn_rsci_bdwt),
      .loopIndicesIn_rsci_bcwt(loopIndicesIn_rsci_bcwt),
      .loopIndicesIn_rsci_idat(loopIndicesIn_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, run_wen, paramsIn_rsci_oswt,
      paramsIn_rsci_wen_comp, paramsIn_rsci_idat_mxwt
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input run_wen;
  input paramsIn_rsci_oswt;
  output paramsIn_rsci_wen_comp;
  output [79:0] paramsIn_rsci_idat_mxwt;


  // Interconnect Declarations
  wire paramsIn_rsci_biwt;
  wire paramsIn_rsci_bdwt;
  wire paramsIn_rsci_bcwt;
  wire paramsIn_rsci_irdy_run_sct;
  wire paramsIn_rsci_ivld;
  wire [143:0] paramsIn_rsci_idat;
  wire [79:0] paramsIn_rsci_idat_mxwt_pconst;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd103),
  .width(32'sd144)) paramsIn_rsci (
      .rdy(paramsIn_rsc_rdy),
      .vld(paramsIn_rsc_vld),
      .dat(paramsIn_rsc_dat),
      .irdy(paramsIn_rsci_irdy_run_sct),
      .ivld(paramsIn_rsci_ivld),
      .idat(paramsIn_rsci_idat)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(paramsIn_rsci_oswt),
      .paramsIn_rsci_biwt(paramsIn_rsci_biwt),
      .paramsIn_rsci_bdwt(paramsIn_rsci_bdwt),
      .paramsIn_rsci_bcwt(paramsIn_rsci_bcwt),
      .paramsIn_rsci_irdy_run_sct(paramsIn_rsci_irdy_run_sct),
      .paramsIn_rsci_ivld(paramsIn_rsci_ivld)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_dp
      SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsci_oswt(paramsIn_rsci_oswt),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .paramsIn_rsci_idat_mxwt(paramsIn_rsci_idat_mxwt_pconst),
      .paramsIn_rsci_biwt(paramsIn_rsci_biwt),
      .paramsIn_rsci_bdwt(paramsIn_rsci_bdwt),
      .paramsIn_rsci_bcwt(paramsIn_rsci_bcwt),
      .paramsIn_rsci_idat(paramsIn_rsci_idat)
    );
  assign paramsIn_rsci_idat_mxwt = paramsIn_rsci_idat_mxwt_pconst;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci (
  clk, arst_n, output_rsc_dat, output_rsc_vld, output_rsc_rdy, run_wen, output_rsci_oswt,
      output_rsci_wen_comp, output_rsci_idat
);
  input clk;
  input arst_n;
  output [255:0] output_rsc_dat;
  output output_rsc_vld;
  input output_rsc_rdy;
  input run_wen;
  input output_rsci_oswt;
  output output_rsci_wen_comp;
  input [255:0] output_rsci_idat;


  // Interconnect Declarations
  wire output_rsci_irdy;
  wire output_rsci_biwt;
  wire output_rsci_bdwt;
  wire output_rsci_bcwt;
  wire output_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd102),
  .width(32'sd256)) output_rsci (
      .irdy(output_rsci_irdy),
      .ivld(output_rsci_ivld_run_sct),
      .idat(output_rsci_idat),
      .rdy(output_rsc_rdy),
      .vld(output_rsc_vld),
      .dat(output_rsc_dat)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .output_rsci_oswt(output_rsci_oswt),
      .output_rsci_irdy(output_rsci_irdy),
      .output_rsci_biwt(output_rsci_biwt),
      .output_rsci_bdwt(output_rsci_bdwt),
      .output_rsci_bcwt(output_rsci_bcwt),
      .output_rsci_ivld_run_sct(output_rsci_ivld_run_sct)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_dp SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .output_rsci_oswt(output_rsci_oswt),
      .output_rsci_wen_comp(output_rsci_wen_comp),
      .output_rsci_biwt(output_rsci_biwt),
      .output_rsci_bdwt(output_rsci_bdwt),
      .output_rsci_bcwt(output_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci (
  clk, arst_n, weight_rsc_dat, weight_rsc_vld, weight_rsc_rdy, run_wen, weight_rsci_oswt,
      weight_rsci_wen_comp, weight_rsci_idat_mxwt
);
  input clk;
  input arst_n;
  input [127:0] weight_rsc_dat;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  input run_wen;
  input weight_rsci_oswt;
  output weight_rsci_wen_comp;
  output [127:0] weight_rsci_idat_mxwt;


  // Interconnect Declarations
  wire weight_rsci_biwt;
  wire weight_rsci_bdwt;
  wire weight_rsci_bcwt;
  wire weight_rsci_irdy_run_sct;
  wire weight_rsci_ivld;
  wire [127:0] weight_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd101),
  .width(32'sd128)) weight_rsci (
      .rdy(weight_rsc_rdy),
      .vld(weight_rsc_vld),
      .dat(weight_rsc_dat),
      .irdy(weight_rsci_irdy_run_sct),
      .ivld(weight_rsci_ivld),
      .idat(weight_rsci_idat)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .weight_rsci_oswt(weight_rsci_oswt),
      .weight_rsci_biwt(weight_rsci_biwt),
      .weight_rsci_bdwt(weight_rsci_bdwt),
      .weight_rsci_bcwt(weight_rsci_bcwt),
      .weight_rsci_irdy_run_sct(weight_rsci_irdy_run_sct),
      .weight_rsci_ivld(weight_rsci_ivld)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_dp SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weight_rsci_oswt(weight_rsci_oswt),
      .weight_rsci_wen_comp(weight_rsci_wen_comp),
      .weight_rsci_idat_mxwt(weight_rsci_idat_mxwt),
      .weight_rsci_biwt(weight_rsci_biwt),
      .weight_rsci_bdwt(weight_rsci_bdwt),
      .weight_rsci_bcwt(weight_rsci_bcwt),
      .weight_rsci_idat(weight_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci (
  clk, arst_n, input_rsc_dat, input_rsc_vld, input_rsc_rdy, run_wen, input_rsci_oswt,
      input_rsci_wen_comp, input_rsci_idat_mxwt
);
  input clk;
  input arst_n;
  input [127:0] input_rsc_dat;
  input input_rsc_vld;
  output input_rsc_rdy;
  input run_wen;
  input input_rsci_oswt;
  output input_rsci_wen_comp;
  output [127:0] input_rsci_idat_mxwt;


  // Interconnect Declarations
  wire input_rsci_biwt;
  wire input_rsci_bdwt;
  wire input_rsci_bcwt;
  wire input_rsci_irdy_run_sct;
  wire input_rsci_ivld;
  wire [127:0] input_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd100),
  .width(32'sd128)) input_rsci (
      .rdy(input_rsc_rdy),
      .vld(input_rsc_vld),
      .dat(input_rsc_dat),
      .irdy(input_rsci_irdy_run_sct),
      .ivld(input_rsci_ivld),
      .idat(input_rsci_idat)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .input_rsci_oswt(input_rsci_oswt),
      .input_rsci_biwt(input_rsci_biwt),
      .input_rsci_bdwt(input_rsci_bdwt),
      .input_rsci_bcwt(input_rsci_bcwt),
      .input_rsci_irdy_run_sct(input_rsci_irdy_run_sct),
      .input_rsci_ivld(input_rsci_ivld)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_dp SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .input_rsci_oswt(input_rsci_oswt),
      .input_rsci_wen_comp(input_rsci_wen_comp),
      .input_rsci_idat_mxwt(input_rsci_idat_mxwt),
      .input_rsci_biwt(input_rsci_biwt),
      .input_rsci_bdwt(input_rsci_bdwt),
      .input_rsci_bcwt(input_rsci_bcwt),
      .input_rsci_idat(input_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run (
  clk, arst_n, input_rsc_dat, input_rsc_vld, input_rsc_rdy, weight_rsc_dat, weight_rsc_vld,
      weight_rsc_rdy, output_rsc_dat, output_rsc_vld, output_rsc_rdy, paramsIn_rsc_dat,
      paramsIn_rsc_vld, paramsIn_rsc_rdy, loopIndicesIn_rsc_dat, loopIndicesIn_rsc_vld,
      loopIndicesIn_rsc_rdy, accum_buf_rsc_0_0_i_d_d, accum_buf_rsc_0_0_i_q_d, accum_buf_rsc_0_1_i_d_d,
      accum_buf_rsc_0_1_i_q_d, accum_buf_rsc_0_2_i_d_d, accum_buf_rsc_0_2_i_q_d,
      accum_buf_rsc_0_3_i_d_d, accum_buf_rsc_0_3_i_q_d, accum_buf_rsc_0_4_i_d_d,
      accum_buf_rsc_0_4_i_q_d, accum_buf_rsc_0_5_i_d_d, accum_buf_rsc_0_5_i_q_d,
      accum_buf_rsc_0_6_i_d_d, accum_buf_rsc_0_6_i_q_d, accum_buf_rsc_0_7_i_d_d,
      accum_buf_rsc_0_7_i_q_d, accum_buf_rsc_0_8_i_d_d, accum_buf_rsc_0_8_i_q_d,
      accum_buf_rsc_0_9_i_d_d, accum_buf_rsc_0_9_i_q_d, accum_buf_rsc_0_10_i_d_d,
      accum_buf_rsc_0_10_i_q_d, accum_buf_rsc_0_11_i_d_d, accum_buf_rsc_0_11_i_q_d,
      accum_buf_rsc_0_12_i_d_d, accum_buf_rsc_0_12_i_q_d, accum_buf_rsc_0_13_i_d_d,
      accum_buf_rsc_0_13_i_q_d, accum_buf_rsc_0_14_i_d_d, accum_buf_rsc_0_14_i_q_d,
      accum_buf_rsc_0_15_i_d_d, accum_buf_rsc_0_15_i_q_d, accum_buf_rsc_0_0_i_radr_d_pff,
      accum_buf_rsc_0_0_i_wadr_d_pff, accum_buf_rsc_0_0_i_we_d_pff, accum_buf_rsc_0_0_i_re_d_pff,
      accum_buf_rsc_0_1_i_we_d_pff, accum_buf_rsc_0_1_i_re_d_pff, accum_buf_rsc_0_2_i_we_d_pff,
      accum_buf_rsc_0_2_i_re_d_pff, accum_buf_rsc_0_3_i_we_d_pff, accum_buf_rsc_0_3_i_re_d_pff,
      accum_buf_rsc_0_4_i_we_d_pff, accum_buf_rsc_0_4_i_re_d_pff, accum_buf_rsc_0_5_i_we_d_pff,
      accum_buf_rsc_0_5_i_re_d_pff, accum_buf_rsc_0_6_i_we_d_pff, accum_buf_rsc_0_6_i_re_d_pff,
      accum_buf_rsc_0_7_i_we_d_pff, accum_buf_rsc_0_7_i_re_d_pff, accum_buf_rsc_0_8_i_we_d_pff,
      accum_buf_rsc_0_8_i_re_d_pff, accum_buf_rsc_0_9_i_we_d_pff, accum_buf_rsc_0_9_i_re_d_pff,
      accum_buf_rsc_0_10_i_we_d_pff, accum_buf_rsc_0_10_i_re_d_pff, accum_buf_rsc_0_11_i_we_d_pff,
      accum_buf_rsc_0_11_i_re_d_pff, accum_buf_rsc_0_12_i_we_d_pff, accum_buf_rsc_0_12_i_re_d_pff,
      accum_buf_rsc_0_13_i_we_d_pff, accum_buf_rsc_0_13_i_re_d_pff, accum_buf_rsc_0_14_i_we_d_pff,
      accum_buf_rsc_0_14_i_re_d_pff, accum_buf_rsc_0_15_i_we_d_pff, accum_buf_rsc_0_15_i_re_d_pff
);
  input clk;
  input arst_n;
  input [127:0] input_rsc_dat;
  input input_rsc_vld;
  output input_rsc_rdy;
  input [127:0] weight_rsc_dat;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  output [255:0] output_rsc_dat;
  output output_rsc_vld;
  input output_rsc_rdy;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input [47:0] loopIndicesIn_rsc_dat;
  input loopIndicesIn_rsc_vld;
  output loopIndicesIn_rsc_rdy;
  output [15:0] accum_buf_rsc_0_0_i_d_d;
  input [15:0] accum_buf_rsc_0_0_i_q_d;
  output [15:0] accum_buf_rsc_0_1_i_d_d;
  input [15:0] accum_buf_rsc_0_1_i_q_d;
  output [15:0] accum_buf_rsc_0_2_i_d_d;
  input [15:0] accum_buf_rsc_0_2_i_q_d;
  output [15:0] accum_buf_rsc_0_3_i_d_d;
  input [15:0] accum_buf_rsc_0_3_i_q_d;
  output [15:0] accum_buf_rsc_0_4_i_d_d;
  input [15:0] accum_buf_rsc_0_4_i_q_d;
  output [15:0] accum_buf_rsc_0_5_i_d_d;
  input [15:0] accum_buf_rsc_0_5_i_q_d;
  output [15:0] accum_buf_rsc_0_6_i_d_d;
  input [15:0] accum_buf_rsc_0_6_i_q_d;
  output [15:0] accum_buf_rsc_0_7_i_d_d;
  input [15:0] accum_buf_rsc_0_7_i_q_d;
  output [15:0] accum_buf_rsc_0_8_i_d_d;
  input [15:0] accum_buf_rsc_0_8_i_q_d;
  output [15:0] accum_buf_rsc_0_9_i_d_d;
  input [15:0] accum_buf_rsc_0_9_i_q_d;
  output [15:0] accum_buf_rsc_0_10_i_d_d;
  input [15:0] accum_buf_rsc_0_10_i_q_d;
  output [15:0] accum_buf_rsc_0_11_i_d_d;
  input [15:0] accum_buf_rsc_0_11_i_q_d;
  output [15:0] accum_buf_rsc_0_12_i_d_d;
  input [15:0] accum_buf_rsc_0_12_i_q_d;
  output [15:0] accum_buf_rsc_0_13_i_d_d;
  input [15:0] accum_buf_rsc_0_13_i_q_d;
  output [15:0] accum_buf_rsc_0_14_i_d_d;
  input [15:0] accum_buf_rsc_0_14_i_q_d;
  output [15:0] accum_buf_rsc_0_15_i_d_d;
  input [15:0] accum_buf_rsc_0_15_i_q_d;
  output [7:0] accum_buf_rsc_0_0_i_radr_d_pff;
  output [7:0] accum_buf_rsc_0_0_i_wadr_d_pff;
  output accum_buf_rsc_0_0_i_we_d_pff;
  output accum_buf_rsc_0_0_i_re_d_pff;
  output accum_buf_rsc_0_1_i_we_d_pff;
  output accum_buf_rsc_0_1_i_re_d_pff;
  output accum_buf_rsc_0_2_i_we_d_pff;
  output accum_buf_rsc_0_2_i_re_d_pff;
  output accum_buf_rsc_0_3_i_we_d_pff;
  output accum_buf_rsc_0_3_i_re_d_pff;
  output accum_buf_rsc_0_4_i_we_d_pff;
  output accum_buf_rsc_0_4_i_re_d_pff;
  output accum_buf_rsc_0_5_i_we_d_pff;
  output accum_buf_rsc_0_5_i_re_d_pff;
  output accum_buf_rsc_0_6_i_we_d_pff;
  output accum_buf_rsc_0_6_i_re_d_pff;
  output accum_buf_rsc_0_7_i_we_d_pff;
  output accum_buf_rsc_0_7_i_re_d_pff;
  output accum_buf_rsc_0_8_i_we_d_pff;
  output accum_buf_rsc_0_8_i_re_d_pff;
  output accum_buf_rsc_0_9_i_we_d_pff;
  output accum_buf_rsc_0_9_i_re_d_pff;
  output accum_buf_rsc_0_10_i_we_d_pff;
  output accum_buf_rsc_0_10_i_re_d_pff;
  output accum_buf_rsc_0_11_i_we_d_pff;
  output accum_buf_rsc_0_11_i_re_d_pff;
  output accum_buf_rsc_0_12_i_we_d_pff;
  output accum_buf_rsc_0_12_i_re_d_pff;
  output accum_buf_rsc_0_13_i_we_d_pff;
  output accum_buf_rsc_0_13_i_re_d_pff;
  output accum_buf_rsc_0_14_i_we_d_pff;
  output accum_buf_rsc_0_14_i_re_d_pff;
  output accum_buf_rsc_0_15_i_we_d_pff;
  output accum_buf_rsc_0_15_i_re_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire input_rsci_wen_comp;
  wire [127:0] input_rsci_idat_mxwt;
  wire weight_rsci_wen_comp;
  wire [127:0] weight_rsci_idat_mxwt;
  wire output_rsci_wen_comp;
  wire paramsIn_rsci_wen_comp;
  wire [79:0] paramsIn_rsci_idat_mxwt;
  wire loopIndicesIn_rsci_wen_comp;
  wire [47:0] loopIndicesIn_rsci_idat_mxwt;
  wire [15:0] accum_buf_rsc_0_0_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_1_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_2_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_3_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_4_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_5_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_6_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_7_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_8_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_9_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_10_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_11_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_12_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_13_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_14_i_q_d_mxwt;
  wire [15:0] accum_buf_rsc_0_15_i_q_d_mxwt;
  wire [15:0] accum_fifo_15_rsci_output_rsc_z;
  wire accum_fifo_15_rsci_ccs_ccore_en;
  wire [15:0] output_fifo_0_rsci_output_rsc_z;
  wire output_fifo_0_rsci_ccs_ccore_en;
  wire [15:0] accum_fifo_14_rsci_output_rsc_z;
  wire [15:0] output_fifo_1_rsci_output_rsc_z;
  wire [15:0] accum_fifo_13_rsci_output_rsc_z;
  wire [15:0] output_fifo_2_rsci_output_rsc_z;
  wire [15:0] accum_fifo_12_rsci_output_rsc_z;
  wire [15:0] output_fifo_3_rsci_output_rsc_z;
  wire [15:0] accum_fifo_11_rsci_output_rsc_z;
  wire [15:0] output_fifo_4_rsci_output_rsc_z;
  wire [15:0] accum_fifo_10_rsci_output_rsc_z;
  wire [15:0] output_fifo_5_rsci_output_rsc_z;
  wire [15:0] accum_fifo_9_rsci_output_rsc_z;
  wire [15:0] output_fifo_6_rsci_output_rsc_z;
  wire [15:0] accum_fifo_8_rsci_output_rsc_z;
  wire [15:0] output_fifo_7_rsci_output_rsc_z;
  wire [15:0] accum_fifo_7_rsci_output_rsc_z;
  wire [15:0] output_fifo_8_rsci_output_rsc_z;
  wire [15:0] accum_fifo_6_rsci_output_rsc_z;
  wire [15:0] output_fifo_9_rsci_output_rsc_z;
  wire [15:0] accum_fifo_5_rsci_output_rsc_z;
  wire [15:0] output_fifo_10_rsci_output_rsc_z;
  wire [15:0] accum_fifo_4_rsci_output_rsc_z;
  wire [15:0] output_fifo_11_rsci_output_rsc_z;
  wire [15:0] accum_fifo_3_rsci_output_rsc_z;
  wire [15:0] output_fifo_12_rsci_output_rsc_z;
  wire [15:0] accum_fifo_2_rsci_output_rsc_z;
  wire [15:0] output_fifo_13_rsci_output_rsc_z;
  wire [15:0] accum_fifo_1_rsci_output_rsc_z;
  wire [15:0] output_fifo_14_rsci_output_rsc_z;
  wire [7:0] input_fifo_15_rsci_output_rsc_z;
  wire [7:0] input_fifo_14_rsci_output_rsc_z;
  wire [7:0] input_fifo_13_rsci_output_rsc_z;
  wire [7:0] input_fifo_12_rsci_output_rsc_z;
  wire [7:0] input_fifo_11_rsci_output_rsc_z;
  wire [7:0] input_fifo_10_rsci_output_rsc_z;
  wire [7:0] input_fifo_9_rsci_output_rsc_z;
  wire [7:0] input_fifo_8_rsci_output_rsc_z;
  wire [7:0] input_fifo_7_rsci_output_rsc_z;
  wire [7:0] input_fifo_6_rsci_output_rsc_z;
  wire [7:0] input_fifo_5_rsci_output_rsc_z;
  wire [7:0] input_fifo_4_rsci_output_rsc_z;
  wire [7:0] input_fifo_3_rsci_output_rsc_z;
  wire [7:0] input_fifo_2_rsci_output_rsc_z;
  wire [7:0] input_fifo_1_rsci_output_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_1_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_1_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_2_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_2_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_3_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_3_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_4_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_4_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_5_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_5_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_6_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_6_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_7_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_7_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_8_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_8_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_9_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_9_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_10_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_10_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_11_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_11_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_12_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_12_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_13_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_13_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_14_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_14_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_15_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_15_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_16_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_16_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_17_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_17_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_18_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_18_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_19_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_19_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_20_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_20_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_21_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_21_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_22_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_22_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_23_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_23_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_24_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_24_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_25_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_25_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_26_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_26_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_27_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_27_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_28_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_28_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_29_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_29_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_30_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_30_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_31_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_31_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_32_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_32_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_33_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_33_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_34_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_34_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_35_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_35_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_36_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_36_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_37_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_37_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_38_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_38_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_39_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_39_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_40_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_40_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_41_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_41_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_42_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_42_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_43_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_43_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_44_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_44_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_45_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_45_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_46_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_46_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_47_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_47_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_48_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_48_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_49_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_49_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_50_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_50_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_51_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_51_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_52_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_52_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_53_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_53_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_54_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_54_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_55_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_55_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_56_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_56_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_57_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_57_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_58_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_58_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_59_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_59_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_60_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_60_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_61_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_61_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_62_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_62_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_63_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_63_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_64_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_64_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_65_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_65_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_66_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_66_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_67_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_67_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_68_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_68_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_69_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_69_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_70_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_70_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_71_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_71_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_72_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_72_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_73_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_73_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_74_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_74_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_75_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_75_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_76_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_76_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_77_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_77_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_78_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_78_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_79_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_79_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_80_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_80_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_81_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_81_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_82_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_82_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_83_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_83_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_84_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_84_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_85_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_85_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_86_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_86_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_87_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_87_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_88_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_88_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_89_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_89_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_90_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_90_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_91_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_91_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_92_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_92_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_93_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_93_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_94_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_94_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_95_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_95_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_96_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_96_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_97_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_97_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_98_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_98_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_99_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_99_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_100_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_100_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_101_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_101_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_102_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_102_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_103_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_103_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_104_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_104_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_105_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_105_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_106_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_106_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_107_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_107_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_108_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_108_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_109_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_109_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_110_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_110_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_111_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_111_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_112_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_112_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_113_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_113_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_114_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_114_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_115_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_115_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_116_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_116_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_117_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_117_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_118_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_118_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_119_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_119_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_120_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_120_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_121_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_121_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_122_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_122_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_123_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_123_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_124_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_124_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_125_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_125_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_126_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_126_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_127_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_127_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_128_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_128_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_129_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_129_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_130_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_130_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_131_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_131_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_132_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_132_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_133_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_133_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_134_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_134_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_135_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_135_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_136_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_136_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_137_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_137_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_138_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_138_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_139_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_139_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_140_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_140_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_141_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_141_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_142_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_142_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_143_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_143_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_144_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_144_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_145_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_145_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_146_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_146_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_147_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_147_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_148_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_148_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_149_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_149_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_150_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_150_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_151_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_151_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_152_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_152_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_153_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_153_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_154_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_154_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_155_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_155_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_156_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_156_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_157_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_157_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_158_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_158_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_159_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_159_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_160_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_160_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_161_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_161_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_162_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_162_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_163_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_163_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_164_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_164_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_165_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_165_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_166_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_166_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_167_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_167_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_168_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_168_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_169_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_169_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_170_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_170_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_171_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_171_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_172_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_172_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_173_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_173_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_174_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_174_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_175_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_175_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_176_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_176_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_177_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_177_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_178_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_178_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_179_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_179_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_180_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_180_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_181_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_181_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_182_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_182_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_183_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_183_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_184_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_184_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_185_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_185_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_186_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_186_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_187_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_187_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_188_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_188_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_189_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_189_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_190_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_190_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_191_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_191_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_192_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_192_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_193_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_193_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_194_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_194_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_195_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_195_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_196_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_196_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_197_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_197_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_198_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_198_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_199_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_199_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_200_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_200_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_201_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_201_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_202_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_202_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_203_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_203_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_204_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_204_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_205_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_205_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_206_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_206_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_207_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_207_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_208_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_208_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_209_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_209_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_210_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_210_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_211_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_211_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_212_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_212_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_213_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_213_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_214_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_214_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_215_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_215_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_216_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_216_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_217_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_217_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_218_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_218_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_219_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_219_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_220_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_220_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_221_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_221_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_222_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_222_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_223_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_223_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_224_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_224_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_225_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_225_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_226_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_226_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_227_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_227_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_228_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_228_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_229_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_229_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_230_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_230_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_231_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_231_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_232_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_232_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_233_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_233_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_234_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_234_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_235_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_235_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_236_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_236_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_237_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_237_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_238_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_238_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_239_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_239_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_240_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_240_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_241_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_241_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_242_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_242_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_243_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_243_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_244_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_244_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_245_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_245_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_246_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_246_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_247_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_247_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_248_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_248_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_249_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_249_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_250_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_250_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_251_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_251_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_252_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_252_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_253_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_253_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_254_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_254_psum_out_rsc_z;
  wire [7:0] pe_array_0_0_run_cmp_255_input_out_rsc_z;
  wire [15:0] pe_array_0_0_run_cmp_255_psum_out_rsc_z;
  wire [15:0] accum_fifo_0_run_cmp_output_rsc_z;
  wire [15:0] accum_fifo_0_run_cmp_1_output_rsc_z;
  wire [7:0] input_fifo_0_run_cmp_output_rsc_z;
  reg [15:0] output_rsci_idat_255_240;
  reg [15:0] output_rsci_idat_239_224;
  reg [15:0] output_rsci_idat_223_208;
  reg [15:0] output_rsci_idat_207_192;
  reg [15:0] output_rsci_idat_191_176;
  reg [15:0] output_rsci_idat_175_160;
  reg [15:0] output_rsci_idat_159_144;
  reg [15:0] output_rsci_idat_143_128;
  reg [15:0] output_rsci_idat_127_112;
  reg [15:0] output_rsci_idat_111_96;
  reg [15:0] output_rsci_idat_95_80;
  reg [15:0] output_rsci_idat_79_64;
  reg [15:0] output_rsci_idat_63_48;
  reg [15:0] output_rsci_idat_47_32;
  reg [15:0] output_rsci_idat_31_16;
  reg [15:0] output_rsci_idat_15_0;
  wire [1:0] fsm_output;
  wire step_if_2_if_step_if_2_if_nor_1_tmp;
  wire or_dcpl_1;
  wire or_dcpl_2;
  wire or_dcpl_4;
  wire or_dcpl_5;
  wire or_dcpl_8;
  wire or_dcpl_10;
  wire or_dcpl_11;
  wire or_dcpl_14;
  wire or_dcpl_15;
  wire or_dcpl_18;
  wire or_dcpl_19;
  wire or_dcpl_22;
  wire or_dcpl_25;
  wire or_dcpl_28;
  wire and_dcpl_3;
  wire or_dcpl_42;
  wire or_dcpl_43;
  wire or_dcpl_44;
  wire or_dcpl_45;
  wire or_dcpl_46;
  wire or_dcpl_47;
  wire or_dcpl_48;
  wire or_dcpl_49;
  wire or_dcpl_50;
  wire or_dcpl_51;
  wire or_dcpl_52;
  wire or_dcpl_53;
  wire or_dcpl_54;
  wire or_dcpl_55;
  wire or_dcpl_56;
  wire or_dcpl_57;
  wire or_dcpl_58;
  wire or_dcpl_59;
  wire or_dcpl_60;
  wire or_dcpl_61;
  wire or_dcpl_62;
  wire or_dcpl_63;
  wire or_dcpl_64;
  wire or_dcpl_65;
  wire or_dcpl_66;
  wire or_dcpl_69;
  reg [15:0] step_step_sva_1;
  reg exitL_exit_step_sva;
  wire [15:0] step_step_lpi_1_dfm_1;
  reg step_slc_16_2_itm_2;
  reg step_slc_16_2_itm_1;
  reg step_if_3_if_step_if_3_if_and_1_itm_3;
  reg step_slc_16_2_itm_3;
  reg main_stage_0_2;
  reg step_acc_2_cse_16_sva_st_1_1;
  reg [3:0] step_step_lpi_1_dfm_1_3_0;
  wire [47:0] loopIndicesIn_crt_lpi_1_dfm_mx0;
  wire [16:0] operator_16_false_1_acc_psp_sva_1;
  wire [17:0] nl_operator_16_false_1_acc_psp_sva_1;
  wire [16:0] operator_16_false_acc_psp_sva_1;
  wire [17:0] nl_operator_16_false_acc_psp_sva_1;
  wire [16:0] operator_16_false_2_acc_psp_sva_1;
  wire [17:0] nl_operator_16_false_2_acc_psp_sva_1;
  reg operator_16_false_slc_operator_16_false_acc_12_svs_st_1;
  reg reg_loopIndicesIn_rsci_oswt_cse;
  wire output_and_cse;
  reg reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse;
  reg reg_ensig_cgo_303_cse;
  reg reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse;
  reg reg_ensig_cgo_302_cse;
  reg reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse;
  reg reg_output_rsci_ivld_run_psct_cse;
  reg reg_weight_rsci_irdy_run_psct_cse;
  reg reg_input_rsci_irdy_run_psct_cse;
  wire step_and_cse;
  wire accum_buf_rsc_0_0_i_we_d_iff;
  wire accum_buf_rsc_0_0_i_re_d_iff;
  wire and_1006_rmff;
  wire accum_buf_rsc_0_1_i_we_d_iff;
  wire accum_buf_rsc_0_1_i_re_d_iff;
  wire accum_buf_rsc_0_2_i_we_d_iff;
  wire accum_buf_rsc_0_2_i_re_d_iff;
  wire accum_buf_rsc_0_3_i_we_d_iff;
  wire accum_buf_rsc_0_3_i_re_d_iff;
  wire accum_buf_rsc_0_4_i_we_d_iff;
  wire accum_buf_rsc_0_4_i_re_d_iff;
  wire accum_buf_rsc_0_5_i_we_d_iff;
  wire accum_buf_rsc_0_5_i_re_d_iff;
  wire accum_buf_rsc_0_6_i_we_d_iff;
  wire accum_buf_rsc_0_6_i_re_d_iff;
  wire accum_buf_rsc_0_7_i_we_d_iff;
  wire accum_buf_rsc_0_7_i_re_d_iff;
  wire accum_buf_rsc_0_8_i_we_d_iff;
  wire accum_buf_rsc_0_8_i_re_d_iff;
  wire accum_buf_rsc_0_9_i_we_d_iff;
  wire accum_buf_rsc_0_9_i_re_d_iff;
  wire accum_buf_rsc_0_10_i_we_d_iff;
  wire accum_buf_rsc_0_10_i_re_d_iff;
  wire accum_buf_rsc_0_11_i_we_d_iff;
  wire accum_buf_rsc_0_11_i_re_d_iff;
  wire accum_buf_rsc_0_12_i_we_d_iff;
  wire accum_buf_rsc_0_12_i_re_d_iff;
  wire accum_buf_rsc_0_13_i_we_d_iff;
  wire accum_buf_rsc_0_13_i_re_d_iff;
  wire accum_buf_rsc_0_14_i_we_d_iff;
  wire accum_buf_rsc_0_14_i_re_d_iff;
  wire accum_buf_rsc_0_15_i_we_d_iff;
  wire accum_buf_rsc_0_15_i_re_d_iff;
  wire and_10_rmff;
  wire and_14_rmff;
  reg step_if_2_land_1_lpi_1_dfm_1;
  reg [15:0] psumIn_reg_array_16_1_sva;
  reg [15:0] psumIn_reg_array_16_2_sva;
  reg [15:0] psumIn_reg_array_16_3_sva;
  reg [15:0] psumIn_reg_array_16_4_sva;
  reg [15:0] psumIn_reg_array_16_5_sva;
  reg [15:0] psumIn_reg_array_16_6_sva;
  reg [15:0] psumIn_reg_array_16_7_sva;
  reg [15:0] psumIn_reg_array_16_8_sva;
  reg [15:0] psumIn_reg_array_16_9_sva;
  reg [15:0] psumIn_reg_array_16_10_sva;
  reg [15:0] psumIn_reg_array_16_11_sva;
  reg [15:0] psumIn_reg_array_16_12_sva;
  reg [15:0] psumIn_reg_array_16_13_sva;
  reg [15:0] psumIn_reg_array_16_14_sva;
  reg [15:0] psumIn_reg_array_16_15_sva;
  wire [127:0] step_in_col_value_lpi_1_dfm_mx1;
  reg [7:0] weight_reg_array_0_0_sva;
  reg [7:0] inputIn_reg_array_16_15_sva;
  reg [15:0] psumIn_reg_array_15_16_sva;
  reg [7:0] weight_reg_array_15_15_sva;
  reg [7:0] inputIn_reg_array_16_14_sva;
  reg [15:0] psumIn_reg_array_15_15_sva;
  reg [7:0] weight_reg_array_15_14_sva;
  reg [7:0] inputIn_reg_array_16_13_sva;
  reg [15:0] psumIn_reg_array_15_14_sva;
  reg [7:0] weight_reg_array_15_13_sva;
  reg [7:0] inputIn_reg_array_16_12_sva;
  reg [15:0] psumIn_reg_array_15_13_sva;
  reg [7:0] weight_reg_array_15_12_sva;
  reg [7:0] inputIn_reg_array_16_11_sva;
  reg [15:0] psumIn_reg_array_15_12_sva;
  reg [7:0] weight_reg_array_15_11_sva;
  reg [7:0] inputIn_reg_array_16_10_sva;
  reg [15:0] psumIn_reg_array_15_11_sva;
  reg [7:0] weight_reg_array_15_10_sva;
  reg [7:0] inputIn_reg_array_16_9_sva;
  reg [15:0] psumIn_reg_array_15_10_sva;
  reg [7:0] weight_reg_array_15_9_sva;
  reg [7:0] inputIn_reg_array_16_8_sva;
  reg [15:0] psumIn_reg_array_15_9_sva;
  reg [7:0] weight_reg_array_15_8_sva;
  reg [7:0] inputIn_reg_array_16_7_sva;
  reg [15:0] psumIn_reg_array_15_8_sva;
  reg [7:0] weight_reg_array_15_7_sva;
  reg [7:0] inputIn_reg_array_16_6_sva;
  reg [15:0] psumIn_reg_array_15_7_sva;
  reg [7:0] weight_reg_array_15_6_sva;
  reg [7:0] inputIn_reg_array_16_5_sva;
  reg [15:0] psumIn_reg_array_15_6_sva;
  reg [7:0] weight_reg_array_15_5_sva;
  reg [7:0] inputIn_reg_array_16_4_sva;
  reg [15:0] psumIn_reg_array_15_5_sva;
  reg [7:0] weight_reg_array_15_4_sva;
  reg [7:0] inputIn_reg_array_16_3_sva;
  reg [15:0] psumIn_reg_array_15_4_sva;
  reg [7:0] weight_reg_array_15_3_sva;
  reg [7:0] inputIn_reg_array_16_2_sva;
  reg [15:0] psumIn_reg_array_15_3_sva;
  reg [7:0] weight_reg_array_15_2_sva;
  reg [7:0] inputIn_reg_array_16_1_sva;
  reg [15:0] psumIn_reg_array_15_2_sva;
  reg [7:0] weight_reg_array_15_1_sva;
  reg [15:0] psumIn_reg_array_15_1_sva;
  reg [7:0] weight_reg_array_15_0_sva;
  reg [7:0] inputIn_reg_array_15_15_sva;
  reg [15:0] psumIn_reg_array_14_16_sva;
  reg [7:0] weight_reg_array_14_15_sva;
  reg [7:0] inputIn_reg_array_15_14_sva;
  reg [15:0] psumIn_reg_array_14_15_sva;
  reg [7:0] weight_reg_array_14_14_sva;
  reg [7:0] inputIn_reg_array_15_13_sva;
  reg [15:0] psumIn_reg_array_14_14_sva;
  reg [7:0] weight_reg_array_14_13_sva;
  reg [7:0] inputIn_reg_array_15_12_sva;
  reg [15:0] psumIn_reg_array_14_13_sva;
  reg [7:0] weight_reg_array_14_12_sva;
  reg [7:0] inputIn_reg_array_15_11_sva;
  reg [15:0] psumIn_reg_array_14_12_sva;
  reg [7:0] weight_reg_array_14_11_sva;
  reg [7:0] inputIn_reg_array_15_10_sva;
  reg [15:0] psumIn_reg_array_14_11_sva;
  reg [7:0] weight_reg_array_14_10_sva;
  reg [7:0] inputIn_reg_array_15_9_sva;
  reg [15:0] psumIn_reg_array_14_10_sva;
  reg [7:0] weight_reg_array_14_9_sva;
  reg [7:0] inputIn_reg_array_15_8_sva;
  reg [15:0] psumIn_reg_array_14_9_sva;
  reg [7:0] weight_reg_array_14_8_sva;
  reg [7:0] inputIn_reg_array_15_7_sva;
  reg [15:0] psumIn_reg_array_14_8_sva;
  reg [7:0] weight_reg_array_14_7_sva;
  reg [7:0] inputIn_reg_array_15_6_sva;
  reg [15:0] psumIn_reg_array_14_7_sva;
  reg [7:0] weight_reg_array_14_6_sva;
  reg [7:0] inputIn_reg_array_15_5_sva;
  reg [15:0] psumIn_reg_array_14_6_sva;
  reg [7:0] weight_reg_array_14_5_sva;
  reg [7:0] inputIn_reg_array_15_4_sva;
  reg [15:0] psumIn_reg_array_14_5_sva;
  reg [7:0] weight_reg_array_14_4_sva;
  reg [7:0] inputIn_reg_array_15_3_sva;
  reg [15:0] psumIn_reg_array_14_4_sva;
  reg [7:0] weight_reg_array_14_3_sva;
  reg [7:0] inputIn_reg_array_15_2_sva;
  reg [15:0] psumIn_reg_array_14_3_sva;
  reg [7:0] weight_reg_array_14_2_sva;
  reg [7:0] inputIn_reg_array_15_1_sva;
  reg [15:0] psumIn_reg_array_14_2_sva;
  reg [7:0] weight_reg_array_14_1_sva;
  reg [15:0] psumIn_reg_array_14_1_sva;
  reg [7:0] weight_reg_array_14_0_sva;
  reg [7:0] inputIn_reg_array_14_15_sva;
  reg [15:0] psumIn_reg_array_13_16_sva;
  reg [7:0] weight_reg_array_13_15_sva;
  reg [7:0] inputIn_reg_array_14_14_sva;
  reg [15:0] psumIn_reg_array_13_15_sva;
  reg [7:0] weight_reg_array_13_14_sva;
  reg [7:0] inputIn_reg_array_14_13_sva;
  reg [15:0] psumIn_reg_array_13_14_sva;
  reg [7:0] weight_reg_array_13_13_sva;
  reg [7:0] inputIn_reg_array_14_12_sva;
  reg [15:0] psumIn_reg_array_13_13_sva;
  reg [7:0] weight_reg_array_13_12_sva;
  reg [7:0] inputIn_reg_array_14_11_sva;
  reg [15:0] psumIn_reg_array_13_12_sva;
  reg [7:0] weight_reg_array_13_11_sva;
  reg [7:0] inputIn_reg_array_14_10_sva;
  reg [15:0] psumIn_reg_array_13_11_sva;
  reg [7:0] weight_reg_array_13_10_sva;
  reg [7:0] inputIn_reg_array_14_9_sva;
  reg [15:0] psumIn_reg_array_13_10_sva;
  reg [7:0] weight_reg_array_13_9_sva;
  reg [7:0] inputIn_reg_array_14_8_sva;
  reg [15:0] psumIn_reg_array_13_9_sva;
  reg [7:0] weight_reg_array_13_8_sva;
  reg [7:0] inputIn_reg_array_14_7_sva;
  reg [15:0] psumIn_reg_array_13_8_sva;
  reg [7:0] weight_reg_array_13_7_sva;
  reg [7:0] inputIn_reg_array_14_6_sva;
  reg [15:0] psumIn_reg_array_13_7_sva;
  reg [7:0] weight_reg_array_13_6_sva;
  reg [7:0] inputIn_reg_array_14_5_sva;
  reg [15:0] psumIn_reg_array_13_6_sva;
  reg [7:0] weight_reg_array_13_5_sva;
  reg [7:0] inputIn_reg_array_14_4_sva;
  reg [15:0] psumIn_reg_array_13_5_sva;
  reg [7:0] weight_reg_array_13_4_sva;
  reg [7:0] inputIn_reg_array_14_3_sva;
  reg [15:0] psumIn_reg_array_13_4_sva;
  reg [7:0] weight_reg_array_13_3_sva;
  reg [7:0] inputIn_reg_array_14_2_sva;
  reg [15:0] psumIn_reg_array_13_3_sva;
  reg [7:0] weight_reg_array_13_2_sva;
  reg [7:0] inputIn_reg_array_14_1_sva;
  reg [15:0] psumIn_reg_array_13_2_sva;
  reg [7:0] weight_reg_array_13_1_sva;
  reg [15:0] psumIn_reg_array_13_1_sva;
  reg [7:0] weight_reg_array_13_0_sva;
  reg [7:0] inputIn_reg_array_13_15_sva;
  reg [15:0] psumIn_reg_array_12_16_sva;
  reg [7:0] weight_reg_array_12_15_sva;
  reg [7:0] inputIn_reg_array_13_14_sva;
  reg [15:0] psumIn_reg_array_12_15_sva;
  reg [7:0] weight_reg_array_12_14_sva;
  reg [7:0] inputIn_reg_array_13_13_sva;
  reg [15:0] psumIn_reg_array_12_14_sva;
  reg [7:0] weight_reg_array_12_13_sva;
  reg [7:0] inputIn_reg_array_13_12_sva;
  reg [15:0] psumIn_reg_array_12_13_sva;
  reg [7:0] weight_reg_array_12_12_sva;
  reg [7:0] inputIn_reg_array_13_11_sva;
  reg [15:0] psumIn_reg_array_12_12_sva;
  reg [7:0] weight_reg_array_12_11_sva;
  reg [7:0] inputIn_reg_array_13_10_sva;
  reg [15:0] psumIn_reg_array_12_11_sva;
  reg [7:0] weight_reg_array_12_10_sva;
  reg [7:0] inputIn_reg_array_13_9_sva;
  reg [15:0] psumIn_reg_array_12_10_sva;
  reg [7:0] weight_reg_array_12_9_sva;
  reg [7:0] inputIn_reg_array_13_8_sva;
  reg [15:0] psumIn_reg_array_12_9_sva;
  reg [7:0] weight_reg_array_12_8_sva;
  reg [7:0] inputIn_reg_array_13_7_sva;
  reg [15:0] psumIn_reg_array_12_8_sva;
  reg [7:0] weight_reg_array_12_7_sva;
  reg [7:0] inputIn_reg_array_13_6_sva;
  reg [15:0] psumIn_reg_array_12_7_sva;
  reg [7:0] weight_reg_array_12_6_sva;
  reg [7:0] inputIn_reg_array_13_5_sva;
  reg [15:0] psumIn_reg_array_12_6_sva;
  reg [7:0] weight_reg_array_12_5_sva;
  reg [7:0] inputIn_reg_array_13_4_sva;
  reg [15:0] psumIn_reg_array_12_5_sva;
  reg [7:0] weight_reg_array_12_4_sva;
  reg [7:0] inputIn_reg_array_13_3_sva;
  reg [15:0] psumIn_reg_array_12_4_sva;
  reg [7:0] weight_reg_array_12_3_sva;
  reg [7:0] inputIn_reg_array_13_2_sva;
  reg [15:0] psumIn_reg_array_12_3_sva;
  reg [7:0] weight_reg_array_12_2_sva;
  reg [7:0] inputIn_reg_array_13_1_sva;
  reg [15:0] psumIn_reg_array_12_2_sva;
  reg [7:0] weight_reg_array_12_1_sva;
  reg [15:0] psumIn_reg_array_12_1_sva;
  reg [7:0] weight_reg_array_12_0_sva;
  reg [7:0] inputIn_reg_array_12_15_sva;
  reg [15:0] psumIn_reg_array_11_16_sva;
  reg [7:0] weight_reg_array_11_15_sva;
  reg [7:0] inputIn_reg_array_12_14_sva;
  reg [15:0] psumIn_reg_array_11_15_sva;
  reg [7:0] weight_reg_array_11_14_sva;
  reg [7:0] inputIn_reg_array_12_13_sva;
  reg [15:0] psumIn_reg_array_11_14_sva;
  reg [7:0] weight_reg_array_11_13_sva;
  reg [7:0] inputIn_reg_array_12_12_sva;
  reg [15:0] psumIn_reg_array_11_13_sva;
  reg [7:0] weight_reg_array_11_12_sva;
  reg [7:0] inputIn_reg_array_12_11_sva;
  reg [15:0] psumIn_reg_array_11_12_sva;
  reg [7:0] weight_reg_array_11_11_sva;
  reg [7:0] inputIn_reg_array_12_10_sva;
  reg [15:0] psumIn_reg_array_11_11_sva;
  reg [7:0] weight_reg_array_11_10_sva;
  reg [7:0] inputIn_reg_array_12_9_sva;
  reg [15:0] psumIn_reg_array_11_10_sva;
  reg [7:0] weight_reg_array_11_9_sva;
  reg [7:0] inputIn_reg_array_12_8_sva;
  reg [15:0] psumIn_reg_array_11_9_sva;
  reg [7:0] weight_reg_array_11_8_sva;
  reg [7:0] inputIn_reg_array_12_7_sva;
  reg [15:0] psumIn_reg_array_11_8_sva;
  reg [7:0] weight_reg_array_11_7_sva;
  reg [7:0] inputIn_reg_array_12_6_sva;
  reg [15:0] psumIn_reg_array_11_7_sva;
  reg [7:0] weight_reg_array_11_6_sva;
  reg [7:0] inputIn_reg_array_12_5_sva;
  reg [15:0] psumIn_reg_array_11_6_sva;
  reg [7:0] weight_reg_array_11_5_sva;
  reg [7:0] inputIn_reg_array_12_4_sva;
  reg [15:0] psumIn_reg_array_11_5_sva;
  reg [7:0] weight_reg_array_11_4_sva;
  reg [7:0] inputIn_reg_array_12_3_sva;
  reg [15:0] psumIn_reg_array_11_4_sva;
  reg [7:0] weight_reg_array_11_3_sva;
  reg [7:0] inputIn_reg_array_12_2_sva;
  reg [15:0] psumIn_reg_array_11_3_sva;
  reg [7:0] weight_reg_array_11_2_sva;
  reg [7:0] inputIn_reg_array_12_1_sva;
  reg [15:0] psumIn_reg_array_11_2_sva;
  reg [7:0] weight_reg_array_11_1_sva;
  reg [15:0] psumIn_reg_array_11_1_sva;
  reg [7:0] weight_reg_array_11_0_sva;
  reg [7:0] inputIn_reg_array_11_15_sva;
  reg [15:0] psumIn_reg_array_10_16_sva;
  reg [7:0] weight_reg_array_10_15_sva;
  reg [7:0] inputIn_reg_array_11_14_sva;
  reg [15:0] psumIn_reg_array_10_15_sva;
  reg [7:0] weight_reg_array_10_14_sva;
  reg [7:0] inputIn_reg_array_11_13_sva;
  reg [15:0] psumIn_reg_array_10_14_sva;
  reg [7:0] weight_reg_array_10_13_sva;
  reg [7:0] inputIn_reg_array_11_12_sva;
  reg [15:0] psumIn_reg_array_10_13_sva;
  reg [7:0] weight_reg_array_10_12_sva;
  reg [7:0] inputIn_reg_array_11_11_sva;
  reg [15:0] psumIn_reg_array_10_12_sva;
  reg [7:0] weight_reg_array_10_11_sva;
  reg [7:0] inputIn_reg_array_11_10_sva;
  reg [15:0] psumIn_reg_array_10_11_sva;
  reg [7:0] weight_reg_array_10_10_sva;
  reg [7:0] inputIn_reg_array_11_9_sva;
  reg [15:0] psumIn_reg_array_10_10_sva;
  reg [7:0] weight_reg_array_10_9_sva;
  reg [7:0] inputIn_reg_array_11_8_sva;
  reg [15:0] psumIn_reg_array_10_9_sva;
  reg [7:0] weight_reg_array_10_8_sva;
  reg [7:0] inputIn_reg_array_11_7_sva;
  reg [15:0] psumIn_reg_array_10_8_sva;
  reg [7:0] weight_reg_array_10_7_sva;
  reg [7:0] inputIn_reg_array_11_6_sva;
  reg [15:0] psumIn_reg_array_10_7_sva;
  reg [7:0] weight_reg_array_10_6_sva;
  reg [7:0] inputIn_reg_array_11_5_sva;
  reg [15:0] psumIn_reg_array_10_6_sva;
  reg [7:0] weight_reg_array_10_5_sva;
  reg [7:0] inputIn_reg_array_11_4_sva;
  reg [15:0] psumIn_reg_array_10_5_sva;
  reg [7:0] weight_reg_array_10_4_sva;
  reg [7:0] inputIn_reg_array_11_3_sva;
  reg [15:0] psumIn_reg_array_10_4_sva;
  reg [7:0] weight_reg_array_10_3_sva;
  reg [7:0] inputIn_reg_array_11_2_sva;
  reg [15:0] psumIn_reg_array_10_3_sva;
  reg [7:0] weight_reg_array_10_2_sva;
  reg [7:0] inputIn_reg_array_11_1_sva;
  reg [15:0] psumIn_reg_array_10_2_sva;
  reg [7:0] weight_reg_array_10_1_sva;
  reg [15:0] psumIn_reg_array_10_1_sva;
  reg [7:0] weight_reg_array_10_0_sva;
  reg [7:0] inputIn_reg_array_10_15_sva;
  reg [15:0] psumIn_reg_array_9_16_sva;
  reg [7:0] weight_reg_array_9_15_sva;
  reg [7:0] inputIn_reg_array_10_14_sva;
  reg [15:0] psumIn_reg_array_9_15_sva;
  reg [7:0] weight_reg_array_9_14_sva;
  reg [7:0] inputIn_reg_array_10_13_sva;
  reg [15:0] psumIn_reg_array_9_14_sva;
  reg [7:0] weight_reg_array_9_13_sva;
  reg [7:0] inputIn_reg_array_10_12_sva;
  reg [15:0] psumIn_reg_array_9_13_sva;
  reg [7:0] weight_reg_array_9_12_sva;
  reg [7:0] inputIn_reg_array_10_11_sva;
  reg [15:0] psumIn_reg_array_9_12_sva;
  reg [7:0] weight_reg_array_9_11_sva;
  reg [7:0] inputIn_reg_array_10_10_sva;
  reg [15:0] psumIn_reg_array_9_11_sva;
  reg [7:0] weight_reg_array_9_10_sva;
  reg [7:0] inputIn_reg_array_10_9_sva;
  reg [15:0] psumIn_reg_array_9_10_sva;
  reg [7:0] weight_reg_array_9_9_sva;
  reg [7:0] inputIn_reg_array_10_8_sva;
  reg [15:0] psumIn_reg_array_9_9_sva;
  reg [7:0] weight_reg_array_9_8_sva;
  reg [7:0] inputIn_reg_array_10_7_sva;
  reg [15:0] psumIn_reg_array_9_8_sva;
  reg [7:0] weight_reg_array_9_7_sva;
  reg [7:0] inputIn_reg_array_10_6_sva;
  reg [15:0] psumIn_reg_array_9_7_sva;
  reg [7:0] weight_reg_array_9_6_sva;
  reg [7:0] inputIn_reg_array_10_5_sva;
  reg [15:0] psumIn_reg_array_9_6_sva;
  reg [7:0] weight_reg_array_9_5_sva;
  reg [7:0] inputIn_reg_array_10_4_sva;
  reg [15:0] psumIn_reg_array_9_5_sva;
  reg [7:0] weight_reg_array_9_4_sva;
  reg [7:0] inputIn_reg_array_10_3_sva;
  reg [15:0] psumIn_reg_array_9_4_sva;
  reg [7:0] weight_reg_array_9_3_sva;
  reg [7:0] inputIn_reg_array_10_2_sva;
  reg [15:0] psumIn_reg_array_9_3_sva;
  reg [7:0] weight_reg_array_9_2_sva;
  reg [7:0] inputIn_reg_array_10_1_sva;
  reg [15:0] psumIn_reg_array_9_2_sva;
  reg [7:0] weight_reg_array_9_1_sva;
  reg [15:0] psumIn_reg_array_9_1_sva;
  reg [7:0] weight_reg_array_9_0_sva;
  reg [7:0] inputIn_reg_array_9_15_sva;
  reg [15:0] psumIn_reg_array_8_16_sva;
  reg [7:0] weight_reg_array_8_15_sva;
  reg [7:0] inputIn_reg_array_9_14_sva;
  reg [15:0] psumIn_reg_array_8_15_sva;
  reg [7:0] weight_reg_array_8_14_sva;
  reg [7:0] inputIn_reg_array_9_13_sva;
  reg [15:0] psumIn_reg_array_8_14_sva;
  reg [7:0] weight_reg_array_8_13_sva;
  reg [7:0] inputIn_reg_array_9_12_sva;
  reg [15:0] psumIn_reg_array_8_13_sva;
  reg [7:0] weight_reg_array_8_12_sva;
  reg [7:0] inputIn_reg_array_9_11_sva;
  reg [15:0] psumIn_reg_array_8_12_sva;
  reg [7:0] weight_reg_array_8_11_sva;
  reg [7:0] inputIn_reg_array_9_10_sva;
  reg [15:0] psumIn_reg_array_8_11_sva;
  reg [7:0] weight_reg_array_8_10_sva;
  reg [7:0] inputIn_reg_array_9_9_sva;
  reg [15:0] psumIn_reg_array_8_10_sva;
  reg [7:0] weight_reg_array_8_9_sva;
  reg [7:0] inputIn_reg_array_9_8_sva;
  reg [15:0] psumIn_reg_array_8_9_sva;
  reg [7:0] weight_reg_array_8_8_sva;
  reg [7:0] inputIn_reg_array_9_7_sva;
  reg [15:0] psumIn_reg_array_8_8_sva;
  reg [7:0] weight_reg_array_8_7_sva;
  reg [7:0] inputIn_reg_array_9_6_sva;
  reg [15:0] psumIn_reg_array_8_7_sva;
  reg [7:0] weight_reg_array_8_6_sva;
  reg [7:0] inputIn_reg_array_9_5_sva;
  reg [15:0] psumIn_reg_array_8_6_sva;
  reg [7:0] weight_reg_array_8_5_sva;
  reg [7:0] inputIn_reg_array_9_4_sva;
  reg [15:0] psumIn_reg_array_8_5_sva;
  reg [7:0] weight_reg_array_8_4_sva;
  reg [7:0] inputIn_reg_array_9_3_sva;
  reg [15:0] psumIn_reg_array_8_4_sva;
  reg [7:0] weight_reg_array_8_3_sva;
  reg [7:0] inputIn_reg_array_9_2_sva;
  reg [15:0] psumIn_reg_array_8_3_sva;
  reg [7:0] weight_reg_array_8_2_sva;
  reg [7:0] inputIn_reg_array_9_1_sva;
  reg [15:0] psumIn_reg_array_8_2_sva;
  reg [7:0] weight_reg_array_8_1_sva;
  reg [15:0] psumIn_reg_array_8_1_sva;
  reg [7:0] weight_reg_array_8_0_sva;
  reg [7:0] inputIn_reg_array_8_15_sva;
  reg [15:0] psumIn_reg_array_7_16_sva;
  reg [7:0] weight_reg_array_7_15_sva;
  reg [7:0] inputIn_reg_array_8_14_sva;
  reg [15:0] psumIn_reg_array_7_15_sva;
  reg [7:0] weight_reg_array_7_14_sva;
  reg [7:0] inputIn_reg_array_8_13_sva;
  reg [15:0] psumIn_reg_array_7_14_sva;
  reg [7:0] weight_reg_array_7_13_sva;
  reg [7:0] inputIn_reg_array_8_12_sva;
  reg [15:0] psumIn_reg_array_7_13_sva;
  reg [7:0] weight_reg_array_7_12_sva;
  reg [7:0] inputIn_reg_array_8_11_sva;
  reg [15:0] psumIn_reg_array_7_12_sva;
  reg [7:0] weight_reg_array_7_11_sva;
  reg [7:0] inputIn_reg_array_8_10_sva;
  reg [15:0] psumIn_reg_array_7_11_sva;
  reg [7:0] weight_reg_array_7_10_sva;
  reg [7:0] inputIn_reg_array_8_9_sva;
  reg [15:0] psumIn_reg_array_7_10_sva;
  reg [7:0] weight_reg_array_7_9_sva;
  reg [7:0] inputIn_reg_array_8_8_sva;
  reg [15:0] psumIn_reg_array_7_9_sva;
  reg [7:0] weight_reg_array_7_8_sva;
  reg [7:0] inputIn_reg_array_8_7_sva;
  reg [15:0] psumIn_reg_array_7_8_sva;
  reg [7:0] weight_reg_array_7_7_sva;
  reg [7:0] inputIn_reg_array_8_6_sva;
  reg [15:0] psumIn_reg_array_7_7_sva;
  reg [7:0] weight_reg_array_7_6_sva;
  reg [7:0] inputIn_reg_array_8_5_sva;
  reg [15:0] psumIn_reg_array_7_6_sva;
  reg [7:0] weight_reg_array_7_5_sva;
  reg [7:0] inputIn_reg_array_8_4_sva;
  reg [15:0] psumIn_reg_array_7_5_sva;
  reg [7:0] weight_reg_array_7_4_sva;
  reg [7:0] inputIn_reg_array_8_3_sva;
  reg [15:0] psumIn_reg_array_7_4_sva;
  reg [7:0] weight_reg_array_7_3_sva;
  reg [7:0] inputIn_reg_array_8_2_sva;
  reg [15:0] psumIn_reg_array_7_3_sva;
  reg [7:0] weight_reg_array_7_2_sva;
  reg [7:0] inputIn_reg_array_8_1_sva;
  reg [15:0] psumIn_reg_array_7_2_sva;
  reg [7:0] weight_reg_array_7_1_sva;
  reg [15:0] psumIn_reg_array_7_1_sva;
  reg [7:0] weight_reg_array_7_0_sva;
  reg [7:0] inputIn_reg_array_7_15_sva;
  reg [15:0] psumIn_reg_array_6_16_sva;
  reg [7:0] weight_reg_array_6_15_sva;
  reg [7:0] inputIn_reg_array_7_14_sva;
  reg [15:0] psumIn_reg_array_6_15_sva;
  reg [7:0] weight_reg_array_6_14_sva;
  reg [7:0] inputIn_reg_array_7_13_sva;
  reg [15:0] psumIn_reg_array_6_14_sva;
  reg [7:0] weight_reg_array_6_13_sva;
  reg [7:0] inputIn_reg_array_7_12_sva;
  reg [15:0] psumIn_reg_array_6_13_sva;
  reg [7:0] weight_reg_array_6_12_sva;
  reg [7:0] inputIn_reg_array_7_11_sva;
  reg [15:0] psumIn_reg_array_6_12_sva;
  reg [7:0] weight_reg_array_6_11_sva;
  reg [7:0] inputIn_reg_array_7_10_sva;
  reg [15:0] psumIn_reg_array_6_11_sva;
  reg [7:0] weight_reg_array_6_10_sva;
  reg [7:0] inputIn_reg_array_7_9_sva;
  reg [15:0] psumIn_reg_array_6_10_sva;
  reg [7:0] weight_reg_array_6_9_sva;
  reg [7:0] inputIn_reg_array_7_8_sva;
  reg [15:0] psumIn_reg_array_6_9_sva;
  reg [7:0] weight_reg_array_6_8_sva;
  reg [7:0] inputIn_reg_array_7_7_sva;
  reg [15:0] psumIn_reg_array_6_8_sva;
  reg [7:0] weight_reg_array_6_7_sva;
  reg [7:0] inputIn_reg_array_7_6_sva;
  reg [15:0] psumIn_reg_array_6_7_sva;
  reg [7:0] weight_reg_array_6_6_sva;
  reg [7:0] inputIn_reg_array_7_5_sva;
  reg [15:0] psumIn_reg_array_6_6_sva;
  reg [7:0] weight_reg_array_6_5_sva;
  reg [7:0] inputIn_reg_array_7_4_sva;
  reg [15:0] psumIn_reg_array_6_5_sva;
  reg [7:0] weight_reg_array_6_4_sva;
  reg [7:0] inputIn_reg_array_7_3_sva;
  reg [15:0] psumIn_reg_array_6_4_sva;
  reg [7:0] weight_reg_array_6_3_sva;
  reg [7:0] inputIn_reg_array_7_2_sva;
  reg [15:0] psumIn_reg_array_6_3_sva;
  reg [7:0] weight_reg_array_6_2_sva;
  reg [7:0] inputIn_reg_array_7_1_sva;
  reg [15:0] psumIn_reg_array_6_2_sva;
  reg [7:0] weight_reg_array_6_1_sva;
  reg [15:0] psumIn_reg_array_6_1_sva;
  reg [7:0] weight_reg_array_6_0_sva;
  reg [7:0] inputIn_reg_array_6_15_sva;
  reg [15:0] psumIn_reg_array_5_16_sva;
  reg [7:0] weight_reg_array_5_15_sva;
  reg [7:0] inputIn_reg_array_6_14_sva;
  reg [15:0] psumIn_reg_array_5_15_sva;
  reg [7:0] weight_reg_array_5_14_sva;
  reg [7:0] inputIn_reg_array_6_13_sva;
  reg [15:0] psumIn_reg_array_5_14_sva;
  reg [7:0] weight_reg_array_5_13_sva;
  reg [7:0] inputIn_reg_array_6_12_sva;
  reg [15:0] psumIn_reg_array_5_13_sva;
  reg [7:0] weight_reg_array_5_12_sva;
  reg [7:0] inputIn_reg_array_6_11_sva;
  reg [15:0] psumIn_reg_array_5_12_sva;
  reg [7:0] weight_reg_array_5_11_sva;
  reg [7:0] inputIn_reg_array_6_10_sva;
  reg [15:0] psumIn_reg_array_5_11_sva;
  reg [7:0] weight_reg_array_5_10_sva;
  reg [7:0] inputIn_reg_array_6_9_sva;
  reg [15:0] psumIn_reg_array_5_10_sva;
  reg [7:0] weight_reg_array_5_9_sva;
  reg [7:0] inputIn_reg_array_6_8_sva;
  reg [15:0] psumIn_reg_array_5_9_sva;
  reg [7:0] weight_reg_array_5_8_sva;
  reg [7:0] inputIn_reg_array_6_7_sva;
  reg [15:0] psumIn_reg_array_5_8_sva;
  reg [7:0] weight_reg_array_5_7_sva;
  reg [7:0] inputIn_reg_array_6_6_sva;
  reg [15:0] psumIn_reg_array_5_7_sva;
  reg [7:0] weight_reg_array_5_6_sva;
  reg [7:0] inputIn_reg_array_6_5_sva;
  reg [15:0] psumIn_reg_array_5_6_sva;
  reg [7:0] weight_reg_array_5_5_sva;
  reg [7:0] inputIn_reg_array_6_4_sva;
  reg [15:0] psumIn_reg_array_5_5_sva;
  reg [7:0] weight_reg_array_5_4_sva;
  reg [7:0] inputIn_reg_array_6_3_sva;
  reg [15:0] psumIn_reg_array_5_4_sva;
  reg [7:0] weight_reg_array_5_3_sva;
  reg [7:0] inputIn_reg_array_6_2_sva;
  reg [15:0] psumIn_reg_array_5_3_sva;
  reg [7:0] weight_reg_array_5_2_sva;
  reg [7:0] inputIn_reg_array_6_1_sva;
  reg [15:0] psumIn_reg_array_5_2_sva;
  reg [7:0] weight_reg_array_5_1_sva;
  reg [15:0] psumIn_reg_array_5_1_sva;
  reg [7:0] weight_reg_array_5_0_sva;
  reg [7:0] inputIn_reg_array_5_15_sva;
  reg [15:0] psumIn_reg_array_4_16_sva;
  reg [7:0] weight_reg_array_4_15_sva;
  reg [7:0] inputIn_reg_array_5_14_sva;
  reg [15:0] psumIn_reg_array_4_15_sva;
  reg [7:0] weight_reg_array_4_14_sva;
  reg [7:0] inputIn_reg_array_5_13_sva;
  reg [15:0] psumIn_reg_array_4_14_sva;
  reg [7:0] weight_reg_array_4_13_sva;
  reg [7:0] inputIn_reg_array_5_12_sva;
  reg [15:0] psumIn_reg_array_4_13_sva;
  reg [7:0] weight_reg_array_4_12_sva;
  reg [7:0] inputIn_reg_array_5_11_sva;
  reg [15:0] psumIn_reg_array_4_12_sva;
  reg [7:0] weight_reg_array_4_11_sva;
  reg [7:0] inputIn_reg_array_5_10_sva;
  reg [15:0] psumIn_reg_array_4_11_sva;
  reg [7:0] weight_reg_array_4_10_sva;
  reg [7:0] inputIn_reg_array_5_9_sva;
  reg [15:0] psumIn_reg_array_4_10_sva;
  reg [7:0] weight_reg_array_4_9_sva;
  reg [7:0] inputIn_reg_array_5_8_sva;
  reg [15:0] psumIn_reg_array_4_9_sva;
  reg [7:0] weight_reg_array_4_8_sva;
  reg [7:0] inputIn_reg_array_5_7_sva;
  reg [15:0] psumIn_reg_array_4_8_sva;
  reg [7:0] weight_reg_array_4_7_sva;
  reg [7:0] inputIn_reg_array_5_6_sva;
  reg [15:0] psumIn_reg_array_4_7_sva;
  reg [7:0] weight_reg_array_4_6_sva;
  reg [7:0] inputIn_reg_array_5_5_sva;
  reg [15:0] psumIn_reg_array_4_6_sva;
  reg [7:0] weight_reg_array_4_5_sva;
  reg [7:0] inputIn_reg_array_5_4_sva;
  reg [15:0] psumIn_reg_array_4_5_sva;
  reg [7:0] weight_reg_array_4_4_sva;
  reg [7:0] inputIn_reg_array_5_3_sva;
  reg [15:0] psumIn_reg_array_4_4_sva;
  reg [7:0] weight_reg_array_4_3_sva;
  reg [7:0] inputIn_reg_array_5_2_sva;
  reg [15:0] psumIn_reg_array_4_3_sva;
  reg [7:0] weight_reg_array_4_2_sva;
  reg [7:0] inputIn_reg_array_5_1_sva;
  reg [15:0] psumIn_reg_array_4_2_sva;
  reg [7:0] weight_reg_array_4_1_sva;
  reg [15:0] psumIn_reg_array_4_1_sva;
  reg [7:0] weight_reg_array_4_0_sva;
  reg [7:0] inputIn_reg_array_4_15_sva;
  reg [15:0] psumIn_reg_array_3_16_sva;
  reg [7:0] weight_reg_array_3_15_sva;
  reg [7:0] inputIn_reg_array_4_14_sva;
  reg [15:0] psumIn_reg_array_3_15_sva;
  reg [7:0] weight_reg_array_3_14_sva;
  reg [7:0] inputIn_reg_array_4_13_sva;
  reg [15:0] psumIn_reg_array_3_14_sva;
  reg [7:0] weight_reg_array_3_13_sva;
  reg [7:0] inputIn_reg_array_4_12_sva;
  reg [15:0] psumIn_reg_array_3_13_sva;
  reg [7:0] weight_reg_array_3_12_sva;
  reg [7:0] inputIn_reg_array_4_11_sva;
  reg [15:0] psumIn_reg_array_3_12_sva;
  reg [7:0] weight_reg_array_3_11_sva;
  reg [7:0] inputIn_reg_array_4_10_sva;
  reg [15:0] psumIn_reg_array_3_11_sva;
  reg [7:0] weight_reg_array_3_10_sva;
  reg [7:0] inputIn_reg_array_4_9_sva;
  reg [15:0] psumIn_reg_array_3_10_sva;
  reg [7:0] weight_reg_array_3_9_sva;
  reg [7:0] inputIn_reg_array_4_8_sva;
  reg [15:0] psumIn_reg_array_3_9_sva;
  reg [7:0] weight_reg_array_3_8_sva;
  reg [7:0] inputIn_reg_array_4_7_sva;
  reg [15:0] psumIn_reg_array_3_8_sva;
  reg [7:0] weight_reg_array_3_7_sva;
  reg [7:0] inputIn_reg_array_4_6_sva;
  reg [15:0] psumIn_reg_array_3_7_sva;
  reg [7:0] weight_reg_array_3_6_sva;
  reg [7:0] inputIn_reg_array_4_5_sva;
  reg [15:0] psumIn_reg_array_3_6_sva;
  reg [7:0] weight_reg_array_3_5_sva;
  reg [7:0] inputIn_reg_array_4_4_sva;
  reg [15:0] psumIn_reg_array_3_5_sva;
  reg [7:0] weight_reg_array_3_4_sva;
  reg [7:0] inputIn_reg_array_4_3_sva;
  reg [15:0] psumIn_reg_array_3_4_sva;
  reg [7:0] weight_reg_array_3_3_sva;
  reg [7:0] inputIn_reg_array_4_2_sva;
  reg [15:0] psumIn_reg_array_3_3_sva;
  reg [7:0] weight_reg_array_3_2_sva;
  reg [7:0] inputIn_reg_array_4_1_sva;
  reg [15:0] psumIn_reg_array_3_2_sva;
  reg [7:0] weight_reg_array_3_1_sva;
  reg [15:0] psumIn_reg_array_3_1_sva;
  reg [7:0] weight_reg_array_3_0_sva;
  reg [7:0] inputIn_reg_array_3_15_sva;
  reg [15:0] psumIn_reg_array_2_16_sva;
  reg [7:0] weight_reg_array_2_15_sva;
  reg [7:0] inputIn_reg_array_3_14_sva;
  reg [15:0] psumIn_reg_array_2_15_sva;
  reg [7:0] weight_reg_array_2_14_sva;
  reg [7:0] inputIn_reg_array_3_13_sva;
  reg [15:0] psumIn_reg_array_2_14_sva;
  reg [7:0] weight_reg_array_2_13_sva;
  reg [7:0] inputIn_reg_array_3_12_sva;
  reg [15:0] psumIn_reg_array_2_13_sva;
  reg [7:0] weight_reg_array_2_12_sva;
  reg [7:0] inputIn_reg_array_3_11_sva;
  reg [15:0] psumIn_reg_array_2_12_sva;
  reg [7:0] weight_reg_array_2_11_sva;
  reg [7:0] inputIn_reg_array_3_10_sva;
  reg [15:0] psumIn_reg_array_2_11_sva;
  reg [7:0] weight_reg_array_2_10_sva;
  reg [7:0] inputIn_reg_array_3_9_sva;
  reg [15:0] psumIn_reg_array_2_10_sva;
  reg [7:0] weight_reg_array_2_9_sva;
  reg [7:0] inputIn_reg_array_3_8_sva;
  reg [15:0] psumIn_reg_array_2_9_sva;
  reg [7:0] weight_reg_array_2_8_sva;
  reg [7:0] inputIn_reg_array_3_7_sva;
  reg [15:0] psumIn_reg_array_2_8_sva;
  reg [7:0] weight_reg_array_2_7_sva;
  reg [7:0] inputIn_reg_array_3_6_sva;
  reg [15:0] psumIn_reg_array_2_7_sva;
  reg [7:0] weight_reg_array_2_6_sva;
  reg [7:0] inputIn_reg_array_3_5_sva;
  reg [15:0] psumIn_reg_array_2_6_sva;
  reg [7:0] weight_reg_array_2_5_sva;
  reg [7:0] inputIn_reg_array_3_4_sva;
  reg [15:0] psumIn_reg_array_2_5_sva;
  reg [7:0] weight_reg_array_2_4_sva;
  reg [7:0] inputIn_reg_array_3_3_sva;
  reg [15:0] psumIn_reg_array_2_4_sva;
  reg [7:0] weight_reg_array_2_3_sva;
  reg [7:0] inputIn_reg_array_3_2_sva;
  reg [15:0] psumIn_reg_array_2_3_sva;
  reg [7:0] weight_reg_array_2_2_sva;
  reg [7:0] inputIn_reg_array_3_1_sva;
  reg [15:0] psumIn_reg_array_2_2_sva;
  reg [7:0] weight_reg_array_2_1_sva;
  reg [15:0] psumIn_reg_array_2_1_sva;
  reg [7:0] weight_reg_array_2_0_sva;
  reg [7:0] inputIn_reg_array_2_15_sva;
  reg [15:0] psumIn_reg_array_1_16_sva;
  reg [7:0] weight_reg_array_1_15_sva;
  reg [7:0] inputIn_reg_array_2_14_sva;
  reg [15:0] psumIn_reg_array_1_15_sva;
  reg [7:0] weight_reg_array_1_14_sva;
  reg [7:0] inputIn_reg_array_2_13_sva;
  reg [15:0] psumIn_reg_array_1_14_sva;
  reg [7:0] weight_reg_array_1_13_sva;
  reg [7:0] inputIn_reg_array_2_12_sva;
  reg [15:0] psumIn_reg_array_1_13_sva;
  reg [7:0] weight_reg_array_1_12_sva;
  reg [7:0] inputIn_reg_array_2_11_sva;
  reg [15:0] psumIn_reg_array_1_12_sva;
  reg [7:0] weight_reg_array_1_11_sva;
  reg [7:0] inputIn_reg_array_2_10_sva;
  reg [15:0] psumIn_reg_array_1_11_sva;
  reg [7:0] weight_reg_array_1_10_sva;
  reg [7:0] inputIn_reg_array_2_9_sva;
  reg [15:0] psumIn_reg_array_1_10_sva;
  reg [7:0] weight_reg_array_1_9_sva;
  reg [7:0] inputIn_reg_array_2_8_sva;
  reg [15:0] psumIn_reg_array_1_9_sva;
  reg [7:0] weight_reg_array_1_8_sva;
  reg [7:0] inputIn_reg_array_2_7_sva;
  reg [15:0] psumIn_reg_array_1_8_sva;
  reg [7:0] weight_reg_array_1_7_sva;
  reg [7:0] inputIn_reg_array_2_6_sva;
  reg [15:0] psumIn_reg_array_1_7_sva;
  reg [7:0] weight_reg_array_1_6_sva;
  reg [7:0] inputIn_reg_array_2_5_sva;
  reg [15:0] psumIn_reg_array_1_6_sva;
  reg [7:0] weight_reg_array_1_5_sva;
  reg [7:0] inputIn_reg_array_2_4_sva;
  reg [15:0] psumIn_reg_array_1_5_sva;
  reg [7:0] weight_reg_array_1_4_sva;
  reg [7:0] inputIn_reg_array_2_3_sva;
  reg [15:0] psumIn_reg_array_1_4_sva;
  reg [7:0] weight_reg_array_1_3_sva;
  reg [7:0] inputIn_reg_array_2_2_sva;
  reg [15:0] psumIn_reg_array_1_3_sva;
  reg [7:0] weight_reg_array_1_2_sva;
  reg [7:0] inputIn_reg_array_2_1_sva;
  reg [15:0] psumIn_reg_array_1_2_sva;
  reg [7:0] weight_reg_array_1_1_sva;
  reg [15:0] psumIn_reg_array_1_1_sva;
  reg [7:0] weight_reg_array_1_0_sva;
  reg [7:0] inputIn_reg_array_1_15_sva;
  reg [7:0] weight_reg_array_0_15_sva;
  reg [7:0] inputIn_reg_array_1_14_sva;
  reg [7:0] weight_reg_array_0_14_sva;
  reg [7:0] inputIn_reg_array_1_13_sva;
  reg [7:0] weight_reg_array_0_13_sva;
  reg [7:0] inputIn_reg_array_1_12_sva;
  reg [7:0] weight_reg_array_0_12_sva;
  reg [7:0] inputIn_reg_array_1_11_sva;
  reg [7:0] weight_reg_array_0_11_sva;
  reg [7:0] inputIn_reg_array_1_10_sva;
  reg [7:0] weight_reg_array_0_10_sva;
  reg [7:0] inputIn_reg_array_1_9_sva;
  reg [7:0] weight_reg_array_0_9_sva;
  reg [7:0] inputIn_reg_array_1_8_sva;
  reg [7:0] weight_reg_array_0_8_sva;
  reg [7:0] inputIn_reg_array_1_7_sva;
  reg [7:0] weight_reg_array_0_7_sva;
  reg [7:0] inputIn_reg_array_1_6_sva;
  reg [7:0] weight_reg_array_0_6_sva;
  reg [7:0] inputIn_reg_array_1_5_sva;
  reg [7:0] weight_reg_array_0_5_sva;
  reg [7:0] inputIn_reg_array_1_4_sva;
  reg [7:0] weight_reg_array_0_4_sva;
  reg [7:0] inputIn_reg_array_1_3_sva;
  reg [7:0] weight_reg_array_0_3_sva;
  reg [7:0] inputIn_reg_array_1_2_sva;
  reg [7:0] weight_reg_array_0_2_sva;
  reg [7:0] inputIn_reg_array_1_1_sva;
  reg [7:0] weight_reg_array_0_1_sva;
  reg [15:0] psumIn_reg_array_16_16_sva;
  reg [15:0] num_pixels_lpi_1_dfm;
  reg [47:0] loopIndicesIn_crt_lpi_1_dfm;
  reg [127:0] step_in_col_value_lpi_1_dfm;
  reg [7:0] step_if_3_for_1_acc_5_cse_sva_1;
  wire [8:0] nl_step_if_3_for_1_acc_5_cse_sva_1;
  reg [7:0] step_if_3_for_1_acc_5_cse_sva_2;
  reg step_if_3_if_step_if_3_if_and_1_itm_1;
  reg step_if_3_if_step_if_3_if_and_1_itm_2;
  reg [47:0] paramsIn_crt_lpi_1_dfm_127_80;
  wire [15:0] num_pixels_lpi_1_dfm_mx0;
  wire [47:0] paramsIn_crt_lpi_1_dfm_127_80_mx0;
  wire [15:0] step_step_sva_3;
  wire [16:0] nl_step_step_sva_3;
  wire psumIn_reg_array_and_cse;
  wire num_pixels_and_cse;
  wire weight_reg_array_and_cse;
  wire weight_reg_array_and_16_cse;
  wire weight_reg_array_and_32_cse;
  wire weight_reg_array_and_48_cse;
  wire weight_reg_array_and_64_cse;
  wire weight_reg_array_and_80_cse;
  wire weight_reg_array_and_96_cse;
  wire weight_reg_array_and_112_cse;
  wire weight_reg_array_and_128_cse;
  wire weight_reg_array_and_144_cse;
  wire weight_reg_array_and_160_cse;
  wire weight_reg_array_and_176_cse;
  wire weight_reg_array_and_192_cse;
  wire weight_reg_array_and_208_cse;
  wire weight_reg_array_and_224_cse;
  wire weight_reg_array_and_240_cse;
  wire step_if_3_if_and_1_cse;
  wire step_if_3_if_and_2_cse;
  wire step_if_1_acc_itm_16_1;
  wire operator_16_false_acc_itm_12_1;
  wire step_acc_4_itm_16_1;
  wire step_acc_itm_16;

  wire[0:0] and_6_nl;
  wire[0:0] asn_inputIn_reg_array_1_1_sva_nor_nl;
  wire[0:0] nand_1_nl;
  wire[16:0] step_if_1_acc_nl;
  wire[18:0] nl_step_if_1_acc_nl;
  wire[12:0] operator_16_false_acc_nl;
  wire[13:0] nl_operator_16_false_acc_nl;
  wire[15:0] num_pixels_mul_nl;
  wire[31:0] nl_num_pixels_mul_nl;
  wire[16:0] step_acc_4_nl;
  wire[17:0] nl_step_acc_4_nl;
  wire[0:0] step_not_10_nl;
  wire[16:0] step_acc_nl;
  wire[17:0] nl_step_acc_nl;
  wire[16:0] step_acc_6_nl;
  wire[17:0] nl_step_acc_6_nl;

  // Interconnect Declarations for Component Instantiations 
  wire[0:0] step_if_2_aelse_1_not_18_nl;
  wire [15:0] nl_accum_fifo_15_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_18_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_15_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_15_i_q_d_mxwt, (step_if_2_aelse_1_not_18_nl));
  wire[0:0] psumIn_reg_array_and_256_nl;
  wire [15:0] nl_output_fifo_0_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_256_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_0_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_1_sva,
      pe_array_0_0_run_cmp_16_psum_out_rsc_z, psumIn_reg_array_and_256_nl);
  wire[0:0] step_if_2_aelse_1_not_19_nl;
  wire [15:0] nl_accum_fifo_14_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_19_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_14_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_14_i_q_d_mxwt, (step_if_2_aelse_1_not_19_nl));
  wire[0:0] psumIn_reg_array_and_257_nl;
  wire [15:0] nl_output_fifo_1_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_257_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_1_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_2_sva,
      pe_array_0_0_run_cmp_15_psum_out_rsc_z, psumIn_reg_array_and_257_nl);
  wire[0:0] step_if_2_aelse_1_not_20_nl;
  wire [15:0] nl_accum_fifo_13_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_20_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_13_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_13_i_q_d_mxwt, (step_if_2_aelse_1_not_20_nl));
  wire[0:0] psumIn_reg_array_and_258_nl;
  wire [15:0] nl_output_fifo_2_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_258_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_2_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_3_sva,
      pe_array_0_0_run_cmp_14_psum_out_rsc_z, psumIn_reg_array_and_258_nl);
  wire[0:0] step_if_2_aelse_1_not_21_nl;
  wire [15:0] nl_accum_fifo_12_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_21_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_12_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_12_i_q_d_mxwt, (step_if_2_aelse_1_not_21_nl));
  wire[0:0] psumIn_reg_array_and_259_nl;
  wire [15:0] nl_output_fifo_3_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_259_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_3_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_4_sva,
      pe_array_0_0_run_cmp_13_psum_out_rsc_z, psumIn_reg_array_and_259_nl);
  wire[0:0] step_if_2_aelse_1_not_22_nl;
  wire [15:0] nl_accum_fifo_11_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_22_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_11_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_11_i_q_d_mxwt, (step_if_2_aelse_1_not_22_nl));
  wire[0:0] psumIn_reg_array_and_260_nl;
  wire [15:0] nl_output_fifo_4_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_260_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_4_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_5_sva,
      pe_array_0_0_run_cmp_12_psum_out_rsc_z, psumIn_reg_array_and_260_nl);
  wire[0:0] step_if_2_aelse_1_not_23_nl;
  wire [15:0] nl_accum_fifo_10_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_23_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_10_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_10_i_q_d_mxwt, (step_if_2_aelse_1_not_23_nl));
  wire[0:0] psumIn_reg_array_and_261_nl;
  wire [15:0] nl_output_fifo_5_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_261_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_5_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_6_sva,
      pe_array_0_0_run_cmp_11_psum_out_rsc_z, psumIn_reg_array_and_261_nl);
  wire[0:0] step_if_2_aelse_1_not_24_nl;
  wire [15:0] nl_accum_fifo_9_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_24_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_9_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_9_i_q_d_mxwt, (step_if_2_aelse_1_not_24_nl));
  wire[0:0] psumIn_reg_array_and_262_nl;
  wire [15:0] nl_output_fifo_6_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_262_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_6_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_7_sva,
      pe_array_0_0_run_cmp_10_psum_out_rsc_z, psumIn_reg_array_and_262_nl);
  wire[0:0] step_if_2_aelse_1_not_25_nl;
  wire [15:0] nl_accum_fifo_8_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_25_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_8_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_8_i_q_d_mxwt, (step_if_2_aelse_1_not_25_nl));
  wire[0:0] psumIn_reg_array_and_263_nl;
  wire [15:0] nl_output_fifo_7_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_263_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_7_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_8_sva,
      pe_array_0_0_run_cmp_9_psum_out_rsc_z, psumIn_reg_array_and_263_nl);
  wire[0:0] step_if_2_aelse_1_not_26_nl;
  wire [15:0] nl_accum_fifo_7_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_26_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_7_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_7_i_q_d_mxwt, (step_if_2_aelse_1_not_26_nl));
  wire[0:0] psumIn_reg_array_and_264_nl;
  wire [15:0] nl_output_fifo_8_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_264_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_8_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_9_sva,
      pe_array_0_0_run_cmp_8_psum_out_rsc_z, psumIn_reg_array_and_264_nl);
  wire[0:0] step_if_2_aelse_1_not_27_nl;
  wire [15:0] nl_accum_fifo_6_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_27_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_6_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_6_i_q_d_mxwt, (step_if_2_aelse_1_not_27_nl));
  wire[0:0] psumIn_reg_array_and_265_nl;
  wire [15:0] nl_output_fifo_9_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_265_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_9_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_10_sva,
      pe_array_0_0_run_cmp_7_psum_out_rsc_z, psumIn_reg_array_and_265_nl);
  wire[0:0] step_if_2_aelse_1_not_28_nl;
  wire [15:0] nl_accum_fifo_5_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_28_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_5_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_5_i_q_d_mxwt, (step_if_2_aelse_1_not_28_nl));
  wire[0:0] psumIn_reg_array_and_266_nl;
  wire [15:0] nl_output_fifo_10_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_266_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_10_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_11_sva,
      pe_array_0_0_run_cmp_6_psum_out_rsc_z, psumIn_reg_array_and_266_nl);
  wire[0:0] step_if_2_aelse_1_not_29_nl;
  wire [15:0] nl_accum_fifo_4_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_29_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_4_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_4_i_q_d_mxwt, (step_if_2_aelse_1_not_29_nl));
  wire[0:0] psumIn_reg_array_and_267_nl;
  wire [15:0] nl_output_fifo_11_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_267_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_11_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_12_sva,
      pe_array_0_0_run_cmp_5_psum_out_rsc_z, psumIn_reg_array_and_267_nl);
  wire[0:0] step_if_2_aelse_1_not_30_nl;
  wire [15:0] nl_accum_fifo_3_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_30_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_3_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_3_i_q_d_mxwt, (step_if_2_aelse_1_not_30_nl));
  wire[0:0] psumIn_reg_array_and_268_nl;
  wire [15:0] nl_output_fifo_12_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_268_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_12_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_13_sva,
      pe_array_0_0_run_cmp_4_psum_out_rsc_z, psumIn_reg_array_and_268_nl);
  wire[0:0] step_if_2_aelse_1_not_31_nl;
  wire [15:0] nl_accum_fifo_2_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_31_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_2_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_2_i_q_d_mxwt, (step_if_2_aelse_1_not_31_nl));
  wire[0:0] psumIn_reg_array_and_269_nl;
  wire [15:0] nl_output_fifo_13_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_269_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_13_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_14_sva,
      pe_array_0_0_run_cmp_3_psum_out_rsc_z, psumIn_reg_array_and_269_nl);
  wire[0:0] step_if_2_aelse_1_not_32_nl;
  wire [15:0] nl_accum_fifo_1_rsci_input_rsc_dat;
  assign step_if_2_aelse_1_not_32_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_1_rsci_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_1_i_q_d_mxwt, (step_if_2_aelse_1_not_32_nl));
  wire[0:0] psumIn_reg_array_and_270_nl;
  wire [15:0] nl_output_fifo_14_rsci_input_rsc_dat;
  assign psumIn_reg_array_and_270_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_output_fifo_14_rsci_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_15_sva,
      pe_array_0_0_run_cmp_2_psum_out_rsc_z, psumIn_reg_array_and_270_nl);
  wire [7:0] nl_input_fifo_15_rsci_input_rsc_dat;
  assign nl_input_fifo_15_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[127:120];
  wire [7:0] nl_input_fifo_14_rsci_input_rsc_dat;
  assign nl_input_fifo_14_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[119:112];
  wire [7:0] nl_input_fifo_13_rsci_input_rsc_dat;
  assign nl_input_fifo_13_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[111:104];
  wire [7:0] nl_input_fifo_12_rsci_input_rsc_dat;
  assign nl_input_fifo_12_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[103:96];
  wire [7:0] nl_input_fifo_11_rsci_input_rsc_dat;
  assign nl_input_fifo_11_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[95:88];
  wire [7:0] nl_input_fifo_10_rsci_input_rsc_dat;
  assign nl_input_fifo_10_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[87:80];
  wire [7:0] nl_input_fifo_9_rsci_input_rsc_dat;
  assign nl_input_fifo_9_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[79:72];
  wire [7:0] nl_input_fifo_8_rsci_input_rsc_dat;
  assign nl_input_fifo_8_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[71:64];
  wire [7:0] nl_input_fifo_7_rsci_input_rsc_dat;
  assign nl_input_fifo_7_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[63:56];
  wire [7:0] nl_input_fifo_6_rsci_input_rsc_dat;
  assign nl_input_fifo_6_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[55:48];
  wire [7:0] nl_input_fifo_5_rsci_input_rsc_dat;
  assign nl_input_fifo_5_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[47:40];
  wire [7:0] nl_input_fifo_4_rsci_input_rsc_dat;
  assign nl_input_fifo_4_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[39:32];
  wire [7:0] nl_input_fifo_3_rsci_input_rsc_dat;
  assign nl_input_fifo_3_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[31:24];
  wire [7:0] nl_input_fifo_2_rsci_input_rsc_dat;
  assign nl_input_fifo_2_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[23:16];
  wire [7:0] nl_input_fifo_1_rsci_input_rsc_dat;
  assign nl_input_fifo_1_rsci_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[15:8];
  wire [7:0] nl_pe_array_0_0_run_cmp_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_weight_rsc_dat = weight_reg_array_0_0_sva;
  wire[0:0] inputIn_reg_array_and_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_1_input_in_rsc_dat;
  assign inputIn_reg_array_and_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_1_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_15_sva,
      pe_array_0_0_run_cmp_2_input_out_rsc_z, inputIn_reg_array_and_nl);
  wire[0:0] psumIn_reg_array_and_271_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_1_psum_in_rsc_dat;
  assign psumIn_reg_array_and_271_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_1_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_16_sva,
      pe_array_0_0_run_cmp_17_psum_out_rsc_z, psumIn_reg_array_and_271_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_1_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_1_weight_rsc_dat = weight_reg_array_15_15_sva;
  wire[0:0] inputIn_reg_array_and_241_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_2_input_in_rsc_dat;
  assign inputIn_reg_array_and_241_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_2_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_14_sva,
      pe_array_0_0_run_cmp_3_input_out_rsc_z, inputIn_reg_array_and_241_nl);
  wire[0:0] psumIn_reg_array_and_272_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_2_psum_in_rsc_dat;
  assign psumIn_reg_array_and_272_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_2_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_15_sva,
      pe_array_0_0_run_cmp_18_psum_out_rsc_z, psumIn_reg_array_and_272_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_2_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_2_weight_rsc_dat = weight_reg_array_15_14_sva;
  wire[0:0] inputIn_reg_array_and_242_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_3_input_in_rsc_dat;
  assign inputIn_reg_array_and_242_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_3_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_13_sva,
      pe_array_0_0_run_cmp_4_input_out_rsc_z, inputIn_reg_array_and_242_nl);
  wire[0:0] psumIn_reg_array_and_273_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_3_psum_in_rsc_dat;
  assign psumIn_reg_array_and_273_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_3_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_14_sva,
      pe_array_0_0_run_cmp_19_psum_out_rsc_z, psumIn_reg_array_and_273_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_3_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_3_weight_rsc_dat = weight_reg_array_15_13_sva;
  wire[0:0] inputIn_reg_array_and_243_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_4_input_in_rsc_dat;
  assign inputIn_reg_array_and_243_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_4_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_12_sva,
      pe_array_0_0_run_cmp_5_input_out_rsc_z, inputIn_reg_array_and_243_nl);
  wire[0:0] psumIn_reg_array_and_274_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_4_psum_in_rsc_dat;
  assign psumIn_reg_array_and_274_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_4_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_13_sva,
      pe_array_0_0_run_cmp_20_psum_out_rsc_z, psumIn_reg_array_and_274_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_4_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_4_weight_rsc_dat = weight_reg_array_15_12_sva;
  wire[0:0] inputIn_reg_array_and_244_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_5_input_in_rsc_dat;
  assign inputIn_reg_array_and_244_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_5_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_11_sva,
      pe_array_0_0_run_cmp_6_input_out_rsc_z, inputIn_reg_array_and_244_nl);
  wire[0:0] psumIn_reg_array_and_275_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_5_psum_in_rsc_dat;
  assign psumIn_reg_array_and_275_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_5_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_12_sva,
      pe_array_0_0_run_cmp_21_psum_out_rsc_z, psumIn_reg_array_and_275_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_5_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_5_weight_rsc_dat = weight_reg_array_15_11_sva;
  wire[0:0] inputIn_reg_array_and_245_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_6_input_in_rsc_dat;
  assign inputIn_reg_array_and_245_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_6_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_10_sva,
      pe_array_0_0_run_cmp_7_input_out_rsc_z, inputIn_reg_array_and_245_nl);
  wire[0:0] psumIn_reg_array_and_276_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_6_psum_in_rsc_dat;
  assign psumIn_reg_array_and_276_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_6_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_11_sva,
      pe_array_0_0_run_cmp_22_psum_out_rsc_z, psumIn_reg_array_and_276_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_6_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_6_weight_rsc_dat = weight_reg_array_15_10_sva;
  wire[0:0] inputIn_reg_array_and_246_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_7_input_in_rsc_dat;
  assign inputIn_reg_array_and_246_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_7_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_9_sva,
      pe_array_0_0_run_cmp_8_input_out_rsc_z, inputIn_reg_array_and_246_nl);
  wire[0:0] psumIn_reg_array_and_277_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_7_psum_in_rsc_dat;
  assign psumIn_reg_array_and_277_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_7_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_10_sva,
      pe_array_0_0_run_cmp_23_psum_out_rsc_z, psumIn_reg_array_and_277_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_7_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_7_weight_rsc_dat = weight_reg_array_15_9_sva;
  wire[0:0] inputIn_reg_array_and_247_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_8_input_in_rsc_dat;
  assign inputIn_reg_array_and_247_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_8_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_8_sva,
      pe_array_0_0_run_cmp_9_input_out_rsc_z, inputIn_reg_array_and_247_nl);
  wire[0:0] psumIn_reg_array_and_278_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_8_psum_in_rsc_dat;
  assign psumIn_reg_array_and_278_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_8_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_9_sva,
      pe_array_0_0_run_cmp_24_psum_out_rsc_z, psumIn_reg_array_and_278_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_8_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_8_weight_rsc_dat = weight_reg_array_15_8_sva;
  wire[0:0] inputIn_reg_array_and_248_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_9_input_in_rsc_dat;
  assign inputIn_reg_array_and_248_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_9_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_7_sva,
      pe_array_0_0_run_cmp_10_input_out_rsc_z, inputIn_reg_array_and_248_nl);
  wire[0:0] psumIn_reg_array_and_279_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_9_psum_in_rsc_dat;
  assign psumIn_reg_array_and_279_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_9_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_8_sva,
      pe_array_0_0_run_cmp_25_psum_out_rsc_z, psumIn_reg_array_and_279_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_9_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_9_weight_rsc_dat = weight_reg_array_15_7_sva;
  wire[0:0] inputIn_reg_array_and_249_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_10_input_in_rsc_dat;
  assign inputIn_reg_array_and_249_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_10_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_6_sva,
      pe_array_0_0_run_cmp_11_input_out_rsc_z, inputIn_reg_array_and_249_nl);
  wire[0:0] psumIn_reg_array_and_280_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_10_psum_in_rsc_dat;
  assign psumIn_reg_array_and_280_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_10_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_7_sva,
      pe_array_0_0_run_cmp_26_psum_out_rsc_z, psumIn_reg_array_and_280_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_10_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_10_weight_rsc_dat = weight_reg_array_15_6_sva;
  wire[0:0] inputIn_reg_array_and_250_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_11_input_in_rsc_dat;
  assign inputIn_reg_array_and_250_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_11_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_5_sva,
      pe_array_0_0_run_cmp_12_input_out_rsc_z, inputIn_reg_array_and_250_nl);
  wire[0:0] psumIn_reg_array_and_281_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_11_psum_in_rsc_dat;
  assign psumIn_reg_array_and_281_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_11_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_6_sva,
      pe_array_0_0_run_cmp_27_psum_out_rsc_z, psumIn_reg_array_and_281_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_11_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_11_weight_rsc_dat = weight_reg_array_15_5_sva;
  wire[0:0] inputIn_reg_array_and_251_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_12_input_in_rsc_dat;
  assign inputIn_reg_array_and_251_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_12_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_4_sva,
      pe_array_0_0_run_cmp_13_input_out_rsc_z, inputIn_reg_array_and_251_nl);
  wire[0:0] psumIn_reg_array_and_282_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_12_psum_in_rsc_dat;
  assign psumIn_reg_array_and_282_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_12_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_5_sva,
      pe_array_0_0_run_cmp_28_psum_out_rsc_z, psumIn_reg_array_and_282_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_12_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_12_weight_rsc_dat = weight_reg_array_15_4_sva;
  wire[0:0] inputIn_reg_array_and_252_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_13_input_in_rsc_dat;
  assign inputIn_reg_array_and_252_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_13_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_3_sva,
      pe_array_0_0_run_cmp_14_input_out_rsc_z, inputIn_reg_array_and_252_nl);
  wire[0:0] psumIn_reg_array_and_283_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_13_psum_in_rsc_dat;
  assign psumIn_reg_array_and_283_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_13_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_4_sva,
      pe_array_0_0_run_cmp_29_psum_out_rsc_z, psumIn_reg_array_and_283_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_13_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_13_weight_rsc_dat = weight_reg_array_15_3_sva;
  wire[0:0] inputIn_reg_array_and_253_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_14_input_in_rsc_dat;
  assign inputIn_reg_array_and_253_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_14_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_2_sva,
      pe_array_0_0_run_cmp_15_input_out_rsc_z, inputIn_reg_array_and_253_nl);
  wire[0:0] psumIn_reg_array_and_284_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_14_psum_in_rsc_dat;
  assign psumIn_reg_array_and_284_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_14_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_3_sva,
      pe_array_0_0_run_cmp_30_psum_out_rsc_z, psumIn_reg_array_and_284_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_14_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_14_weight_rsc_dat = weight_reg_array_15_2_sva;
  wire[0:0] inputIn_reg_array_and_254_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_15_input_in_rsc_dat;
  assign inputIn_reg_array_and_254_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_15_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_16_1_sva,
      pe_array_0_0_run_cmp_16_input_out_rsc_z, inputIn_reg_array_and_254_nl);
  wire[0:0] psumIn_reg_array_and_285_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_15_psum_in_rsc_dat;
  assign psumIn_reg_array_and_285_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_15_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_2_sva,
      pe_array_0_0_run_cmp_31_psum_out_rsc_z, psumIn_reg_array_and_285_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_15_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_15_weight_rsc_dat = weight_reg_array_15_1_sva;
  wire[0:0] psumIn_reg_array_and_286_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_16_psum_in_rsc_dat;
  assign psumIn_reg_array_and_286_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_16_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_15_1_sva,
      pe_array_0_0_run_cmp_32_psum_out_rsc_z, psumIn_reg_array_and_286_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_16_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_16_weight_rsc_dat = weight_reg_array_15_0_sva;
  wire[0:0] inputIn_reg_array_and_255_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_17_input_in_rsc_dat;
  assign inputIn_reg_array_and_255_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_17_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_15_sva,
      pe_array_0_0_run_cmp_18_input_out_rsc_z, inputIn_reg_array_and_255_nl);
  wire[0:0] psumIn_reg_array_and_287_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_17_psum_in_rsc_dat;
  assign psumIn_reg_array_and_287_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_17_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_16_sva,
      pe_array_0_0_run_cmp_33_psum_out_rsc_z, psumIn_reg_array_and_287_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_17_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_17_weight_rsc_dat = weight_reg_array_14_15_sva;
  wire[0:0] inputIn_reg_array_and_256_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_18_input_in_rsc_dat;
  assign inputIn_reg_array_and_256_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_18_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_14_sva,
      pe_array_0_0_run_cmp_19_input_out_rsc_z, inputIn_reg_array_and_256_nl);
  wire[0:0] psumIn_reg_array_and_288_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_18_psum_in_rsc_dat;
  assign psumIn_reg_array_and_288_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_18_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_15_sva,
      pe_array_0_0_run_cmp_34_psum_out_rsc_z, psumIn_reg_array_and_288_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_18_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_18_weight_rsc_dat = weight_reg_array_14_14_sva;
  wire[0:0] inputIn_reg_array_and_257_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_19_input_in_rsc_dat;
  assign inputIn_reg_array_and_257_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_19_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_13_sva,
      pe_array_0_0_run_cmp_20_input_out_rsc_z, inputIn_reg_array_and_257_nl);
  wire[0:0] psumIn_reg_array_and_289_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_19_psum_in_rsc_dat;
  assign psumIn_reg_array_and_289_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_19_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_14_sva,
      pe_array_0_0_run_cmp_35_psum_out_rsc_z, psumIn_reg_array_and_289_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_19_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_19_weight_rsc_dat = weight_reg_array_14_13_sva;
  wire[0:0] inputIn_reg_array_and_258_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_20_input_in_rsc_dat;
  assign inputIn_reg_array_and_258_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_20_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_12_sva,
      pe_array_0_0_run_cmp_21_input_out_rsc_z, inputIn_reg_array_and_258_nl);
  wire[0:0] psumIn_reg_array_and_290_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_20_psum_in_rsc_dat;
  assign psumIn_reg_array_and_290_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_20_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_13_sva,
      pe_array_0_0_run_cmp_36_psum_out_rsc_z, psumIn_reg_array_and_290_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_20_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_20_weight_rsc_dat = weight_reg_array_14_12_sva;
  wire[0:0] inputIn_reg_array_and_259_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_21_input_in_rsc_dat;
  assign inputIn_reg_array_and_259_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_21_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_11_sva,
      pe_array_0_0_run_cmp_22_input_out_rsc_z, inputIn_reg_array_and_259_nl);
  wire[0:0] psumIn_reg_array_and_291_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_21_psum_in_rsc_dat;
  assign psumIn_reg_array_and_291_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_21_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_12_sva,
      pe_array_0_0_run_cmp_37_psum_out_rsc_z, psumIn_reg_array_and_291_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_21_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_21_weight_rsc_dat = weight_reg_array_14_11_sva;
  wire[0:0] inputIn_reg_array_and_260_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_22_input_in_rsc_dat;
  assign inputIn_reg_array_and_260_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_22_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_10_sva,
      pe_array_0_0_run_cmp_23_input_out_rsc_z, inputIn_reg_array_and_260_nl);
  wire[0:0] psumIn_reg_array_and_292_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_22_psum_in_rsc_dat;
  assign psumIn_reg_array_and_292_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_22_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_11_sva,
      pe_array_0_0_run_cmp_38_psum_out_rsc_z, psumIn_reg_array_and_292_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_22_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_22_weight_rsc_dat = weight_reg_array_14_10_sva;
  wire[0:0] inputIn_reg_array_and_261_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_23_input_in_rsc_dat;
  assign inputIn_reg_array_and_261_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_23_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_9_sva,
      pe_array_0_0_run_cmp_24_input_out_rsc_z, inputIn_reg_array_and_261_nl);
  wire[0:0] psumIn_reg_array_and_293_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_23_psum_in_rsc_dat;
  assign psumIn_reg_array_and_293_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_23_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_10_sva,
      pe_array_0_0_run_cmp_39_psum_out_rsc_z, psumIn_reg_array_and_293_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_23_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_23_weight_rsc_dat = weight_reg_array_14_9_sva;
  wire[0:0] inputIn_reg_array_and_262_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_24_input_in_rsc_dat;
  assign inputIn_reg_array_and_262_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_24_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_8_sva,
      pe_array_0_0_run_cmp_25_input_out_rsc_z, inputIn_reg_array_and_262_nl);
  wire[0:0] psumIn_reg_array_and_294_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_24_psum_in_rsc_dat;
  assign psumIn_reg_array_and_294_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_24_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_9_sva,
      pe_array_0_0_run_cmp_40_psum_out_rsc_z, psumIn_reg_array_and_294_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_24_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_24_weight_rsc_dat = weight_reg_array_14_8_sva;
  wire[0:0] inputIn_reg_array_and_263_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_25_input_in_rsc_dat;
  assign inputIn_reg_array_and_263_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_25_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_7_sva,
      pe_array_0_0_run_cmp_26_input_out_rsc_z, inputIn_reg_array_and_263_nl);
  wire[0:0] psumIn_reg_array_and_295_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_25_psum_in_rsc_dat;
  assign psumIn_reg_array_and_295_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_25_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_8_sva,
      pe_array_0_0_run_cmp_41_psum_out_rsc_z, psumIn_reg_array_and_295_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_25_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_25_weight_rsc_dat = weight_reg_array_14_7_sva;
  wire[0:0] inputIn_reg_array_and_264_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_26_input_in_rsc_dat;
  assign inputIn_reg_array_and_264_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_26_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_6_sva,
      pe_array_0_0_run_cmp_27_input_out_rsc_z, inputIn_reg_array_and_264_nl);
  wire[0:0] psumIn_reg_array_and_296_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_26_psum_in_rsc_dat;
  assign psumIn_reg_array_and_296_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_26_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_7_sva,
      pe_array_0_0_run_cmp_42_psum_out_rsc_z, psumIn_reg_array_and_296_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_26_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_26_weight_rsc_dat = weight_reg_array_14_6_sva;
  wire[0:0] inputIn_reg_array_and_265_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_27_input_in_rsc_dat;
  assign inputIn_reg_array_and_265_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_27_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_5_sva,
      pe_array_0_0_run_cmp_28_input_out_rsc_z, inputIn_reg_array_and_265_nl);
  wire[0:0] psumIn_reg_array_and_297_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_27_psum_in_rsc_dat;
  assign psumIn_reg_array_and_297_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_27_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_6_sva,
      pe_array_0_0_run_cmp_43_psum_out_rsc_z, psumIn_reg_array_and_297_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_27_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_27_weight_rsc_dat = weight_reg_array_14_5_sva;
  wire[0:0] inputIn_reg_array_and_266_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_28_input_in_rsc_dat;
  assign inputIn_reg_array_and_266_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_28_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_4_sva,
      pe_array_0_0_run_cmp_29_input_out_rsc_z, inputIn_reg_array_and_266_nl);
  wire[0:0] psumIn_reg_array_and_298_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_28_psum_in_rsc_dat;
  assign psumIn_reg_array_and_298_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_28_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_5_sva,
      pe_array_0_0_run_cmp_44_psum_out_rsc_z, psumIn_reg_array_and_298_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_28_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_28_weight_rsc_dat = weight_reg_array_14_4_sva;
  wire[0:0] inputIn_reg_array_and_267_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_29_input_in_rsc_dat;
  assign inputIn_reg_array_and_267_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_29_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_3_sva,
      pe_array_0_0_run_cmp_30_input_out_rsc_z, inputIn_reg_array_and_267_nl);
  wire[0:0] psumIn_reg_array_and_299_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_29_psum_in_rsc_dat;
  assign psumIn_reg_array_and_299_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_29_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_4_sva,
      pe_array_0_0_run_cmp_45_psum_out_rsc_z, psumIn_reg_array_and_299_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_29_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_29_weight_rsc_dat = weight_reg_array_14_3_sva;
  wire[0:0] inputIn_reg_array_and_268_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_30_input_in_rsc_dat;
  assign inputIn_reg_array_and_268_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_30_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_2_sva,
      pe_array_0_0_run_cmp_31_input_out_rsc_z, inputIn_reg_array_and_268_nl);
  wire[0:0] psumIn_reg_array_and_300_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_30_psum_in_rsc_dat;
  assign psumIn_reg_array_and_300_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_30_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_3_sva,
      pe_array_0_0_run_cmp_46_psum_out_rsc_z, psumIn_reg_array_and_300_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_30_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_30_weight_rsc_dat = weight_reg_array_14_2_sva;
  wire[0:0] inputIn_reg_array_and_269_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_31_input_in_rsc_dat;
  assign inputIn_reg_array_and_269_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_31_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_15_1_sva,
      pe_array_0_0_run_cmp_32_input_out_rsc_z, inputIn_reg_array_and_269_nl);
  wire[0:0] psumIn_reg_array_and_301_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_31_psum_in_rsc_dat;
  assign psumIn_reg_array_and_301_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_31_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_2_sva,
      pe_array_0_0_run_cmp_47_psum_out_rsc_z, psumIn_reg_array_and_301_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_31_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_31_weight_rsc_dat = weight_reg_array_14_1_sva;
  wire[0:0] psumIn_reg_array_and_302_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_32_psum_in_rsc_dat;
  assign psumIn_reg_array_and_302_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_32_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_14_1_sva,
      pe_array_0_0_run_cmp_48_psum_out_rsc_z, psumIn_reg_array_and_302_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_32_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_32_weight_rsc_dat = weight_reg_array_14_0_sva;
  wire[0:0] inputIn_reg_array_and_270_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_33_input_in_rsc_dat;
  assign inputIn_reg_array_and_270_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_33_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_15_sva,
      pe_array_0_0_run_cmp_34_input_out_rsc_z, inputIn_reg_array_and_270_nl);
  wire[0:0] psumIn_reg_array_and_303_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_33_psum_in_rsc_dat;
  assign psumIn_reg_array_and_303_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_33_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_16_sva,
      pe_array_0_0_run_cmp_49_psum_out_rsc_z, psumIn_reg_array_and_303_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_33_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_33_weight_rsc_dat = weight_reg_array_13_15_sva;
  wire[0:0] inputIn_reg_array_and_271_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_34_input_in_rsc_dat;
  assign inputIn_reg_array_and_271_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_34_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_14_sva,
      pe_array_0_0_run_cmp_35_input_out_rsc_z, inputIn_reg_array_and_271_nl);
  wire[0:0] psumIn_reg_array_and_304_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_34_psum_in_rsc_dat;
  assign psumIn_reg_array_and_304_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_34_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_15_sva,
      pe_array_0_0_run_cmp_50_psum_out_rsc_z, psumIn_reg_array_and_304_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_34_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_34_weight_rsc_dat = weight_reg_array_13_14_sva;
  wire[0:0] inputIn_reg_array_and_272_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_35_input_in_rsc_dat;
  assign inputIn_reg_array_and_272_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_35_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_13_sva,
      pe_array_0_0_run_cmp_36_input_out_rsc_z, inputIn_reg_array_and_272_nl);
  wire[0:0] psumIn_reg_array_and_305_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_35_psum_in_rsc_dat;
  assign psumIn_reg_array_and_305_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_35_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_14_sva,
      pe_array_0_0_run_cmp_51_psum_out_rsc_z, psumIn_reg_array_and_305_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_35_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_35_weight_rsc_dat = weight_reg_array_13_13_sva;
  wire[0:0] inputIn_reg_array_and_273_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_36_input_in_rsc_dat;
  assign inputIn_reg_array_and_273_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_36_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_12_sva,
      pe_array_0_0_run_cmp_37_input_out_rsc_z, inputIn_reg_array_and_273_nl);
  wire[0:0] psumIn_reg_array_and_306_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_36_psum_in_rsc_dat;
  assign psumIn_reg_array_and_306_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_36_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_13_sva,
      pe_array_0_0_run_cmp_52_psum_out_rsc_z, psumIn_reg_array_and_306_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_36_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_36_weight_rsc_dat = weight_reg_array_13_12_sva;
  wire[0:0] inputIn_reg_array_and_274_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_37_input_in_rsc_dat;
  assign inputIn_reg_array_and_274_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_37_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_11_sva,
      pe_array_0_0_run_cmp_38_input_out_rsc_z, inputIn_reg_array_and_274_nl);
  wire[0:0] psumIn_reg_array_and_307_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_37_psum_in_rsc_dat;
  assign psumIn_reg_array_and_307_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_37_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_12_sva,
      pe_array_0_0_run_cmp_53_psum_out_rsc_z, psumIn_reg_array_and_307_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_37_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_37_weight_rsc_dat = weight_reg_array_13_11_sva;
  wire[0:0] inputIn_reg_array_and_275_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_38_input_in_rsc_dat;
  assign inputIn_reg_array_and_275_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_38_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_10_sva,
      pe_array_0_0_run_cmp_39_input_out_rsc_z, inputIn_reg_array_and_275_nl);
  wire[0:0] psumIn_reg_array_and_308_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_38_psum_in_rsc_dat;
  assign psumIn_reg_array_and_308_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_38_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_11_sva,
      pe_array_0_0_run_cmp_54_psum_out_rsc_z, psumIn_reg_array_and_308_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_38_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_38_weight_rsc_dat = weight_reg_array_13_10_sva;
  wire[0:0] inputIn_reg_array_and_276_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_39_input_in_rsc_dat;
  assign inputIn_reg_array_and_276_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_39_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_9_sva,
      pe_array_0_0_run_cmp_40_input_out_rsc_z, inputIn_reg_array_and_276_nl);
  wire[0:0] psumIn_reg_array_and_309_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_39_psum_in_rsc_dat;
  assign psumIn_reg_array_and_309_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_39_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_10_sva,
      pe_array_0_0_run_cmp_55_psum_out_rsc_z, psumIn_reg_array_and_309_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_39_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_39_weight_rsc_dat = weight_reg_array_13_9_sva;
  wire[0:0] inputIn_reg_array_and_277_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_40_input_in_rsc_dat;
  assign inputIn_reg_array_and_277_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_40_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_8_sva,
      pe_array_0_0_run_cmp_41_input_out_rsc_z, inputIn_reg_array_and_277_nl);
  wire[0:0] psumIn_reg_array_and_310_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_40_psum_in_rsc_dat;
  assign psumIn_reg_array_and_310_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_40_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_9_sva,
      pe_array_0_0_run_cmp_56_psum_out_rsc_z, psumIn_reg_array_and_310_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_40_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_40_weight_rsc_dat = weight_reg_array_13_8_sva;
  wire[0:0] inputIn_reg_array_and_278_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_41_input_in_rsc_dat;
  assign inputIn_reg_array_and_278_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_41_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_7_sva,
      pe_array_0_0_run_cmp_42_input_out_rsc_z, inputIn_reg_array_and_278_nl);
  wire[0:0] psumIn_reg_array_and_311_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_41_psum_in_rsc_dat;
  assign psumIn_reg_array_and_311_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_41_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_8_sva,
      pe_array_0_0_run_cmp_57_psum_out_rsc_z, psumIn_reg_array_and_311_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_41_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_41_weight_rsc_dat = weight_reg_array_13_7_sva;
  wire[0:0] inputIn_reg_array_and_279_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_42_input_in_rsc_dat;
  assign inputIn_reg_array_and_279_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_42_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_6_sva,
      pe_array_0_0_run_cmp_43_input_out_rsc_z, inputIn_reg_array_and_279_nl);
  wire[0:0] psumIn_reg_array_and_312_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_42_psum_in_rsc_dat;
  assign psumIn_reg_array_and_312_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_42_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_7_sva,
      pe_array_0_0_run_cmp_58_psum_out_rsc_z, psumIn_reg_array_and_312_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_42_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_42_weight_rsc_dat = weight_reg_array_13_6_sva;
  wire[0:0] inputIn_reg_array_and_280_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_43_input_in_rsc_dat;
  assign inputIn_reg_array_and_280_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_43_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_5_sva,
      pe_array_0_0_run_cmp_44_input_out_rsc_z, inputIn_reg_array_and_280_nl);
  wire[0:0] psumIn_reg_array_and_313_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_43_psum_in_rsc_dat;
  assign psumIn_reg_array_and_313_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_43_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_6_sva,
      pe_array_0_0_run_cmp_59_psum_out_rsc_z, psumIn_reg_array_and_313_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_43_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_43_weight_rsc_dat = weight_reg_array_13_5_sva;
  wire[0:0] inputIn_reg_array_and_281_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_44_input_in_rsc_dat;
  assign inputIn_reg_array_and_281_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_44_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_4_sva,
      pe_array_0_0_run_cmp_45_input_out_rsc_z, inputIn_reg_array_and_281_nl);
  wire[0:0] psumIn_reg_array_and_314_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_44_psum_in_rsc_dat;
  assign psumIn_reg_array_and_314_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_44_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_5_sva,
      pe_array_0_0_run_cmp_60_psum_out_rsc_z, psumIn_reg_array_and_314_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_44_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_44_weight_rsc_dat = weight_reg_array_13_4_sva;
  wire[0:0] inputIn_reg_array_and_282_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_45_input_in_rsc_dat;
  assign inputIn_reg_array_and_282_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_45_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_3_sva,
      pe_array_0_0_run_cmp_46_input_out_rsc_z, inputIn_reg_array_and_282_nl);
  wire[0:0] psumIn_reg_array_and_315_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_45_psum_in_rsc_dat;
  assign psumIn_reg_array_and_315_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_45_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_4_sva,
      pe_array_0_0_run_cmp_61_psum_out_rsc_z, psumIn_reg_array_and_315_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_45_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_45_weight_rsc_dat = weight_reg_array_13_3_sva;
  wire[0:0] inputIn_reg_array_and_283_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_46_input_in_rsc_dat;
  assign inputIn_reg_array_and_283_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_46_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_2_sva,
      pe_array_0_0_run_cmp_47_input_out_rsc_z, inputIn_reg_array_and_283_nl);
  wire[0:0] psumIn_reg_array_and_316_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_46_psum_in_rsc_dat;
  assign psumIn_reg_array_and_316_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_46_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_3_sva,
      pe_array_0_0_run_cmp_62_psum_out_rsc_z, psumIn_reg_array_and_316_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_46_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_46_weight_rsc_dat = weight_reg_array_13_2_sva;
  wire[0:0] inputIn_reg_array_and_284_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_47_input_in_rsc_dat;
  assign inputIn_reg_array_and_284_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_47_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_14_1_sva,
      pe_array_0_0_run_cmp_48_input_out_rsc_z, inputIn_reg_array_and_284_nl);
  wire[0:0] psumIn_reg_array_and_317_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_47_psum_in_rsc_dat;
  assign psumIn_reg_array_and_317_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_47_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_2_sva,
      pe_array_0_0_run_cmp_63_psum_out_rsc_z, psumIn_reg_array_and_317_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_47_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_47_weight_rsc_dat = weight_reg_array_13_1_sva;
  wire[0:0] psumIn_reg_array_and_318_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_48_psum_in_rsc_dat;
  assign psumIn_reg_array_and_318_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_48_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_13_1_sva,
      pe_array_0_0_run_cmp_64_psum_out_rsc_z, psumIn_reg_array_and_318_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_48_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_48_weight_rsc_dat = weight_reg_array_13_0_sva;
  wire[0:0] inputIn_reg_array_and_285_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_49_input_in_rsc_dat;
  assign inputIn_reg_array_and_285_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_49_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_15_sva,
      pe_array_0_0_run_cmp_50_input_out_rsc_z, inputIn_reg_array_and_285_nl);
  wire[0:0] psumIn_reg_array_and_319_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_49_psum_in_rsc_dat;
  assign psumIn_reg_array_and_319_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_49_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_16_sva,
      pe_array_0_0_run_cmp_65_psum_out_rsc_z, psumIn_reg_array_and_319_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_49_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_49_weight_rsc_dat = weight_reg_array_12_15_sva;
  wire[0:0] inputIn_reg_array_and_286_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_50_input_in_rsc_dat;
  assign inputIn_reg_array_and_286_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_50_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_14_sva,
      pe_array_0_0_run_cmp_51_input_out_rsc_z, inputIn_reg_array_and_286_nl);
  wire[0:0] psumIn_reg_array_and_320_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_50_psum_in_rsc_dat;
  assign psumIn_reg_array_and_320_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_50_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_15_sva,
      pe_array_0_0_run_cmp_66_psum_out_rsc_z, psumIn_reg_array_and_320_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_50_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_50_weight_rsc_dat = weight_reg_array_12_14_sva;
  wire[0:0] inputIn_reg_array_and_287_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_51_input_in_rsc_dat;
  assign inputIn_reg_array_and_287_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_51_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_13_sva,
      pe_array_0_0_run_cmp_52_input_out_rsc_z, inputIn_reg_array_and_287_nl);
  wire[0:0] psumIn_reg_array_and_321_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_51_psum_in_rsc_dat;
  assign psumIn_reg_array_and_321_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_51_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_14_sva,
      pe_array_0_0_run_cmp_67_psum_out_rsc_z, psumIn_reg_array_and_321_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_51_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_51_weight_rsc_dat = weight_reg_array_12_13_sva;
  wire[0:0] inputIn_reg_array_and_288_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_52_input_in_rsc_dat;
  assign inputIn_reg_array_and_288_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_52_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_12_sva,
      pe_array_0_0_run_cmp_53_input_out_rsc_z, inputIn_reg_array_and_288_nl);
  wire[0:0] psumIn_reg_array_and_322_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_52_psum_in_rsc_dat;
  assign psumIn_reg_array_and_322_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_52_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_13_sva,
      pe_array_0_0_run_cmp_68_psum_out_rsc_z, psumIn_reg_array_and_322_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_52_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_52_weight_rsc_dat = weight_reg_array_12_12_sva;
  wire[0:0] inputIn_reg_array_and_289_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_53_input_in_rsc_dat;
  assign inputIn_reg_array_and_289_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_53_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_11_sva,
      pe_array_0_0_run_cmp_54_input_out_rsc_z, inputIn_reg_array_and_289_nl);
  wire[0:0] psumIn_reg_array_and_323_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_53_psum_in_rsc_dat;
  assign psumIn_reg_array_and_323_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_53_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_12_sva,
      pe_array_0_0_run_cmp_69_psum_out_rsc_z, psumIn_reg_array_and_323_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_53_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_53_weight_rsc_dat = weight_reg_array_12_11_sva;
  wire[0:0] inputIn_reg_array_and_290_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_54_input_in_rsc_dat;
  assign inputIn_reg_array_and_290_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_54_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_10_sva,
      pe_array_0_0_run_cmp_55_input_out_rsc_z, inputIn_reg_array_and_290_nl);
  wire[0:0] psumIn_reg_array_and_324_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_54_psum_in_rsc_dat;
  assign psumIn_reg_array_and_324_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_54_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_11_sva,
      pe_array_0_0_run_cmp_70_psum_out_rsc_z, psumIn_reg_array_and_324_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_54_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_54_weight_rsc_dat = weight_reg_array_12_10_sva;
  wire[0:0] inputIn_reg_array_and_291_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_55_input_in_rsc_dat;
  assign inputIn_reg_array_and_291_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_55_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_9_sva,
      pe_array_0_0_run_cmp_56_input_out_rsc_z, inputIn_reg_array_and_291_nl);
  wire[0:0] psumIn_reg_array_and_325_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_55_psum_in_rsc_dat;
  assign psumIn_reg_array_and_325_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_55_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_10_sva,
      pe_array_0_0_run_cmp_71_psum_out_rsc_z, psumIn_reg_array_and_325_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_55_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_55_weight_rsc_dat = weight_reg_array_12_9_sva;
  wire[0:0] inputIn_reg_array_and_292_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_56_input_in_rsc_dat;
  assign inputIn_reg_array_and_292_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_56_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_8_sva,
      pe_array_0_0_run_cmp_57_input_out_rsc_z, inputIn_reg_array_and_292_nl);
  wire[0:0] psumIn_reg_array_and_326_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_56_psum_in_rsc_dat;
  assign psumIn_reg_array_and_326_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_56_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_9_sva,
      pe_array_0_0_run_cmp_72_psum_out_rsc_z, psumIn_reg_array_and_326_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_56_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_56_weight_rsc_dat = weight_reg_array_12_8_sva;
  wire[0:0] inputIn_reg_array_and_293_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_57_input_in_rsc_dat;
  assign inputIn_reg_array_and_293_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_57_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_7_sva,
      pe_array_0_0_run_cmp_58_input_out_rsc_z, inputIn_reg_array_and_293_nl);
  wire[0:0] psumIn_reg_array_and_327_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_57_psum_in_rsc_dat;
  assign psumIn_reg_array_and_327_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_57_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_8_sva,
      pe_array_0_0_run_cmp_73_psum_out_rsc_z, psumIn_reg_array_and_327_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_57_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_57_weight_rsc_dat = weight_reg_array_12_7_sva;
  wire[0:0] inputIn_reg_array_and_294_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_58_input_in_rsc_dat;
  assign inputIn_reg_array_and_294_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_58_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_6_sva,
      pe_array_0_0_run_cmp_59_input_out_rsc_z, inputIn_reg_array_and_294_nl);
  wire[0:0] psumIn_reg_array_and_328_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_58_psum_in_rsc_dat;
  assign psumIn_reg_array_and_328_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_58_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_7_sva,
      pe_array_0_0_run_cmp_74_psum_out_rsc_z, psumIn_reg_array_and_328_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_58_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_58_weight_rsc_dat = weight_reg_array_12_6_sva;
  wire[0:0] inputIn_reg_array_and_295_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_59_input_in_rsc_dat;
  assign inputIn_reg_array_and_295_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_59_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_5_sva,
      pe_array_0_0_run_cmp_60_input_out_rsc_z, inputIn_reg_array_and_295_nl);
  wire[0:0] psumIn_reg_array_and_329_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_59_psum_in_rsc_dat;
  assign psumIn_reg_array_and_329_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_59_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_6_sva,
      pe_array_0_0_run_cmp_75_psum_out_rsc_z, psumIn_reg_array_and_329_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_59_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_59_weight_rsc_dat = weight_reg_array_12_5_sva;
  wire[0:0] inputIn_reg_array_and_296_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_60_input_in_rsc_dat;
  assign inputIn_reg_array_and_296_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_60_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_4_sva,
      pe_array_0_0_run_cmp_61_input_out_rsc_z, inputIn_reg_array_and_296_nl);
  wire[0:0] psumIn_reg_array_and_330_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_60_psum_in_rsc_dat;
  assign psumIn_reg_array_and_330_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_60_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_5_sva,
      pe_array_0_0_run_cmp_76_psum_out_rsc_z, psumIn_reg_array_and_330_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_60_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_60_weight_rsc_dat = weight_reg_array_12_4_sva;
  wire[0:0] inputIn_reg_array_and_297_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_61_input_in_rsc_dat;
  assign inputIn_reg_array_and_297_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_61_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_3_sva,
      pe_array_0_0_run_cmp_62_input_out_rsc_z, inputIn_reg_array_and_297_nl);
  wire[0:0] psumIn_reg_array_and_331_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_61_psum_in_rsc_dat;
  assign psumIn_reg_array_and_331_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_61_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_4_sva,
      pe_array_0_0_run_cmp_77_psum_out_rsc_z, psumIn_reg_array_and_331_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_61_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_61_weight_rsc_dat = weight_reg_array_12_3_sva;
  wire[0:0] inputIn_reg_array_and_298_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_62_input_in_rsc_dat;
  assign inputIn_reg_array_and_298_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_62_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_2_sva,
      pe_array_0_0_run_cmp_63_input_out_rsc_z, inputIn_reg_array_and_298_nl);
  wire[0:0] psumIn_reg_array_and_332_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_62_psum_in_rsc_dat;
  assign psumIn_reg_array_and_332_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_62_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_3_sva,
      pe_array_0_0_run_cmp_78_psum_out_rsc_z, psumIn_reg_array_and_332_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_62_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_62_weight_rsc_dat = weight_reg_array_12_2_sva;
  wire[0:0] inputIn_reg_array_and_299_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_63_input_in_rsc_dat;
  assign inputIn_reg_array_and_299_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_63_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_13_1_sva,
      pe_array_0_0_run_cmp_64_input_out_rsc_z, inputIn_reg_array_and_299_nl);
  wire[0:0] psumIn_reg_array_and_333_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_63_psum_in_rsc_dat;
  assign psumIn_reg_array_and_333_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_63_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_2_sva,
      pe_array_0_0_run_cmp_79_psum_out_rsc_z, psumIn_reg_array_and_333_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_63_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_63_weight_rsc_dat = weight_reg_array_12_1_sva;
  wire[0:0] psumIn_reg_array_and_334_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_64_psum_in_rsc_dat;
  assign psumIn_reg_array_and_334_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_64_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_12_1_sva,
      pe_array_0_0_run_cmp_80_psum_out_rsc_z, psumIn_reg_array_and_334_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_64_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_64_weight_rsc_dat = weight_reg_array_12_0_sva;
  wire[0:0] inputIn_reg_array_and_300_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_65_input_in_rsc_dat;
  assign inputIn_reg_array_and_300_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_65_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_15_sva,
      pe_array_0_0_run_cmp_66_input_out_rsc_z, inputIn_reg_array_and_300_nl);
  wire[0:0] psumIn_reg_array_and_335_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_65_psum_in_rsc_dat;
  assign psumIn_reg_array_and_335_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_65_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_16_sva,
      pe_array_0_0_run_cmp_81_psum_out_rsc_z, psumIn_reg_array_and_335_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_65_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_65_weight_rsc_dat = weight_reg_array_11_15_sva;
  wire[0:0] inputIn_reg_array_and_301_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_66_input_in_rsc_dat;
  assign inputIn_reg_array_and_301_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_66_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_14_sva,
      pe_array_0_0_run_cmp_67_input_out_rsc_z, inputIn_reg_array_and_301_nl);
  wire[0:0] psumIn_reg_array_and_336_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_66_psum_in_rsc_dat;
  assign psumIn_reg_array_and_336_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_66_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_15_sva,
      pe_array_0_0_run_cmp_82_psum_out_rsc_z, psumIn_reg_array_and_336_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_66_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_66_weight_rsc_dat = weight_reg_array_11_14_sva;
  wire[0:0] inputIn_reg_array_and_302_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_67_input_in_rsc_dat;
  assign inputIn_reg_array_and_302_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_67_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_13_sva,
      pe_array_0_0_run_cmp_68_input_out_rsc_z, inputIn_reg_array_and_302_nl);
  wire[0:0] psumIn_reg_array_and_337_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_67_psum_in_rsc_dat;
  assign psumIn_reg_array_and_337_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_67_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_14_sva,
      pe_array_0_0_run_cmp_83_psum_out_rsc_z, psumIn_reg_array_and_337_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_67_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_67_weight_rsc_dat = weight_reg_array_11_13_sva;
  wire[0:0] inputIn_reg_array_and_303_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_68_input_in_rsc_dat;
  assign inputIn_reg_array_and_303_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_68_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_12_sva,
      pe_array_0_0_run_cmp_69_input_out_rsc_z, inputIn_reg_array_and_303_nl);
  wire[0:0] psumIn_reg_array_and_338_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_68_psum_in_rsc_dat;
  assign psumIn_reg_array_and_338_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_68_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_13_sva,
      pe_array_0_0_run_cmp_84_psum_out_rsc_z, psumIn_reg_array_and_338_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_68_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_68_weight_rsc_dat = weight_reg_array_11_12_sva;
  wire[0:0] inputIn_reg_array_and_304_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_69_input_in_rsc_dat;
  assign inputIn_reg_array_and_304_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_69_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_11_sva,
      pe_array_0_0_run_cmp_70_input_out_rsc_z, inputIn_reg_array_and_304_nl);
  wire[0:0] psumIn_reg_array_and_339_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_69_psum_in_rsc_dat;
  assign psumIn_reg_array_and_339_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_69_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_12_sva,
      pe_array_0_0_run_cmp_85_psum_out_rsc_z, psumIn_reg_array_and_339_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_69_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_69_weight_rsc_dat = weight_reg_array_11_11_sva;
  wire[0:0] inputIn_reg_array_and_305_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_70_input_in_rsc_dat;
  assign inputIn_reg_array_and_305_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_70_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_10_sva,
      pe_array_0_0_run_cmp_71_input_out_rsc_z, inputIn_reg_array_and_305_nl);
  wire[0:0] psumIn_reg_array_and_340_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_70_psum_in_rsc_dat;
  assign psumIn_reg_array_and_340_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_70_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_11_sva,
      pe_array_0_0_run_cmp_86_psum_out_rsc_z, psumIn_reg_array_and_340_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_70_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_70_weight_rsc_dat = weight_reg_array_11_10_sva;
  wire[0:0] inputIn_reg_array_and_306_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_71_input_in_rsc_dat;
  assign inputIn_reg_array_and_306_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_71_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_9_sva,
      pe_array_0_0_run_cmp_72_input_out_rsc_z, inputIn_reg_array_and_306_nl);
  wire[0:0] psumIn_reg_array_and_341_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_71_psum_in_rsc_dat;
  assign psumIn_reg_array_and_341_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_71_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_10_sva,
      pe_array_0_0_run_cmp_87_psum_out_rsc_z, psumIn_reg_array_and_341_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_71_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_71_weight_rsc_dat = weight_reg_array_11_9_sva;
  wire[0:0] inputIn_reg_array_and_307_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_72_input_in_rsc_dat;
  assign inputIn_reg_array_and_307_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_72_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_8_sva,
      pe_array_0_0_run_cmp_73_input_out_rsc_z, inputIn_reg_array_and_307_nl);
  wire[0:0] psumIn_reg_array_and_342_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_72_psum_in_rsc_dat;
  assign psumIn_reg_array_and_342_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_72_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_9_sva,
      pe_array_0_0_run_cmp_88_psum_out_rsc_z, psumIn_reg_array_and_342_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_72_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_72_weight_rsc_dat = weight_reg_array_11_8_sva;
  wire[0:0] inputIn_reg_array_and_308_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_73_input_in_rsc_dat;
  assign inputIn_reg_array_and_308_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_73_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_7_sva,
      pe_array_0_0_run_cmp_74_input_out_rsc_z, inputIn_reg_array_and_308_nl);
  wire[0:0] psumIn_reg_array_and_343_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_73_psum_in_rsc_dat;
  assign psumIn_reg_array_and_343_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_73_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_8_sva,
      pe_array_0_0_run_cmp_89_psum_out_rsc_z, psumIn_reg_array_and_343_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_73_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_73_weight_rsc_dat = weight_reg_array_11_7_sva;
  wire[0:0] inputIn_reg_array_and_309_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_74_input_in_rsc_dat;
  assign inputIn_reg_array_and_309_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_74_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_6_sva,
      pe_array_0_0_run_cmp_75_input_out_rsc_z, inputIn_reg_array_and_309_nl);
  wire[0:0] psumIn_reg_array_and_344_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_74_psum_in_rsc_dat;
  assign psumIn_reg_array_and_344_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_74_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_7_sva,
      pe_array_0_0_run_cmp_90_psum_out_rsc_z, psumIn_reg_array_and_344_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_74_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_74_weight_rsc_dat = weight_reg_array_11_6_sva;
  wire[0:0] inputIn_reg_array_and_310_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_75_input_in_rsc_dat;
  assign inputIn_reg_array_and_310_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_75_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_5_sva,
      pe_array_0_0_run_cmp_76_input_out_rsc_z, inputIn_reg_array_and_310_nl);
  wire[0:0] psumIn_reg_array_and_345_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_75_psum_in_rsc_dat;
  assign psumIn_reg_array_and_345_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_75_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_6_sva,
      pe_array_0_0_run_cmp_91_psum_out_rsc_z, psumIn_reg_array_and_345_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_75_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_75_weight_rsc_dat = weight_reg_array_11_5_sva;
  wire[0:0] inputIn_reg_array_and_311_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_76_input_in_rsc_dat;
  assign inputIn_reg_array_and_311_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_76_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_4_sva,
      pe_array_0_0_run_cmp_77_input_out_rsc_z, inputIn_reg_array_and_311_nl);
  wire[0:0] psumIn_reg_array_and_346_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_76_psum_in_rsc_dat;
  assign psumIn_reg_array_and_346_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_76_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_5_sva,
      pe_array_0_0_run_cmp_92_psum_out_rsc_z, psumIn_reg_array_and_346_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_76_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_76_weight_rsc_dat = weight_reg_array_11_4_sva;
  wire[0:0] inputIn_reg_array_and_312_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_77_input_in_rsc_dat;
  assign inputIn_reg_array_and_312_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_77_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_3_sva,
      pe_array_0_0_run_cmp_78_input_out_rsc_z, inputIn_reg_array_and_312_nl);
  wire[0:0] psumIn_reg_array_and_347_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_77_psum_in_rsc_dat;
  assign psumIn_reg_array_and_347_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_77_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_4_sva,
      pe_array_0_0_run_cmp_93_psum_out_rsc_z, psumIn_reg_array_and_347_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_77_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_77_weight_rsc_dat = weight_reg_array_11_3_sva;
  wire[0:0] inputIn_reg_array_and_313_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_78_input_in_rsc_dat;
  assign inputIn_reg_array_and_313_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_78_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_2_sva,
      pe_array_0_0_run_cmp_79_input_out_rsc_z, inputIn_reg_array_and_313_nl);
  wire[0:0] psumIn_reg_array_and_348_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_78_psum_in_rsc_dat;
  assign psumIn_reg_array_and_348_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_78_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_3_sva,
      pe_array_0_0_run_cmp_94_psum_out_rsc_z, psumIn_reg_array_and_348_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_78_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_78_weight_rsc_dat = weight_reg_array_11_2_sva;
  wire[0:0] inputIn_reg_array_and_314_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_79_input_in_rsc_dat;
  assign inputIn_reg_array_and_314_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_79_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_12_1_sva,
      pe_array_0_0_run_cmp_80_input_out_rsc_z, inputIn_reg_array_and_314_nl);
  wire[0:0] psumIn_reg_array_and_349_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_79_psum_in_rsc_dat;
  assign psumIn_reg_array_and_349_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_79_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_2_sva,
      pe_array_0_0_run_cmp_95_psum_out_rsc_z, psumIn_reg_array_and_349_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_79_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_79_weight_rsc_dat = weight_reg_array_11_1_sva;
  wire[0:0] psumIn_reg_array_and_350_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_80_psum_in_rsc_dat;
  assign psumIn_reg_array_and_350_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_80_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_11_1_sva,
      pe_array_0_0_run_cmp_96_psum_out_rsc_z, psumIn_reg_array_and_350_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_80_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_80_weight_rsc_dat = weight_reg_array_11_0_sva;
  wire[0:0] inputIn_reg_array_and_315_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_81_input_in_rsc_dat;
  assign inputIn_reg_array_and_315_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_81_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_15_sva,
      pe_array_0_0_run_cmp_82_input_out_rsc_z, inputIn_reg_array_and_315_nl);
  wire[0:0] psumIn_reg_array_and_351_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_81_psum_in_rsc_dat;
  assign psumIn_reg_array_and_351_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_81_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_16_sva,
      pe_array_0_0_run_cmp_97_psum_out_rsc_z, psumIn_reg_array_and_351_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_81_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_81_weight_rsc_dat = weight_reg_array_10_15_sva;
  wire[0:0] inputIn_reg_array_and_316_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_82_input_in_rsc_dat;
  assign inputIn_reg_array_and_316_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_82_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_14_sva,
      pe_array_0_0_run_cmp_83_input_out_rsc_z, inputIn_reg_array_and_316_nl);
  wire[0:0] psumIn_reg_array_and_352_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_82_psum_in_rsc_dat;
  assign psumIn_reg_array_and_352_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_82_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_15_sva,
      pe_array_0_0_run_cmp_98_psum_out_rsc_z, psumIn_reg_array_and_352_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_82_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_82_weight_rsc_dat = weight_reg_array_10_14_sva;
  wire[0:0] inputIn_reg_array_and_317_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_83_input_in_rsc_dat;
  assign inputIn_reg_array_and_317_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_83_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_13_sva,
      pe_array_0_0_run_cmp_84_input_out_rsc_z, inputIn_reg_array_and_317_nl);
  wire[0:0] psumIn_reg_array_and_353_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_83_psum_in_rsc_dat;
  assign psumIn_reg_array_and_353_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_83_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_14_sva,
      pe_array_0_0_run_cmp_99_psum_out_rsc_z, psumIn_reg_array_and_353_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_83_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_83_weight_rsc_dat = weight_reg_array_10_13_sva;
  wire[0:0] inputIn_reg_array_and_318_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_84_input_in_rsc_dat;
  assign inputIn_reg_array_and_318_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_84_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_12_sva,
      pe_array_0_0_run_cmp_85_input_out_rsc_z, inputIn_reg_array_and_318_nl);
  wire[0:0] psumIn_reg_array_and_354_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_84_psum_in_rsc_dat;
  assign psumIn_reg_array_and_354_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_84_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_13_sva,
      pe_array_0_0_run_cmp_100_psum_out_rsc_z, psumIn_reg_array_and_354_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_84_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_84_weight_rsc_dat = weight_reg_array_10_12_sva;
  wire[0:0] inputIn_reg_array_and_319_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_85_input_in_rsc_dat;
  assign inputIn_reg_array_and_319_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_85_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_11_sva,
      pe_array_0_0_run_cmp_86_input_out_rsc_z, inputIn_reg_array_and_319_nl);
  wire[0:0] psumIn_reg_array_and_355_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_85_psum_in_rsc_dat;
  assign psumIn_reg_array_and_355_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_85_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_12_sva,
      pe_array_0_0_run_cmp_101_psum_out_rsc_z, psumIn_reg_array_and_355_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_85_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_85_weight_rsc_dat = weight_reg_array_10_11_sva;
  wire[0:0] inputIn_reg_array_and_320_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_86_input_in_rsc_dat;
  assign inputIn_reg_array_and_320_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_86_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_10_sva,
      pe_array_0_0_run_cmp_87_input_out_rsc_z, inputIn_reg_array_and_320_nl);
  wire[0:0] psumIn_reg_array_and_356_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_86_psum_in_rsc_dat;
  assign psumIn_reg_array_and_356_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_86_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_11_sva,
      pe_array_0_0_run_cmp_102_psum_out_rsc_z, psumIn_reg_array_and_356_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_86_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_86_weight_rsc_dat = weight_reg_array_10_10_sva;
  wire[0:0] inputIn_reg_array_and_321_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_87_input_in_rsc_dat;
  assign inputIn_reg_array_and_321_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_87_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_9_sva,
      pe_array_0_0_run_cmp_88_input_out_rsc_z, inputIn_reg_array_and_321_nl);
  wire[0:0] psumIn_reg_array_and_357_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_87_psum_in_rsc_dat;
  assign psumIn_reg_array_and_357_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_87_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_10_sva,
      pe_array_0_0_run_cmp_103_psum_out_rsc_z, psumIn_reg_array_and_357_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_87_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_87_weight_rsc_dat = weight_reg_array_10_9_sva;
  wire[0:0] inputIn_reg_array_and_322_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_88_input_in_rsc_dat;
  assign inputIn_reg_array_and_322_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_88_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_8_sva,
      pe_array_0_0_run_cmp_89_input_out_rsc_z, inputIn_reg_array_and_322_nl);
  wire[0:0] psumIn_reg_array_and_358_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_88_psum_in_rsc_dat;
  assign psumIn_reg_array_and_358_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_88_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_9_sva,
      pe_array_0_0_run_cmp_104_psum_out_rsc_z, psumIn_reg_array_and_358_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_88_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_88_weight_rsc_dat = weight_reg_array_10_8_sva;
  wire[0:0] inputIn_reg_array_and_323_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_89_input_in_rsc_dat;
  assign inputIn_reg_array_and_323_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_89_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_7_sva,
      pe_array_0_0_run_cmp_90_input_out_rsc_z, inputIn_reg_array_and_323_nl);
  wire[0:0] psumIn_reg_array_and_359_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_89_psum_in_rsc_dat;
  assign psumIn_reg_array_and_359_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_89_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_8_sva,
      pe_array_0_0_run_cmp_105_psum_out_rsc_z, psumIn_reg_array_and_359_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_89_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_89_weight_rsc_dat = weight_reg_array_10_7_sva;
  wire[0:0] inputIn_reg_array_and_324_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_90_input_in_rsc_dat;
  assign inputIn_reg_array_and_324_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_90_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_6_sva,
      pe_array_0_0_run_cmp_91_input_out_rsc_z, inputIn_reg_array_and_324_nl);
  wire[0:0] psumIn_reg_array_and_360_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_90_psum_in_rsc_dat;
  assign psumIn_reg_array_and_360_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_90_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_7_sva,
      pe_array_0_0_run_cmp_106_psum_out_rsc_z, psumIn_reg_array_and_360_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_90_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_90_weight_rsc_dat = weight_reg_array_10_6_sva;
  wire[0:0] inputIn_reg_array_and_325_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_91_input_in_rsc_dat;
  assign inputIn_reg_array_and_325_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_91_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_5_sva,
      pe_array_0_0_run_cmp_92_input_out_rsc_z, inputIn_reg_array_and_325_nl);
  wire[0:0] psumIn_reg_array_and_361_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_91_psum_in_rsc_dat;
  assign psumIn_reg_array_and_361_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_91_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_6_sva,
      pe_array_0_0_run_cmp_107_psum_out_rsc_z, psumIn_reg_array_and_361_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_91_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_91_weight_rsc_dat = weight_reg_array_10_5_sva;
  wire[0:0] inputIn_reg_array_and_326_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_92_input_in_rsc_dat;
  assign inputIn_reg_array_and_326_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_92_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_4_sva,
      pe_array_0_0_run_cmp_93_input_out_rsc_z, inputIn_reg_array_and_326_nl);
  wire[0:0] psumIn_reg_array_and_362_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_92_psum_in_rsc_dat;
  assign psumIn_reg_array_and_362_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_92_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_5_sva,
      pe_array_0_0_run_cmp_108_psum_out_rsc_z, psumIn_reg_array_and_362_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_92_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_92_weight_rsc_dat = weight_reg_array_10_4_sva;
  wire[0:0] inputIn_reg_array_and_327_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_93_input_in_rsc_dat;
  assign inputIn_reg_array_and_327_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_93_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_3_sva,
      pe_array_0_0_run_cmp_94_input_out_rsc_z, inputIn_reg_array_and_327_nl);
  wire[0:0] psumIn_reg_array_and_363_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_93_psum_in_rsc_dat;
  assign psumIn_reg_array_and_363_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_93_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_4_sva,
      pe_array_0_0_run_cmp_109_psum_out_rsc_z, psumIn_reg_array_and_363_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_93_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_93_weight_rsc_dat = weight_reg_array_10_3_sva;
  wire[0:0] inputIn_reg_array_and_328_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_94_input_in_rsc_dat;
  assign inputIn_reg_array_and_328_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_94_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_2_sva,
      pe_array_0_0_run_cmp_95_input_out_rsc_z, inputIn_reg_array_and_328_nl);
  wire[0:0] psumIn_reg_array_and_364_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_94_psum_in_rsc_dat;
  assign psumIn_reg_array_and_364_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_94_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_3_sva,
      pe_array_0_0_run_cmp_110_psum_out_rsc_z, psumIn_reg_array_and_364_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_94_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_94_weight_rsc_dat = weight_reg_array_10_2_sva;
  wire[0:0] inputIn_reg_array_and_329_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_95_input_in_rsc_dat;
  assign inputIn_reg_array_and_329_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_95_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_11_1_sva,
      pe_array_0_0_run_cmp_96_input_out_rsc_z, inputIn_reg_array_and_329_nl);
  wire[0:0] psumIn_reg_array_and_365_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_95_psum_in_rsc_dat;
  assign psumIn_reg_array_and_365_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_95_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_2_sva,
      pe_array_0_0_run_cmp_111_psum_out_rsc_z, psumIn_reg_array_and_365_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_95_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_95_weight_rsc_dat = weight_reg_array_10_1_sva;
  wire[0:0] psumIn_reg_array_and_366_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_96_psum_in_rsc_dat;
  assign psumIn_reg_array_and_366_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_96_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_10_1_sva,
      pe_array_0_0_run_cmp_112_psum_out_rsc_z, psumIn_reg_array_and_366_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_96_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_96_weight_rsc_dat = weight_reg_array_10_0_sva;
  wire[0:0] inputIn_reg_array_and_330_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_97_input_in_rsc_dat;
  assign inputIn_reg_array_and_330_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_97_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_15_sva,
      pe_array_0_0_run_cmp_98_input_out_rsc_z, inputIn_reg_array_and_330_nl);
  wire[0:0] psumIn_reg_array_and_367_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_97_psum_in_rsc_dat;
  assign psumIn_reg_array_and_367_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_97_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_16_sva,
      pe_array_0_0_run_cmp_113_psum_out_rsc_z, psumIn_reg_array_and_367_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_97_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_97_weight_rsc_dat = weight_reg_array_9_15_sva;
  wire[0:0] inputIn_reg_array_and_331_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_98_input_in_rsc_dat;
  assign inputIn_reg_array_and_331_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_98_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_14_sva,
      pe_array_0_0_run_cmp_99_input_out_rsc_z, inputIn_reg_array_and_331_nl);
  wire[0:0] psumIn_reg_array_and_368_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_98_psum_in_rsc_dat;
  assign psumIn_reg_array_and_368_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_98_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_15_sva,
      pe_array_0_0_run_cmp_114_psum_out_rsc_z, psumIn_reg_array_and_368_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_98_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_98_weight_rsc_dat = weight_reg_array_9_14_sva;
  wire[0:0] inputIn_reg_array_and_332_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_99_input_in_rsc_dat;
  assign inputIn_reg_array_and_332_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_99_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_13_sva,
      pe_array_0_0_run_cmp_100_input_out_rsc_z, inputIn_reg_array_and_332_nl);
  wire[0:0] psumIn_reg_array_and_369_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_99_psum_in_rsc_dat;
  assign psumIn_reg_array_and_369_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_99_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_14_sva,
      pe_array_0_0_run_cmp_115_psum_out_rsc_z, psumIn_reg_array_and_369_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_99_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_99_weight_rsc_dat = weight_reg_array_9_13_sva;
  wire[0:0] inputIn_reg_array_and_333_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_100_input_in_rsc_dat;
  assign inputIn_reg_array_and_333_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_100_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_12_sva,
      pe_array_0_0_run_cmp_101_input_out_rsc_z, inputIn_reg_array_and_333_nl);
  wire[0:0] psumIn_reg_array_and_370_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_100_psum_in_rsc_dat;
  assign psumIn_reg_array_and_370_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_100_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_13_sva,
      pe_array_0_0_run_cmp_116_psum_out_rsc_z, psumIn_reg_array_and_370_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_100_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_100_weight_rsc_dat = weight_reg_array_9_12_sva;
  wire[0:0] inputIn_reg_array_and_334_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_101_input_in_rsc_dat;
  assign inputIn_reg_array_and_334_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_101_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_11_sva,
      pe_array_0_0_run_cmp_102_input_out_rsc_z, inputIn_reg_array_and_334_nl);
  wire[0:0] psumIn_reg_array_and_371_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_101_psum_in_rsc_dat;
  assign psumIn_reg_array_and_371_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_101_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_12_sva,
      pe_array_0_0_run_cmp_117_psum_out_rsc_z, psumIn_reg_array_and_371_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_101_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_101_weight_rsc_dat = weight_reg_array_9_11_sva;
  wire[0:0] inputIn_reg_array_and_335_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_102_input_in_rsc_dat;
  assign inputIn_reg_array_and_335_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_102_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_10_sva,
      pe_array_0_0_run_cmp_103_input_out_rsc_z, inputIn_reg_array_and_335_nl);
  wire[0:0] psumIn_reg_array_and_372_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_102_psum_in_rsc_dat;
  assign psumIn_reg_array_and_372_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_102_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_11_sva,
      pe_array_0_0_run_cmp_118_psum_out_rsc_z, psumIn_reg_array_and_372_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_102_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_102_weight_rsc_dat = weight_reg_array_9_10_sva;
  wire[0:0] inputIn_reg_array_and_336_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_103_input_in_rsc_dat;
  assign inputIn_reg_array_and_336_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_103_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_9_sva,
      pe_array_0_0_run_cmp_104_input_out_rsc_z, inputIn_reg_array_and_336_nl);
  wire[0:0] psumIn_reg_array_and_373_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_103_psum_in_rsc_dat;
  assign psumIn_reg_array_and_373_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_103_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_10_sva,
      pe_array_0_0_run_cmp_119_psum_out_rsc_z, psumIn_reg_array_and_373_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_103_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_103_weight_rsc_dat = weight_reg_array_9_9_sva;
  wire[0:0] inputIn_reg_array_and_337_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_104_input_in_rsc_dat;
  assign inputIn_reg_array_and_337_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_104_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_8_sva,
      pe_array_0_0_run_cmp_105_input_out_rsc_z, inputIn_reg_array_and_337_nl);
  wire[0:0] psumIn_reg_array_and_374_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_104_psum_in_rsc_dat;
  assign psumIn_reg_array_and_374_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_104_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_9_sva,
      pe_array_0_0_run_cmp_120_psum_out_rsc_z, psumIn_reg_array_and_374_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_104_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_104_weight_rsc_dat = weight_reg_array_9_8_sva;
  wire[0:0] inputIn_reg_array_and_338_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_105_input_in_rsc_dat;
  assign inputIn_reg_array_and_338_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_105_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_7_sva,
      pe_array_0_0_run_cmp_106_input_out_rsc_z, inputIn_reg_array_and_338_nl);
  wire[0:0] psumIn_reg_array_and_375_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_105_psum_in_rsc_dat;
  assign psumIn_reg_array_and_375_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_105_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_8_sva,
      pe_array_0_0_run_cmp_121_psum_out_rsc_z, psumIn_reg_array_and_375_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_105_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_105_weight_rsc_dat = weight_reg_array_9_7_sva;
  wire[0:0] inputIn_reg_array_and_339_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_106_input_in_rsc_dat;
  assign inputIn_reg_array_and_339_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_106_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_6_sva,
      pe_array_0_0_run_cmp_107_input_out_rsc_z, inputIn_reg_array_and_339_nl);
  wire[0:0] psumIn_reg_array_and_376_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_106_psum_in_rsc_dat;
  assign psumIn_reg_array_and_376_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_106_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_7_sva,
      pe_array_0_0_run_cmp_122_psum_out_rsc_z, psumIn_reg_array_and_376_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_106_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_106_weight_rsc_dat = weight_reg_array_9_6_sva;
  wire[0:0] inputIn_reg_array_and_340_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_107_input_in_rsc_dat;
  assign inputIn_reg_array_and_340_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_107_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_5_sva,
      pe_array_0_0_run_cmp_108_input_out_rsc_z, inputIn_reg_array_and_340_nl);
  wire[0:0] psumIn_reg_array_and_377_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_107_psum_in_rsc_dat;
  assign psumIn_reg_array_and_377_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_107_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_6_sva,
      pe_array_0_0_run_cmp_123_psum_out_rsc_z, psumIn_reg_array_and_377_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_107_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_107_weight_rsc_dat = weight_reg_array_9_5_sva;
  wire[0:0] inputIn_reg_array_and_341_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_108_input_in_rsc_dat;
  assign inputIn_reg_array_and_341_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_108_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_4_sva,
      pe_array_0_0_run_cmp_109_input_out_rsc_z, inputIn_reg_array_and_341_nl);
  wire[0:0] psumIn_reg_array_and_378_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_108_psum_in_rsc_dat;
  assign psumIn_reg_array_and_378_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_108_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_5_sva,
      pe_array_0_0_run_cmp_124_psum_out_rsc_z, psumIn_reg_array_and_378_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_108_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_108_weight_rsc_dat = weight_reg_array_9_4_sva;
  wire[0:0] inputIn_reg_array_and_342_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_109_input_in_rsc_dat;
  assign inputIn_reg_array_and_342_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_109_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_3_sva,
      pe_array_0_0_run_cmp_110_input_out_rsc_z, inputIn_reg_array_and_342_nl);
  wire[0:0] psumIn_reg_array_and_379_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_109_psum_in_rsc_dat;
  assign psumIn_reg_array_and_379_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_109_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_4_sva,
      pe_array_0_0_run_cmp_125_psum_out_rsc_z, psumIn_reg_array_and_379_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_109_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_109_weight_rsc_dat = weight_reg_array_9_3_sva;
  wire[0:0] inputIn_reg_array_and_343_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_110_input_in_rsc_dat;
  assign inputIn_reg_array_and_343_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_110_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_2_sva,
      pe_array_0_0_run_cmp_111_input_out_rsc_z, inputIn_reg_array_and_343_nl);
  wire[0:0] psumIn_reg_array_and_380_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_110_psum_in_rsc_dat;
  assign psumIn_reg_array_and_380_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_110_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_3_sva,
      pe_array_0_0_run_cmp_126_psum_out_rsc_z, psumIn_reg_array_and_380_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_110_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_110_weight_rsc_dat = weight_reg_array_9_2_sva;
  wire[0:0] inputIn_reg_array_and_344_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_111_input_in_rsc_dat;
  assign inputIn_reg_array_and_344_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_111_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_10_1_sva,
      pe_array_0_0_run_cmp_112_input_out_rsc_z, inputIn_reg_array_and_344_nl);
  wire[0:0] psumIn_reg_array_and_381_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_111_psum_in_rsc_dat;
  assign psumIn_reg_array_and_381_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_111_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_2_sva,
      pe_array_0_0_run_cmp_127_psum_out_rsc_z, psumIn_reg_array_and_381_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_111_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_111_weight_rsc_dat = weight_reg_array_9_1_sva;
  wire[0:0] psumIn_reg_array_and_382_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_112_psum_in_rsc_dat;
  assign psumIn_reg_array_and_382_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_112_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_9_1_sva,
      pe_array_0_0_run_cmp_128_psum_out_rsc_z, psumIn_reg_array_and_382_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_112_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_112_weight_rsc_dat = weight_reg_array_9_0_sva;
  wire[0:0] inputIn_reg_array_and_345_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_113_input_in_rsc_dat;
  assign inputIn_reg_array_and_345_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_113_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_15_sva,
      pe_array_0_0_run_cmp_114_input_out_rsc_z, inputIn_reg_array_and_345_nl);
  wire[0:0] psumIn_reg_array_and_383_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_113_psum_in_rsc_dat;
  assign psumIn_reg_array_and_383_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_113_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_16_sva,
      pe_array_0_0_run_cmp_129_psum_out_rsc_z, psumIn_reg_array_and_383_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_113_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_113_weight_rsc_dat = weight_reg_array_8_15_sva;
  wire[0:0] inputIn_reg_array_and_346_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_114_input_in_rsc_dat;
  assign inputIn_reg_array_and_346_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_114_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_14_sva,
      pe_array_0_0_run_cmp_115_input_out_rsc_z, inputIn_reg_array_and_346_nl);
  wire[0:0] psumIn_reg_array_and_384_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_114_psum_in_rsc_dat;
  assign psumIn_reg_array_and_384_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_114_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_15_sva,
      pe_array_0_0_run_cmp_130_psum_out_rsc_z, psumIn_reg_array_and_384_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_114_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_114_weight_rsc_dat = weight_reg_array_8_14_sva;
  wire[0:0] inputIn_reg_array_and_347_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_115_input_in_rsc_dat;
  assign inputIn_reg_array_and_347_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_115_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_13_sva,
      pe_array_0_0_run_cmp_116_input_out_rsc_z, inputIn_reg_array_and_347_nl);
  wire[0:0] psumIn_reg_array_and_385_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_115_psum_in_rsc_dat;
  assign psumIn_reg_array_and_385_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_115_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_14_sva,
      pe_array_0_0_run_cmp_131_psum_out_rsc_z, psumIn_reg_array_and_385_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_115_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_115_weight_rsc_dat = weight_reg_array_8_13_sva;
  wire[0:0] inputIn_reg_array_and_348_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_116_input_in_rsc_dat;
  assign inputIn_reg_array_and_348_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_116_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_12_sva,
      pe_array_0_0_run_cmp_117_input_out_rsc_z, inputIn_reg_array_and_348_nl);
  wire[0:0] psumIn_reg_array_and_386_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_116_psum_in_rsc_dat;
  assign psumIn_reg_array_and_386_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_116_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_13_sva,
      pe_array_0_0_run_cmp_132_psum_out_rsc_z, psumIn_reg_array_and_386_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_116_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_116_weight_rsc_dat = weight_reg_array_8_12_sva;
  wire[0:0] inputIn_reg_array_and_349_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_117_input_in_rsc_dat;
  assign inputIn_reg_array_and_349_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_117_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_11_sva,
      pe_array_0_0_run_cmp_118_input_out_rsc_z, inputIn_reg_array_and_349_nl);
  wire[0:0] psumIn_reg_array_and_387_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_117_psum_in_rsc_dat;
  assign psumIn_reg_array_and_387_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_117_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_12_sva,
      pe_array_0_0_run_cmp_133_psum_out_rsc_z, psumIn_reg_array_and_387_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_117_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_117_weight_rsc_dat = weight_reg_array_8_11_sva;
  wire[0:0] inputIn_reg_array_and_350_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_118_input_in_rsc_dat;
  assign inputIn_reg_array_and_350_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_118_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_10_sva,
      pe_array_0_0_run_cmp_119_input_out_rsc_z, inputIn_reg_array_and_350_nl);
  wire[0:0] psumIn_reg_array_and_388_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_118_psum_in_rsc_dat;
  assign psumIn_reg_array_and_388_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_118_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_11_sva,
      pe_array_0_0_run_cmp_134_psum_out_rsc_z, psumIn_reg_array_and_388_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_118_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_118_weight_rsc_dat = weight_reg_array_8_10_sva;
  wire[0:0] inputIn_reg_array_and_351_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_119_input_in_rsc_dat;
  assign inputIn_reg_array_and_351_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_119_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_9_sva,
      pe_array_0_0_run_cmp_120_input_out_rsc_z, inputIn_reg_array_and_351_nl);
  wire[0:0] psumIn_reg_array_and_389_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_119_psum_in_rsc_dat;
  assign psumIn_reg_array_and_389_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_119_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_10_sva,
      pe_array_0_0_run_cmp_135_psum_out_rsc_z, psumIn_reg_array_and_389_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_119_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_119_weight_rsc_dat = weight_reg_array_8_9_sva;
  wire[0:0] inputIn_reg_array_and_352_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_120_input_in_rsc_dat;
  assign inputIn_reg_array_and_352_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_120_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_8_sva,
      pe_array_0_0_run_cmp_121_input_out_rsc_z, inputIn_reg_array_and_352_nl);
  wire[0:0] psumIn_reg_array_and_390_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_120_psum_in_rsc_dat;
  assign psumIn_reg_array_and_390_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_120_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_9_sva,
      pe_array_0_0_run_cmp_136_psum_out_rsc_z, psumIn_reg_array_and_390_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_120_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_120_weight_rsc_dat = weight_reg_array_8_8_sva;
  wire[0:0] inputIn_reg_array_and_353_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_121_input_in_rsc_dat;
  assign inputIn_reg_array_and_353_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_121_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_7_sva,
      pe_array_0_0_run_cmp_122_input_out_rsc_z, inputIn_reg_array_and_353_nl);
  wire[0:0] psumIn_reg_array_and_391_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_121_psum_in_rsc_dat;
  assign psumIn_reg_array_and_391_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_121_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_8_sva,
      pe_array_0_0_run_cmp_137_psum_out_rsc_z, psumIn_reg_array_and_391_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_121_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_121_weight_rsc_dat = weight_reg_array_8_7_sva;
  wire[0:0] inputIn_reg_array_and_354_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_122_input_in_rsc_dat;
  assign inputIn_reg_array_and_354_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_122_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_6_sva,
      pe_array_0_0_run_cmp_123_input_out_rsc_z, inputIn_reg_array_and_354_nl);
  wire[0:0] psumIn_reg_array_and_392_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_122_psum_in_rsc_dat;
  assign psumIn_reg_array_and_392_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_122_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_7_sva,
      pe_array_0_0_run_cmp_138_psum_out_rsc_z, psumIn_reg_array_and_392_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_122_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_122_weight_rsc_dat = weight_reg_array_8_6_sva;
  wire[0:0] inputIn_reg_array_and_355_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_123_input_in_rsc_dat;
  assign inputIn_reg_array_and_355_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_123_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_5_sva,
      pe_array_0_0_run_cmp_124_input_out_rsc_z, inputIn_reg_array_and_355_nl);
  wire[0:0] psumIn_reg_array_and_393_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_123_psum_in_rsc_dat;
  assign psumIn_reg_array_and_393_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_123_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_6_sva,
      pe_array_0_0_run_cmp_139_psum_out_rsc_z, psumIn_reg_array_and_393_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_123_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_123_weight_rsc_dat = weight_reg_array_8_5_sva;
  wire[0:0] inputIn_reg_array_and_356_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_124_input_in_rsc_dat;
  assign inputIn_reg_array_and_356_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_124_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_4_sva,
      pe_array_0_0_run_cmp_125_input_out_rsc_z, inputIn_reg_array_and_356_nl);
  wire[0:0] psumIn_reg_array_and_394_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_124_psum_in_rsc_dat;
  assign psumIn_reg_array_and_394_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_124_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_5_sva,
      pe_array_0_0_run_cmp_140_psum_out_rsc_z, psumIn_reg_array_and_394_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_124_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_124_weight_rsc_dat = weight_reg_array_8_4_sva;
  wire[0:0] inputIn_reg_array_and_357_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_125_input_in_rsc_dat;
  assign inputIn_reg_array_and_357_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_125_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_3_sva,
      pe_array_0_0_run_cmp_126_input_out_rsc_z, inputIn_reg_array_and_357_nl);
  wire[0:0] psumIn_reg_array_and_395_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_125_psum_in_rsc_dat;
  assign psumIn_reg_array_and_395_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_125_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_4_sva,
      pe_array_0_0_run_cmp_141_psum_out_rsc_z, psumIn_reg_array_and_395_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_125_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_125_weight_rsc_dat = weight_reg_array_8_3_sva;
  wire[0:0] inputIn_reg_array_and_358_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_126_input_in_rsc_dat;
  assign inputIn_reg_array_and_358_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_126_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_2_sva,
      pe_array_0_0_run_cmp_127_input_out_rsc_z, inputIn_reg_array_and_358_nl);
  wire[0:0] psumIn_reg_array_and_396_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_126_psum_in_rsc_dat;
  assign psumIn_reg_array_and_396_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_126_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_3_sva,
      pe_array_0_0_run_cmp_142_psum_out_rsc_z, psumIn_reg_array_and_396_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_126_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_126_weight_rsc_dat = weight_reg_array_8_2_sva;
  wire[0:0] inputIn_reg_array_and_359_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_127_input_in_rsc_dat;
  assign inputIn_reg_array_and_359_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_127_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_9_1_sva,
      pe_array_0_0_run_cmp_128_input_out_rsc_z, inputIn_reg_array_and_359_nl);
  wire[0:0] psumIn_reg_array_and_397_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_127_psum_in_rsc_dat;
  assign psumIn_reg_array_and_397_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_127_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_2_sva,
      pe_array_0_0_run_cmp_143_psum_out_rsc_z, psumIn_reg_array_and_397_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_127_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_127_weight_rsc_dat = weight_reg_array_8_1_sva;
  wire[0:0] psumIn_reg_array_and_398_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_128_psum_in_rsc_dat;
  assign psumIn_reg_array_and_398_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_128_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_8_1_sva,
      pe_array_0_0_run_cmp_144_psum_out_rsc_z, psumIn_reg_array_and_398_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_128_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_128_weight_rsc_dat = weight_reg_array_8_0_sva;
  wire[0:0] inputIn_reg_array_and_360_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_129_input_in_rsc_dat;
  assign inputIn_reg_array_and_360_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_129_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_15_sva,
      pe_array_0_0_run_cmp_130_input_out_rsc_z, inputIn_reg_array_and_360_nl);
  wire[0:0] psumIn_reg_array_and_399_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_129_psum_in_rsc_dat;
  assign psumIn_reg_array_and_399_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_129_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_16_sva,
      pe_array_0_0_run_cmp_145_psum_out_rsc_z, psumIn_reg_array_and_399_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_129_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_129_weight_rsc_dat = weight_reg_array_7_15_sva;
  wire[0:0] inputIn_reg_array_and_361_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_130_input_in_rsc_dat;
  assign inputIn_reg_array_and_361_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_130_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_14_sva,
      pe_array_0_0_run_cmp_131_input_out_rsc_z, inputIn_reg_array_and_361_nl);
  wire[0:0] psumIn_reg_array_and_400_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_130_psum_in_rsc_dat;
  assign psumIn_reg_array_and_400_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_130_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_15_sva,
      pe_array_0_0_run_cmp_146_psum_out_rsc_z, psumIn_reg_array_and_400_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_130_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_130_weight_rsc_dat = weight_reg_array_7_14_sva;
  wire[0:0] inputIn_reg_array_and_362_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_131_input_in_rsc_dat;
  assign inputIn_reg_array_and_362_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_131_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_13_sva,
      pe_array_0_0_run_cmp_132_input_out_rsc_z, inputIn_reg_array_and_362_nl);
  wire[0:0] psumIn_reg_array_and_401_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_131_psum_in_rsc_dat;
  assign psumIn_reg_array_and_401_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_131_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_14_sva,
      pe_array_0_0_run_cmp_147_psum_out_rsc_z, psumIn_reg_array_and_401_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_131_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_131_weight_rsc_dat = weight_reg_array_7_13_sva;
  wire[0:0] inputIn_reg_array_and_363_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_132_input_in_rsc_dat;
  assign inputIn_reg_array_and_363_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_132_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_12_sva,
      pe_array_0_0_run_cmp_133_input_out_rsc_z, inputIn_reg_array_and_363_nl);
  wire[0:0] psumIn_reg_array_and_402_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_132_psum_in_rsc_dat;
  assign psumIn_reg_array_and_402_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_132_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_13_sva,
      pe_array_0_0_run_cmp_148_psum_out_rsc_z, psumIn_reg_array_and_402_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_132_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_132_weight_rsc_dat = weight_reg_array_7_12_sva;
  wire[0:0] inputIn_reg_array_and_364_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_133_input_in_rsc_dat;
  assign inputIn_reg_array_and_364_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_133_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_11_sva,
      pe_array_0_0_run_cmp_134_input_out_rsc_z, inputIn_reg_array_and_364_nl);
  wire[0:0] psumIn_reg_array_and_403_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_133_psum_in_rsc_dat;
  assign psumIn_reg_array_and_403_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_133_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_12_sva,
      pe_array_0_0_run_cmp_149_psum_out_rsc_z, psumIn_reg_array_and_403_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_133_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_133_weight_rsc_dat = weight_reg_array_7_11_sva;
  wire[0:0] inputIn_reg_array_and_365_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_134_input_in_rsc_dat;
  assign inputIn_reg_array_and_365_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_134_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_10_sva,
      pe_array_0_0_run_cmp_135_input_out_rsc_z, inputIn_reg_array_and_365_nl);
  wire[0:0] psumIn_reg_array_and_404_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_134_psum_in_rsc_dat;
  assign psumIn_reg_array_and_404_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_134_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_11_sva,
      pe_array_0_0_run_cmp_150_psum_out_rsc_z, psumIn_reg_array_and_404_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_134_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_134_weight_rsc_dat = weight_reg_array_7_10_sva;
  wire[0:0] inputIn_reg_array_and_366_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_135_input_in_rsc_dat;
  assign inputIn_reg_array_and_366_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_135_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_9_sva,
      pe_array_0_0_run_cmp_136_input_out_rsc_z, inputIn_reg_array_and_366_nl);
  wire[0:0] psumIn_reg_array_and_405_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_135_psum_in_rsc_dat;
  assign psumIn_reg_array_and_405_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_135_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_10_sva,
      pe_array_0_0_run_cmp_151_psum_out_rsc_z, psumIn_reg_array_and_405_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_135_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_135_weight_rsc_dat = weight_reg_array_7_9_sva;
  wire[0:0] inputIn_reg_array_and_367_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_136_input_in_rsc_dat;
  assign inputIn_reg_array_and_367_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_136_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_8_sva,
      pe_array_0_0_run_cmp_137_input_out_rsc_z, inputIn_reg_array_and_367_nl);
  wire[0:0] psumIn_reg_array_and_406_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_136_psum_in_rsc_dat;
  assign psumIn_reg_array_and_406_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_136_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_9_sva,
      pe_array_0_0_run_cmp_152_psum_out_rsc_z, psumIn_reg_array_and_406_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_136_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_136_weight_rsc_dat = weight_reg_array_7_8_sva;
  wire[0:0] inputIn_reg_array_and_368_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_137_input_in_rsc_dat;
  assign inputIn_reg_array_and_368_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_137_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_7_sva,
      pe_array_0_0_run_cmp_138_input_out_rsc_z, inputIn_reg_array_and_368_nl);
  wire[0:0] psumIn_reg_array_and_407_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_137_psum_in_rsc_dat;
  assign psumIn_reg_array_and_407_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_137_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_8_sva,
      pe_array_0_0_run_cmp_153_psum_out_rsc_z, psumIn_reg_array_and_407_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_137_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_137_weight_rsc_dat = weight_reg_array_7_7_sva;
  wire[0:0] inputIn_reg_array_and_369_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_138_input_in_rsc_dat;
  assign inputIn_reg_array_and_369_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_138_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_6_sva,
      pe_array_0_0_run_cmp_139_input_out_rsc_z, inputIn_reg_array_and_369_nl);
  wire[0:0] psumIn_reg_array_and_408_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_138_psum_in_rsc_dat;
  assign psumIn_reg_array_and_408_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_138_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_7_sva,
      pe_array_0_0_run_cmp_154_psum_out_rsc_z, psumIn_reg_array_and_408_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_138_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_138_weight_rsc_dat = weight_reg_array_7_6_sva;
  wire[0:0] inputIn_reg_array_and_370_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_139_input_in_rsc_dat;
  assign inputIn_reg_array_and_370_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_139_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_5_sva,
      pe_array_0_0_run_cmp_140_input_out_rsc_z, inputIn_reg_array_and_370_nl);
  wire[0:0] psumIn_reg_array_and_409_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_139_psum_in_rsc_dat;
  assign psumIn_reg_array_and_409_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_139_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_6_sva,
      pe_array_0_0_run_cmp_155_psum_out_rsc_z, psumIn_reg_array_and_409_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_139_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_139_weight_rsc_dat = weight_reg_array_7_5_sva;
  wire[0:0] inputIn_reg_array_and_371_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_140_input_in_rsc_dat;
  assign inputIn_reg_array_and_371_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_140_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_4_sva,
      pe_array_0_0_run_cmp_141_input_out_rsc_z, inputIn_reg_array_and_371_nl);
  wire[0:0] psumIn_reg_array_and_410_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_140_psum_in_rsc_dat;
  assign psumIn_reg_array_and_410_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_140_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_5_sva,
      pe_array_0_0_run_cmp_156_psum_out_rsc_z, psumIn_reg_array_and_410_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_140_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_140_weight_rsc_dat = weight_reg_array_7_4_sva;
  wire[0:0] inputIn_reg_array_and_372_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_141_input_in_rsc_dat;
  assign inputIn_reg_array_and_372_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_141_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_3_sva,
      pe_array_0_0_run_cmp_142_input_out_rsc_z, inputIn_reg_array_and_372_nl);
  wire[0:0] psumIn_reg_array_and_411_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_141_psum_in_rsc_dat;
  assign psumIn_reg_array_and_411_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_141_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_4_sva,
      pe_array_0_0_run_cmp_157_psum_out_rsc_z, psumIn_reg_array_and_411_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_141_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_141_weight_rsc_dat = weight_reg_array_7_3_sva;
  wire[0:0] inputIn_reg_array_and_373_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_142_input_in_rsc_dat;
  assign inputIn_reg_array_and_373_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_142_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_2_sva,
      pe_array_0_0_run_cmp_143_input_out_rsc_z, inputIn_reg_array_and_373_nl);
  wire[0:0] psumIn_reg_array_and_412_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_142_psum_in_rsc_dat;
  assign psumIn_reg_array_and_412_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_142_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_3_sva,
      pe_array_0_0_run_cmp_158_psum_out_rsc_z, psumIn_reg_array_and_412_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_142_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_142_weight_rsc_dat = weight_reg_array_7_2_sva;
  wire[0:0] inputIn_reg_array_and_374_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_143_input_in_rsc_dat;
  assign inputIn_reg_array_and_374_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_143_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_8_1_sva,
      pe_array_0_0_run_cmp_144_input_out_rsc_z, inputIn_reg_array_and_374_nl);
  wire[0:0] psumIn_reg_array_and_413_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_143_psum_in_rsc_dat;
  assign psumIn_reg_array_and_413_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_143_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_2_sva,
      pe_array_0_0_run_cmp_159_psum_out_rsc_z, psumIn_reg_array_and_413_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_143_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_143_weight_rsc_dat = weight_reg_array_7_1_sva;
  wire[0:0] psumIn_reg_array_and_414_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_144_psum_in_rsc_dat;
  assign psumIn_reg_array_and_414_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_144_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_7_1_sva,
      pe_array_0_0_run_cmp_160_psum_out_rsc_z, psumIn_reg_array_and_414_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_144_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_144_weight_rsc_dat = weight_reg_array_7_0_sva;
  wire[0:0] inputIn_reg_array_and_375_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_145_input_in_rsc_dat;
  assign inputIn_reg_array_and_375_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_145_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_15_sva,
      pe_array_0_0_run_cmp_146_input_out_rsc_z, inputIn_reg_array_and_375_nl);
  wire[0:0] psumIn_reg_array_and_415_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_145_psum_in_rsc_dat;
  assign psumIn_reg_array_and_415_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_145_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_16_sva,
      pe_array_0_0_run_cmp_161_psum_out_rsc_z, psumIn_reg_array_and_415_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_145_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_145_weight_rsc_dat = weight_reg_array_6_15_sva;
  wire[0:0] inputIn_reg_array_and_376_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_146_input_in_rsc_dat;
  assign inputIn_reg_array_and_376_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_146_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_14_sva,
      pe_array_0_0_run_cmp_147_input_out_rsc_z, inputIn_reg_array_and_376_nl);
  wire[0:0] psumIn_reg_array_and_416_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_146_psum_in_rsc_dat;
  assign psumIn_reg_array_and_416_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_146_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_15_sva,
      pe_array_0_0_run_cmp_162_psum_out_rsc_z, psumIn_reg_array_and_416_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_146_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_146_weight_rsc_dat = weight_reg_array_6_14_sva;
  wire[0:0] inputIn_reg_array_and_377_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_147_input_in_rsc_dat;
  assign inputIn_reg_array_and_377_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_147_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_13_sva,
      pe_array_0_0_run_cmp_148_input_out_rsc_z, inputIn_reg_array_and_377_nl);
  wire[0:0] psumIn_reg_array_and_417_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_147_psum_in_rsc_dat;
  assign psumIn_reg_array_and_417_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_147_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_14_sva,
      pe_array_0_0_run_cmp_163_psum_out_rsc_z, psumIn_reg_array_and_417_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_147_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_147_weight_rsc_dat = weight_reg_array_6_13_sva;
  wire[0:0] inputIn_reg_array_and_378_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_148_input_in_rsc_dat;
  assign inputIn_reg_array_and_378_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_148_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_12_sva,
      pe_array_0_0_run_cmp_149_input_out_rsc_z, inputIn_reg_array_and_378_nl);
  wire[0:0] psumIn_reg_array_and_418_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_148_psum_in_rsc_dat;
  assign psumIn_reg_array_and_418_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_148_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_13_sva,
      pe_array_0_0_run_cmp_164_psum_out_rsc_z, psumIn_reg_array_and_418_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_148_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_148_weight_rsc_dat = weight_reg_array_6_12_sva;
  wire[0:0] inputIn_reg_array_and_379_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_149_input_in_rsc_dat;
  assign inputIn_reg_array_and_379_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_149_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_11_sva,
      pe_array_0_0_run_cmp_150_input_out_rsc_z, inputIn_reg_array_and_379_nl);
  wire[0:0] psumIn_reg_array_and_419_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_149_psum_in_rsc_dat;
  assign psumIn_reg_array_and_419_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_149_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_12_sva,
      pe_array_0_0_run_cmp_165_psum_out_rsc_z, psumIn_reg_array_and_419_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_149_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_149_weight_rsc_dat = weight_reg_array_6_11_sva;
  wire[0:0] inputIn_reg_array_and_380_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_150_input_in_rsc_dat;
  assign inputIn_reg_array_and_380_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_150_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_10_sva,
      pe_array_0_0_run_cmp_151_input_out_rsc_z, inputIn_reg_array_and_380_nl);
  wire[0:0] psumIn_reg_array_and_420_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_150_psum_in_rsc_dat;
  assign psumIn_reg_array_and_420_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_150_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_11_sva,
      pe_array_0_0_run_cmp_166_psum_out_rsc_z, psumIn_reg_array_and_420_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_150_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_150_weight_rsc_dat = weight_reg_array_6_10_sva;
  wire[0:0] inputIn_reg_array_and_381_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_151_input_in_rsc_dat;
  assign inputIn_reg_array_and_381_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_151_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_9_sva,
      pe_array_0_0_run_cmp_152_input_out_rsc_z, inputIn_reg_array_and_381_nl);
  wire[0:0] psumIn_reg_array_and_421_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_151_psum_in_rsc_dat;
  assign psumIn_reg_array_and_421_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_151_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_10_sva,
      pe_array_0_0_run_cmp_167_psum_out_rsc_z, psumIn_reg_array_and_421_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_151_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_151_weight_rsc_dat = weight_reg_array_6_9_sva;
  wire[0:0] inputIn_reg_array_and_382_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_152_input_in_rsc_dat;
  assign inputIn_reg_array_and_382_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_152_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_8_sva,
      pe_array_0_0_run_cmp_153_input_out_rsc_z, inputIn_reg_array_and_382_nl);
  wire[0:0] psumIn_reg_array_and_422_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_152_psum_in_rsc_dat;
  assign psumIn_reg_array_and_422_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_152_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_9_sva,
      pe_array_0_0_run_cmp_168_psum_out_rsc_z, psumIn_reg_array_and_422_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_152_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_152_weight_rsc_dat = weight_reg_array_6_8_sva;
  wire[0:0] inputIn_reg_array_and_383_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_153_input_in_rsc_dat;
  assign inputIn_reg_array_and_383_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_153_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_7_sva,
      pe_array_0_0_run_cmp_154_input_out_rsc_z, inputIn_reg_array_and_383_nl);
  wire[0:0] psumIn_reg_array_and_423_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_153_psum_in_rsc_dat;
  assign psumIn_reg_array_and_423_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_153_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_8_sva,
      pe_array_0_0_run_cmp_169_psum_out_rsc_z, psumIn_reg_array_and_423_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_153_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_153_weight_rsc_dat = weight_reg_array_6_7_sva;
  wire[0:0] inputIn_reg_array_and_384_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_154_input_in_rsc_dat;
  assign inputIn_reg_array_and_384_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_154_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_6_sva,
      pe_array_0_0_run_cmp_155_input_out_rsc_z, inputIn_reg_array_and_384_nl);
  wire[0:0] psumIn_reg_array_and_424_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_154_psum_in_rsc_dat;
  assign psumIn_reg_array_and_424_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_154_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_7_sva,
      pe_array_0_0_run_cmp_170_psum_out_rsc_z, psumIn_reg_array_and_424_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_154_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_154_weight_rsc_dat = weight_reg_array_6_6_sva;
  wire[0:0] inputIn_reg_array_and_385_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_155_input_in_rsc_dat;
  assign inputIn_reg_array_and_385_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_155_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_5_sva,
      pe_array_0_0_run_cmp_156_input_out_rsc_z, inputIn_reg_array_and_385_nl);
  wire[0:0] psumIn_reg_array_and_425_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_155_psum_in_rsc_dat;
  assign psumIn_reg_array_and_425_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_155_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_6_sva,
      pe_array_0_0_run_cmp_171_psum_out_rsc_z, psumIn_reg_array_and_425_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_155_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_155_weight_rsc_dat = weight_reg_array_6_5_sva;
  wire[0:0] inputIn_reg_array_and_386_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_156_input_in_rsc_dat;
  assign inputIn_reg_array_and_386_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_156_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_4_sva,
      pe_array_0_0_run_cmp_157_input_out_rsc_z, inputIn_reg_array_and_386_nl);
  wire[0:0] psumIn_reg_array_and_426_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_156_psum_in_rsc_dat;
  assign psumIn_reg_array_and_426_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_156_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_5_sva,
      pe_array_0_0_run_cmp_172_psum_out_rsc_z, psumIn_reg_array_and_426_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_156_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_156_weight_rsc_dat = weight_reg_array_6_4_sva;
  wire[0:0] inputIn_reg_array_and_387_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_157_input_in_rsc_dat;
  assign inputIn_reg_array_and_387_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_157_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_3_sva,
      pe_array_0_0_run_cmp_158_input_out_rsc_z, inputIn_reg_array_and_387_nl);
  wire[0:0] psumIn_reg_array_and_427_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_157_psum_in_rsc_dat;
  assign psumIn_reg_array_and_427_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_157_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_4_sva,
      pe_array_0_0_run_cmp_173_psum_out_rsc_z, psumIn_reg_array_and_427_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_157_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_157_weight_rsc_dat = weight_reg_array_6_3_sva;
  wire[0:0] inputIn_reg_array_and_388_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_158_input_in_rsc_dat;
  assign inputIn_reg_array_and_388_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_158_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_2_sva,
      pe_array_0_0_run_cmp_159_input_out_rsc_z, inputIn_reg_array_and_388_nl);
  wire[0:0] psumIn_reg_array_and_428_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_158_psum_in_rsc_dat;
  assign psumIn_reg_array_and_428_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_158_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_3_sva,
      pe_array_0_0_run_cmp_174_psum_out_rsc_z, psumIn_reg_array_and_428_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_158_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_158_weight_rsc_dat = weight_reg_array_6_2_sva;
  wire[0:0] inputIn_reg_array_and_389_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_159_input_in_rsc_dat;
  assign inputIn_reg_array_and_389_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_159_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_7_1_sva,
      pe_array_0_0_run_cmp_160_input_out_rsc_z, inputIn_reg_array_and_389_nl);
  wire[0:0] psumIn_reg_array_and_429_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_159_psum_in_rsc_dat;
  assign psumIn_reg_array_and_429_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_159_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_2_sva,
      pe_array_0_0_run_cmp_175_psum_out_rsc_z, psumIn_reg_array_and_429_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_159_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_159_weight_rsc_dat = weight_reg_array_6_1_sva;
  wire[0:0] psumIn_reg_array_and_430_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_160_psum_in_rsc_dat;
  assign psumIn_reg_array_and_430_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_160_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_6_1_sva,
      pe_array_0_0_run_cmp_176_psum_out_rsc_z, psumIn_reg_array_and_430_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_160_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_160_weight_rsc_dat = weight_reg_array_6_0_sva;
  wire[0:0] inputIn_reg_array_and_390_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_161_input_in_rsc_dat;
  assign inputIn_reg_array_and_390_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_161_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_15_sva,
      pe_array_0_0_run_cmp_162_input_out_rsc_z, inputIn_reg_array_and_390_nl);
  wire[0:0] psumIn_reg_array_and_431_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_161_psum_in_rsc_dat;
  assign psumIn_reg_array_and_431_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_161_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_16_sva,
      pe_array_0_0_run_cmp_177_psum_out_rsc_z, psumIn_reg_array_and_431_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_161_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_161_weight_rsc_dat = weight_reg_array_5_15_sva;
  wire[0:0] inputIn_reg_array_and_391_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_162_input_in_rsc_dat;
  assign inputIn_reg_array_and_391_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_162_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_14_sva,
      pe_array_0_0_run_cmp_163_input_out_rsc_z, inputIn_reg_array_and_391_nl);
  wire[0:0] psumIn_reg_array_and_432_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_162_psum_in_rsc_dat;
  assign psumIn_reg_array_and_432_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_162_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_15_sva,
      pe_array_0_0_run_cmp_178_psum_out_rsc_z, psumIn_reg_array_and_432_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_162_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_162_weight_rsc_dat = weight_reg_array_5_14_sva;
  wire[0:0] inputIn_reg_array_and_392_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_163_input_in_rsc_dat;
  assign inputIn_reg_array_and_392_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_163_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_13_sva,
      pe_array_0_0_run_cmp_164_input_out_rsc_z, inputIn_reg_array_and_392_nl);
  wire[0:0] psumIn_reg_array_and_433_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_163_psum_in_rsc_dat;
  assign psumIn_reg_array_and_433_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_163_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_14_sva,
      pe_array_0_0_run_cmp_179_psum_out_rsc_z, psumIn_reg_array_and_433_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_163_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_163_weight_rsc_dat = weight_reg_array_5_13_sva;
  wire[0:0] inputIn_reg_array_and_393_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_164_input_in_rsc_dat;
  assign inputIn_reg_array_and_393_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_164_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_12_sva,
      pe_array_0_0_run_cmp_165_input_out_rsc_z, inputIn_reg_array_and_393_nl);
  wire[0:0] psumIn_reg_array_and_434_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_164_psum_in_rsc_dat;
  assign psumIn_reg_array_and_434_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_164_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_13_sva,
      pe_array_0_0_run_cmp_180_psum_out_rsc_z, psumIn_reg_array_and_434_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_164_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_164_weight_rsc_dat = weight_reg_array_5_12_sva;
  wire[0:0] inputIn_reg_array_and_394_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_165_input_in_rsc_dat;
  assign inputIn_reg_array_and_394_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_165_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_11_sva,
      pe_array_0_0_run_cmp_166_input_out_rsc_z, inputIn_reg_array_and_394_nl);
  wire[0:0] psumIn_reg_array_and_435_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_165_psum_in_rsc_dat;
  assign psumIn_reg_array_and_435_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_165_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_12_sva,
      pe_array_0_0_run_cmp_181_psum_out_rsc_z, psumIn_reg_array_and_435_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_165_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_165_weight_rsc_dat = weight_reg_array_5_11_sva;
  wire[0:0] inputIn_reg_array_and_395_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_166_input_in_rsc_dat;
  assign inputIn_reg_array_and_395_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_166_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_10_sva,
      pe_array_0_0_run_cmp_167_input_out_rsc_z, inputIn_reg_array_and_395_nl);
  wire[0:0] psumIn_reg_array_and_436_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_166_psum_in_rsc_dat;
  assign psumIn_reg_array_and_436_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_166_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_11_sva,
      pe_array_0_0_run_cmp_182_psum_out_rsc_z, psumIn_reg_array_and_436_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_166_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_166_weight_rsc_dat = weight_reg_array_5_10_sva;
  wire[0:0] inputIn_reg_array_and_396_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_167_input_in_rsc_dat;
  assign inputIn_reg_array_and_396_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_167_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_9_sva,
      pe_array_0_0_run_cmp_168_input_out_rsc_z, inputIn_reg_array_and_396_nl);
  wire[0:0] psumIn_reg_array_and_437_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_167_psum_in_rsc_dat;
  assign psumIn_reg_array_and_437_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_167_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_10_sva,
      pe_array_0_0_run_cmp_183_psum_out_rsc_z, psumIn_reg_array_and_437_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_167_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_167_weight_rsc_dat = weight_reg_array_5_9_sva;
  wire[0:0] inputIn_reg_array_and_397_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_168_input_in_rsc_dat;
  assign inputIn_reg_array_and_397_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_168_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_8_sva,
      pe_array_0_0_run_cmp_169_input_out_rsc_z, inputIn_reg_array_and_397_nl);
  wire[0:0] psumIn_reg_array_and_438_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_168_psum_in_rsc_dat;
  assign psumIn_reg_array_and_438_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_168_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_9_sva,
      pe_array_0_0_run_cmp_184_psum_out_rsc_z, psumIn_reg_array_and_438_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_168_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_168_weight_rsc_dat = weight_reg_array_5_8_sva;
  wire[0:0] inputIn_reg_array_and_398_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_169_input_in_rsc_dat;
  assign inputIn_reg_array_and_398_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_169_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_7_sva,
      pe_array_0_0_run_cmp_170_input_out_rsc_z, inputIn_reg_array_and_398_nl);
  wire[0:0] psumIn_reg_array_and_439_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_169_psum_in_rsc_dat;
  assign psumIn_reg_array_and_439_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_169_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_8_sva,
      pe_array_0_0_run_cmp_185_psum_out_rsc_z, psumIn_reg_array_and_439_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_169_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_169_weight_rsc_dat = weight_reg_array_5_7_sva;
  wire[0:0] inputIn_reg_array_and_399_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_170_input_in_rsc_dat;
  assign inputIn_reg_array_and_399_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_170_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_6_sva,
      pe_array_0_0_run_cmp_171_input_out_rsc_z, inputIn_reg_array_and_399_nl);
  wire[0:0] psumIn_reg_array_and_440_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_170_psum_in_rsc_dat;
  assign psumIn_reg_array_and_440_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_170_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_7_sva,
      pe_array_0_0_run_cmp_186_psum_out_rsc_z, psumIn_reg_array_and_440_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_170_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_170_weight_rsc_dat = weight_reg_array_5_6_sva;
  wire[0:0] inputIn_reg_array_and_400_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_171_input_in_rsc_dat;
  assign inputIn_reg_array_and_400_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_171_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_5_sva,
      pe_array_0_0_run_cmp_172_input_out_rsc_z, inputIn_reg_array_and_400_nl);
  wire[0:0] psumIn_reg_array_and_441_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_171_psum_in_rsc_dat;
  assign psumIn_reg_array_and_441_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_171_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_6_sva,
      pe_array_0_0_run_cmp_187_psum_out_rsc_z, psumIn_reg_array_and_441_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_171_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_171_weight_rsc_dat = weight_reg_array_5_5_sva;
  wire[0:0] inputIn_reg_array_and_401_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_172_input_in_rsc_dat;
  assign inputIn_reg_array_and_401_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_172_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_4_sva,
      pe_array_0_0_run_cmp_173_input_out_rsc_z, inputIn_reg_array_and_401_nl);
  wire[0:0] psumIn_reg_array_and_442_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_172_psum_in_rsc_dat;
  assign psumIn_reg_array_and_442_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_172_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_5_sva,
      pe_array_0_0_run_cmp_188_psum_out_rsc_z, psumIn_reg_array_and_442_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_172_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_172_weight_rsc_dat = weight_reg_array_5_4_sva;
  wire[0:0] inputIn_reg_array_and_402_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_173_input_in_rsc_dat;
  assign inputIn_reg_array_and_402_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_173_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_3_sva,
      pe_array_0_0_run_cmp_174_input_out_rsc_z, inputIn_reg_array_and_402_nl);
  wire[0:0] psumIn_reg_array_and_443_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_173_psum_in_rsc_dat;
  assign psumIn_reg_array_and_443_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_173_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_4_sva,
      pe_array_0_0_run_cmp_189_psum_out_rsc_z, psumIn_reg_array_and_443_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_173_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_173_weight_rsc_dat = weight_reg_array_5_3_sva;
  wire[0:0] inputIn_reg_array_and_403_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_174_input_in_rsc_dat;
  assign inputIn_reg_array_and_403_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_174_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_2_sva,
      pe_array_0_0_run_cmp_175_input_out_rsc_z, inputIn_reg_array_and_403_nl);
  wire[0:0] psumIn_reg_array_and_444_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_174_psum_in_rsc_dat;
  assign psumIn_reg_array_and_444_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_174_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_3_sva,
      pe_array_0_0_run_cmp_190_psum_out_rsc_z, psumIn_reg_array_and_444_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_174_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_174_weight_rsc_dat = weight_reg_array_5_2_sva;
  wire[0:0] inputIn_reg_array_and_404_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_175_input_in_rsc_dat;
  assign inputIn_reg_array_and_404_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_175_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_6_1_sva,
      pe_array_0_0_run_cmp_176_input_out_rsc_z, inputIn_reg_array_and_404_nl);
  wire[0:0] psumIn_reg_array_and_445_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_175_psum_in_rsc_dat;
  assign psumIn_reg_array_and_445_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_175_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_2_sva,
      pe_array_0_0_run_cmp_191_psum_out_rsc_z, psumIn_reg_array_and_445_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_175_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_175_weight_rsc_dat = weight_reg_array_5_1_sva;
  wire[0:0] psumIn_reg_array_and_446_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_176_psum_in_rsc_dat;
  assign psumIn_reg_array_and_446_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_176_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_5_1_sva,
      pe_array_0_0_run_cmp_192_psum_out_rsc_z, psumIn_reg_array_and_446_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_176_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_176_weight_rsc_dat = weight_reg_array_5_0_sva;
  wire[0:0] inputIn_reg_array_and_405_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_177_input_in_rsc_dat;
  assign inputIn_reg_array_and_405_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_177_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_15_sva,
      pe_array_0_0_run_cmp_178_input_out_rsc_z, inputIn_reg_array_and_405_nl);
  wire[0:0] psumIn_reg_array_and_447_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_177_psum_in_rsc_dat;
  assign psumIn_reg_array_and_447_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_177_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_16_sva,
      pe_array_0_0_run_cmp_193_psum_out_rsc_z, psumIn_reg_array_and_447_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_177_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_177_weight_rsc_dat = weight_reg_array_4_15_sva;
  wire[0:0] inputIn_reg_array_and_406_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_178_input_in_rsc_dat;
  assign inputIn_reg_array_and_406_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_178_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_14_sva,
      pe_array_0_0_run_cmp_179_input_out_rsc_z, inputIn_reg_array_and_406_nl);
  wire[0:0] psumIn_reg_array_and_448_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_178_psum_in_rsc_dat;
  assign psumIn_reg_array_and_448_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_178_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_15_sva,
      pe_array_0_0_run_cmp_194_psum_out_rsc_z, psumIn_reg_array_and_448_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_178_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_178_weight_rsc_dat = weight_reg_array_4_14_sva;
  wire[0:0] inputIn_reg_array_and_407_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_179_input_in_rsc_dat;
  assign inputIn_reg_array_and_407_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_179_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_13_sva,
      pe_array_0_0_run_cmp_180_input_out_rsc_z, inputIn_reg_array_and_407_nl);
  wire[0:0] psumIn_reg_array_and_449_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_179_psum_in_rsc_dat;
  assign psumIn_reg_array_and_449_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_179_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_14_sva,
      pe_array_0_0_run_cmp_195_psum_out_rsc_z, psumIn_reg_array_and_449_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_179_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_179_weight_rsc_dat = weight_reg_array_4_13_sva;
  wire[0:0] inputIn_reg_array_and_408_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_180_input_in_rsc_dat;
  assign inputIn_reg_array_and_408_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_180_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_12_sva,
      pe_array_0_0_run_cmp_181_input_out_rsc_z, inputIn_reg_array_and_408_nl);
  wire[0:0] psumIn_reg_array_and_450_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_180_psum_in_rsc_dat;
  assign psumIn_reg_array_and_450_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_180_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_13_sva,
      pe_array_0_0_run_cmp_196_psum_out_rsc_z, psumIn_reg_array_and_450_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_180_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_180_weight_rsc_dat = weight_reg_array_4_12_sva;
  wire[0:0] inputIn_reg_array_and_409_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_181_input_in_rsc_dat;
  assign inputIn_reg_array_and_409_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_181_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_11_sva,
      pe_array_0_0_run_cmp_182_input_out_rsc_z, inputIn_reg_array_and_409_nl);
  wire[0:0] psumIn_reg_array_and_451_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_181_psum_in_rsc_dat;
  assign psumIn_reg_array_and_451_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_181_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_12_sva,
      pe_array_0_0_run_cmp_197_psum_out_rsc_z, psumIn_reg_array_and_451_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_181_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_181_weight_rsc_dat = weight_reg_array_4_11_sva;
  wire[0:0] inputIn_reg_array_and_410_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_182_input_in_rsc_dat;
  assign inputIn_reg_array_and_410_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_182_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_10_sva,
      pe_array_0_0_run_cmp_183_input_out_rsc_z, inputIn_reg_array_and_410_nl);
  wire[0:0] psumIn_reg_array_and_452_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_182_psum_in_rsc_dat;
  assign psumIn_reg_array_and_452_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_182_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_11_sva,
      pe_array_0_0_run_cmp_198_psum_out_rsc_z, psumIn_reg_array_and_452_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_182_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_182_weight_rsc_dat = weight_reg_array_4_10_sva;
  wire[0:0] inputIn_reg_array_and_411_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_183_input_in_rsc_dat;
  assign inputIn_reg_array_and_411_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_183_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_9_sva,
      pe_array_0_0_run_cmp_184_input_out_rsc_z, inputIn_reg_array_and_411_nl);
  wire[0:0] psumIn_reg_array_and_453_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_183_psum_in_rsc_dat;
  assign psumIn_reg_array_and_453_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_183_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_10_sva,
      pe_array_0_0_run_cmp_199_psum_out_rsc_z, psumIn_reg_array_and_453_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_183_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_183_weight_rsc_dat = weight_reg_array_4_9_sva;
  wire[0:0] inputIn_reg_array_and_412_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_184_input_in_rsc_dat;
  assign inputIn_reg_array_and_412_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_184_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_8_sva,
      pe_array_0_0_run_cmp_185_input_out_rsc_z, inputIn_reg_array_and_412_nl);
  wire[0:0] psumIn_reg_array_and_454_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_184_psum_in_rsc_dat;
  assign psumIn_reg_array_and_454_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_184_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_9_sva,
      pe_array_0_0_run_cmp_200_psum_out_rsc_z, psumIn_reg_array_and_454_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_184_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_184_weight_rsc_dat = weight_reg_array_4_8_sva;
  wire[0:0] inputIn_reg_array_and_413_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_185_input_in_rsc_dat;
  assign inputIn_reg_array_and_413_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_185_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_7_sva,
      pe_array_0_0_run_cmp_186_input_out_rsc_z, inputIn_reg_array_and_413_nl);
  wire[0:0] psumIn_reg_array_and_455_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_185_psum_in_rsc_dat;
  assign psumIn_reg_array_and_455_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_185_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_8_sva,
      pe_array_0_0_run_cmp_201_psum_out_rsc_z, psumIn_reg_array_and_455_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_185_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_185_weight_rsc_dat = weight_reg_array_4_7_sva;
  wire[0:0] inputIn_reg_array_and_414_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_186_input_in_rsc_dat;
  assign inputIn_reg_array_and_414_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_186_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_6_sva,
      pe_array_0_0_run_cmp_187_input_out_rsc_z, inputIn_reg_array_and_414_nl);
  wire[0:0] psumIn_reg_array_and_456_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_186_psum_in_rsc_dat;
  assign psumIn_reg_array_and_456_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_186_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_7_sva,
      pe_array_0_0_run_cmp_202_psum_out_rsc_z, psumIn_reg_array_and_456_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_186_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_186_weight_rsc_dat = weight_reg_array_4_6_sva;
  wire[0:0] inputIn_reg_array_and_415_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_187_input_in_rsc_dat;
  assign inputIn_reg_array_and_415_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_187_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_5_sva,
      pe_array_0_0_run_cmp_188_input_out_rsc_z, inputIn_reg_array_and_415_nl);
  wire[0:0] psumIn_reg_array_and_457_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_187_psum_in_rsc_dat;
  assign psumIn_reg_array_and_457_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_187_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_6_sva,
      pe_array_0_0_run_cmp_203_psum_out_rsc_z, psumIn_reg_array_and_457_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_187_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_187_weight_rsc_dat = weight_reg_array_4_5_sva;
  wire[0:0] inputIn_reg_array_and_416_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_188_input_in_rsc_dat;
  assign inputIn_reg_array_and_416_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_188_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_4_sva,
      pe_array_0_0_run_cmp_189_input_out_rsc_z, inputIn_reg_array_and_416_nl);
  wire[0:0] psumIn_reg_array_and_458_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_188_psum_in_rsc_dat;
  assign psumIn_reg_array_and_458_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_188_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_5_sva,
      pe_array_0_0_run_cmp_204_psum_out_rsc_z, psumIn_reg_array_and_458_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_188_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_188_weight_rsc_dat = weight_reg_array_4_4_sva;
  wire[0:0] inputIn_reg_array_and_417_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_189_input_in_rsc_dat;
  assign inputIn_reg_array_and_417_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_189_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_3_sva,
      pe_array_0_0_run_cmp_190_input_out_rsc_z, inputIn_reg_array_and_417_nl);
  wire[0:0] psumIn_reg_array_and_459_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_189_psum_in_rsc_dat;
  assign psumIn_reg_array_and_459_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_189_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_4_sva,
      pe_array_0_0_run_cmp_205_psum_out_rsc_z, psumIn_reg_array_and_459_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_189_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_189_weight_rsc_dat = weight_reg_array_4_3_sva;
  wire[0:0] inputIn_reg_array_and_418_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_190_input_in_rsc_dat;
  assign inputIn_reg_array_and_418_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_190_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_2_sva,
      pe_array_0_0_run_cmp_191_input_out_rsc_z, inputIn_reg_array_and_418_nl);
  wire[0:0] psumIn_reg_array_and_460_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_190_psum_in_rsc_dat;
  assign psumIn_reg_array_and_460_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_190_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_3_sva,
      pe_array_0_0_run_cmp_206_psum_out_rsc_z, psumIn_reg_array_and_460_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_190_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_190_weight_rsc_dat = weight_reg_array_4_2_sva;
  wire[0:0] inputIn_reg_array_and_419_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_191_input_in_rsc_dat;
  assign inputIn_reg_array_and_419_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_191_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_5_1_sva,
      pe_array_0_0_run_cmp_192_input_out_rsc_z, inputIn_reg_array_and_419_nl);
  wire[0:0] psumIn_reg_array_and_461_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_191_psum_in_rsc_dat;
  assign psumIn_reg_array_and_461_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_191_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_2_sva,
      pe_array_0_0_run_cmp_207_psum_out_rsc_z, psumIn_reg_array_and_461_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_191_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_191_weight_rsc_dat = weight_reg_array_4_1_sva;
  wire[0:0] psumIn_reg_array_and_462_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_192_psum_in_rsc_dat;
  assign psumIn_reg_array_and_462_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_192_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_4_1_sva,
      pe_array_0_0_run_cmp_208_psum_out_rsc_z, psumIn_reg_array_and_462_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_192_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_192_weight_rsc_dat = weight_reg_array_4_0_sva;
  wire[0:0] inputIn_reg_array_and_420_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_193_input_in_rsc_dat;
  assign inputIn_reg_array_and_420_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_193_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_15_sva,
      pe_array_0_0_run_cmp_194_input_out_rsc_z, inputIn_reg_array_and_420_nl);
  wire[0:0] psumIn_reg_array_and_463_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_193_psum_in_rsc_dat;
  assign psumIn_reg_array_and_463_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_193_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_16_sva,
      pe_array_0_0_run_cmp_209_psum_out_rsc_z, psumIn_reg_array_and_463_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_193_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_193_weight_rsc_dat = weight_reg_array_3_15_sva;
  wire[0:0] inputIn_reg_array_and_421_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_194_input_in_rsc_dat;
  assign inputIn_reg_array_and_421_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_194_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_14_sva,
      pe_array_0_0_run_cmp_195_input_out_rsc_z, inputIn_reg_array_and_421_nl);
  wire[0:0] psumIn_reg_array_and_464_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_194_psum_in_rsc_dat;
  assign psumIn_reg_array_and_464_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_194_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_15_sva,
      pe_array_0_0_run_cmp_210_psum_out_rsc_z, psumIn_reg_array_and_464_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_194_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_194_weight_rsc_dat = weight_reg_array_3_14_sva;
  wire[0:0] inputIn_reg_array_and_422_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_195_input_in_rsc_dat;
  assign inputIn_reg_array_and_422_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_195_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_13_sva,
      pe_array_0_0_run_cmp_196_input_out_rsc_z, inputIn_reg_array_and_422_nl);
  wire[0:0] psumIn_reg_array_and_465_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_195_psum_in_rsc_dat;
  assign psumIn_reg_array_and_465_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_195_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_14_sva,
      pe_array_0_0_run_cmp_211_psum_out_rsc_z, psumIn_reg_array_and_465_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_195_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_195_weight_rsc_dat = weight_reg_array_3_13_sva;
  wire[0:0] inputIn_reg_array_and_423_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_196_input_in_rsc_dat;
  assign inputIn_reg_array_and_423_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_196_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_12_sva,
      pe_array_0_0_run_cmp_197_input_out_rsc_z, inputIn_reg_array_and_423_nl);
  wire[0:0] psumIn_reg_array_and_466_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_196_psum_in_rsc_dat;
  assign psumIn_reg_array_and_466_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_196_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_13_sva,
      pe_array_0_0_run_cmp_212_psum_out_rsc_z, psumIn_reg_array_and_466_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_196_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_196_weight_rsc_dat = weight_reg_array_3_12_sva;
  wire[0:0] inputIn_reg_array_and_424_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_197_input_in_rsc_dat;
  assign inputIn_reg_array_and_424_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_197_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_11_sva,
      pe_array_0_0_run_cmp_198_input_out_rsc_z, inputIn_reg_array_and_424_nl);
  wire[0:0] psumIn_reg_array_and_467_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_197_psum_in_rsc_dat;
  assign psumIn_reg_array_and_467_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_197_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_12_sva,
      pe_array_0_0_run_cmp_213_psum_out_rsc_z, psumIn_reg_array_and_467_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_197_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_197_weight_rsc_dat = weight_reg_array_3_11_sva;
  wire[0:0] inputIn_reg_array_and_425_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_198_input_in_rsc_dat;
  assign inputIn_reg_array_and_425_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_198_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_10_sva,
      pe_array_0_0_run_cmp_199_input_out_rsc_z, inputIn_reg_array_and_425_nl);
  wire[0:0] psumIn_reg_array_and_468_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_198_psum_in_rsc_dat;
  assign psumIn_reg_array_and_468_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_198_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_11_sva,
      pe_array_0_0_run_cmp_214_psum_out_rsc_z, psumIn_reg_array_and_468_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_198_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_198_weight_rsc_dat = weight_reg_array_3_10_sva;
  wire[0:0] inputIn_reg_array_and_426_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_199_input_in_rsc_dat;
  assign inputIn_reg_array_and_426_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_199_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_9_sva,
      pe_array_0_0_run_cmp_200_input_out_rsc_z, inputIn_reg_array_and_426_nl);
  wire[0:0] psumIn_reg_array_and_469_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_199_psum_in_rsc_dat;
  assign psumIn_reg_array_and_469_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_199_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_10_sva,
      pe_array_0_0_run_cmp_215_psum_out_rsc_z, psumIn_reg_array_and_469_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_199_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_199_weight_rsc_dat = weight_reg_array_3_9_sva;
  wire[0:0] inputIn_reg_array_and_427_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_200_input_in_rsc_dat;
  assign inputIn_reg_array_and_427_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_200_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_8_sva,
      pe_array_0_0_run_cmp_201_input_out_rsc_z, inputIn_reg_array_and_427_nl);
  wire[0:0] psumIn_reg_array_and_470_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_200_psum_in_rsc_dat;
  assign psumIn_reg_array_and_470_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_200_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_9_sva,
      pe_array_0_0_run_cmp_216_psum_out_rsc_z, psumIn_reg_array_and_470_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_200_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_200_weight_rsc_dat = weight_reg_array_3_8_sva;
  wire[0:0] inputIn_reg_array_and_428_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_201_input_in_rsc_dat;
  assign inputIn_reg_array_and_428_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_201_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_7_sva,
      pe_array_0_0_run_cmp_202_input_out_rsc_z, inputIn_reg_array_and_428_nl);
  wire[0:0] psumIn_reg_array_and_471_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_201_psum_in_rsc_dat;
  assign psumIn_reg_array_and_471_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_201_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_8_sva,
      pe_array_0_0_run_cmp_217_psum_out_rsc_z, psumIn_reg_array_and_471_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_201_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_201_weight_rsc_dat = weight_reg_array_3_7_sva;
  wire[0:0] inputIn_reg_array_and_429_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_202_input_in_rsc_dat;
  assign inputIn_reg_array_and_429_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_202_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_6_sva,
      pe_array_0_0_run_cmp_203_input_out_rsc_z, inputIn_reg_array_and_429_nl);
  wire[0:0] psumIn_reg_array_and_472_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_202_psum_in_rsc_dat;
  assign psumIn_reg_array_and_472_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_202_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_7_sva,
      pe_array_0_0_run_cmp_218_psum_out_rsc_z, psumIn_reg_array_and_472_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_202_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_202_weight_rsc_dat = weight_reg_array_3_6_sva;
  wire[0:0] inputIn_reg_array_and_430_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_203_input_in_rsc_dat;
  assign inputIn_reg_array_and_430_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_203_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_5_sva,
      pe_array_0_0_run_cmp_204_input_out_rsc_z, inputIn_reg_array_and_430_nl);
  wire[0:0] psumIn_reg_array_and_473_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_203_psum_in_rsc_dat;
  assign psumIn_reg_array_and_473_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_203_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_6_sva,
      pe_array_0_0_run_cmp_219_psum_out_rsc_z, psumIn_reg_array_and_473_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_203_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_203_weight_rsc_dat = weight_reg_array_3_5_sva;
  wire[0:0] inputIn_reg_array_and_431_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_204_input_in_rsc_dat;
  assign inputIn_reg_array_and_431_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_204_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_4_sva,
      pe_array_0_0_run_cmp_205_input_out_rsc_z, inputIn_reg_array_and_431_nl);
  wire[0:0] psumIn_reg_array_and_474_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_204_psum_in_rsc_dat;
  assign psumIn_reg_array_and_474_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_204_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_5_sva,
      pe_array_0_0_run_cmp_220_psum_out_rsc_z, psumIn_reg_array_and_474_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_204_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_204_weight_rsc_dat = weight_reg_array_3_4_sva;
  wire[0:0] inputIn_reg_array_and_432_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_205_input_in_rsc_dat;
  assign inputIn_reg_array_and_432_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_205_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_3_sva,
      pe_array_0_0_run_cmp_206_input_out_rsc_z, inputIn_reg_array_and_432_nl);
  wire[0:0] psumIn_reg_array_and_475_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_205_psum_in_rsc_dat;
  assign psumIn_reg_array_and_475_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_205_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_4_sva,
      pe_array_0_0_run_cmp_221_psum_out_rsc_z, psumIn_reg_array_and_475_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_205_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_205_weight_rsc_dat = weight_reg_array_3_3_sva;
  wire[0:0] inputIn_reg_array_and_433_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_206_input_in_rsc_dat;
  assign inputIn_reg_array_and_433_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_206_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_2_sva,
      pe_array_0_0_run_cmp_207_input_out_rsc_z, inputIn_reg_array_and_433_nl);
  wire[0:0] psumIn_reg_array_and_476_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_206_psum_in_rsc_dat;
  assign psumIn_reg_array_and_476_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_206_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_3_sva,
      pe_array_0_0_run_cmp_222_psum_out_rsc_z, psumIn_reg_array_and_476_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_206_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_206_weight_rsc_dat = weight_reg_array_3_2_sva;
  wire[0:0] inputIn_reg_array_and_434_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_207_input_in_rsc_dat;
  assign inputIn_reg_array_and_434_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_207_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_4_1_sva,
      pe_array_0_0_run_cmp_208_input_out_rsc_z, inputIn_reg_array_and_434_nl);
  wire[0:0] psumIn_reg_array_and_477_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_207_psum_in_rsc_dat;
  assign psumIn_reg_array_and_477_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_207_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_2_sva,
      pe_array_0_0_run_cmp_223_psum_out_rsc_z, psumIn_reg_array_and_477_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_207_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_207_weight_rsc_dat = weight_reg_array_3_1_sva;
  wire[0:0] psumIn_reg_array_and_478_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_208_psum_in_rsc_dat;
  assign psumIn_reg_array_and_478_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_208_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_3_1_sva,
      pe_array_0_0_run_cmp_224_psum_out_rsc_z, psumIn_reg_array_and_478_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_208_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_208_weight_rsc_dat = weight_reg_array_3_0_sva;
  wire[0:0] inputIn_reg_array_and_435_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_209_input_in_rsc_dat;
  assign inputIn_reg_array_and_435_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_209_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_15_sva,
      pe_array_0_0_run_cmp_210_input_out_rsc_z, inputIn_reg_array_and_435_nl);
  wire[0:0] psumIn_reg_array_and_479_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_209_psum_in_rsc_dat;
  assign psumIn_reg_array_and_479_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_209_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_16_sva,
      pe_array_0_0_run_cmp_225_psum_out_rsc_z, psumIn_reg_array_and_479_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_209_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_209_weight_rsc_dat = weight_reg_array_2_15_sva;
  wire[0:0] inputIn_reg_array_and_436_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_210_input_in_rsc_dat;
  assign inputIn_reg_array_and_436_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_210_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_14_sva,
      pe_array_0_0_run_cmp_211_input_out_rsc_z, inputIn_reg_array_and_436_nl);
  wire[0:0] psumIn_reg_array_and_480_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_210_psum_in_rsc_dat;
  assign psumIn_reg_array_and_480_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_210_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_15_sva,
      pe_array_0_0_run_cmp_226_psum_out_rsc_z, psumIn_reg_array_and_480_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_210_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_210_weight_rsc_dat = weight_reg_array_2_14_sva;
  wire[0:0] inputIn_reg_array_and_437_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_211_input_in_rsc_dat;
  assign inputIn_reg_array_and_437_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_211_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_13_sva,
      pe_array_0_0_run_cmp_212_input_out_rsc_z, inputIn_reg_array_and_437_nl);
  wire[0:0] psumIn_reg_array_and_481_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_211_psum_in_rsc_dat;
  assign psumIn_reg_array_and_481_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_211_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_14_sva,
      pe_array_0_0_run_cmp_227_psum_out_rsc_z, psumIn_reg_array_and_481_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_211_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_211_weight_rsc_dat = weight_reg_array_2_13_sva;
  wire[0:0] inputIn_reg_array_and_438_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_212_input_in_rsc_dat;
  assign inputIn_reg_array_and_438_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_212_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_12_sva,
      pe_array_0_0_run_cmp_213_input_out_rsc_z, inputIn_reg_array_and_438_nl);
  wire[0:0] psumIn_reg_array_and_482_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_212_psum_in_rsc_dat;
  assign psumIn_reg_array_and_482_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_212_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_13_sva,
      pe_array_0_0_run_cmp_228_psum_out_rsc_z, psumIn_reg_array_and_482_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_212_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_212_weight_rsc_dat = weight_reg_array_2_12_sva;
  wire[0:0] inputIn_reg_array_and_439_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_213_input_in_rsc_dat;
  assign inputIn_reg_array_and_439_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_213_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_11_sva,
      pe_array_0_0_run_cmp_214_input_out_rsc_z, inputIn_reg_array_and_439_nl);
  wire[0:0] psumIn_reg_array_and_483_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_213_psum_in_rsc_dat;
  assign psumIn_reg_array_and_483_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_213_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_12_sva,
      pe_array_0_0_run_cmp_229_psum_out_rsc_z, psumIn_reg_array_and_483_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_213_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_213_weight_rsc_dat = weight_reg_array_2_11_sva;
  wire[0:0] inputIn_reg_array_and_440_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_214_input_in_rsc_dat;
  assign inputIn_reg_array_and_440_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_214_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_10_sva,
      pe_array_0_0_run_cmp_215_input_out_rsc_z, inputIn_reg_array_and_440_nl);
  wire[0:0] psumIn_reg_array_and_484_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_214_psum_in_rsc_dat;
  assign psumIn_reg_array_and_484_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_214_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_11_sva,
      pe_array_0_0_run_cmp_230_psum_out_rsc_z, psumIn_reg_array_and_484_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_214_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_214_weight_rsc_dat = weight_reg_array_2_10_sva;
  wire[0:0] inputIn_reg_array_and_441_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_215_input_in_rsc_dat;
  assign inputIn_reg_array_and_441_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_215_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_9_sva,
      pe_array_0_0_run_cmp_216_input_out_rsc_z, inputIn_reg_array_and_441_nl);
  wire[0:0] psumIn_reg_array_and_485_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_215_psum_in_rsc_dat;
  assign psumIn_reg_array_and_485_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_215_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_10_sva,
      pe_array_0_0_run_cmp_231_psum_out_rsc_z, psumIn_reg_array_and_485_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_215_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_215_weight_rsc_dat = weight_reg_array_2_9_sva;
  wire[0:0] inputIn_reg_array_and_442_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_216_input_in_rsc_dat;
  assign inputIn_reg_array_and_442_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_216_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_8_sva,
      pe_array_0_0_run_cmp_217_input_out_rsc_z, inputIn_reg_array_and_442_nl);
  wire[0:0] psumIn_reg_array_and_486_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_216_psum_in_rsc_dat;
  assign psumIn_reg_array_and_486_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_216_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_9_sva,
      pe_array_0_0_run_cmp_232_psum_out_rsc_z, psumIn_reg_array_and_486_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_216_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_216_weight_rsc_dat = weight_reg_array_2_8_sva;
  wire[0:0] inputIn_reg_array_and_443_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_217_input_in_rsc_dat;
  assign inputIn_reg_array_and_443_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_217_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_7_sva,
      pe_array_0_0_run_cmp_218_input_out_rsc_z, inputIn_reg_array_and_443_nl);
  wire[0:0] psumIn_reg_array_and_487_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_217_psum_in_rsc_dat;
  assign psumIn_reg_array_and_487_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_217_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_8_sva,
      pe_array_0_0_run_cmp_233_psum_out_rsc_z, psumIn_reg_array_and_487_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_217_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_217_weight_rsc_dat = weight_reg_array_2_7_sva;
  wire[0:0] inputIn_reg_array_and_444_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_218_input_in_rsc_dat;
  assign inputIn_reg_array_and_444_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_218_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_6_sva,
      pe_array_0_0_run_cmp_219_input_out_rsc_z, inputIn_reg_array_and_444_nl);
  wire[0:0] psumIn_reg_array_and_488_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_218_psum_in_rsc_dat;
  assign psumIn_reg_array_and_488_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_218_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_7_sva,
      pe_array_0_0_run_cmp_234_psum_out_rsc_z, psumIn_reg_array_and_488_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_218_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_218_weight_rsc_dat = weight_reg_array_2_6_sva;
  wire[0:0] inputIn_reg_array_and_445_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_219_input_in_rsc_dat;
  assign inputIn_reg_array_and_445_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_219_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_5_sva,
      pe_array_0_0_run_cmp_220_input_out_rsc_z, inputIn_reg_array_and_445_nl);
  wire[0:0] psumIn_reg_array_and_489_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_219_psum_in_rsc_dat;
  assign psumIn_reg_array_and_489_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_219_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_6_sva,
      pe_array_0_0_run_cmp_235_psum_out_rsc_z, psumIn_reg_array_and_489_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_219_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_219_weight_rsc_dat = weight_reg_array_2_5_sva;
  wire[0:0] inputIn_reg_array_and_446_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_220_input_in_rsc_dat;
  assign inputIn_reg_array_and_446_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_220_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_4_sva,
      pe_array_0_0_run_cmp_221_input_out_rsc_z, inputIn_reg_array_and_446_nl);
  wire[0:0] psumIn_reg_array_and_490_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_220_psum_in_rsc_dat;
  assign psumIn_reg_array_and_490_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_220_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_5_sva,
      pe_array_0_0_run_cmp_236_psum_out_rsc_z, psumIn_reg_array_and_490_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_220_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_220_weight_rsc_dat = weight_reg_array_2_4_sva;
  wire[0:0] inputIn_reg_array_and_447_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_221_input_in_rsc_dat;
  assign inputIn_reg_array_and_447_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_221_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_3_sva,
      pe_array_0_0_run_cmp_222_input_out_rsc_z, inputIn_reg_array_and_447_nl);
  wire[0:0] psumIn_reg_array_and_491_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_221_psum_in_rsc_dat;
  assign psumIn_reg_array_and_491_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_221_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_4_sva,
      pe_array_0_0_run_cmp_237_psum_out_rsc_z, psumIn_reg_array_and_491_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_221_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_221_weight_rsc_dat = weight_reg_array_2_3_sva;
  wire[0:0] inputIn_reg_array_and_448_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_222_input_in_rsc_dat;
  assign inputIn_reg_array_and_448_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_222_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_2_sva,
      pe_array_0_0_run_cmp_223_input_out_rsc_z, inputIn_reg_array_and_448_nl);
  wire[0:0] psumIn_reg_array_and_492_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_222_psum_in_rsc_dat;
  assign psumIn_reg_array_and_492_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_222_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_3_sva,
      pe_array_0_0_run_cmp_238_psum_out_rsc_z, psumIn_reg_array_and_492_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_222_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_222_weight_rsc_dat = weight_reg_array_2_2_sva;
  wire[0:0] inputIn_reg_array_and_449_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_223_input_in_rsc_dat;
  assign inputIn_reg_array_and_449_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_223_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_3_1_sva,
      pe_array_0_0_run_cmp_224_input_out_rsc_z, inputIn_reg_array_and_449_nl);
  wire[0:0] psumIn_reg_array_and_493_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_223_psum_in_rsc_dat;
  assign psumIn_reg_array_and_493_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_223_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_2_sva,
      pe_array_0_0_run_cmp_239_psum_out_rsc_z, psumIn_reg_array_and_493_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_223_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_223_weight_rsc_dat = weight_reg_array_2_1_sva;
  wire[0:0] psumIn_reg_array_and_494_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_224_psum_in_rsc_dat;
  assign psumIn_reg_array_and_494_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_224_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_2_1_sva,
      pe_array_0_0_run_cmp_240_psum_out_rsc_z, psumIn_reg_array_and_494_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_224_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_224_weight_rsc_dat = weight_reg_array_2_0_sva;
  wire[0:0] inputIn_reg_array_and_450_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_225_input_in_rsc_dat;
  assign inputIn_reg_array_and_450_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_225_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_15_sva,
      pe_array_0_0_run_cmp_226_input_out_rsc_z, inputIn_reg_array_and_450_nl);
  wire[0:0] psumIn_reg_array_and_495_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_225_psum_in_rsc_dat;
  assign psumIn_reg_array_and_495_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_225_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_16_sva,
      pe_array_0_0_run_cmp_241_psum_out_rsc_z, psumIn_reg_array_and_495_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_225_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_225_weight_rsc_dat = weight_reg_array_1_15_sva;
  wire[0:0] inputIn_reg_array_and_451_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_226_input_in_rsc_dat;
  assign inputIn_reg_array_and_451_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_226_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_14_sva,
      pe_array_0_0_run_cmp_227_input_out_rsc_z, inputIn_reg_array_and_451_nl);
  wire[0:0] psumIn_reg_array_and_496_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_226_psum_in_rsc_dat;
  assign psumIn_reg_array_and_496_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_226_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_15_sva,
      pe_array_0_0_run_cmp_242_psum_out_rsc_z, psumIn_reg_array_and_496_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_226_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_226_weight_rsc_dat = weight_reg_array_1_14_sva;
  wire[0:0] inputIn_reg_array_and_452_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_227_input_in_rsc_dat;
  assign inputIn_reg_array_and_452_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_227_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_13_sva,
      pe_array_0_0_run_cmp_228_input_out_rsc_z, inputIn_reg_array_and_452_nl);
  wire[0:0] psumIn_reg_array_and_497_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_227_psum_in_rsc_dat;
  assign psumIn_reg_array_and_497_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_227_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_14_sva,
      pe_array_0_0_run_cmp_243_psum_out_rsc_z, psumIn_reg_array_and_497_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_227_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_227_weight_rsc_dat = weight_reg_array_1_13_sva;
  wire[0:0] inputIn_reg_array_and_453_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_228_input_in_rsc_dat;
  assign inputIn_reg_array_and_453_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_228_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_12_sva,
      pe_array_0_0_run_cmp_229_input_out_rsc_z, inputIn_reg_array_and_453_nl);
  wire[0:0] psumIn_reg_array_and_498_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_228_psum_in_rsc_dat;
  assign psumIn_reg_array_and_498_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_228_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_13_sva,
      pe_array_0_0_run_cmp_244_psum_out_rsc_z, psumIn_reg_array_and_498_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_228_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_228_weight_rsc_dat = weight_reg_array_1_12_sva;
  wire[0:0] inputIn_reg_array_and_454_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_229_input_in_rsc_dat;
  assign inputIn_reg_array_and_454_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_229_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_11_sva,
      pe_array_0_0_run_cmp_230_input_out_rsc_z, inputIn_reg_array_and_454_nl);
  wire[0:0] psumIn_reg_array_and_499_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_229_psum_in_rsc_dat;
  assign psumIn_reg_array_and_499_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_229_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_12_sva,
      pe_array_0_0_run_cmp_245_psum_out_rsc_z, psumIn_reg_array_and_499_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_229_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_229_weight_rsc_dat = weight_reg_array_1_11_sva;
  wire[0:0] inputIn_reg_array_and_455_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_230_input_in_rsc_dat;
  assign inputIn_reg_array_and_455_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_230_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_10_sva,
      pe_array_0_0_run_cmp_231_input_out_rsc_z, inputIn_reg_array_and_455_nl);
  wire[0:0] psumIn_reg_array_and_500_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_230_psum_in_rsc_dat;
  assign psumIn_reg_array_and_500_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_230_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_11_sva,
      pe_array_0_0_run_cmp_246_psum_out_rsc_z, psumIn_reg_array_and_500_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_230_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_230_weight_rsc_dat = weight_reg_array_1_10_sva;
  wire[0:0] inputIn_reg_array_and_456_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_231_input_in_rsc_dat;
  assign inputIn_reg_array_and_456_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_231_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_9_sva,
      pe_array_0_0_run_cmp_232_input_out_rsc_z, inputIn_reg_array_and_456_nl);
  wire[0:0] psumIn_reg_array_and_501_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_231_psum_in_rsc_dat;
  assign psumIn_reg_array_and_501_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_231_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_10_sva,
      pe_array_0_0_run_cmp_247_psum_out_rsc_z, psumIn_reg_array_and_501_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_231_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_231_weight_rsc_dat = weight_reg_array_1_9_sva;
  wire[0:0] inputIn_reg_array_and_457_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_232_input_in_rsc_dat;
  assign inputIn_reg_array_and_457_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_232_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_8_sva,
      pe_array_0_0_run_cmp_233_input_out_rsc_z, inputIn_reg_array_and_457_nl);
  wire[0:0] psumIn_reg_array_and_502_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_232_psum_in_rsc_dat;
  assign psumIn_reg_array_and_502_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_232_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_9_sva,
      pe_array_0_0_run_cmp_248_psum_out_rsc_z, psumIn_reg_array_and_502_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_232_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_232_weight_rsc_dat = weight_reg_array_1_8_sva;
  wire[0:0] inputIn_reg_array_and_458_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_233_input_in_rsc_dat;
  assign inputIn_reg_array_and_458_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_233_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_7_sva,
      pe_array_0_0_run_cmp_234_input_out_rsc_z, inputIn_reg_array_and_458_nl);
  wire[0:0] psumIn_reg_array_and_503_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_233_psum_in_rsc_dat;
  assign psumIn_reg_array_and_503_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_233_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_8_sva,
      pe_array_0_0_run_cmp_249_psum_out_rsc_z, psumIn_reg_array_and_503_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_233_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_233_weight_rsc_dat = weight_reg_array_1_7_sva;
  wire[0:0] inputIn_reg_array_and_459_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_234_input_in_rsc_dat;
  assign inputIn_reg_array_and_459_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_234_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_6_sva,
      pe_array_0_0_run_cmp_235_input_out_rsc_z, inputIn_reg_array_and_459_nl);
  wire[0:0] psumIn_reg_array_and_504_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_234_psum_in_rsc_dat;
  assign psumIn_reg_array_and_504_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_234_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_7_sva,
      pe_array_0_0_run_cmp_250_psum_out_rsc_z, psumIn_reg_array_and_504_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_234_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_234_weight_rsc_dat = weight_reg_array_1_6_sva;
  wire[0:0] inputIn_reg_array_and_460_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_235_input_in_rsc_dat;
  assign inputIn_reg_array_and_460_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_235_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_5_sva,
      pe_array_0_0_run_cmp_236_input_out_rsc_z, inputIn_reg_array_and_460_nl);
  wire[0:0] psumIn_reg_array_and_505_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_235_psum_in_rsc_dat;
  assign psumIn_reg_array_and_505_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_235_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_6_sva,
      pe_array_0_0_run_cmp_251_psum_out_rsc_z, psumIn_reg_array_and_505_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_235_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_235_weight_rsc_dat = weight_reg_array_1_5_sva;
  wire[0:0] inputIn_reg_array_and_461_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_236_input_in_rsc_dat;
  assign inputIn_reg_array_and_461_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_236_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_4_sva,
      pe_array_0_0_run_cmp_237_input_out_rsc_z, inputIn_reg_array_and_461_nl);
  wire[0:0] psumIn_reg_array_and_506_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_236_psum_in_rsc_dat;
  assign psumIn_reg_array_and_506_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_236_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_5_sva,
      pe_array_0_0_run_cmp_252_psum_out_rsc_z, psumIn_reg_array_and_506_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_236_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_236_weight_rsc_dat = weight_reg_array_1_4_sva;
  wire[0:0] inputIn_reg_array_and_462_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_237_input_in_rsc_dat;
  assign inputIn_reg_array_and_462_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_237_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_3_sva,
      pe_array_0_0_run_cmp_238_input_out_rsc_z, inputIn_reg_array_and_462_nl);
  wire[0:0] psumIn_reg_array_and_507_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_237_psum_in_rsc_dat;
  assign psumIn_reg_array_and_507_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_237_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_4_sva,
      pe_array_0_0_run_cmp_253_psum_out_rsc_z, psumIn_reg_array_and_507_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_237_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_237_weight_rsc_dat = weight_reg_array_1_3_sva;
  wire[0:0] inputIn_reg_array_and_463_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_238_input_in_rsc_dat;
  assign inputIn_reg_array_and_463_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_238_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_2_sva,
      pe_array_0_0_run_cmp_239_input_out_rsc_z, inputIn_reg_array_and_463_nl);
  wire[0:0] psumIn_reg_array_and_508_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_238_psum_in_rsc_dat;
  assign psumIn_reg_array_and_508_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_238_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_3_sva,
      pe_array_0_0_run_cmp_254_psum_out_rsc_z, psumIn_reg_array_and_508_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_238_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_238_weight_rsc_dat = weight_reg_array_1_2_sva;
  wire[0:0] inputIn_reg_array_and_464_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_239_input_in_rsc_dat;
  assign inputIn_reg_array_and_464_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_239_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_2_1_sva,
      pe_array_0_0_run_cmp_240_input_out_rsc_z, inputIn_reg_array_and_464_nl);
  wire[0:0] psumIn_reg_array_and_509_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_239_psum_in_rsc_dat;
  assign psumIn_reg_array_and_509_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_239_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_2_sva,
      pe_array_0_0_run_cmp_255_psum_out_rsc_z, psumIn_reg_array_and_509_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_239_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_239_weight_rsc_dat = weight_reg_array_1_1_sva;
  wire[0:0] psumIn_reg_array_and_510_nl;
  wire [15:0] nl_pe_array_0_0_run_cmp_240_psum_in_rsc_dat;
  assign psumIn_reg_array_and_510_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_240_psum_in_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_1_1_sva,
      pe_array_0_0_run_cmp_psum_out_rsc_z, psumIn_reg_array_and_510_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_240_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_240_weight_rsc_dat = weight_reg_array_1_0_sva;
  wire[0:0] inputIn_reg_array_and_465_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_241_input_in_rsc_dat;
  assign inputIn_reg_array_and_465_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_241_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_15_sva,
      pe_array_0_0_run_cmp_242_input_out_rsc_z, inputIn_reg_array_and_465_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_241_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_241_weight_rsc_dat = weight_reg_array_0_15_sva;
  wire[0:0] inputIn_reg_array_and_466_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_242_input_in_rsc_dat;
  assign inputIn_reg_array_and_466_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_242_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_14_sva,
      pe_array_0_0_run_cmp_243_input_out_rsc_z, inputIn_reg_array_and_466_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_242_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_242_weight_rsc_dat = weight_reg_array_0_14_sva;
  wire[0:0] inputIn_reg_array_and_467_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_243_input_in_rsc_dat;
  assign inputIn_reg_array_and_467_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_243_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_13_sva,
      pe_array_0_0_run_cmp_244_input_out_rsc_z, inputIn_reg_array_and_467_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_243_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_243_weight_rsc_dat = weight_reg_array_0_13_sva;
  wire[0:0] inputIn_reg_array_and_468_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_244_input_in_rsc_dat;
  assign inputIn_reg_array_and_468_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_244_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_12_sva,
      pe_array_0_0_run_cmp_245_input_out_rsc_z, inputIn_reg_array_and_468_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_244_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_244_weight_rsc_dat = weight_reg_array_0_12_sva;
  wire[0:0] inputIn_reg_array_and_469_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_245_input_in_rsc_dat;
  assign inputIn_reg_array_and_469_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_245_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_11_sva,
      pe_array_0_0_run_cmp_246_input_out_rsc_z, inputIn_reg_array_and_469_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_245_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_245_weight_rsc_dat = weight_reg_array_0_11_sva;
  wire[0:0] inputIn_reg_array_and_470_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_246_input_in_rsc_dat;
  assign inputIn_reg_array_and_470_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_246_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_10_sva,
      pe_array_0_0_run_cmp_247_input_out_rsc_z, inputIn_reg_array_and_470_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_246_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_246_weight_rsc_dat = weight_reg_array_0_10_sva;
  wire[0:0] inputIn_reg_array_and_471_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_247_input_in_rsc_dat;
  assign inputIn_reg_array_and_471_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_247_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_9_sva,
      pe_array_0_0_run_cmp_248_input_out_rsc_z, inputIn_reg_array_and_471_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_247_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_247_weight_rsc_dat = weight_reg_array_0_9_sva;
  wire[0:0] inputIn_reg_array_and_472_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_248_input_in_rsc_dat;
  assign inputIn_reg_array_and_472_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_248_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_8_sva,
      pe_array_0_0_run_cmp_249_input_out_rsc_z, inputIn_reg_array_and_472_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_248_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_248_weight_rsc_dat = weight_reg_array_0_8_sva;
  wire[0:0] inputIn_reg_array_and_473_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_249_input_in_rsc_dat;
  assign inputIn_reg_array_and_473_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_249_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_7_sva,
      pe_array_0_0_run_cmp_250_input_out_rsc_z, inputIn_reg_array_and_473_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_249_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_249_weight_rsc_dat = weight_reg_array_0_7_sva;
  wire[0:0] inputIn_reg_array_and_474_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_250_input_in_rsc_dat;
  assign inputIn_reg_array_and_474_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_250_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_6_sva,
      pe_array_0_0_run_cmp_251_input_out_rsc_z, inputIn_reg_array_and_474_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_250_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_250_weight_rsc_dat = weight_reg_array_0_6_sva;
  wire[0:0] inputIn_reg_array_and_475_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_251_input_in_rsc_dat;
  assign inputIn_reg_array_and_475_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_251_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_5_sva,
      pe_array_0_0_run_cmp_252_input_out_rsc_z, inputIn_reg_array_and_475_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_251_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_251_weight_rsc_dat = weight_reg_array_0_5_sva;
  wire[0:0] inputIn_reg_array_and_476_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_252_input_in_rsc_dat;
  assign inputIn_reg_array_and_476_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_252_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_4_sva,
      pe_array_0_0_run_cmp_253_input_out_rsc_z, inputIn_reg_array_and_476_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_252_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_252_weight_rsc_dat = weight_reg_array_0_4_sva;
  wire[0:0] inputIn_reg_array_and_477_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_253_input_in_rsc_dat;
  assign inputIn_reg_array_and_477_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_253_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_3_sva,
      pe_array_0_0_run_cmp_254_input_out_rsc_z, inputIn_reg_array_and_477_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_253_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_253_weight_rsc_dat = weight_reg_array_0_3_sva;
  wire[0:0] inputIn_reg_array_and_478_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_254_input_in_rsc_dat;
  assign inputIn_reg_array_and_478_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_254_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_2_sva,
      pe_array_0_0_run_cmp_255_input_out_rsc_z, inputIn_reg_array_and_478_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_254_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_254_weight_rsc_dat = weight_reg_array_0_2_sva;
  wire[0:0] inputIn_reg_array_and_240_nl;
  wire [7:0] nl_pe_array_0_0_run_cmp_255_input_in_rsc_dat;
  assign inputIn_reg_array_and_240_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_pe_array_0_0_run_cmp_255_input_in_rsc_dat = MUX_v_8_2_2(inputIn_reg_array_1_1_sva,
      pe_array_0_0_run_cmp_input_out_rsc_z, inputIn_reg_array_and_240_nl);
  wire [7:0] nl_pe_array_0_0_run_cmp_255_weight_rsc_dat;
  assign nl_pe_array_0_0_run_cmp_255_weight_rsc_dat = weight_reg_array_0_1_sva;
  wire[0:0] step_if_2_aelse_1_not_16_nl;
  wire [15:0] nl_accum_fifo_0_run_cmp_input_rsc_dat;
  assign step_if_2_aelse_1_not_16_nl = ~ step_if_2_land_1_lpi_1_dfm_1;
  assign nl_accum_fifo_0_run_cmp_input_rsc_dat = MUX_v_16_2_2(16'b0000000000000000,
      accum_buf_rsc_0_0_i_q_d_mxwt, (step_if_2_aelse_1_not_16_nl));
  wire[0:0] psumIn_reg_array_and_511_nl;
  wire [15:0] nl_accum_fifo_0_run_cmp_1_input_rsc_dat;
  assign psumIn_reg_array_and_511_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      & (fsm_output[1]);
  assign nl_accum_fifo_0_run_cmp_1_input_rsc_dat = MUX_v_16_2_2(psumIn_reg_array_16_16_sva,
      pe_array_0_0_run_cmp_1_psum_out_rsc_z, psumIn_reg_array_and_511_nl);
  wire [7:0] nl_input_fifo_0_run_cmp_input_rsc_dat;
  assign nl_input_fifo_0_run_cmp_input_rsc_dat = step_in_col_value_lpi_1_dfm_mx1[7:0];
  wire [255:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_output_rsci_idat;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_output_rsci_idat
      = {output_rsci_idat_255_240 , output_rsci_idat_239_224 , output_rsci_idat_223_208
      , output_rsci_idat_207_192 , output_rsci_idat_191_176 , output_rsci_idat_175_160
      , output_rsci_idat_159_144 , output_rsci_idat_143_128 , output_rsci_idat_127_112
      , output_rsci_idat_111_96 , output_rsci_idat_95_80 , output_rsci_idat_79_64
      , output_rsci_idat_63_48 , output_rsci_idat_47_32 , output_rsci_idat_31_16
      , output_rsci_idat_15_0};
  Fifo_ODTYPE_16  accum_fifo_15_rsci (
      .input_rsc_dat(nl_accum_fifo_15_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_15_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_16  output_fifo_0_rsci (
      .input_rsc_dat(nl_output_fifo_0_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_0_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_15  accum_fifo_14_rsci (
      .input_rsc_dat(nl_accum_fifo_14_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_14_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_15  output_fifo_1_rsci (
      .input_rsc_dat(nl_output_fifo_1_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_1_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_14  accum_fifo_13_rsci (
      .input_rsc_dat(nl_accum_fifo_13_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_13_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_14  output_fifo_2_rsci (
      .input_rsc_dat(nl_output_fifo_2_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_2_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_13  accum_fifo_12_rsci (
      .input_rsc_dat(nl_accum_fifo_12_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_12_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_13  output_fifo_3_rsci (
      .input_rsc_dat(nl_output_fifo_3_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_3_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_12  accum_fifo_11_rsci (
      .input_rsc_dat(nl_accum_fifo_11_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_11_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_12  output_fifo_4_rsci (
      .input_rsc_dat(nl_output_fifo_4_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_4_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_11  accum_fifo_10_rsci (
      .input_rsc_dat(nl_accum_fifo_10_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_10_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_11  output_fifo_5_rsci (
      .input_rsc_dat(nl_output_fifo_5_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_5_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_10  accum_fifo_9_rsci (
      .input_rsc_dat(nl_accum_fifo_9_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_9_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_10  output_fifo_6_rsci (
      .input_rsc_dat(nl_output_fifo_6_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_6_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_9  accum_fifo_8_rsci (
      .input_rsc_dat(nl_accum_fifo_8_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_8_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_9  output_fifo_7_rsci (
      .input_rsc_dat(nl_output_fifo_7_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_7_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_8  accum_fifo_7_rsci (
      .input_rsc_dat(nl_accum_fifo_7_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_7_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_8  output_fifo_8_rsci (
      .input_rsc_dat(nl_output_fifo_8_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_8_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_7  accum_fifo_6_rsci (
      .input_rsc_dat(nl_accum_fifo_6_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_6_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_7  output_fifo_9_rsci (
      .input_rsc_dat(nl_output_fifo_9_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_9_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_6  accum_fifo_5_rsci (
      .input_rsc_dat(nl_accum_fifo_5_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_5_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_6  output_fifo_10_rsci (
      .input_rsc_dat(nl_output_fifo_10_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_10_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_5  accum_fifo_4_rsci (
      .input_rsc_dat(nl_accum_fifo_4_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_4_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_5  output_fifo_11_rsci (
      .input_rsc_dat(nl_output_fifo_11_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_11_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_4  accum_fifo_3_rsci (
      .input_rsc_dat(nl_accum_fifo_3_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_3_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_4  output_fifo_12_rsci (
      .input_rsc_dat(nl_output_fifo_12_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_12_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_3  accum_fifo_2_rsci (
      .input_rsc_dat(nl_accum_fifo_2_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_2_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_3  output_fifo_13_rsci (
      .input_rsc_dat(nl_output_fifo_13_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_13_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_2  accum_fifo_1_rsci (
      .input_rsc_dat(nl_accum_fifo_1_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_1_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_2  output_fifo_14_rsci (
      .input_rsc_dat(nl_output_fifo_14_rsci_input_rsc_dat[15:0]),
      .output_rsc_z(output_fifo_14_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_IDTYPE_16  input_fifo_15_rsci (
      .input_rsc_dat(nl_input_fifo_15_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_15_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_15  input_fifo_14_rsci (
      .input_rsc_dat(nl_input_fifo_14_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_14_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_14  input_fifo_13_rsci (
      .input_rsc_dat(nl_input_fifo_13_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_13_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_13  input_fifo_12_rsci (
      .input_rsc_dat(nl_input_fifo_12_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_12_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_12  input_fifo_11_rsci (
      .input_rsc_dat(nl_input_fifo_11_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_11_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_11  input_fifo_10_rsci (
      .input_rsc_dat(nl_input_fifo_10_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_10_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_10  input_fifo_9_rsci (
      .input_rsc_dat(nl_input_fifo_9_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_9_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_9  input_fifo_8_rsci (
      .input_rsc_dat(nl_input_fifo_8_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_8_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_8  input_fifo_7_rsci (
      .input_rsc_dat(nl_input_fifo_7_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_7_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_7  input_fifo_6_rsci (
      .input_rsc_dat(nl_input_fifo_6_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_6_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_6  input_fifo_5_rsci (
      .input_rsc_dat(nl_input_fifo_5_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_5_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_5  input_fifo_4_rsci (
      .input_rsc_dat(nl_input_fifo_4_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_4_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_4  input_fifo_3_rsci (
      .input_rsc_dat(nl_input_fifo_3_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_3_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_3  input_fifo_2_rsci (
      .input_rsc_dat(nl_input_fifo_2_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_2_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_IDTYPE_2  input_fifo_1_rsci (
      .input_rsc_dat(nl_input_fifo_1_rsci_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_1_rsci_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp (
      .input_in_rsc_dat(input_fifo_0_run_cmp_output_rsc_z),
      .psum_in_rsc_dat(accum_fifo_0_run_cmp_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_1 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_1_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_1_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_1_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_1_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_1_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_2 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_2_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_2_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_2_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_2_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_2_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_3 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_3_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_3_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_3_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_3_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_3_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_4 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_4_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_4_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_4_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_4_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_4_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_5 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_5_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_5_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_5_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_5_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_5_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_6 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_6_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_6_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_6_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_6_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_6_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_7 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_7_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_7_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_7_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_7_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_7_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_8 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_8_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_8_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_8_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_8_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_8_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_9 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_9_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_9_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_9_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_9_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_9_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_10 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_10_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_10_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_10_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_10_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_10_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_11 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_11_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_11_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_11_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_11_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_11_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_12 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_12_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_12_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_12_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_12_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_12_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_13 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_13_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_13_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_13_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_13_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_13_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_14 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_14_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_14_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_14_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_14_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_14_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_15 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_15_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_15_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_15_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_15_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_15_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_16 (
      .input_in_rsc_dat(input_fifo_15_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_16_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_16_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_16_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_16_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_17 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_17_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_17_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_17_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_17_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_17_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_18 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_18_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_18_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_18_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_18_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_18_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_19 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_19_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_19_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_19_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_19_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_19_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_20 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_20_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_20_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_20_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_20_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_20_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_21 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_21_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_21_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_21_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_21_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_21_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_22 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_22_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_22_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_22_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_22_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_22_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_23 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_23_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_23_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_23_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_23_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_23_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_24 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_24_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_24_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_24_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_24_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_24_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_25 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_25_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_25_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_25_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_25_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_25_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_26 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_26_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_26_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_26_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_26_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_26_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_27 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_27_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_27_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_27_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_27_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_27_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_28 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_28_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_28_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_28_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_28_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_28_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_29 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_29_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_29_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_29_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_29_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_29_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_30 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_30_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_30_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_30_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_30_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_30_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_31 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_31_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_31_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_31_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_31_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_31_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_32 (
      .input_in_rsc_dat(input_fifo_14_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_32_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_32_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_32_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_32_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_33 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_33_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_33_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_33_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_33_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_33_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_34 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_34_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_34_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_34_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_34_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_34_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_35 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_35_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_35_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_35_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_35_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_35_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_36 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_36_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_36_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_36_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_36_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_36_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_37 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_37_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_37_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_37_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_37_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_37_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_38 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_38_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_38_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_38_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_38_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_38_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_39 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_39_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_39_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_39_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_39_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_39_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_40 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_40_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_40_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_40_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_40_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_40_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_41 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_41_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_41_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_41_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_41_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_41_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_42 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_42_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_42_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_42_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_42_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_42_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_43 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_43_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_43_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_43_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_43_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_43_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_44 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_44_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_44_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_44_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_44_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_44_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_45 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_45_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_45_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_45_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_45_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_45_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_46 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_46_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_46_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_46_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_46_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_46_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_47 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_47_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_47_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_47_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_47_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_47_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_48 (
      .input_in_rsc_dat(input_fifo_13_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_48_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_48_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_48_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_48_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_49 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_49_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_49_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_49_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_49_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_49_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_50 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_50_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_50_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_50_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_50_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_50_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_51 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_51_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_51_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_51_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_51_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_51_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_52 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_52_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_52_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_52_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_52_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_52_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_53 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_53_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_53_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_53_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_53_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_53_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_54 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_54_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_54_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_54_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_54_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_54_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_55 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_55_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_55_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_55_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_55_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_55_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_56 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_56_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_56_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_56_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_56_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_56_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_57 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_57_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_57_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_57_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_57_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_57_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_58 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_58_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_58_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_58_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_58_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_58_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_59 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_59_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_59_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_59_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_59_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_59_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_60 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_60_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_60_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_60_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_60_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_60_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_61 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_61_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_61_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_61_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_61_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_61_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_62 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_62_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_62_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_62_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_62_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_62_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_63 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_63_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_63_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_63_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_63_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_63_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_64 (
      .input_in_rsc_dat(input_fifo_12_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_64_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_64_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_64_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_64_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_65 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_65_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_65_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_65_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_65_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_65_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_66 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_66_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_66_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_66_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_66_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_66_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_67 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_67_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_67_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_67_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_67_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_67_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_68 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_68_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_68_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_68_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_68_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_68_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_69 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_69_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_69_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_69_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_69_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_69_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_70 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_70_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_70_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_70_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_70_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_70_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_71 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_71_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_71_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_71_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_71_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_71_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_72 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_72_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_72_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_72_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_72_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_72_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_73 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_73_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_73_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_73_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_73_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_73_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_74 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_74_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_74_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_74_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_74_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_74_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_75 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_75_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_75_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_75_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_75_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_75_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_76 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_76_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_76_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_76_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_76_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_76_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_77 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_77_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_77_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_77_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_77_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_77_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_78 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_78_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_78_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_78_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_78_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_78_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_79 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_79_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_79_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_79_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_79_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_79_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_80 (
      .input_in_rsc_dat(input_fifo_11_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_80_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_80_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_80_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_80_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_81 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_81_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_81_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_81_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_81_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_81_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_82 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_82_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_82_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_82_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_82_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_82_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_83 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_83_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_83_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_83_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_83_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_83_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_84 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_84_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_84_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_84_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_84_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_84_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_85 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_85_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_85_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_85_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_85_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_85_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_86 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_86_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_86_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_86_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_86_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_86_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_87 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_87_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_87_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_87_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_87_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_87_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_88 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_88_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_88_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_88_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_88_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_88_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_89 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_89_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_89_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_89_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_89_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_89_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_90 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_90_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_90_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_90_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_90_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_90_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_91 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_91_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_91_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_91_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_91_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_91_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_92 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_92_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_92_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_92_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_92_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_92_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_93 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_93_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_93_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_93_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_93_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_93_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_94 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_94_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_94_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_94_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_94_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_94_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_95 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_95_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_95_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_95_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_95_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_95_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_96 (
      .input_in_rsc_dat(input_fifo_10_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_96_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_96_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_96_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_96_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_97 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_97_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_97_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_97_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_97_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_97_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_98 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_98_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_98_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_98_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_98_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_98_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_99 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_99_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_99_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_99_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_99_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_99_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_100 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_100_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_100_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_100_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_100_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_100_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_101 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_101_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_101_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_101_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_101_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_101_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_102 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_102_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_102_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_102_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_102_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_102_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_103 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_103_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_103_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_103_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_103_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_103_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_104 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_104_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_104_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_104_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_104_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_104_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_105 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_105_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_105_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_105_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_105_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_105_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_106 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_106_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_106_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_106_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_106_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_106_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_107 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_107_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_107_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_107_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_107_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_107_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_108 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_108_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_108_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_108_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_108_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_108_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_109 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_109_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_109_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_109_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_109_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_109_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_110 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_110_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_110_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_110_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_110_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_110_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_111 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_111_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_111_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_111_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_111_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_111_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_112 (
      .input_in_rsc_dat(input_fifo_9_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_112_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_112_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_112_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_112_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_113 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_113_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_113_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_113_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_113_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_113_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_114 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_114_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_114_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_114_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_114_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_114_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_115 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_115_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_115_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_115_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_115_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_115_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_116 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_116_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_116_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_116_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_116_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_116_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_117 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_117_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_117_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_117_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_117_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_117_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_118 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_118_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_118_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_118_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_118_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_118_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_119 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_119_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_119_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_119_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_119_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_119_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_120 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_120_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_120_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_120_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_120_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_120_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_121 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_121_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_121_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_121_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_121_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_121_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_122 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_122_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_122_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_122_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_122_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_122_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_123 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_123_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_123_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_123_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_123_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_123_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_124 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_124_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_124_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_124_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_124_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_124_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_125 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_125_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_125_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_125_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_125_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_125_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_126 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_126_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_126_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_126_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_126_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_126_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_127 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_127_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_127_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_127_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_127_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_127_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_128 (
      .input_in_rsc_dat(input_fifo_8_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_128_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_128_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_128_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_128_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_129 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_129_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_129_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_129_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_129_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_129_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_130 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_130_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_130_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_130_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_130_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_130_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_131 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_131_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_131_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_131_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_131_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_131_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_132 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_132_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_132_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_132_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_132_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_132_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_133 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_133_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_133_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_133_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_133_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_133_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_134 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_134_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_134_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_134_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_134_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_134_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_135 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_135_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_135_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_135_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_135_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_135_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_136 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_136_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_136_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_136_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_136_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_136_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_137 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_137_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_137_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_137_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_137_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_137_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_138 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_138_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_138_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_138_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_138_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_138_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_139 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_139_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_139_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_139_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_139_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_139_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_140 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_140_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_140_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_140_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_140_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_140_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_141 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_141_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_141_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_141_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_141_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_141_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_142 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_142_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_142_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_142_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_142_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_142_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_143 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_143_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_143_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_143_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_143_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_143_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_144 (
      .input_in_rsc_dat(input_fifo_7_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_144_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_144_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_144_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_144_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_145 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_145_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_145_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_145_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_145_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_145_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_146 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_146_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_146_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_146_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_146_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_146_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_147 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_147_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_147_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_147_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_147_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_147_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_148 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_148_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_148_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_148_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_148_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_148_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_149 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_149_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_149_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_149_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_149_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_149_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_150 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_150_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_150_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_150_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_150_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_150_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_151 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_151_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_151_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_151_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_151_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_151_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_152 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_152_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_152_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_152_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_152_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_152_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_153 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_153_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_153_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_153_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_153_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_153_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_154 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_154_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_154_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_154_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_154_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_154_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_155 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_155_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_155_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_155_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_155_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_155_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_156 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_156_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_156_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_156_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_156_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_156_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_157 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_157_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_157_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_157_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_157_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_157_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_158 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_158_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_158_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_158_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_158_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_158_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_159 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_159_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_159_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_159_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_159_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_159_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_160 (
      .input_in_rsc_dat(input_fifo_6_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_160_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_160_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_160_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_160_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_161 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_161_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_161_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_161_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_161_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_161_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_162 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_162_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_162_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_162_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_162_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_162_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_163 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_163_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_163_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_163_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_163_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_163_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_164 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_164_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_164_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_164_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_164_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_164_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_165 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_165_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_165_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_165_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_165_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_165_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_166 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_166_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_166_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_166_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_166_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_166_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_167 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_167_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_167_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_167_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_167_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_167_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_168 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_168_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_168_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_168_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_168_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_168_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_169 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_169_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_169_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_169_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_169_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_169_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_170 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_170_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_170_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_170_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_170_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_170_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_171 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_171_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_171_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_171_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_171_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_171_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_172 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_172_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_172_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_172_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_172_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_172_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_173 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_173_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_173_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_173_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_173_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_173_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_174 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_174_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_174_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_174_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_174_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_174_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_175 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_175_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_175_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_175_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_175_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_175_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_176 (
      .input_in_rsc_dat(input_fifo_5_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_176_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_176_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_176_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_176_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_177 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_177_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_177_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_177_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_177_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_177_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_178 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_178_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_178_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_178_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_178_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_178_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_179 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_179_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_179_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_179_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_179_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_179_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_180 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_180_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_180_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_180_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_180_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_180_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_181 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_181_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_181_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_181_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_181_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_181_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_182 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_182_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_182_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_182_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_182_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_182_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_183 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_183_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_183_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_183_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_183_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_183_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_184 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_184_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_184_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_184_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_184_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_184_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_185 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_185_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_185_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_185_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_185_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_185_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_186 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_186_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_186_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_186_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_186_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_186_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_187 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_187_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_187_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_187_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_187_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_187_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_188 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_188_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_188_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_188_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_188_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_188_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_189 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_189_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_189_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_189_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_189_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_189_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_190 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_190_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_190_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_190_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_190_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_190_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_191 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_191_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_191_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_191_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_191_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_191_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_192 (
      .input_in_rsc_dat(input_fifo_4_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_192_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_192_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_192_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_192_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_193 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_193_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_193_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_193_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_193_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_193_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_194 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_194_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_194_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_194_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_194_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_194_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_195 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_195_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_195_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_195_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_195_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_195_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_196 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_196_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_196_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_196_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_196_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_196_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_197 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_197_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_197_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_197_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_197_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_197_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_198 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_198_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_198_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_198_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_198_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_198_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_199 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_199_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_199_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_199_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_199_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_199_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_200 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_200_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_200_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_200_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_200_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_200_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_201 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_201_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_201_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_201_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_201_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_201_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_202 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_202_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_202_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_202_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_202_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_202_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_203 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_203_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_203_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_203_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_203_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_203_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_204 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_204_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_204_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_204_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_204_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_204_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_205 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_205_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_205_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_205_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_205_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_205_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_206 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_206_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_206_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_206_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_206_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_206_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_207 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_207_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_207_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_207_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_207_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_207_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_208 (
      .input_in_rsc_dat(input_fifo_3_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_208_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_208_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_208_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_208_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_209 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_209_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_209_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_209_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_209_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_209_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_210 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_210_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_210_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_210_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_210_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_210_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_211 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_211_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_211_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_211_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_211_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_211_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_212 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_212_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_212_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_212_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_212_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_212_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_213 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_213_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_213_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_213_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_213_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_213_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_214 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_214_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_214_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_214_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_214_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_214_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_215 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_215_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_215_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_215_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_215_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_215_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_216 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_216_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_216_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_216_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_216_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_216_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_217 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_217_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_217_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_217_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_217_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_217_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_218 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_218_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_218_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_218_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_218_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_218_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_219 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_219_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_219_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_219_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_219_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_219_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_220 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_220_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_220_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_220_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_220_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_220_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_221 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_221_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_221_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_221_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_221_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_221_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_222 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_222_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_222_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_222_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_222_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_222_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_223 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_223_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_223_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_223_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_223_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_223_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_224 (
      .input_in_rsc_dat(input_fifo_2_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_224_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_224_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_224_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_224_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_225 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_225_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_225_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_225_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_225_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_225_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_226 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_226_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_226_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_226_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_226_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_226_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_227 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_227_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_227_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_227_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_227_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_227_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_228 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_228_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_228_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_228_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_228_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_228_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_229 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_229_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_229_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_229_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_229_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_229_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_230 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_230_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_230_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_230_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_230_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_230_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_231 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_231_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_231_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_231_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_231_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_231_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_232 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_232_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_232_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_232_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_232_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_232_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_233 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_233_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_233_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_233_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_233_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_233_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_234 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_234_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_234_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_234_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_234_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_234_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_235 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_235_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_235_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_235_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_235_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_235_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_236 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_236_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_236_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_236_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_236_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_236_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_237 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_237_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_237_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_237_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_237_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_237_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_238 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_238_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_238_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_238_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_238_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_238_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_239 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_239_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_239_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_239_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_239_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_239_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_240 (
      .input_in_rsc_dat(input_fifo_1_rsci_output_rsc_z),
      .psum_in_rsc_dat(nl_pe_array_0_0_run_cmp_240_psum_in_rsc_dat[15:0]),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_240_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_240_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_240_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_241 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_241_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_15_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_241_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_241_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_241_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_242 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_242_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_14_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_242_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_242_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_242_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_243 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_243_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_13_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_243_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_243_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_243_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_244 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_244_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_12_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_244_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_244_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_244_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_245 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_245_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_11_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_245_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_245_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_245_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_246 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_246_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_10_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_246_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_246_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_246_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_247 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_247_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_9_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_247_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_247_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_247_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_248 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_248_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_8_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_248_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_248_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_248_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_249 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_249_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_7_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_249_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_249_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_249_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_250 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_250_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_6_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_250_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_250_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_250_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_251 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_251_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_5_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_251_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_251_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_251_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_252 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_252_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_4_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_252_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_252_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_252_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_253 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_253_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_3_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_253_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_253_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_253_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_254 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_254_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_2_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_254_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_254_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_254_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  ProcessingElement_IDTYPE_WDTYPE_ODTYPE  pe_array_0_0_run_cmp_255 (
      .input_in_rsc_dat(nl_pe_array_0_0_run_cmp_255_input_in_rsc_dat[7:0]),
      .psum_in_rsc_dat(accum_fifo_1_rsci_output_rsc_z),
      .weight_rsc_dat(nl_pe_array_0_0_run_cmp_255_weight_rsc_dat[7:0]),
      .input_out_rsc_z(pe_array_0_0_run_cmp_255_input_out_rsc_z),
      .psum_out_rsc_z(pe_array_0_0_run_cmp_255_psum_out_rsc_z),
      .clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .arst_n(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_ODTYPE_1  accum_fifo_0_run_cmp (
      .input_rsc_dat(nl_accum_fifo_0_run_cmp_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_0_run_cmp_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  Fifo_ODTYPE_1  accum_fifo_0_run_cmp_1 (
      .input_rsc_dat(nl_accum_fifo_0_run_cmp_1_input_rsc_dat[15:0]),
      .output_rsc_z(accum_fifo_0_run_cmp_1_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
    );
  Fifo_IDTYPE_1  input_fifo_0_run_cmp (
      .input_rsc_dat(nl_input_fifo_0_run_cmp_input_rsc_dat[7:0]),
      .output_rsc_z(input_fifo_0_run_cmp_output_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ccs_ccore_arst(arst_n),
      .ccs_ccore_start_rsc_dat(main_stage_0_2)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .input_rsc_dat(input_rsc_dat),
      .input_rsc_vld(input_rsc_vld),
      .input_rsc_rdy(input_rsc_rdy),
      .run_wen(run_wen),
      .input_rsci_oswt(reg_input_rsci_irdy_run_psct_cse),
      .input_rsci_wen_comp(input_rsci_wen_comp),
      .input_rsci_idat_mxwt(input_rsci_idat_mxwt)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weight_rsc_dat(weight_rsc_dat),
      .weight_rsc_vld(weight_rsc_vld),
      .weight_rsc_rdy(weight_rsc_rdy),
      .run_wen(run_wen),
      .weight_rsci_oswt(reg_weight_rsci_irdy_run_psct_cse),
      .weight_rsci_wen_comp(weight_rsci_wen_comp),
      .weight_rsci_idat_mxwt(weight_rsci_idat_mxwt)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .output_rsc_dat(output_rsc_dat),
      .output_rsc_vld(output_rsc_vld),
      .output_rsc_rdy(output_rsc_rdy),
      .run_wen(run_wen),
      .output_rsci_oswt(reg_output_rsci_ivld_run_psct_cse),
      .output_rsci_wen_comp(output_rsci_wen_comp),
      .output_rsci_idat(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_output_rsci_idat[255:0])
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(reg_loopIndicesIn_rsci_oswt_cse),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .paramsIn_rsci_idat_mxwt(paramsIn_rsci_idat_mxwt)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .loopIndicesIn_rsc_dat(loopIndicesIn_rsc_dat),
      .loopIndicesIn_rsc_vld(loopIndicesIn_rsc_vld),
      .loopIndicesIn_rsc_rdy(loopIndicesIn_rsc_rdy),
      .run_wen(run_wen),
      .loopIndicesIn_rsci_oswt(reg_loopIndicesIn_rsci_oswt_cse),
      .loopIndicesIn_rsci_wen_comp(loopIndicesIn_rsci_wen_comp),
      .loopIndicesIn_rsci_idat_mxwt(loopIndicesIn_rsci_idat_mxwt)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_0_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_0_i_q_d(accum_buf_rsc_0_0_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_0_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_0_i_q_d_mxwt(accum_buf_rsc_0_0_i_q_d_mxwt),
      .accum_buf_rsc_0_0_i_we_d_pff(accum_buf_rsc_0_0_i_we_d_iff),
      .accum_buf_rsc_0_0_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_0_i_re_d_pff(accum_buf_rsc_0_0_i_re_d_iff),
      .accum_buf_rsc_0_0_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_1_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_1_i_q_d(accum_buf_rsc_0_1_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_1_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_1_i_q_d_mxwt(accum_buf_rsc_0_1_i_q_d_mxwt),
      .accum_buf_rsc_0_1_i_we_d_pff(accum_buf_rsc_0_1_i_we_d_iff),
      .accum_buf_rsc_0_1_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_1_i_re_d_pff(accum_buf_rsc_0_1_i_re_d_iff),
      .accum_buf_rsc_0_1_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_2_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_2_i_q_d(accum_buf_rsc_0_2_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_2_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_2_i_q_d_mxwt(accum_buf_rsc_0_2_i_q_d_mxwt),
      .accum_buf_rsc_0_2_i_we_d_pff(accum_buf_rsc_0_2_i_we_d_iff),
      .accum_buf_rsc_0_2_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_2_i_re_d_pff(accum_buf_rsc_0_2_i_re_d_iff),
      .accum_buf_rsc_0_2_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_3_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_3_i_q_d(accum_buf_rsc_0_3_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_3_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_3_i_q_d_mxwt(accum_buf_rsc_0_3_i_q_d_mxwt),
      .accum_buf_rsc_0_3_i_we_d_pff(accum_buf_rsc_0_3_i_we_d_iff),
      .accum_buf_rsc_0_3_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_3_i_re_d_pff(accum_buf_rsc_0_3_i_re_d_iff),
      .accum_buf_rsc_0_3_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_4_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_4_i_q_d(accum_buf_rsc_0_4_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_4_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_4_i_q_d_mxwt(accum_buf_rsc_0_4_i_q_d_mxwt),
      .accum_buf_rsc_0_4_i_we_d_pff(accum_buf_rsc_0_4_i_we_d_iff),
      .accum_buf_rsc_0_4_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_4_i_re_d_pff(accum_buf_rsc_0_4_i_re_d_iff),
      .accum_buf_rsc_0_4_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_5_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_5_i_q_d(accum_buf_rsc_0_5_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_5_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_5_i_q_d_mxwt(accum_buf_rsc_0_5_i_q_d_mxwt),
      .accum_buf_rsc_0_5_i_we_d_pff(accum_buf_rsc_0_5_i_we_d_iff),
      .accum_buf_rsc_0_5_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_5_i_re_d_pff(accum_buf_rsc_0_5_i_re_d_iff),
      .accum_buf_rsc_0_5_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_6_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_6_i_q_d(accum_buf_rsc_0_6_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_6_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_6_i_q_d_mxwt(accum_buf_rsc_0_6_i_q_d_mxwt),
      .accum_buf_rsc_0_6_i_we_d_pff(accum_buf_rsc_0_6_i_we_d_iff),
      .accum_buf_rsc_0_6_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_6_i_re_d_pff(accum_buf_rsc_0_6_i_re_d_iff),
      .accum_buf_rsc_0_6_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_7_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_7_i_q_d(accum_buf_rsc_0_7_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_7_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_7_i_q_d_mxwt(accum_buf_rsc_0_7_i_q_d_mxwt),
      .accum_buf_rsc_0_7_i_we_d_pff(accum_buf_rsc_0_7_i_we_d_iff),
      .accum_buf_rsc_0_7_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_7_i_re_d_pff(accum_buf_rsc_0_7_i_re_d_iff),
      .accum_buf_rsc_0_7_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_8_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_8_i_q_d(accum_buf_rsc_0_8_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_8_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_8_i_q_d_mxwt(accum_buf_rsc_0_8_i_q_d_mxwt),
      .accum_buf_rsc_0_8_i_we_d_pff(accum_buf_rsc_0_8_i_we_d_iff),
      .accum_buf_rsc_0_8_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_8_i_re_d_pff(accum_buf_rsc_0_8_i_re_d_iff),
      .accum_buf_rsc_0_8_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_9_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_9_i_q_d(accum_buf_rsc_0_9_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_9_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_9_i_q_d_mxwt(accum_buf_rsc_0_9_i_q_d_mxwt),
      .accum_buf_rsc_0_9_i_we_d_pff(accum_buf_rsc_0_9_i_we_d_iff),
      .accum_buf_rsc_0_9_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_9_i_re_d_pff(accum_buf_rsc_0_9_i_re_d_iff),
      .accum_buf_rsc_0_9_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_10_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_10_i_q_d(accum_buf_rsc_0_10_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_10_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_10_i_q_d_mxwt(accum_buf_rsc_0_10_i_q_d_mxwt),
      .accum_buf_rsc_0_10_i_we_d_pff(accum_buf_rsc_0_10_i_we_d_iff),
      .accum_buf_rsc_0_10_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_10_i_re_d_pff(accum_buf_rsc_0_10_i_re_d_iff),
      .accum_buf_rsc_0_10_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_11_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_11_i_q_d(accum_buf_rsc_0_11_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_11_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_11_i_q_d_mxwt(accum_buf_rsc_0_11_i_q_d_mxwt),
      .accum_buf_rsc_0_11_i_we_d_pff(accum_buf_rsc_0_11_i_we_d_iff),
      .accum_buf_rsc_0_11_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_11_i_re_d_pff(accum_buf_rsc_0_11_i_re_d_iff),
      .accum_buf_rsc_0_11_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_12_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_12_i_q_d(accum_buf_rsc_0_12_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_12_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_12_i_q_d_mxwt(accum_buf_rsc_0_12_i_q_d_mxwt),
      .accum_buf_rsc_0_12_i_we_d_pff(accum_buf_rsc_0_12_i_we_d_iff),
      .accum_buf_rsc_0_12_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_12_i_re_d_pff(accum_buf_rsc_0_12_i_re_d_iff),
      .accum_buf_rsc_0_12_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_13_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_13_i_q_d(accum_buf_rsc_0_13_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_13_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_13_i_q_d_mxwt(accum_buf_rsc_0_13_i_q_d_mxwt),
      .accum_buf_rsc_0_13_i_we_d_pff(accum_buf_rsc_0_13_i_we_d_iff),
      .accum_buf_rsc_0_13_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_13_i_re_d_pff(accum_buf_rsc_0_13_i_re_d_iff),
      .accum_buf_rsc_0_13_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_14_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_14_i_q_d(accum_buf_rsc_0_14_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_14_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_14_i_q_d_mxwt(accum_buf_rsc_0_14_i_q_d_mxwt),
      .accum_buf_rsc_0_14_i_we_d_pff(accum_buf_rsc_0_14_i_we_d_iff),
      .accum_buf_rsc_0_14_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_14_i_re_d_pff(accum_buf_rsc_0_14_i_re_d_iff),
      .accum_buf_rsc_0_14_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1 SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_accum_buf_rsc_0_15_i_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .accum_buf_rsc_0_15_i_q_d(accum_buf_rsc_0_15_i_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .accum_buf_rsc_0_15_i_oswt(reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .accum_buf_rsc_0_15_i_q_d_mxwt(accum_buf_rsc_0_15_i_q_d_mxwt),
      .accum_buf_rsc_0_15_i_we_d_pff(accum_buf_rsc_0_15_i_we_d_iff),
      .accum_buf_rsc_0_15_i_iswt0_1_pff(and_dcpl_3),
      .accum_buf_rsc_0_15_i_re_d_pff(accum_buf_rsc_0_15_i_re_d_iff),
      .accum_buf_rsc_0_15_i_oswt_pff(and_1006_rmff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_wait_dp SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_wait_dp_inst
      (
      .ensig_cgo_iro(and_10_rmff),
      .ensig_cgo_iro_1(and_14_rmff),
      .run_wen(run_wen),
      .ensig_cgo(reg_ensig_cgo_303_cse),
      .accum_fifo_15_rsci_ccs_ccore_en(accum_fifo_15_rsci_ccs_ccore_en),
      .ensig_cgo_1(reg_ensig_cgo_302_cse),
      .output_fifo_0_rsci_ccs_ccore_en(output_fifo_0_rsci_ccs_ccore_en)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .input_rsci_wen_comp(input_rsci_wen_comp),
      .weight_rsci_wen_comp(weight_rsci_wen_comp),
      .output_rsci_wen_comp(output_rsci_wen_comp),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .loopIndicesIn_rsci_wen_comp(loopIndicesIn_rsci_wen_comp)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_run_fsm SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_run_fsm_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output)
    );
  assign output_and_cse = run_wen & (~((~ reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse)
      | step_slc_16_2_itm_3 | (~ step_if_3_if_step_if_3_if_and_1_itm_3)));
  assign and_10_rmff = (main_stage_0_2 | reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse)
      & (fsm_output[1]);
  assign and_14_rmff = (reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse |
      reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse) & (fsm_output[1]);
  assign and_1006_rmff = step_if_1_acc_itm_16_1 & (~ step_if_2_if_step_if_2_if_nor_1_tmp)
      & (fsm_output[1]);
  assign step_and_cse = run_wen & (~ (fsm_output[0]));
  assign psumIn_reg_array_and_cse = run_wen & (~ reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse);
  assign num_pixels_and_cse = run_wen & step_acc_itm_16;
  assign weight_reg_array_and_cse = run_wen & (or_dcpl_5 | or_dcpl_2);
  assign weight_reg_array_and_16_cse = run_wen & (or_dcpl_8 | or_dcpl_2);
  assign weight_reg_array_and_32_cse = run_wen & (or_dcpl_5 | or_dcpl_11);
  assign weight_reg_array_and_48_cse = run_wen & (or_dcpl_8 | or_dcpl_11);
  assign weight_reg_array_and_64_cse = run_wen & (or_dcpl_5 | or_dcpl_15);
  assign weight_reg_array_and_80_cse = run_wen & (or_dcpl_8 | or_dcpl_15);
  assign weight_reg_array_and_96_cse = run_wen & (or_dcpl_5 | or_dcpl_19);
  assign weight_reg_array_and_112_cse = run_wen & (or_dcpl_8 | or_dcpl_19);
  assign weight_reg_array_and_128_cse = run_wen & (or_dcpl_5 | or_dcpl_22);
  assign weight_reg_array_and_144_cse = run_wen & (or_dcpl_8 | or_dcpl_22);
  assign weight_reg_array_and_160_cse = run_wen & (or_dcpl_5 | or_dcpl_25);
  assign weight_reg_array_and_176_cse = run_wen & (or_dcpl_8 | or_dcpl_25);
  assign weight_reg_array_and_192_cse = run_wen & (or_dcpl_5 | or_dcpl_28);
  assign weight_reg_array_and_208_cse = run_wen & (or_dcpl_8 | or_dcpl_28);
  assign weight_reg_array_and_224_cse = run_wen & (or_dcpl_5 | or_dcpl_18 | (step_step_sva_1[3]));
  assign weight_reg_array_and_240_cse = run_wen & ((~((~((step_step_sva_1[3:0]!=4'b0000)))
      | exitL_exit_step_sva)) | or_dcpl_4);
  assign step_if_3_if_and_1_cse = run_wen & main_stage_0_2 & (~ step_slc_16_2_itm_1);
  assign step_if_3_if_and_2_cse = run_wen & (~ step_acc_4_itm_16_1);
  assign step_if_2_if_step_if_2_if_nor_1_tmp = ~((loopIndicesIn_crt_lpi_1_dfm_mx0!=48'b000000000000000000000000000000000000000000000000));
  assign nl_step_if_1_acc_nl = ({1'b1 , step_step_lpi_1_dfm_1}) + conv_u2u_16_17(~
      num_pixels_lpi_1_dfm_mx0) + 17'b00000000000000001;
  assign step_if_1_acc_nl = nl_step_if_1_acc_nl[16:0];
  assign step_if_1_acc_itm_16_1 = readslicef_17_1_16((step_if_1_acc_nl));
  assign step_in_col_value_lpi_1_dfm_mx1 = MUX_v_128_2_2(step_in_col_value_lpi_1_dfm,
      input_rsci_idat_mxwt, step_acc_2_cse_16_sva_st_1_1);
  assign nl_operator_16_false_acc_nl = conv_u2u_12_13(step_step_lpi_1_dfm_1[15:4])
      + 13'b1111111111111;
  assign operator_16_false_acc_nl = nl_operator_16_false_acc_nl[12:0];
  assign operator_16_false_acc_itm_12_1 = readslicef_13_1_12((operator_16_false_acc_nl));
  assign nl_num_pixels_mul_nl = (paramsIn_rsci_idat_mxwt[31:16]) * (paramsIn_rsci_idat_mxwt[15:0]);
  assign num_pixels_mul_nl = nl_num_pixels_mul_nl[15:0];
  assign num_pixels_lpi_1_dfm_mx0 = MUX_v_16_2_2(num_pixels_lpi_1_dfm, (num_pixels_mul_nl),
      exitL_exit_step_sva);
  assign loopIndicesIn_crt_lpi_1_dfm_mx0 = MUX_v_48_2_2(loopIndicesIn_crt_lpi_1_dfm,
      loopIndicesIn_rsci_idat_mxwt, exitL_exit_step_sva);
  assign paramsIn_crt_lpi_1_dfm_127_80_mx0 = MUX_v_48_2_2(paramsIn_crt_lpi_1_dfm_127_80,
      (paramsIn_rsci_idat_mxwt[79:32]), exitL_exit_step_sva);
  assign nl_step_step_sva_3 = step_step_lpi_1_dfm_1 + 16'b0000000000000001;
  assign step_step_sva_3 = nl_step_step_sva_3[15:0];
  assign nl_step_acc_4_nl = conv_u2u_16_17(step_step_lpi_1_dfm_1) + 17'b11111111111100001;
  assign step_acc_4_nl = nl_step_acc_4_nl[16:0];
  assign step_acc_4_itm_16_1 = readslicef_17_1_16((step_acc_4_nl));
  assign step_not_10_nl = ~ exitL_exit_step_sva;
  assign step_step_lpi_1_dfm_1 = MUX_v_16_2_2(16'b0000000000000000, step_step_sva_1,
      (step_not_10_nl));
  assign nl_operator_16_false_1_acc_psp_sva_1 = conv_u2s_16_17(paramsIn_crt_lpi_1_dfm_127_80_mx0[47:32])
      + 17'b11111111111111111;
  assign operator_16_false_1_acc_psp_sva_1 = nl_operator_16_false_1_acc_psp_sva_1[16:0];
  assign nl_operator_16_false_acc_psp_sva_1 = conv_u2s_16_17(paramsIn_crt_lpi_1_dfm_127_80_mx0[15:0])
      + 17'b11111111111111111;
  assign operator_16_false_acc_psp_sva_1 = nl_operator_16_false_acc_psp_sva_1[16:0];
  assign nl_operator_16_false_2_acc_psp_sva_1 = conv_u2s_16_17(paramsIn_crt_lpi_1_dfm_127_80_mx0[31:16])
      + 17'b11111111111111111;
  assign operator_16_false_2_acc_psp_sva_1 = nl_operator_16_false_2_acc_psp_sva_1[16:0];
  assign or_dcpl_1 = ~((step_step_sva_1[2:1]==2'b11));
  assign or_dcpl_2 = or_dcpl_1 | (~ (step_step_sva_1[3]));
  assign or_dcpl_4 = (~ operator_16_false_acc_itm_12_1) | main_stage_0_2;
  assign or_dcpl_5 = or_dcpl_4 | exitL_exit_step_sva | (~ (step_step_sva_1[0]));
  assign or_dcpl_8 = or_dcpl_4 | exitL_exit_step_sva | (step_step_sva_1[0]);
  assign or_dcpl_10 = (step_step_sva_1[2:1]!=2'b10);
  assign or_dcpl_11 = or_dcpl_10 | (~ (step_step_sva_1[3]));
  assign or_dcpl_14 = (step_step_sva_1[2:1]!=2'b01);
  assign or_dcpl_15 = or_dcpl_14 | (~ (step_step_sva_1[3]));
  assign or_dcpl_18 = (step_step_sva_1[2:1]!=2'b00);
  assign or_dcpl_19 = or_dcpl_18 | (~ (step_step_sva_1[3]));
  assign or_dcpl_22 = or_dcpl_1 | (step_step_sva_1[3]);
  assign or_dcpl_25 = or_dcpl_10 | (step_step_sva_1[3]);
  assign or_dcpl_28 = or_dcpl_14 | (step_step_sva_1[3]);
  assign and_dcpl_3 = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse & (~
      step_slc_16_2_itm_3);
  assign or_dcpl_42 = ~((step_step_lpi_1_dfm_1_3_0[1]) & (step_step_lpi_1_dfm_1_3_0[3]));
  assign or_dcpl_43 = ~(operator_16_false_slc_operator_16_false_acc_12_svs_st_1 &
      (step_step_lpi_1_dfm_1_3_0[2]));
  assign or_dcpl_44 = or_dcpl_43 | (~ (step_step_lpi_1_dfm_1_3_0[0]));
  assign or_dcpl_45 = or_dcpl_44 | or_dcpl_42;
  assign or_dcpl_46 = or_dcpl_43 | (step_step_lpi_1_dfm_1_3_0[0]);
  assign or_dcpl_47 = or_dcpl_46 | or_dcpl_42;
  assign or_dcpl_48 = (step_step_lpi_1_dfm_1_3_0[1]) | (~ (step_step_lpi_1_dfm_1_3_0[3]));
  assign or_dcpl_49 = or_dcpl_44 | or_dcpl_48;
  assign or_dcpl_50 = or_dcpl_46 | or_dcpl_48;
  assign or_dcpl_51 = (~ operator_16_false_slc_operator_16_false_acc_12_svs_st_1)
      | (step_step_lpi_1_dfm_1_3_0[2]);
  assign or_dcpl_52 = or_dcpl_51 | (~ (step_step_lpi_1_dfm_1_3_0[0]));
  assign or_dcpl_53 = or_dcpl_52 | or_dcpl_42;
  assign or_dcpl_54 = or_dcpl_51 | (step_step_lpi_1_dfm_1_3_0[0]);
  assign or_dcpl_55 = or_dcpl_54 | or_dcpl_42;
  assign or_dcpl_56 = or_dcpl_52 | or_dcpl_48;
  assign or_dcpl_57 = or_dcpl_54 | or_dcpl_48;
  assign or_dcpl_58 = (~ (step_step_lpi_1_dfm_1_3_0[1])) | (step_step_lpi_1_dfm_1_3_0[3]);
  assign or_dcpl_59 = or_dcpl_44 | or_dcpl_58;
  assign or_dcpl_60 = or_dcpl_46 | or_dcpl_58;
  assign or_dcpl_61 = (step_step_lpi_1_dfm_1_3_0[1]) | (step_step_lpi_1_dfm_1_3_0[3]);
  assign or_dcpl_62 = or_dcpl_44 | or_dcpl_61;
  assign or_dcpl_63 = or_dcpl_46 | or_dcpl_61;
  assign or_dcpl_64 = or_dcpl_52 | or_dcpl_58;
  assign or_dcpl_65 = or_dcpl_54 | or_dcpl_58;
  assign or_dcpl_66 = or_dcpl_52 | or_dcpl_61;
  assign or_dcpl_69 = or_dcpl_54 | (step_step_lpi_1_dfm_1_3_0[1]) | (~ main_stage_0_2)
      | (step_step_lpi_1_dfm_1_3_0[3]);
  assign nl_step_acc_6_nl = conv_u2u_16_17(step_step_sva_3) + conv_u2u_16_17(~ num_pixels_lpi_1_dfm_mx0);
  assign step_acc_6_nl = nl_step_acc_6_nl[16:0];
  assign nl_step_acc_nl = conv_u2u_16_17(readslicef_17_16_1((step_acc_6_nl))) + 17'b10111111111110001;
  assign step_acc_nl = nl_step_acc_nl[16:0];
  assign step_acc_itm_16 = readslicef_17_1_16((step_acc_nl));
  assign accum_buf_rsc_0_0_i_radr_d_pff = step_step_lpi_1_dfm_1[7:0];
  assign accum_buf_rsc_0_0_i_wadr_d_pff = inputIn_reg_array_1_1_sva;
  assign accum_buf_rsc_0_0_i_d_d = output_fifo_0_rsci_output_rsc_z;
  assign accum_buf_rsc_0_0_i_we_d_pff = accum_buf_rsc_0_0_i_we_d_iff;
  assign accum_buf_rsc_0_0_i_re_d_pff = accum_buf_rsc_0_0_i_re_d_iff;
  assign accum_buf_rsc_0_1_i_d_d = output_fifo_1_rsci_output_rsc_z;
  assign accum_buf_rsc_0_1_i_we_d_pff = accum_buf_rsc_0_1_i_we_d_iff;
  assign accum_buf_rsc_0_1_i_re_d_pff = accum_buf_rsc_0_1_i_re_d_iff;
  assign accum_buf_rsc_0_2_i_d_d = output_fifo_2_rsci_output_rsc_z;
  assign accum_buf_rsc_0_2_i_we_d_pff = accum_buf_rsc_0_2_i_we_d_iff;
  assign accum_buf_rsc_0_2_i_re_d_pff = accum_buf_rsc_0_2_i_re_d_iff;
  assign accum_buf_rsc_0_3_i_d_d = output_fifo_3_rsci_output_rsc_z;
  assign accum_buf_rsc_0_3_i_we_d_pff = accum_buf_rsc_0_3_i_we_d_iff;
  assign accum_buf_rsc_0_3_i_re_d_pff = accum_buf_rsc_0_3_i_re_d_iff;
  assign accum_buf_rsc_0_4_i_d_d = output_fifo_4_rsci_output_rsc_z;
  assign accum_buf_rsc_0_4_i_we_d_pff = accum_buf_rsc_0_4_i_we_d_iff;
  assign accum_buf_rsc_0_4_i_re_d_pff = accum_buf_rsc_0_4_i_re_d_iff;
  assign accum_buf_rsc_0_5_i_d_d = output_fifo_5_rsci_output_rsc_z;
  assign accum_buf_rsc_0_5_i_we_d_pff = accum_buf_rsc_0_5_i_we_d_iff;
  assign accum_buf_rsc_0_5_i_re_d_pff = accum_buf_rsc_0_5_i_re_d_iff;
  assign accum_buf_rsc_0_6_i_d_d = output_fifo_6_rsci_output_rsc_z;
  assign accum_buf_rsc_0_6_i_we_d_pff = accum_buf_rsc_0_6_i_we_d_iff;
  assign accum_buf_rsc_0_6_i_re_d_pff = accum_buf_rsc_0_6_i_re_d_iff;
  assign accum_buf_rsc_0_7_i_d_d = output_fifo_7_rsci_output_rsc_z;
  assign accum_buf_rsc_0_7_i_we_d_pff = accum_buf_rsc_0_7_i_we_d_iff;
  assign accum_buf_rsc_0_7_i_re_d_pff = accum_buf_rsc_0_7_i_re_d_iff;
  assign accum_buf_rsc_0_8_i_d_d = output_fifo_8_rsci_output_rsc_z;
  assign accum_buf_rsc_0_8_i_we_d_pff = accum_buf_rsc_0_8_i_we_d_iff;
  assign accum_buf_rsc_0_8_i_re_d_pff = accum_buf_rsc_0_8_i_re_d_iff;
  assign accum_buf_rsc_0_9_i_d_d = output_fifo_9_rsci_output_rsc_z;
  assign accum_buf_rsc_0_9_i_we_d_pff = accum_buf_rsc_0_9_i_we_d_iff;
  assign accum_buf_rsc_0_9_i_re_d_pff = accum_buf_rsc_0_9_i_re_d_iff;
  assign accum_buf_rsc_0_10_i_d_d = output_fifo_10_rsci_output_rsc_z;
  assign accum_buf_rsc_0_10_i_we_d_pff = accum_buf_rsc_0_10_i_we_d_iff;
  assign accum_buf_rsc_0_10_i_re_d_pff = accum_buf_rsc_0_10_i_re_d_iff;
  assign accum_buf_rsc_0_11_i_d_d = output_fifo_11_rsci_output_rsc_z;
  assign accum_buf_rsc_0_11_i_we_d_pff = accum_buf_rsc_0_11_i_we_d_iff;
  assign accum_buf_rsc_0_11_i_re_d_pff = accum_buf_rsc_0_11_i_re_d_iff;
  assign accum_buf_rsc_0_12_i_d_d = output_fifo_12_rsci_output_rsc_z;
  assign accum_buf_rsc_0_12_i_we_d_pff = accum_buf_rsc_0_12_i_we_d_iff;
  assign accum_buf_rsc_0_12_i_re_d_pff = accum_buf_rsc_0_12_i_re_d_iff;
  assign accum_buf_rsc_0_13_i_d_d = output_fifo_13_rsci_output_rsc_z;
  assign accum_buf_rsc_0_13_i_we_d_pff = accum_buf_rsc_0_13_i_we_d_iff;
  assign accum_buf_rsc_0_13_i_re_d_pff = accum_buf_rsc_0_13_i_re_d_iff;
  assign accum_buf_rsc_0_14_i_d_d = output_fifo_14_rsci_output_rsc_z;
  assign accum_buf_rsc_0_14_i_we_d_pff = accum_buf_rsc_0_14_i_we_d_iff;
  assign accum_buf_rsc_0_14_i_re_d_pff = accum_buf_rsc_0_14_i_re_d_iff;
  assign accum_buf_rsc_0_15_i_d_d = accum_fifo_0_run_cmp_1_output_rsc_z;
  assign accum_buf_rsc_0_15_i_we_d_pff = accum_buf_rsc_0_15_i_we_d_iff;
  assign accum_buf_rsc_0_15_i_re_d_pff = accum_buf_rsc_0_15_i_re_d_iff;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_loopIndicesIn_rsci_oswt_cse <= 1'b0;
      reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse <= 1'b0;
      reg_ensig_cgo_303_cse <= 1'b0;
      reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse <= 1'b0;
      reg_ensig_cgo_302_cse <= 1'b0;
      reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse <=
          1'b0;
      reg_output_rsci_ivld_run_psct_cse <= 1'b0;
      reg_weight_rsci_irdy_run_psct_cse <= 1'b0;
      reg_input_rsci_irdy_run_psct_cse <= 1'b0;
      step_acc_2_cse_16_sva_st_1_1 <= 1'b0;
      operator_16_false_slc_operator_16_false_acc_12_svs_st_1 <= 1'b0;
      main_stage_0_2 <= 1'b0;
      step_step_lpi_1_dfm_1_3_0 <= 4'b0000;
      step_slc_16_2_itm_1 <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_loopIndicesIn_rsci_oswt_cse <= ~(step_acc_itm_16 & (fsm_output[1]));
      reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse <= main_stage_0_2;
      reg_ensig_cgo_303_cse <= and_10_rmff;
      reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse <= reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse;
      reg_ensig_cgo_302_cse <= and_14_rmff;
      reg_accum_buf_rsc_0_15_i_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse <=
          and_1006_rmff;
      reg_output_rsci_ivld_run_psct_cse <= and_dcpl_3 & step_if_3_if_step_if_3_if_and_1_itm_3;
      reg_weight_rsci_irdy_run_psct_cse <= operator_16_false_acc_itm_12_1 & (fsm_output[1]);
      reg_input_rsci_irdy_run_psct_cse <= step_if_1_acc_itm_16_1 & (fsm_output[1]);
      step_acc_2_cse_16_sva_st_1_1 <= step_if_1_acc_itm_16_1;
      operator_16_false_slc_operator_16_false_acc_12_svs_st_1 <= operator_16_false_acc_itm_12_1;
      main_stage_0_2 <= fsm_output[1];
      step_step_lpi_1_dfm_1_3_0 <= step_step_lpi_1_dfm_1[3:0];
      step_slc_16_2_itm_1 <= step_acc_4_itm_16_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      output_rsci_idat_15_0 <= 16'b0000000000000000;
      output_rsci_idat_31_16 <= 16'b0000000000000000;
      output_rsci_idat_47_32 <= 16'b0000000000000000;
      output_rsci_idat_63_48 <= 16'b0000000000000000;
      output_rsci_idat_79_64 <= 16'b0000000000000000;
      output_rsci_idat_95_80 <= 16'b0000000000000000;
      output_rsci_idat_111_96 <= 16'b0000000000000000;
      output_rsci_idat_127_112 <= 16'b0000000000000000;
      output_rsci_idat_143_128 <= 16'b0000000000000000;
      output_rsci_idat_159_144 <= 16'b0000000000000000;
      output_rsci_idat_175_160 <= 16'b0000000000000000;
      output_rsci_idat_191_176 <= 16'b0000000000000000;
      output_rsci_idat_207_192 <= 16'b0000000000000000;
      output_rsci_idat_223_208 <= 16'b0000000000000000;
      output_rsci_idat_239_224 <= 16'b0000000000000000;
      output_rsci_idat_255_240 <= 16'b0000000000000000;
    end
    else if ( output_and_cse ) begin
      output_rsci_idat_15_0 <= output_fifo_0_rsci_output_rsc_z;
      output_rsci_idat_31_16 <= output_fifo_1_rsci_output_rsc_z;
      output_rsci_idat_47_32 <= output_fifo_2_rsci_output_rsc_z;
      output_rsci_idat_63_48 <= output_fifo_3_rsci_output_rsc_z;
      output_rsci_idat_79_64 <= output_fifo_4_rsci_output_rsc_z;
      output_rsci_idat_95_80 <= output_fifo_5_rsci_output_rsc_z;
      output_rsci_idat_111_96 <= output_fifo_6_rsci_output_rsc_z;
      output_rsci_idat_127_112 <= output_fifo_7_rsci_output_rsc_z;
      output_rsci_idat_143_128 <= output_fifo_8_rsci_output_rsc_z;
      output_rsci_idat_159_144 <= output_fifo_9_rsci_output_rsc_z;
      output_rsci_idat_175_160 <= output_fifo_10_rsci_output_rsc_z;
      output_rsci_idat_191_176 <= output_fifo_11_rsci_output_rsc_z;
      output_rsci_idat_207_192 <= output_fifo_12_rsci_output_rsc_z;
      output_rsci_idat_223_208 <= output_fifo_13_rsci_output_rsc_z;
      output_rsci_idat_239_224 <= output_fifo_14_rsci_output_rsc_z;
      output_rsci_idat_255_240 <= accum_fifo_0_run_cmp_1_output_rsc_z;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      exitL_exit_step_sva <= 1'b1;
    end
    else if ( step_and_cse ) begin
      exitL_exit_step_sva <= ~ step_acc_itm_16;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      psumIn_reg_array_16_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_16_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_15_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_14_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_13_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_12_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_11_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_10_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_9_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_8_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_7_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_6_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_5_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_4_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_3_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_2_1_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_16_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_15_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_14_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_13_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_12_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_11_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_10_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_9_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_8_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_7_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_6_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_5_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_4_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_3_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_2_sva <= 16'b0000000000000000;
      psumIn_reg_array_1_1_sva <= 16'b0000000000000000;
      inputIn_reg_array_16_15_sva <= 8'b00000000;
      inputIn_reg_array_16_14_sva <= 8'b00000000;
      inputIn_reg_array_16_13_sva <= 8'b00000000;
      inputIn_reg_array_16_12_sva <= 8'b00000000;
      inputIn_reg_array_16_11_sva <= 8'b00000000;
      inputIn_reg_array_16_10_sva <= 8'b00000000;
      inputIn_reg_array_16_9_sva <= 8'b00000000;
      inputIn_reg_array_16_8_sva <= 8'b00000000;
      inputIn_reg_array_16_7_sva <= 8'b00000000;
      inputIn_reg_array_16_6_sva <= 8'b00000000;
      inputIn_reg_array_16_5_sva <= 8'b00000000;
      inputIn_reg_array_16_4_sva <= 8'b00000000;
      inputIn_reg_array_16_3_sva <= 8'b00000000;
      inputIn_reg_array_16_2_sva <= 8'b00000000;
      inputIn_reg_array_16_1_sva <= 8'b00000000;
      inputIn_reg_array_15_15_sva <= 8'b00000000;
      inputIn_reg_array_15_14_sva <= 8'b00000000;
      inputIn_reg_array_15_13_sva <= 8'b00000000;
      inputIn_reg_array_15_12_sva <= 8'b00000000;
      inputIn_reg_array_15_11_sva <= 8'b00000000;
      inputIn_reg_array_15_10_sva <= 8'b00000000;
      inputIn_reg_array_15_9_sva <= 8'b00000000;
      inputIn_reg_array_15_8_sva <= 8'b00000000;
      inputIn_reg_array_15_7_sva <= 8'b00000000;
      inputIn_reg_array_15_6_sva <= 8'b00000000;
      inputIn_reg_array_15_5_sva <= 8'b00000000;
      inputIn_reg_array_15_4_sva <= 8'b00000000;
      inputIn_reg_array_15_3_sva <= 8'b00000000;
      inputIn_reg_array_15_2_sva <= 8'b00000000;
      inputIn_reg_array_15_1_sva <= 8'b00000000;
      inputIn_reg_array_14_15_sva <= 8'b00000000;
      inputIn_reg_array_14_14_sva <= 8'b00000000;
      inputIn_reg_array_14_13_sva <= 8'b00000000;
      inputIn_reg_array_14_12_sva <= 8'b00000000;
      inputIn_reg_array_14_11_sva <= 8'b00000000;
      inputIn_reg_array_14_10_sva <= 8'b00000000;
      inputIn_reg_array_14_9_sva <= 8'b00000000;
      inputIn_reg_array_14_8_sva <= 8'b00000000;
      inputIn_reg_array_14_7_sva <= 8'b00000000;
      inputIn_reg_array_14_6_sva <= 8'b00000000;
      inputIn_reg_array_14_5_sva <= 8'b00000000;
      inputIn_reg_array_14_4_sva <= 8'b00000000;
      inputIn_reg_array_14_3_sva <= 8'b00000000;
      inputIn_reg_array_14_2_sva <= 8'b00000000;
      inputIn_reg_array_14_1_sva <= 8'b00000000;
      inputIn_reg_array_13_15_sva <= 8'b00000000;
      inputIn_reg_array_13_14_sva <= 8'b00000000;
      inputIn_reg_array_13_13_sva <= 8'b00000000;
      inputIn_reg_array_13_12_sva <= 8'b00000000;
      inputIn_reg_array_13_11_sva <= 8'b00000000;
      inputIn_reg_array_13_10_sva <= 8'b00000000;
      inputIn_reg_array_13_9_sva <= 8'b00000000;
      inputIn_reg_array_13_8_sva <= 8'b00000000;
      inputIn_reg_array_13_7_sva <= 8'b00000000;
      inputIn_reg_array_13_6_sva <= 8'b00000000;
      inputIn_reg_array_13_5_sva <= 8'b00000000;
      inputIn_reg_array_13_4_sva <= 8'b00000000;
      inputIn_reg_array_13_3_sva <= 8'b00000000;
      inputIn_reg_array_13_2_sva <= 8'b00000000;
      inputIn_reg_array_13_1_sva <= 8'b00000000;
      inputIn_reg_array_12_15_sva <= 8'b00000000;
      inputIn_reg_array_12_14_sva <= 8'b00000000;
      inputIn_reg_array_12_13_sva <= 8'b00000000;
      inputIn_reg_array_12_12_sva <= 8'b00000000;
      inputIn_reg_array_12_11_sva <= 8'b00000000;
      inputIn_reg_array_12_10_sva <= 8'b00000000;
      inputIn_reg_array_12_9_sva <= 8'b00000000;
      inputIn_reg_array_12_8_sva <= 8'b00000000;
      inputIn_reg_array_12_7_sva <= 8'b00000000;
      inputIn_reg_array_12_6_sva <= 8'b00000000;
      inputIn_reg_array_12_5_sva <= 8'b00000000;
      inputIn_reg_array_12_4_sva <= 8'b00000000;
      inputIn_reg_array_12_3_sva <= 8'b00000000;
      inputIn_reg_array_12_2_sva <= 8'b00000000;
      inputIn_reg_array_12_1_sva <= 8'b00000000;
      inputIn_reg_array_11_15_sva <= 8'b00000000;
      inputIn_reg_array_11_14_sva <= 8'b00000000;
      inputIn_reg_array_11_13_sva <= 8'b00000000;
      inputIn_reg_array_11_12_sva <= 8'b00000000;
      inputIn_reg_array_11_11_sva <= 8'b00000000;
      inputIn_reg_array_11_10_sva <= 8'b00000000;
      inputIn_reg_array_11_9_sva <= 8'b00000000;
      inputIn_reg_array_11_8_sva <= 8'b00000000;
      inputIn_reg_array_11_7_sva <= 8'b00000000;
      inputIn_reg_array_11_6_sva <= 8'b00000000;
      inputIn_reg_array_11_5_sva <= 8'b00000000;
      inputIn_reg_array_11_4_sva <= 8'b00000000;
      inputIn_reg_array_11_3_sva <= 8'b00000000;
      inputIn_reg_array_11_2_sva <= 8'b00000000;
      inputIn_reg_array_11_1_sva <= 8'b00000000;
      inputIn_reg_array_10_15_sva <= 8'b00000000;
      inputIn_reg_array_10_14_sva <= 8'b00000000;
      inputIn_reg_array_10_13_sva <= 8'b00000000;
      inputIn_reg_array_10_12_sva <= 8'b00000000;
      inputIn_reg_array_10_11_sva <= 8'b00000000;
      inputIn_reg_array_10_10_sva <= 8'b00000000;
      inputIn_reg_array_10_9_sva <= 8'b00000000;
      inputIn_reg_array_10_8_sva <= 8'b00000000;
      inputIn_reg_array_10_7_sva <= 8'b00000000;
      inputIn_reg_array_10_6_sva <= 8'b00000000;
      inputIn_reg_array_10_5_sva <= 8'b00000000;
      inputIn_reg_array_10_4_sva <= 8'b00000000;
      inputIn_reg_array_10_3_sva <= 8'b00000000;
      inputIn_reg_array_10_2_sva <= 8'b00000000;
      inputIn_reg_array_10_1_sva <= 8'b00000000;
      inputIn_reg_array_9_15_sva <= 8'b00000000;
      inputIn_reg_array_9_14_sva <= 8'b00000000;
      inputIn_reg_array_9_13_sva <= 8'b00000000;
      inputIn_reg_array_9_12_sva <= 8'b00000000;
      inputIn_reg_array_9_11_sva <= 8'b00000000;
      inputIn_reg_array_9_10_sva <= 8'b00000000;
      inputIn_reg_array_9_9_sva <= 8'b00000000;
      inputIn_reg_array_9_8_sva <= 8'b00000000;
      inputIn_reg_array_9_7_sva <= 8'b00000000;
      inputIn_reg_array_9_6_sva <= 8'b00000000;
      inputIn_reg_array_9_5_sva <= 8'b00000000;
      inputIn_reg_array_9_4_sva <= 8'b00000000;
      inputIn_reg_array_9_3_sva <= 8'b00000000;
      inputIn_reg_array_9_2_sva <= 8'b00000000;
      inputIn_reg_array_9_1_sva <= 8'b00000000;
      inputIn_reg_array_8_15_sva <= 8'b00000000;
      inputIn_reg_array_8_14_sva <= 8'b00000000;
      inputIn_reg_array_8_13_sva <= 8'b00000000;
      inputIn_reg_array_8_12_sva <= 8'b00000000;
      inputIn_reg_array_8_11_sva <= 8'b00000000;
      inputIn_reg_array_8_10_sva <= 8'b00000000;
      inputIn_reg_array_8_9_sva <= 8'b00000000;
      inputIn_reg_array_8_8_sva <= 8'b00000000;
      inputIn_reg_array_8_7_sva <= 8'b00000000;
      inputIn_reg_array_8_6_sva <= 8'b00000000;
      inputIn_reg_array_8_5_sva <= 8'b00000000;
      inputIn_reg_array_8_4_sva <= 8'b00000000;
      inputIn_reg_array_8_3_sva <= 8'b00000000;
      inputIn_reg_array_8_2_sva <= 8'b00000000;
      inputIn_reg_array_8_1_sva <= 8'b00000000;
      inputIn_reg_array_7_15_sva <= 8'b00000000;
      inputIn_reg_array_7_14_sva <= 8'b00000000;
      inputIn_reg_array_7_13_sva <= 8'b00000000;
      inputIn_reg_array_7_12_sva <= 8'b00000000;
      inputIn_reg_array_7_11_sva <= 8'b00000000;
      inputIn_reg_array_7_10_sva <= 8'b00000000;
      inputIn_reg_array_7_9_sva <= 8'b00000000;
      inputIn_reg_array_7_8_sva <= 8'b00000000;
      inputIn_reg_array_7_7_sva <= 8'b00000000;
      inputIn_reg_array_7_6_sva <= 8'b00000000;
      inputIn_reg_array_7_5_sva <= 8'b00000000;
      inputIn_reg_array_7_4_sva <= 8'b00000000;
      inputIn_reg_array_7_3_sva <= 8'b00000000;
      inputIn_reg_array_7_2_sva <= 8'b00000000;
      inputIn_reg_array_7_1_sva <= 8'b00000000;
      inputIn_reg_array_6_15_sva <= 8'b00000000;
      inputIn_reg_array_6_14_sva <= 8'b00000000;
      inputIn_reg_array_6_13_sva <= 8'b00000000;
      inputIn_reg_array_6_12_sva <= 8'b00000000;
      inputIn_reg_array_6_11_sva <= 8'b00000000;
      inputIn_reg_array_6_10_sva <= 8'b00000000;
      inputIn_reg_array_6_9_sva <= 8'b00000000;
      inputIn_reg_array_6_8_sva <= 8'b00000000;
      inputIn_reg_array_6_7_sva <= 8'b00000000;
      inputIn_reg_array_6_6_sva <= 8'b00000000;
      inputIn_reg_array_6_5_sva <= 8'b00000000;
      inputIn_reg_array_6_4_sva <= 8'b00000000;
      inputIn_reg_array_6_3_sva <= 8'b00000000;
      inputIn_reg_array_6_2_sva <= 8'b00000000;
      inputIn_reg_array_6_1_sva <= 8'b00000000;
      inputIn_reg_array_5_15_sva <= 8'b00000000;
      inputIn_reg_array_5_14_sva <= 8'b00000000;
      inputIn_reg_array_5_13_sva <= 8'b00000000;
      inputIn_reg_array_5_12_sva <= 8'b00000000;
      inputIn_reg_array_5_11_sva <= 8'b00000000;
      inputIn_reg_array_5_10_sva <= 8'b00000000;
      inputIn_reg_array_5_9_sva <= 8'b00000000;
      inputIn_reg_array_5_8_sva <= 8'b00000000;
      inputIn_reg_array_5_7_sva <= 8'b00000000;
      inputIn_reg_array_5_6_sva <= 8'b00000000;
      inputIn_reg_array_5_5_sva <= 8'b00000000;
      inputIn_reg_array_5_4_sva <= 8'b00000000;
      inputIn_reg_array_5_3_sva <= 8'b00000000;
      inputIn_reg_array_5_2_sva <= 8'b00000000;
      inputIn_reg_array_5_1_sva <= 8'b00000000;
      inputIn_reg_array_4_15_sva <= 8'b00000000;
      inputIn_reg_array_4_14_sva <= 8'b00000000;
      inputIn_reg_array_4_13_sva <= 8'b00000000;
      inputIn_reg_array_4_12_sva <= 8'b00000000;
      inputIn_reg_array_4_11_sva <= 8'b00000000;
      inputIn_reg_array_4_10_sva <= 8'b00000000;
      inputIn_reg_array_4_9_sva <= 8'b00000000;
      inputIn_reg_array_4_8_sva <= 8'b00000000;
      inputIn_reg_array_4_7_sva <= 8'b00000000;
      inputIn_reg_array_4_6_sva <= 8'b00000000;
      inputIn_reg_array_4_5_sva <= 8'b00000000;
      inputIn_reg_array_4_4_sva <= 8'b00000000;
      inputIn_reg_array_4_3_sva <= 8'b00000000;
      inputIn_reg_array_4_2_sva <= 8'b00000000;
      inputIn_reg_array_4_1_sva <= 8'b00000000;
      inputIn_reg_array_3_15_sva <= 8'b00000000;
      inputIn_reg_array_3_14_sva <= 8'b00000000;
      inputIn_reg_array_3_13_sva <= 8'b00000000;
      inputIn_reg_array_3_12_sva <= 8'b00000000;
      inputIn_reg_array_3_11_sva <= 8'b00000000;
      inputIn_reg_array_3_10_sva <= 8'b00000000;
      inputIn_reg_array_3_9_sva <= 8'b00000000;
      inputIn_reg_array_3_8_sva <= 8'b00000000;
      inputIn_reg_array_3_7_sva <= 8'b00000000;
      inputIn_reg_array_3_6_sva <= 8'b00000000;
      inputIn_reg_array_3_5_sva <= 8'b00000000;
      inputIn_reg_array_3_4_sva <= 8'b00000000;
      inputIn_reg_array_3_3_sva <= 8'b00000000;
      inputIn_reg_array_3_2_sva <= 8'b00000000;
      inputIn_reg_array_3_1_sva <= 8'b00000000;
      inputIn_reg_array_2_15_sva <= 8'b00000000;
      inputIn_reg_array_2_14_sva <= 8'b00000000;
      inputIn_reg_array_2_13_sva <= 8'b00000000;
      inputIn_reg_array_2_12_sva <= 8'b00000000;
      inputIn_reg_array_2_11_sva <= 8'b00000000;
      inputIn_reg_array_2_10_sva <= 8'b00000000;
      inputIn_reg_array_2_9_sva <= 8'b00000000;
      inputIn_reg_array_2_8_sva <= 8'b00000000;
      inputIn_reg_array_2_7_sva <= 8'b00000000;
      inputIn_reg_array_2_6_sva <= 8'b00000000;
      inputIn_reg_array_2_5_sva <= 8'b00000000;
      inputIn_reg_array_2_4_sva <= 8'b00000000;
      inputIn_reg_array_2_3_sva <= 8'b00000000;
      inputIn_reg_array_2_2_sva <= 8'b00000000;
      inputIn_reg_array_2_1_sva <= 8'b00000000;
      inputIn_reg_array_1_15_sva <= 8'b00000000;
      inputIn_reg_array_1_14_sva <= 8'b00000000;
      inputIn_reg_array_1_13_sva <= 8'b00000000;
      inputIn_reg_array_1_12_sva <= 8'b00000000;
      inputIn_reg_array_1_11_sva <= 8'b00000000;
      inputIn_reg_array_1_10_sva <= 8'b00000000;
      inputIn_reg_array_1_9_sva <= 8'b00000000;
      inputIn_reg_array_1_8_sva <= 8'b00000000;
      inputIn_reg_array_1_7_sva <= 8'b00000000;
      inputIn_reg_array_1_6_sva <= 8'b00000000;
      inputIn_reg_array_1_5_sva <= 8'b00000000;
      inputIn_reg_array_1_4_sva <= 8'b00000000;
      inputIn_reg_array_1_3_sva <= 8'b00000000;
      inputIn_reg_array_1_2_sva <= 8'b00000000;
    end
    else if ( psumIn_reg_array_and_cse ) begin
      psumIn_reg_array_16_16_sva <= MUX_v_16_2_2(psumIn_reg_array_16_16_sva, pe_array_0_0_run_cmp_1_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_15_sva <= MUX_v_16_2_2(psumIn_reg_array_16_15_sva, pe_array_0_0_run_cmp_2_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_14_sva <= MUX_v_16_2_2(psumIn_reg_array_16_14_sva, pe_array_0_0_run_cmp_3_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_13_sva <= MUX_v_16_2_2(psumIn_reg_array_16_13_sva, pe_array_0_0_run_cmp_4_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_12_sva <= MUX_v_16_2_2(psumIn_reg_array_16_12_sva, pe_array_0_0_run_cmp_5_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_11_sva <= MUX_v_16_2_2(psumIn_reg_array_16_11_sva, pe_array_0_0_run_cmp_6_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_10_sva <= MUX_v_16_2_2(psumIn_reg_array_16_10_sva, pe_array_0_0_run_cmp_7_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_9_sva <= MUX_v_16_2_2(psumIn_reg_array_16_9_sva, pe_array_0_0_run_cmp_8_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_8_sva <= MUX_v_16_2_2(psumIn_reg_array_16_8_sva, pe_array_0_0_run_cmp_9_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_7_sva <= MUX_v_16_2_2(psumIn_reg_array_16_7_sva, pe_array_0_0_run_cmp_10_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_6_sva <= MUX_v_16_2_2(psumIn_reg_array_16_6_sva, pe_array_0_0_run_cmp_11_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_5_sva <= MUX_v_16_2_2(psumIn_reg_array_16_5_sva, pe_array_0_0_run_cmp_12_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_4_sva <= MUX_v_16_2_2(psumIn_reg_array_16_4_sva, pe_array_0_0_run_cmp_13_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_3_sva <= MUX_v_16_2_2(psumIn_reg_array_16_3_sva, pe_array_0_0_run_cmp_14_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_2_sva <= MUX_v_16_2_2(psumIn_reg_array_16_2_sva, pe_array_0_0_run_cmp_15_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_16_1_sva <= MUX_v_16_2_2(psumIn_reg_array_16_1_sva, pe_array_0_0_run_cmp_16_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_16_sva <= MUX_v_16_2_2(psumIn_reg_array_15_16_sva, pe_array_0_0_run_cmp_17_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_15_sva <= MUX_v_16_2_2(psumIn_reg_array_15_15_sva, pe_array_0_0_run_cmp_18_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_14_sva <= MUX_v_16_2_2(psumIn_reg_array_15_14_sva, pe_array_0_0_run_cmp_19_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_13_sva <= MUX_v_16_2_2(psumIn_reg_array_15_13_sva, pe_array_0_0_run_cmp_20_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_12_sva <= MUX_v_16_2_2(psumIn_reg_array_15_12_sva, pe_array_0_0_run_cmp_21_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_11_sva <= MUX_v_16_2_2(psumIn_reg_array_15_11_sva, pe_array_0_0_run_cmp_22_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_10_sva <= MUX_v_16_2_2(psumIn_reg_array_15_10_sva, pe_array_0_0_run_cmp_23_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_9_sva <= MUX_v_16_2_2(psumIn_reg_array_15_9_sva, pe_array_0_0_run_cmp_24_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_8_sva <= MUX_v_16_2_2(psumIn_reg_array_15_8_sva, pe_array_0_0_run_cmp_25_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_7_sva <= MUX_v_16_2_2(psumIn_reg_array_15_7_sva, pe_array_0_0_run_cmp_26_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_6_sva <= MUX_v_16_2_2(psumIn_reg_array_15_6_sva, pe_array_0_0_run_cmp_27_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_5_sva <= MUX_v_16_2_2(psumIn_reg_array_15_5_sva, pe_array_0_0_run_cmp_28_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_4_sva <= MUX_v_16_2_2(psumIn_reg_array_15_4_sva, pe_array_0_0_run_cmp_29_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_3_sva <= MUX_v_16_2_2(psumIn_reg_array_15_3_sva, pe_array_0_0_run_cmp_30_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_2_sva <= MUX_v_16_2_2(psumIn_reg_array_15_2_sva, pe_array_0_0_run_cmp_31_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_15_1_sva <= MUX_v_16_2_2(psumIn_reg_array_15_1_sva, pe_array_0_0_run_cmp_32_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_16_sva <= MUX_v_16_2_2(psumIn_reg_array_14_16_sva, pe_array_0_0_run_cmp_33_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_15_sva <= MUX_v_16_2_2(psumIn_reg_array_14_15_sva, pe_array_0_0_run_cmp_34_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_14_sva <= MUX_v_16_2_2(psumIn_reg_array_14_14_sva, pe_array_0_0_run_cmp_35_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_13_sva <= MUX_v_16_2_2(psumIn_reg_array_14_13_sva, pe_array_0_0_run_cmp_36_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_12_sva <= MUX_v_16_2_2(psumIn_reg_array_14_12_sva, pe_array_0_0_run_cmp_37_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_11_sva <= MUX_v_16_2_2(psumIn_reg_array_14_11_sva, pe_array_0_0_run_cmp_38_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_10_sva <= MUX_v_16_2_2(psumIn_reg_array_14_10_sva, pe_array_0_0_run_cmp_39_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_9_sva <= MUX_v_16_2_2(psumIn_reg_array_14_9_sva, pe_array_0_0_run_cmp_40_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_8_sva <= MUX_v_16_2_2(psumIn_reg_array_14_8_sva, pe_array_0_0_run_cmp_41_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_7_sva <= MUX_v_16_2_2(psumIn_reg_array_14_7_sva, pe_array_0_0_run_cmp_42_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_6_sva <= MUX_v_16_2_2(psumIn_reg_array_14_6_sva, pe_array_0_0_run_cmp_43_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_5_sva <= MUX_v_16_2_2(psumIn_reg_array_14_5_sva, pe_array_0_0_run_cmp_44_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_4_sva <= MUX_v_16_2_2(psumIn_reg_array_14_4_sva, pe_array_0_0_run_cmp_45_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_3_sva <= MUX_v_16_2_2(psumIn_reg_array_14_3_sva, pe_array_0_0_run_cmp_46_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_2_sva <= MUX_v_16_2_2(psumIn_reg_array_14_2_sva, pe_array_0_0_run_cmp_47_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_14_1_sva <= MUX_v_16_2_2(psumIn_reg_array_14_1_sva, pe_array_0_0_run_cmp_48_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_16_sva <= MUX_v_16_2_2(psumIn_reg_array_13_16_sva, pe_array_0_0_run_cmp_49_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_15_sva <= MUX_v_16_2_2(psumIn_reg_array_13_15_sva, pe_array_0_0_run_cmp_50_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_14_sva <= MUX_v_16_2_2(psumIn_reg_array_13_14_sva, pe_array_0_0_run_cmp_51_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_13_sva <= MUX_v_16_2_2(psumIn_reg_array_13_13_sva, pe_array_0_0_run_cmp_52_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_12_sva <= MUX_v_16_2_2(psumIn_reg_array_13_12_sva, pe_array_0_0_run_cmp_53_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_11_sva <= MUX_v_16_2_2(psumIn_reg_array_13_11_sva, pe_array_0_0_run_cmp_54_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_10_sva <= MUX_v_16_2_2(psumIn_reg_array_13_10_sva, pe_array_0_0_run_cmp_55_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_9_sva <= MUX_v_16_2_2(psumIn_reg_array_13_9_sva, pe_array_0_0_run_cmp_56_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_8_sva <= MUX_v_16_2_2(psumIn_reg_array_13_8_sva, pe_array_0_0_run_cmp_57_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_7_sva <= MUX_v_16_2_2(psumIn_reg_array_13_7_sva, pe_array_0_0_run_cmp_58_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_6_sva <= MUX_v_16_2_2(psumIn_reg_array_13_6_sva, pe_array_0_0_run_cmp_59_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_5_sva <= MUX_v_16_2_2(psumIn_reg_array_13_5_sva, pe_array_0_0_run_cmp_60_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_4_sva <= MUX_v_16_2_2(psumIn_reg_array_13_4_sva, pe_array_0_0_run_cmp_61_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_3_sva <= MUX_v_16_2_2(psumIn_reg_array_13_3_sva, pe_array_0_0_run_cmp_62_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_2_sva <= MUX_v_16_2_2(psumIn_reg_array_13_2_sva, pe_array_0_0_run_cmp_63_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_13_1_sva <= MUX_v_16_2_2(psumIn_reg_array_13_1_sva, pe_array_0_0_run_cmp_64_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_16_sva <= MUX_v_16_2_2(psumIn_reg_array_12_16_sva, pe_array_0_0_run_cmp_65_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_15_sva <= MUX_v_16_2_2(psumIn_reg_array_12_15_sva, pe_array_0_0_run_cmp_66_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_14_sva <= MUX_v_16_2_2(psumIn_reg_array_12_14_sva, pe_array_0_0_run_cmp_67_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_13_sva <= MUX_v_16_2_2(psumIn_reg_array_12_13_sva, pe_array_0_0_run_cmp_68_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_12_sva <= MUX_v_16_2_2(psumIn_reg_array_12_12_sva, pe_array_0_0_run_cmp_69_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_11_sva <= MUX_v_16_2_2(psumIn_reg_array_12_11_sva, pe_array_0_0_run_cmp_70_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_10_sva <= MUX_v_16_2_2(psumIn_reg_array_12_10_sva, pe_array_0_0_run_cmp_71_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_9_sva <= MUX_v_16_2_2(psumIn_reg_array_12_9_sva, pe_array_0_0_run_cmp_72_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_8_sva <= MUX_v_16_2_2(psumIn_reg_array_12_8_sva, pe_array_0_0_run_cmp_73_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_7_sva <= MUX_v_16_2_2(psumIn_reg_array_12_7_sva, pe_array_0_0_run_cmp_74_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_6_sva <= MUX_v_16_2_2(psumIn_reg_array_12_6_sva, pe_array_0_0_run_cmp_75_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_5_sva <= MUX_v_16_2_2(psumIn_reg_array_12_5_sva, pe_array_0_0_run_cmp_76_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_4_sva <= MUX_v_16_2_2(psumIn_reg_array_12_4_sva, pe_array_0_0_run_cmp_77_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_3_sva <= MUX_v_16_2_2(psumIn_reg_array_12_3_sva, pe_array_0_0_run_cmp_78_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_2_sva <= MUX_v_16_2_2(psumIn_reg_array_12_2_sva, pe_array_0_0_run_cmp_79_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_12_1_sva <= MUX_v_16_2_2(psumIn_reg_array_12_1_sva, pe_array_0_0_run_cmp_80_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_16_sva <= MUX_v_16_2_2(psumIn_reg_array_11_16_sva, pe_array_0_0_run_cmp_81_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_15_sva <= MUX_v_16_2_2(psumIn_reg_array_11_15_sva, pe_array_0_0_run_cmp_82_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_14_sva <= MUX_v_16_2_2(psumIn_reg_array_11_14_sva, pe_array_0_0_run_cmp_83_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_13_sva <= MUX_v_16_2_2(psumIn_reg_array_11_13_sva, pe_array_0_0_run_cmp_84_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_12_sva <= MUX_v_16_2_2(psumIn_reg_array_11_12_sva, pe_array_0_0_run_cmp_85_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_11_sva <= MUX_v_16_2_2(psumIn_reg_array_11_11_sva, pe_array_0_0_run_cmp_86_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_10_sva <= MUX_v_16_2_2(psumIn_reg_array_11_10_sva, pe_array_0_0_run_cmp_87_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_9_sva <= MUX_v_16_2_2(psumIn_reg_array_11_9_sva, pe_array_0_0_run_cmp_88_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_8_sva <= MUX_v_16_2_2(psumIn_reg_array_11_8_sva, pe_array_0_0_run_cmp_89_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_7_sva <= MUX_v_16_2_2(psumIn_reg_array_11_7_sva, pe_array_0_0_run_cmp_90_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_6_sva <= MUX_v_16_2_2(psumIn_reg_array_11_6_sva, pe_array_0_0_run_cmp_91_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_5_sva <= MUX_v_16_2_2(psumIn_reg_array_11_5_sva, pe_array_0_0_run_cmp_92_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_4_sva <= MUX_v_16_2_2(psumIn_reg_array_11_4_sva, pe_array_0_0_run_cmp_93_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_3_sva <= MUX_v_16_2_2(psumIn_reg_array_11_3_sva, pe_array_0_0_run_cmp_94_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_2_sva <= MUX_v_16_2_2(psumIn_reg_array_11_2_sva, pe_array_0_0_run_cmp_95_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_11_1_sva <= MUX_v_16_2_2(psumIn_reg_array_11_1_sva, pe_array_0_0_run_cmp_96_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_16_sva <= MUX_v_16_2_2(psumIn_reg_array_10_16_sva, pe_array_0_0_run_cmp_97_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_15_sva <= MUX_v_16_2_2(psumIn_reg_array_10_15_sva, pe_array_0_0_run_cmp_98_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_14_sva <= MUX_v_16_2_2(psumIn_reg_array_10_14_sva, pe_array_0_0_run_cmp_99_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_13_sva <= MUX_v_16_2_2(psumIn_reg_array_10_13_sva, pe_array_0_0_run_cmp_100_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_12_sva <= MUX_v_16_2_2(psumIn_reg_array_10_12_sva, pe_array_0_0_run_cmp_101_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_11_sva <= MUX_v_16_2_2(psumIn_reg_array_10_11_sva, pe_array_0_0_run_cmp_102_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_10_sva <= MUX_v_16_2_2(psumIn_reg_array_10_10_sva, pe_array_0_0_run_cmp_103_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_9_sva <= MUX_v_16_2_2(psumIn_reg_array_10_9_sva, pe_array_0_0_run_cmp_104_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_8_sva <= MUX_v_16_2_2(psumIn_reg_array_10_8_sva, pe_array_0_0_run_cmp_105_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_7_sva <= MUX_v_16_2_2(psumIn_reg_array_10_7_sva, pe_array_0_0_run_cmp_106_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_6_sva <= MUX_v_16_2_2(psumIn_reg_array_10_6_sva, pe_array_0_0_run_cmp_107_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_5_sva <= MUX_v_16_2_2(psumIn_reg_array_10_5_sva, pe_array_0_0_run_cmp_108_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_4_sva <= MUX_v_16_2_2(psumIn_reg_array_10_4_sva, pe_array_0_0_run_cmp_109_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_3_sva <= MUX_v_16_2_2(psumIn_reg_array_10_3_sva, pe_array_0_0_run_cmp_110_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_2_sva <= MUX_v_16_2_2(psumIn_reg_array_10_2_sva, pe_array_0_0_run_cmp_111_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_10_1_sva <= MUX_v_16_2_2(psumIn_reg_array_10_1_sva, pe_array_0_0_run_cmp_112_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_16_sva <= MUX_v_16_2_2(psumIn_reg_array_9_16_sva, pe_array_0_0_run_cmp_113_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_15_sva <= MUX_v_16_2_2(psumIn_reg_array_9_15_sva, pe_array_0_0_run_cmp_114_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_14_sva <= MUX_v_16_2_2(psumIn_reg_array_9_14_sva, pe_array_0_0_run_cmp_115_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_13_sva <= MUX_v_16_2_2(psumIn_reg_array_9_13_sva, pe_array_0_0_run_cmp_116_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_12_sva <= MUX_v_16_2_2(psumIn_reg_array_9_12_sva, pe_array_0_0_run_cmp_117_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_11_sva <= MUX_v_16_2_2(psumIn_reg_array_9_11_sva, pe_array_0_0_run_cmp_118_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_10_sva <= MUX_v_16_2_2(psumIn_reg_array_9_10_sva, pe_array_0_0_run_cmp_119_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_9_sva <= MUX_v_16_2_2(psumIn_reg_array_9_9_sva, pe_array_0_0_run_cmp_120_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_8_sva <= MUX_v_16_2_2(psumIn_reg_array_9_8_sva, pe_array_0_0_run_cmp_121_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_7_sva <= MUX_v_16_2_2(psumIn_reg_array_9_7_sva, pe_array_0_0_run_cmp_122_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_6_sva <= MUX_v_16_2_2(psumIn_reg_array_9_6_sva, pe_array_0_0_run_cmp_123_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_5_sva <= MUX_v_16_2_2(psumIn_reg_array_9_5_sva, pe_array_0_0_run_cmp_124_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_4_sva <= MUX_v_16_2_2(psumIn_reg_array_9_4_sva, pe_array_0_0_run_cmp_125_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_3_sva <= MUX_v_16_2_2(psumIn_reg_array_9_3_sva, pe_array_0_0_run_cmp_126_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_2_sva <= MUX_v_16_2_2(psumIn_reg_array_9_2_sva, pe_array_0_0_run_cmp_127_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_9_1_sva <= MUX_v_16_2_2(psumIn_reg_array_9_1_sva, pe_array_0_0_run_cmp_128_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_16_sva <= MUX_v_16_2_2(psumIn_reg_array_8_16_sva, pe_array_0_0_run_cmp_129_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_15_sva <= MUX_v_16_2_2(psumIn_reg_array_8_15_sva, pe_array_0_0_run_cmp_130_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_14_sva <= MUX_v_16_2_2(psumIn_reg_array_8_14_sva, pe_array_0_0_run_cmp_131_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_13_sva <= MUX_v_16_2_2(psumIn_reg_array_8_13_sva, pe_array_0_0_run_cmp_132_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_12_sva <= MUX_v_16_2_2(psumIn_reg_array_8_12_sva, pe_array_0_0_run_cmp_133_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_11_sva <= MUX_v_16_2_2(psumIn_reg_array_8_11_sva, pe_array_0_0_run_cmp_134_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_10_sva <= MUX_v_16_2_2(psumIn_reg_array_8_10_sva, pe_array_0_0_run_cmp_135_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_9_sva <= MUX_v_16_2_2(psumIn_reg_array_8_9_sva, pe_array_0_0_run_cmp_136_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_8_sva <= MUX_v_16_2_2(psumIn_reg_array_8_8_sva, pe_array_0_0_run_cmp_137_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_7_sva <= MUX_v_16_2_2(psumIn_reg_array_8_7_sva, pe_array_0_0_run_cmp_138_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_6_sva <= MUX_v_16_2_2(psumIn_reg_array_8_6_sva, pe_array_0_0_run_cmp_139_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_5_sva <= MUX_v_16_2_2(psumIn_reg_array_8_5_sva, pe_array_0_0_run_cmp_140_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_4_sva <= MUX_v_16_2_2(psumIn_reg_array_8_4_sva, pe_array_0_0_run_cmp_141_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_3_sva <= MUX_v_16_2_2(psumIn_reg_array_8_3_sva, pe_array_0_0_run_cmp_142_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_2_sva <= MUX_v_16_2_2(psumIn_reg_array_8_2_sva, pe_array_0_0_run_cmp_143_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_8_1_sva <= MUX_v_16_2_2(psumIn_reg_array_8_1_sva, pe_array_0_0_run_cmp_144_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_16_sva <= MUX_v_16_2_2(psumIn_reg_array_7_16_sva, pe_array_0_0_run_cmp_145_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_15_sva <= MUX_v_16_2_2(psumIn_reg_array_7_15_sva, pe_array_0_0_run_cmp_146_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_14_sva <= MUX_v_16_2_2(psumIn_reg_array_7_14_sva, pe_array_0_0_run_cmp_147_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_13_sva <= MUX_v_16_2_2(psumIn_reg_array_7_13_sva, pe_array_0_0_run_cmp_148_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_12_sva <= MUX_v_16_2_2(psumIn_reg_array_7_12_sva, pe_array_0_0_run_cmp_149_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_11_sva <= MUX_v_16_2_2(psumIn_reg_array_7_11_sva, pe_array_0_0_run_cmp_150_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_10_sva <= MUX_v_16_2_2(psumIn_reg_array_7_10_sva, pe_array_0_0_run_cmp_151_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_9_sva <= MUX_v_16_2_2(psumIn_reg_array_7_9_sva, pe_array_0_0_run_cmp_152_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_8_sva <= MUX_v_16_2_2(psumIn_reg_array_7_8_sva, pe_array_0_0_run_cmp_153_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_7_sva <= MUX_v_16_2_2(psumIn_reg_array_7_7_sva, pe_array_0_0_run_cmp_154_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_6_sva <= MUX_v_16_2_2(psumIn_reg_array_7_6_sva, pe_array_0_0_run_cmp_155_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_5_sva <= MUX_v_16_2_2(psumIn_reg_array_7_5_sva, pe_array_0_0_run_cmp_156_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_4_sva <= MUX_v_16_2_2(psumIn_reg_array_7_4_sva, pe_array_0_0_run_cmp_157_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_3_sva <= MUX_v_16_2_2(psumIn_reg_array_7_3_sva, pe_array_0_0_run_cmp_158_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_2_sva <= MUX_v_16_2_2(psumIn_reg_array_7_2_sva, pe_array_0_0_run_cmp_159_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_7_1_sva <= MUX_v_16_2_2(psumIn_reg_array_7_1_sva, pe_array_0_0_run_cmp_160_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_16_sva <= MUX_v_16_2_2(psumIn_reg_array_6_16_sva, pe_array_0_0_run_cmp_161_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_15_sva <= MUX_v_16_2_2(psumIn_reg_array_6_15_sva, pe_array_0_0_run_cmp_162_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_14_sva <= MUX_v_16_2_2(psumIn_reg_array_6_14_sva, pe_array_0_0_run_cmp_163_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_13_sva <= MUX_v_16_2_2(psumIn_reg_array_6_13_sva, pe_array_0_0_run_cmp_164_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_12_sva <= MUX_v_16_2_2(psumIn_reg_array_6_12_sva, pe_array_0_0_run_cmp_165_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_11_sva <= MUX_v_16_2_2(psumIn_reg_array_6_11_sva, pe_array_0_0_run_cmp_166_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_10_sva <= MUX_v_16_2_2(psumIn_reg_array_6_10_sva, pe_array_0_0_run_cmp_167_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_9_sva <= MUX_v_16_2_2(psumIn_reg_array_6_9_sva, pe_array_0_0_run_cmp_168_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_8_sva <= MUX_v_16_2_2(psumIn_reg_array_6_8_sva, pe_array_0_0_run_cmp_169_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_7_sva <= MUX_v_16_2_2(psumIn_reg_array_6_7_sva, pe_array_0_0_run_cmp_170_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_6_sva <= MUX_v_16_2_2(psumIn_reg_array_6_6_sva, pe_array_0_0_run_cmp_171_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_5_sva <= MUX_v_16_2_2(psumIn_reg_array_6_5_sva, pe_array_0_0_run_cmp_172_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_4_sva <= MUX_v_16_2_2(psumIn_reg_array_6_4_sva, pe_array_0_0_run_cmp_173_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_3_sva <= MUX_v_16_2_2(psumIn_reg_array_6_3_sva, pe_array_0_0_run_cmp_174_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_2_sva <= MUX_v_16_2_2(psumIn_reg_array_6_2_sva, pe_array_0_0_run_cmp_175_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_6_1_sva <= MUX_v_16_2_2(psumIn_reg_array_6_1_sva, pe_array_0_0_run_cmp_176_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_16_sva <= MUX_v_16_2_2(psumIn_reg_array_5_16_sva, pe_array_0_0_run_cmp_177_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_15_sva <= MUX_v_16_2_2(psumIn_reg_array_5_15_sva, pe_array_0_0_run_cmp_178_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_14_sva <= MUX_v_16_2_2(psumIn_reg_array_5_14_sva, pe_array_0_0_run_cmp_179_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_13_sva <= MUX_v_16_2_2(psumIn_reg_array_5_13_sva, pe_array_0_0_run_cmp_180_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_12_sva <= MUX_v_16_2_2(psumIn_reg_array_5_12_sva, pe_array_0_0_run_cmp_181_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_11_sva <= MUX_v_16_2_2(psumIn_reg_array_5_11_sva, pe_array_0_0_run_cmp_182_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_10_sva <= MUX_v_16_2_2(psumIn_reg_array_5_10_sva, pe_array_0_0_run_cmp_183_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_9_sva <= MUX_v_16_2_2(psumIn_reg_array_5_9_sva, pe_array_0_0_run_cmp_184_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_8_sva <= MUX_v_16_2_2(psumIn_reg_array_5_8_sva, pe_array_0_0_run_cmp_185_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_7_sva <= MUX_v_16_2_2(psumIn_reg_array_5_7_sva, pe_array_0_0_run_cmp_186_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_6_sva <= MUX_v_16_2_2(psumIn_reg_array_5_6_sva, pe_array_0_0_run_cmp_187_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_5_sva <= MUX_v_16_2_2(psumIn_reg_array_5_5_sva, pe_array_0_0_run_cmp_188_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_4_sva <= MUX_v_16_2_2(psumIn_reg_array_5_4_sva, pe_array_0_0_run_cmp_189_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_3_sva <= MUX_v_16_2_2(psumIn_reg_array_5_3_sva, pe_array_0_0_run_cmp_190_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_2_sva <= MUX_v_16_2_2(psumIn_reg_array_5_2_sva, pe_array_0_0_run_cmp_191_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_5_1_sva <= MUX_v_16_2_2(psumIn_reg_array_5_1_sva, pe_array_0_0_run_cmp_192_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_16_sva <= MUX_v_16_2_2(psumIn_reg_array_4_16_sva, pe_array_0_0_run_cmp_193_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_15_sva <= MUX_v_16_2_2(psumIn_reg_array_4_15_sva, pe_array_0_0_run_cmp_194_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_14_sva <= MUX_v_16_2_2(psumIn_reg_array_4_14_sva, pe_array_0_0_run_cmp_195_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_13_sva <= MUX_v_16_2_2(psumIn_reg_array_4_13_sva, pe_array_0_0_run_cmp_196_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_12_sva <= MUX_v_16_2_2(psumIn_reg_array_4_12_sva, pe_array_0_0_run_cmp_197_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_11_sva <= MUX_v_16_2_2(psumIn_reg_array_4_11_sva, pe_array_0_0_run_cmp_198_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_10_sva <= MUX_v_16_2_2(psumIn_reg_array_4_10_sva, pe_array_0_0_run_cmp_199_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_9_sva <= MUX_v_16_2_2(psumIn_reg_array_4_9_sva, pe_array_0_0_run_cmp_200_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_8_sva <= MUX_v_16_2_2(psumIn_reg_array_4_8_sva, pe_array_0_0_run_cmp_201_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_7_sva <= MUX_v_16_2_2(psumIn_reg_array_4_7_sva, pe_array_0_0_run_cmp_202_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_6_sva <= MUX_v_16_2_2(psumIn_reg_array_4_6_sva, pe_array_0_0_run_cmp_203_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_5_sva <= MUX_v_16_2_2(psumIn_reg_array_4_5_sva, pe_array_0_0_run_cmp_204_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_4_sva <= MUX_v_16_2_2(psumIn_reg_array_4_4_sva, pe_array_0_0_run_cmp_205_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_3_sva <= MUX_v_16_2_2(psumIn_reg_array_4_3_sva, pe_array_0_0_run_cmp_206_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_2_sva <= MUX_v_16_2_2(psumIn_reg_array_4_2_sva, pe_array_0_0_run_cmp_207_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_4_1_sva <= MUX_v_16_2_2(psumIn_reg_array_4_1_sva, pe_array_0_0_run_cmp_208_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_16_sva <= MUX_v_16_2_2(psumIn_reg_array_3_16_sva, pe_array_0_0_run_cmp_209_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_15_sva <= MUX_v_16_2_2(psumIn_reg_array_3_15_sva, pe_array_0_0_run_cmp_210_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_14_sva <= MUX_v_16_2_2(psumIn_reg_array_3_14_sva, pe_array_0_0_run_cmp_211_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_13_sva <= MUX_v_16_2_2(psumIn_reg_array_3_13_sva, pe_array_0_0_run_cmp_212_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_12_sva <= MUX_v_16_2_2(psumIn_reg_array_3_12_sva, pe_array_0_0_run_cmp_213_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_11_sva <= MUX_v_16_2_2(psumIn_reg_array_3_11_sva, pe_array_0_0_run_cmp_214_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_10_sva <= MUX_v_16_2_2(psumIn_reg_array_3_10_sva, pe_array_0_0_run_cmp_215_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_9_sva <= MUX_v_16_2_2(psumIn_reg_array_3_9_sva, pe_array_0_0_run_cmp_216_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_8_sva <= MUX_v_16_2_2(psumIn_reg_array_3_8_sva, pe_array_0_0_run_cmp_217_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_7_sva <= MUX_v_16_2_2(psumIn_reg_array_3_7_sva, pe_array_0_0_run_cmp_218_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_6_sva <= MUX_v_16_2_2(psumIn_reg_array_3_6_sva, pe_array_0_0_run_cmp_219_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_5_sva <= MUX_v_16_2_2(psumIn_reg_array_3_5_sva, pe_array_0_0_run_cmp_220_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_4_sva <= MUX_v_16_2_2(psumIn_reg_array_3_4_sva, pe_array_0_0_run_cmp_221_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_3_sva <= MUX_v_16_2_2(psumIn_reg_array_3_3_sva, pe_array_0_0_run_cmp_222_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_2_sva <= MUX_v_16_2_2(psumIn_reg_array_3_2_sva, pe_array_0_0_run_cmp_223_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_3_1_sva <= MUX_v_16_2_2(psumIn_reg_array_3_1_sva, pe_array_0_0_run_cmp_224_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_16_sva <= MUX_v_16_2_2(psumIn_reg_array_2_16_sva, pe_array_0_0_run_cmp_225_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_15_sva <= MUX_v_16_2_2(psumIn_reg_array_2_15_sva, pe_array_0_0_run_cmp_226_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_14_sva <= MUX_v_16_2_2(psumIn_reg_array_2_14_sva, pe_array_0_0_run_cmp_227_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_13_sva <= MUX_v_16_2_2(psumIn_reg_array_2_13_sva, pe_array_0_0_run_cmp_228_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_12_sva <= MUX_v_16_2_2(psumIn_reg_array_2_12_sva, pe_array_0_0_run_cmp_229_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_11_sva <= MUX_v_16_2_2(psumIn_reg_array_2_11_sva, pe_array_0_0_run_cmp_230_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_10_sva <= MUX_v_16_2_2(psumIn_reg_array_2_10_sva, pe_array_0_0_run_cmp_231_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_9_sva <= MUX_v_16_2_2(psumIn_reg_array_2_9_sva, pe_array_0_0_run_cmp_232_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_8_sva <= MUX_v_16_2_2(psumIn_reg_array_2_8_sva, pe_array_0_0_run_cmp_233_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_7_sva <= MUX_v_16_2_2(psumIn_reg_array_2_7_sva, pe_array_0_0_run_cmp_234_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_6_sva <= MUX_v_16_2_2(psumIn_reg_array_2_6_sva, pe_array_0_0_run_cmp_235_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_5_sva <= MUX_v_16_2_2(psumIn_reg_array_2_5_sva, pe_array_0_0_run_cmp_236_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_4_sva <= MUX_v_16_2_2(psumIn_reg_array_2_4_sva, pe_array_0_0_run_cmp_237_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_3_sva <= MUX_v_16_2_2(psumIn_reg_array_2_3_sva, pe_array_0_0_run_cmp_238_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_2_sva <= MUX_v_16_2_2(psumIn_reg_array_2_2_sva, pe_array_0_0_run_cmp_239_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_2_1_sva <= MUX_v_16_2_2(psumIn_reg_array_2_1_sva, pe_array_0_0_run_cmp_240_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_16_sva <= MUX_v_16_2_2(psumIn_reg_array_1_16_sva, pe_array_0_0_run_cmp_241_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_15_sva <= MUX_v_16_2_2(psumIn_reg_array_1_15_sva, pe_array_0_0_run_cmp_242_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_14_sva <= MUX_v_16_2_2(psumIn_reg_array_1_14_sva, pe_array_0_0_run_cmp_243_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_13_sva <= MUX_v_16_2_2(psumIn_reg_array_1_13_sva, pe_array_0_0_run_cmp_244_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_12_sva <= MUX_v_16_2_2(psumIn_reg_array_1_12_sva, pe_array_0_0_run_cmp_245_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_11_sva <= MUX_v_16_2_2(psumIn_reg_array_1_11_sva, pe_array_0_0_run_cmp_246_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_10_sva <= MUX_v_16_2_2(psumIn_reg_array_1_10_sva, pe_array_0_0_run_cmp_247_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_9_sva <= MUX_v_16_2_2(psumIn_reg_array_1_9_sva, pe_array_0_0_run_cmp_248_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_8_sva <= MUX_v_16_2_2(psumIn_reg_array_1_8_sva, pe_array_0_0_run_cmp_249_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_7_sva <= MUX_v_16_2_2(psumIn_reg_array_1_7_sva, pe_array_0_0_run_cmp_250_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_6_sva <= MUX_v_16_2_2(psumIn_reg_array_1_6_sva, pe_array_0_0_run_cmp_251_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_5_sva <= MUX_v_16_2_2(psumIn_reg_array_1_5_sva, pe_array_0_0_run_cmp_252_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_4_sva <= MUX_v_16_2_2(psumIn_reg_array_1_4_sva, pe_array_0_0_run_cmp_253_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_3_sva <= MUX_v_16_2_2(psumIn_reg_array_1_3_sva, pe_array_0_0_run_cmp_254_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_2_sva <= MUX_v_16_2_2(psumIn_reg_array_1_2_sva, pe_array_0_0_run_cmp_255_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      psumIn_reg_array_1_1_sva <= MUX_v_16_2_2(psumIn_reg_array_1_1_sva, pe_array_0_0_run_cmp_psum_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_15_sva <= MUX_v_8_2_2(inputIn_reg_array_16_15_sva, pe_array_0_0_run_cmp_2_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_14_sva <= MUX_v_8_2_2(inputIn_reg_array_16_14_sva, pe_array_0_0_run_cmp_3_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_13_sva <= MUX_v_8_2_2(inputIn_reg_array_16_13_sva, pe_array_0_0_run_cmp_4_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_12_sva <= MUX_v_8_2_2(inputIn_reg_array_16_12_sva, pe_array_0_0_run_cmp_5_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_11_sva <= MUX_v_8_2_2(inputIn_reg_array_16_11_sva, pe_array_0_0_run_cmp_6_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_10_sva <= MUX_v_8_2_2(inputIn_reg_array_16_10_sva, pe_array_0_0_run_cmp_7_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_9_sva <= MUX_v_8_2_2(inputIn_reg_array_16_9_sva, pe_array_0_0_run_cmp_8_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_8_sva <= MUX_v_8_2_2(inputIn_reg_array_16_8_sva, pe_array_0_0_run_cmp_9_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_7_sva <= MUX_v_8_2_2(inputIn_reg_array_16_7_sva, pe_array_0_0_run_cmp_10_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_6_sva <= MUX_v_8_2_2(inputIn_reg_array_16_6_sva, pe_array_0_0_run_cmp_11_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_5_sva <= MUX_v_8_2_2(inputIn_reg_array_16_5_sva, pe_array_0_0_run_cmp_12_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_4_sva <= MUX_v_8_2_2(inputIn_reg_array_16_4_sva, pe_array_0_0_run_cmp_13_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_3_sva <= MUX_v_8_2_2(inputIn_reg_array_16_3_sva, pe_array_0_0_run_cmp_14_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_2_sva <= MUX_v_8_2_2(inputIn_reg_array_16_2_sva, pe_array_0_0_run_cmp_15_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_16_1_sva <= MUX_v_8_2_2(inputIn_reg_array_16_1_sva, pe_array_0_0_run_cmp_16_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_15_sva <= MUX_v_8_2_2(inputIn_reg_array_15_15_sva, pe_array_0_0_run_cmp_18_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_14_sva <= MUX_v_8_2_2(inputIn_reg_array_15_14_sva, pe_array_0_0_run_cmp_19_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_13_sva <= MUX_v_8_2_2(inputIn_reg_array_15_13_sva, pe_array_0_0_run_cmp_20_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_12_sva <= MUX_v_8_2_2(inputIn_reg_array_15_12_sva, pe_array_0_0_run_cmp_21_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_11_sva <= MUX_v_8_2_2(inputIn_reg_array_15_11_sva, pe_array_0_0_run_cmp_22_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_10_sva <= MUX_v_8_2_2(inputIn_reg_array_15_10_sva, pe_array_0_0_run_cmp_23_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_9_sva <= MUX_v_8_2_2(inputIn_reg_array_15_9_sva, pe_array_0_0_run_cmp_24_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_8_sva <= MUX_v_8_2_2(inputIn_reg_array_15_8_sva, pe_array_0_0_run_cmp_25_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_7_sva <= MUX_v_8_2_2(inputIn_reg_array_15_7_sva, pe_array_0_0_run_cmp_26_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_6_sva <= MUX_v_8_2_2(inputIn_reg_array_15_6_sva, pe_array_0_0_run_cmp_27_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_5_sva <= MUX_v_8_2_2(inputIn_reg_array_15_5_sva, pe_array_0_0_run_cmp_28_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_4_sva <= MUX_v_8_2_2(inputIn_reg_array_15_4_sva, pe_array_0_0_run_cmp_29_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_3_sva <= MUX_v_8_2_2(inputIn_reg_array_15_3_sva, pe_array_0_0_run_cmp_30_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_2_sva <= MUX_v_8_2_2(inputIn_reg_array_15_2_sva, pe_array_0_0_run_cmp_31_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_15_1_sva <= MUX_v_8_2_2(inputIn_reg_array_15_1_sva, pe_array_0_0_run_cmp_32_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_15_sva <= MUX_v_8_2_2(inputIn_reg_array_14_15_sva, pe_array_0_0_run_cmp_34_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_14_sva <= MUX_v_8_2_2(inputIn_reg_array_14_14_sva, pe_array_0_0_run_cmp_35_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_13_sva <= MUX_v_8_2_2(inputIn_reg_array_14_13_sva, pe_array_0_0_run_cmp_36_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_12_sva <= MUX_v_8_2_2(inputIn_reg_array_14_12_sva, pe_array_0_0_run_cmp_37_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_11_sva <= MUX_v_8_2_2(inputIn_reg_array_14_11_sva, pe_array_0_0_run_cmp_38_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_10_sva <= MUX_v_8_2_2(inputIn_reg_array_14_10_sva, pe_array_0_0_run_cmp_39_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_9_sva <= MUX_v_8_2_2(inputIn_reg_array_14_9_sva, pe_array_0_0_run_cmp_40_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_8_sva <= MUX_v_8_2_2(inputIn_reg_array_14_8_sva, pe_array_0_0_run_cmp_41_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_7_sva <= MUX_v_8_2_2(inputIn_reg_array_14_7_sva, pe_array_0_0_run_cmp_42_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_6_sva <= MUX_v_8_2_2(inputIn_reg_array_14_6_sva, pe_array_0_0_run_cmp_43_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_5_sva <= MUX_v_8_2_2(inputIn_reg_array_14_5_sva, pe_array_0_0_run_cmp_44_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_4_sva <= MUX_v_8_2_2(inputIn_reg_array_14_4_sva, pe_array_0_0_run_cmp_45_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_3_sva <= MUX_v_8_2_2(inputIn_reg_array_14_3_sva, pe_array_0_0_run_cmp_46_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_2_sva <= MUX_v_8_2_2(inputIn_reg_array_14_2_sva, pe_array_0_0_run_cmp_47_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_14_1_sva <= MUX_v_8_2_2(inputIn_reg_array_14_1_sva, pe_array_0_0_run_cmp_48_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_15_sva <= MUX_v_8_2_2(inputIn_reg_array_13_15_sva, pe_array_0_0_run_cmp_50_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_14_sva <= MUX_v_8_2_2(inputIn_reg_array_13_14_sva, pe_array_0_0_run_cmp_51_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_13_sva <= MUX_v_8_2_2(inputIn_reg_array_13_13_sva, pe_array_0_0_run_cmp_52_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_12_sva <= MUX_v_8_2_2(inputIn_reg_array_13_12_sva, pe_array_0_0_run_cmp_53_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_11_sva <= MUX_v_8_2_2(inputIn_reg_array_13_11_sva, pe_array_0_0_run_cmp_54_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_10_sva <= MUX_v_8_2_2(inputIn_reg_array_13_10_sva, pe_array_0_0_run_cmp_55_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_9_sva <= MUX_v_8_2_2(inputIn_reg_array_13_9_sva, pe_array_0_0_run_cmp_56_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_8_sva <= MUX_v_8_2_2(inputIn_reg_array_13_8_sva, pe_array_0_0_run_cmp_57_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_7_sva <= MUX_v_8_2_2(inputIn_reg_array_13_7_sva, pe_array_0_0_run_cmp_58_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_6_sva <= MUX_v_8_2_2(inputIn_reg_array_13_6_sva, pe_array_0_0_run_cmp_59_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_5_sva <= MUX_v_8_2_2(inputIn_reg_array_13_5_sva, pe_array_0_0_run_cmp_60_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_4_sva <= MUX_v_8_2_2(inputIn_reg_array_13_4_sva, pe_array_0_0_run_cmp_61_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_3_sva <= MUX_v_8_2_2(inputIn_reg_array_13_3_sva, pe_array_0_0_run_cmp_62_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_2_sva <= MUX_v_8_2_2(inputIn_reg_array_13_2_sva, pe_array_0_0_run_cmp_63_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_13_1_sva <= MUX_v_8_2_2(inputIn_reg_array_13_1_sva, pe_array_0_0_run_cmp_64_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_15_sva <= MUX_v_8_2_2(inputIn_reg_array_12_15_sva, pe_array_0_0_run_cmp_66_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_14_sva <= MUX_v_8_2_2(inputIn_reg_array_12_14_sva, pe_array_0_0_run_cmp_67_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_13_sva <= MUX_v_8_2_2(inputIn_reg_array_12_13_sva, pe_array_0_0_run_cmp_68_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_12_sva <= MUX_v_8_2_2(inputIn_reg_array_12_12_sva, pe_array_0_0_run_cmp_69_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_11_sva <= MUX_v_8_2_2(inputIn_reg_array_12_11_sva, pe_array_0_0_run_cmp_70_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_10_sva <= MUX_v_8_2_2(inputIn_reg_array_12_10_sva, pe_array_0_0_run_cmp_71_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_9_sva <= MUX_v_8_2_2(inputIn_reg_array_12_9_sva, pe_array_0_0_run_cmp_72_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_8_sva <= MUX_v_8_2_2(inputIn_reg_array_12_8_sva, pe_array_0_0_run_cmp_73_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_7_sva <= MUX_v_8_2_2(inputIn_reg_array_12_7_sva, pe_array_0_0_run_cmp_74_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_6_sva <= MUX_v_8_2_2(inputIn_reg_array_12_6_sva, pe_array_0_0_run_cmp_75_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_5_sva <= MUX_v_8_2_2(inputIn_reg_array_12_5_sva, pe_array_0_0_run_cmp_76_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_4_sva <= MUX_v_8_2_2(inputIn_reg_array_12_4_sva, pe_array_0_0_run_cmp_77_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_3_sva <= MUX_v_8_2_2(inputIn_reg_array_12_3_sva, pe_array_0_0_run_cmp_78_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_2_sva <= MUX_v_8_2_2(inputIn_reg_array_12_2_sva, pe_array_0_0_run_cmp_79_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_12_1_sva <= MUX_v_8_2_2(inputIn_reg_array_12_1_sva, pe_array_0_0_run_cmp_80_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_15_sva <= MUX_v_8_2_2(inputIn_reg_array_11_15_sva, pe_array_0_0_run_cmp_82_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_14_sva <= MUX_v_8_2_2(inputIn_reg_array_11_14_sva, pe_array_0_0_run_cmp_83_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_13_sva <= MUX_v_8_2_2(inputIn_reg_array_11_13_sva, pe_array_0_0_run_cmp_84_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_12_sva <= MUX_v_8_2_2(inputIn_reg_array_11_12_sva, pe_array_0_0_run_cmp_85_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_11_sva <= MUX_v_8_2_2(inputIn_reg_array_11_11_sva, pe_array_0_0_run_cmp_86_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_10_sva <= MUX_v_8_2_2(inputIn_reg_array_11_10_sva, pe_array_0_0_run_cmp_87_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_9_sva <= MUX_v_8_2_2(inputIn_reg_array_11_9_sva, pe_array_0_0_run_cmp_88_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_8_sva <= MUX_v_8_2_2(inputIn_reg_array_11_8_sva, pe_array_0_0_run_cmp_89_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_7_sva <= MUX_v_8_2_2(inputIn_reg_array_11_7_sva, pe_array_0_0_run_cmp_90_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_6_sva <= MUX_v_8_2_2(inputIn_reg_array_11_6_sva, pe_array_0_0_run_cmp_91_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_5_sva <= MUX_v_8_2_2(inputIn_reg_array_11_5_sva, pe_array_0_0_run_cmp_92_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_4_sva <= MUX_v_8_2_2(inputIn_reg_array_11_4_sva, pe_array_0_0_run_cmp_93_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_3_sva <= MUX_v_8_2_2(inputIn_reg_array_11_3_sva, pe_array_0_0_run_cmp_94_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_2_sva <= MUX_v_8_2_2(inputIn_reg_array_11_2_sva, pe_array_0_0_run_cmp_95_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_11_1_sva <= MUX_v_8_2_2(inputIn_reg_array_11_1_sva, pe_array_0_0_run_cmp_96_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_15_sva <= MUX_v_8_2_2(inputIn_reg_array_10_15_sva, pe_array_0_0_run_cmp_98_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_14_sva <= MUX_v_8_2_2(inputIn_reg_array_10_14_sva, pe_array_0_0_run_cmp_99_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_13_sva <= MUX_v_8_2_2(inputIn_reg_array_10_13_sva, pe_array_0_0_run_cmp_100_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_12_sva <= MUX_v_8_2_2(inputIn_reg_array_10_12_sva, pe_array_0_0_run_cmp_101_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_11_sva <= MUX_v_8_2_2(inputIn_reg_array_10_11_sva, pe_array_0_0_run_cmp_102_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_10_sva <= MUX_v_8_2_2(inputIn_reg_array_10_10_sva, pe_array_0_0_run_cmp_103_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_9_sva <= MUX_v_8_2_2(inputIn_reg_array_10_9_sva, pe_array_0_0_run_cmp_104_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_8_sva <= MUX_v_8_2_2(inputIn_reg_array_10_8_sva, pe_array_0_0_run_cmp_105_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_7_sva <= MUX_v_8_2_2(inputIn_reg_array_10_7_sva, pe_array_0_0_run_cmp_106_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_6_sva <= MUX_v_8_2_2(inputIn_reg_array_10_6_sva, pe_array_0_0_run_cmp_107_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_5_sva <= MUX_v_8_2_2(inputIn_reg_array_10_5_sva, pe_array_0_0_run_cmp_108_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_4_sva <= MUX_v_8_2_2(inputIn_reg_array_10_4_sva, pe_array_0_0_run_cmp_109_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_3_sva <= MUX_v_8_2_2(inputIn_reg_array_10_3_sva, pe_array_0_0_run_cmp_110_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_2_sva <= MUX_v_8_2_2(inputIn_reg_array_10_2_sva, pe_array_0_0_run_cmp_111_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_10_1_sva <= MUX_v_8_2_2(inputIn_reg_array_10_1_sva, pe_array_0_0_run_cmp_112_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_15_sva <= MUX_v_8_2_2(inputIn_reg_array_9_15_sva, pe_array_0_0_run_cmp_114_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_14_sva <= MUX_v_8_2_2(inputIn_reg_array_9_14_sva, pe_array_0_0_run_cmp_115_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_13_sva <= MUX_v_8_2_2(inputIn_reg_array_9_13_sva, pe_array_0_0_run_cmp_116_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_12_sva <= MUX_v_8_2_2(inputIn_reg_array_9_12_sva, pe_array_0_0_run_cmp_117_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_11_sva <= MUX_v_8_2_2(inputIn_reg_array_9_11_sva, pe_array_0_0_run_cmp_118_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_10_sva <= MUX_v_8_2_2(inputIn_reg_array_9_10_sva, pe_array_0_0_run_cmp_119_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_9_sva <= MUX_v_8_2_2(inputIn_reg_array_9_9_sva, pe_array_0_0_run_cmp_120_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_8_sva <= MUX_v_8_2_2(inputIn_reg_array_9_8_sva, pe_array_0_0_run_cmp_121_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_7_sva <= MUX_v_8_2_2(inputIn_reg_array_9_7_sva, pe_array_0_0_run_cmp_122_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_6_sva <= MUX_v_8_2_2(inputIn_reg_array_9_6_sva, pe_array_0_0_run_cmp_123_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_5_sva <= MUX_v_8_2_2(inputIn_reg_array_9_5_sva, pe_array_0_0_run_cmp_124_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_4_sva <= MUX_v_8_2_2(inputIn_reg_array_9_4_sva, pe_array_0_0_run_cmp_125_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_3_sva <= MUX_v_8_2_2(inputIn_reg_array_9_3_sva, pe_array_0_0_run_cmp_126_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_2_sva <= MUX_v_8_2_2(inputIn_reg_array_9_2_sva, pe_array_0_0_run_cmp_127_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_9_1_sva <= MUX_v_8_2_2(inputIn_reg_array_9_1_sva, pe_array_0_0_run_cmp_128_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_15_sva <= MUX_v_8_2_2(inputIn_reg_array_8_15_sva, pe_array_0_0_run_cmp_130_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_14_sva <= MUX_v_8_2_2(inputIn_reg_array_8_14_sva, pe_array_0_0_run_cmp_131_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_13_sva <= MUX_v_8_2_2(inputIn_reg_array_8_13_sva, pe_array_0_0_run_cmp_132_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_12_sva <= MUX_v_8_2_2(inputIn_reg_array_8_12_sva, pe_array_0_0_run_cmp_133_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_11_sva <= MUX_v_8_2_2(inputIn_reg_array_8_11_sva, pe_array_0_0_run_cmp_134_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_10_sva <= MUX_v_8_2_2(inputIn_reg_array_8_10_sva, pe_array_0_0_run_cmp_135_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_9_sva <= MUX_v_8_2_2(inputIn_reg_array_8_9_sva, pe_array_0_0_run_cmp_136_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_8_sva <= MUX_v_8_2_2(inputIn_reg_array_8_8_sva, pe_array_0_0_run_cmp_137_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_7_sva <= MUX_v_8_2_2(inputIn_reg_array_8_7_sva, pe_array_0_0_run_cmp_138_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_6_sva <= MUX_v_8_2_2(inputIn_reg_array_8_6_sva, pe_array_0_0_run_cmp_139_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_5_sva <= MUX_v_8_2_2(inputIn_reg_array_8_5_sva, pe_array_0_0_run_cmp_140_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_4_sva <= MUX_v_8_2_2(inputIn_reg_array_8_4_sva, pe_array_0_0_run_cmp_141_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_3_sva <= MUX_v_8_2_2(inputIn_reg_array_8_3_sva, pe_array_0_0_run_cmp_142_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_2_sva <= MUX_v_8_2_2(inputIn_reg_array_8_2_sva, pe_array_0_0_run_cmp_143_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_8_1_sva <= MUX_v_8_2_2(inputIn_reg_array_8_1_sva, pe_array_0_0_run_cmp_144_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_15_sva <= MUX_v_8_2_2(inputIn_reg_array_7_15_sva, pe_array_0_0_run_cmp_146_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_14_sva <= MUX_v_8_2_2(inputIn_reg_array_7_14_sva, pe_array_0_0_run_cmp_147_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_13_sva <= MUX_v_8_2_2(inputIn_reg_array_7_13_sva, pe_array_0_0_run_cmp_148_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_12_sva <= MUX_v_8_2_2(inputIn_reg_array_7_12_sva, pe_array_0_0_run_cmp_149_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_11_sva <= MUX_v_8_2_2(inputIn_reg_array_7_11_sva, pe_array_0_0_run_cmp_150_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_10_sva <= MUX_v_8_2_2(inputIn_reg_array_7_10_sva, pe_array_0_0_run_cmp_151_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_9_sva <= MUX_v_8_2_2(inputIn_reg_array_7_9_sva, pe_array_0_0_run_cmp_152_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_8_sva <= MUX_v_8_2_2(inputIn_reg_array_7_8_sva, pe_array_0_0_run_cmp_153_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_7_sva <= MUX_v_8_2_2(inputIn_reg_array_7_7_sva, pe_array_0_0_run_cmp_154_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_6_sva <= MUX_v_8_2_2(inputIn_reg_array_7_6_sva, pe_array_0_0_run_cmp_155_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_5_sva <= MUX_v_8_2_2(inputIn_reg_array_7_5_sva, pe_array_0_0_run_cmp_156_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_4_sva <= MUX_v_8_2_2(inputIn_reg_array_7_4_sva, pe_array_0_0_run_cmp_157_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_3_sva <= MUX_v_8_2_2(inputIn_reg_array_7_3_sva, pe_array_0_0_run_cmp_158_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_2_sva <= MUX_v_8_2_2(inputIn_reg_array_7_2_sva, pe_array_0_0_run_cmp_159_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_7_1_sva <= MUX_v_8_2_2(inputIn_reg_array_7_1_sva, pe_array_0_0_run_cmp_160_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_15_sva <= MUX_v_8_2_2(inputIn_reg_array_6_15_sva, pe_array_0_0_run_cmp_162_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_14_sva <= MUX_v_8_2_2(inputIn_reg_array_6_14_sva, pe_array_0_0_run_cmp_163_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_13_sva <= MUX_v_8_2_2(inputIn_reg_array_6_13_sva, pe_array_0_0_run_cmp_164_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_12_sva <= MUX_v_8_2_2(inputIn_reg_array_6_12_sva, pe_array_0_0_run_cmp_165_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_11_sva <= MUX_v_8_2_2(inputIn_reg_array_6_11_sva, pe_array_0_0_run_cmp_166_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_10_sva <= MUX_v_8_2_2(inputIn_reg_array_6_10_sva, pe_array_0_0_run_cmp_167_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_9_sva <= MUX_v_8_2_2(inputIn_reg_array_6_9_sva, pe_array_0_0_run_cmp_168_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_8_sva <= MUX_v_8_2_2(inputIn_reg_array_6_8_sva, pe_array_0_0_run_cmp_169_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_7_sva <= MUX_v_8_2_2(inputIn_reg_array_6_7_sva, pe_array_0_0_run_cmp_170_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_6_sva <= MUX_v_8_2_2(inputIn_reg_array_6_6_sva, pe_array_0_0_run_cmp_171_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_5_sva <= MUX_v_8_2_2(inputIn_reg_array_6_5_sva, pe_array_0_0_run_cmp_172_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_4_sva <= MUX_v_8_2_2(inputIn_reg_array_6_4_sva, pe_array_0_0_run_cmp_173_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_3_sva <= MUX_v_8_2_2(inputIn_reg_array_6_3_sva, pe_array_0_0_run_cmp_174_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_2_sva <= MUX_v_8_2_2(inputIn_reg_array_6_2_sva, pe_array_0_0_run_cmp_175_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_6_1_sva <= MUX_v_8_2_2(inputIn_reg_array_6_1_sva, pe_array_0_0_run_cmp_176_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_15_sva <= MUX_v_8_2_2(inputIn_reg_array_5_15_sva, pe_array_0_0_run_cmp_178_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_14_sva <= MUX_v_8_2_2(inputIn_reg_array_5_14_sva, pe_array_0_0_run_cmp_179_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_13_sva <= MUX_v_8_2_2(inputIn_reg_array_5_13_sva, pe_array_0_0_run_cmp_180_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_12_sva <= MUX_v_8_2_2(inputIn_reg_array_5_12_sva, pe_array_0_0_run_cmp_181_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_11_sva <= MUX_v_8_2_2(inputIn_reg_array_5_11_sva, pe_array_0_0_run_cmp_182_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_10_sva <= MUX_v_8_2_2(inputIn_reg_array_5_10_sva, pe_array_0_0_run_cmp_183_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_9_sva <= MUX_v_8_2_2(inputIn_reg_array_5_9_sva, pe_array_0_0_run_cmp_184_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_8_sva <= MUX_v_8_2_2(inputIn_reg_array_5_8_sva, pe_array_0_0_run_cmp_185_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_7_sva <= MUX_v_8_2_2(inputIn_reg_array_5_7_sva, pe_array_0_0_run_cmp_186_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_6_sva <= MUX_v_8_2_2(inputIn_reg_array_5_6_sva, pe_array_0_0_run_cmp_187_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_5_sva <= MUX_v_8_2_2(inputIn_reg_array_5_5_sva, pe_array_0_0_run_cmp_188_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_4_sva <= MUX_v_8_2_2(inputIn_reg_array_5_4_sva, pe_array_0_0_run_cmp_189_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_3_sva <= MUX_v_8_2_2(inputIn_reg_array_5_3_sva, pe_array_0_0_run_cmp_190_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_2_sva <= MUX_v_8_2_2(inputIn_reg_array_5_2_sva, pe_array_0_0_run_cmp_191_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_5_1_sva <= MUX_v_8_2_2(inputIn_reg_array_5_1_sva, pe_array_0_0_run_cmp_192_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_15_sva <= MUX_v_8_2_2(inputIn_reg_array_4_15_sva, pe_array_0_0_run_cmp_194_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_14_sva <= MUX_v_8_2_2(inputIn_reg_array_4_14_sva, pe_array_0_0_run_cmp_195_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_13_sva <= MUX_v_8_2_2(inputIn_reg_array_4_13_sva, pe_array_0_0_run_cmp_196_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_12_sva <= MUX_v_8_2_2(inputIn_reg_array_4_12_sva, pe_array_0_0_run_cmp_197_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_11_sva <= MUX_v_8_2_2(inputIn_reg_array_4_11_sva, pe_array_0_0_run_cmp_198_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_10_sva <= MUX_v_8_2_2(inputIn_reg_array_4_10_sva, pe_array_0_0_run_cmp_199_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_9_sva <= MUX_v_8_2_2(inputIn_reg_array_4_9_sva, pe_array_0_0_run_cmp_200_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_8_sva <= MUX_v_8_2_2(inputIn_reg_array_4_8_sva, pe_array_0_0_run_cmp_201_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_7_sva <= MUX_v_8_2_2(inputIn_reg_array_4_7_sva, pe_array_0_0_run_cmp_202_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_6_sva <= MUX_v_8_2_2(inputIn_reg_array_4_6_sva, pe_array_0_0_run_cmp_203_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_5_sva <= MUX_v_8_2_2(inputIn_reg_array_4_5_sva, pe_array_0_0_run_cmp_204_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_4_sva <= MUX_v_8_2_2(inputIn_reg_array_4_4_sva, pe_array_0_0_run_cmp_205_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_3_sva <= MUX_v_8_2_2(inputIn_reg_array_4_3_sva, pe_array_0_0_run_cmp_206_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_2_sva <= MUX_v_8_2_2(inputIn_reg_array_4_2_sva, pe_array_0_0_run_cmp_207_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_4_1_sva <= MUX_v_8_2_2(inputIn_reg_array_4_1_sva, pe_array_0_0_run_cmp_208_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_15_sva <= MUX_v_8_2_2(inputIn_reg_array_3_15_sva, pe_array_0_0_run_cmp_210_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_14_sva <= MUX_v_8_2_2(inputIn_reg_array_3_14_sva, pe_array_0_0_run_cmp_211_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_13_sva <= MUX_v_8_2_2(inputIn_reg_array_3_13_sva, pe_array_0_0_run_cmp_212_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_12_sva <= MUX_v_8_2_2(inputIn_reg_array_3_12_sva, pe_array_0_0_run_cmp_213_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_11_sva <= MUX_v_8_2_2(inputIn_reg_array_3_11_sva, pe_array_0_0_run_cmp_214_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_10_sva <= MUX_v_8_2_2(inputIn_reg_array_3_10_sva, pe_array_0_0_run_cmp_215_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_9_sva <= MUX_v_8_2_2(inputIn_reg_array_3_9_sva, pe_array_0_0_run_cmp_216_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_8_sva <= MUX_v_8_2_2(inputIn_reg_array_3_8_sva, pe_array_0_0_run_cmp_217_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_7_sva <= MUX_v_8_2_2(inputIn_reg_array_3_7_sva, pe_array_0_0_run_cmp_218_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_6_sva <= MUX_v_8_2_2(inputIn_reg_array_3_6_sva, pe_array_0_0_run_cmp_219_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_5_sva <= MUX_v_8_2_2(inputIn_reg_array_3_5_sva, pe_array_0_0_run_cmp_220_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_4_sva <= MUX_v_8_2_2(inputIn_reg_array_3_4_sva, pe_array_0_0_run_cmp_221_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_3_sva <= MUX_v_8_2_2(inputIn_reg_array_3_3_sva, pe_array_0_0_run_cmp_222_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_2_sva <= MUX_v_8_2_2(inputIn_reg_array_3_2_sva, pe_array_0_0_run_cmp_223_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_3_1_sva <= MUX_v_8_2_2(inputIn_reg_array_3_1_sva, pe_array_0_0_run_cmp_224_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_15_sva <= MUX_v_8_2_2(inputIn_reg_array_2_15_sva, pe_array_0_0_run_cmp_226_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_14_sva <= MUX_v_8_2_2(inputIn_reg_array_2_14_sva, pe_array_0_0_run_cmp_227_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_13_sva <= MUX_v_8_2_2(inputIn_reg_array_2_13_sva, pe_array_0_0_run_cmp_228_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_12_sva <= MUX_v_8_2_2(inputIn_reg_array_2_12_sva, pe_array_0_0_run_cmp_229_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_11_sva <= MUX_v_8_2_2(inputIn_reg_array_2_11_sva, pe_array_0_0_run_cmp_230_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_10_sva <= MUX_v_8_2_2(inputIn_reg_array_2_10_sva, pe_array_0_0_run_cmp_231_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_9_sva <= MUX_v_8_2_2(inputIn_reg_array_2_9_sva, pe_array_0_0_run_cmp_232_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_8_sva <= MUX_v_8_2_2(inputIn_reg_array_2_8_sva, pe_array_0_0_run_cmp_233_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_7_sva <= MUX_v_8_2_2(inputIn_reg_array_2_7_sva, pe_array_0_0_run_cmp_234_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_6_sva <= MUX_v_8_2_2(inputIn_reg_array_2_6_sva, pe_array_0_0_run_cmp_235_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_5_sva <= MUX_v_8_2_2(inputIn_reg_array_2_5_sva, pe_array_0_0_run_cmp_236_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_4_sva <= MUX_v_8_2_2(inputIn_reg_array_2_4_sva, pe_array_0_0_run_cmp_237_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_3_sva <= MUX_v_8_2_2(inputIn_reg_array_2_3_sva, pe_array_0_0_run_cmp_238_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_2_sva <= MUX_v_8_2_2(inputIn_reg_array_2_2_sva, pe_array_0_0_run_cmp_239_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_2_1_sva <= MUX_v_8_2_2(inputIn_reg_array_2_1_sva, pe_array_0_0_run_cmp_240_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_15_sva <= MUX_v_8_2_2(inputIn_reg_array_1_15_sva, pe_array_0_0_run_cmp_242_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_14_sva <= MUX_v_8_2_2(inputIn_reg_array_1_14_sva, pe_array_0_0_run_cmp_243_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_13_sva <= MUX_v_8_2_2(inputIn_reg_array_1_13_sva, pe_array_0_0_run_cmp_244_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_12_sva <= MUX_v_8_2_2(inputIn_reg_array_1_12_sva, pe_array_0_0_run_cmp_245_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_11_sva <= MUX_v_8_2_2(inputIn_reg_array_1_11_sva, pe_array_0_0_run_cmp_246_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_10_sva <= MUX_v_8_2_2(inputIn_reg_array_1_10_sva, pe_array_0_0_run_cmp_247_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_9_sva <= MUX_v_8_2_2(inputIn_reg_array_1_9_sva, pe_array_0_0_run_cmp_248_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_8_sva <= MUX_v_8_2_2(inputIn_reg_array_1_8_sva, pe_array_0_0_run_cmp_249_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_7_sva <= MUX_v_8_2_2(inputIn_reg_array_1_7_sva, pe_array_0_0_run_cmp_250_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_6_sva <= MUX_v_8_2_2(inputIn_reg_array_1_6_sva, pe_array_0_0_run_cmp_251_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_5_sva <= MUX_v_8_2_2(inputIn_reg_array_1_5_sva, pe_array_0_0_run_cmp_252_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_4_sva <= MUX_v_8_2_2(inputIn_reg_array_1_4_sva, pe_array_0_0_run_cmp_253_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_3_sva <= MUX_v_8_2_2(inputIn_reg_array_1_3_sva, pe_array_0_0_run_cmp_254_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
      inputIn_reg_array_1_2_sva <= MUX_v_8_2_2(inputIn_reg_array_1_2_sva, pe_array_0_0_run_cmp_255_input_out_rsc_z,
          reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      inputIn_reg_array_1_1_sva <= 8'b00000000;
    end
    else if ( run_wen & (~(reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse &
        step_slc_16_2_itm_2)) ) begin
      inputIn_reg_array_1_1_sva <= MUX1HOT_v_8_3_2(pe_array_0_0_run_cmp_input_out_rsc_z,
          step_if_3_for_1_acc_5_cse_sva_2, inputIn_reg_array_1_1_sva, {(and_6_nl)
          , reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse , (asn_inputIn_reg_array_1_1_sva_nor_nl)});
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_if_3_if_step_if_3_if_and_1_itm_3 <= 1'b0;
    end
    else if ( run_wen & reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse & (~
        step_slc_16_2_itm_2) ) begin
      step_if_3_if_step_if_3_if_and_1_itm_3 <= step_if_3_if_step_if_3_if_and_1_itm_2;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_slc_16_2_itm_3 <= 1'b0;
    end
    else if ( run_wen & reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse ) begin
      step_slc_16_2_itm_3 <= step_slc_16_2_itm_2;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_if_2_land_1_lpi_1_dfm_1 <= 1'b0;
    end
    else if ( run_wen & step_if_1_acc_itm_16_1 ) begin
      step_if_2_land_1_lpi_1_dfm_1 <= step_if_2_if_step_if_2_if_nor_1_tmp;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_in_col_value_lpi_1_dfm <= 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( step_and_cse & (~ step_if_1_acc_itm_16_1) ) begin
      step_in_col_value_lpi_1_dfm <= MUX_v_128_2_2(input_rsci_idat_mxwt, step_in_col_value_lpi_1_dfm,
          nand_1_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      num_pixels_lpi_1_dfm <= 16'b0000000000000000;
      loopIndicesIn_crt_lpi_1_dfm <= 48'b000000000000000000000000000000000000000000000000;
      step_step_sva_1 <= 16'b0000000000000000;
    end
    else if ( num_pixels_and_cse ) begin
      num_pixels_lpi_1_dfm <= num_pixels_lpi_1_dfm_mx0;
      loopIndicesIn_crt_lpi_1_dfm <= loopIndicesIn_crt_lpi_1_dfm_mx0;
      step_step_sva_1 <= step_step_sva_3;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      paramsIn_crt_lpi_1_dfm_127_80 <= 48'b000000000000000000000000000000000000000000000000;
    end
    else if ( step_acc_itm_16 & run_wen & exitL_exit_step_sva ) begin
      paramsIn_crt_lpi_1_dfm_127_80 <= paramsIn_crt_lpi_1_dfm_127_80_mx0;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_15_15_sva <= 8'b00000000;
      weight_reg_array_15_14_sva <= 8'b00000000;
      weight_reg_array_15_13_sva <= 8'b00000000;
      weight_reg_array_15_12_sva <= 8'b00000000;
      weight_reg_array_15_11_sva <= 8'b00000000;
      weight_reg_array_15_10_sva <= 8'b00000000;
      weight_reg_array_15_9_sva <= 8'b00000000;
      weight_reg_array_15_8_sva <= 8'b00000000;
      weight_reg_array_15_7_sva <= 8'b00000000;
      weight_reg_array_15_6_sva <= 8'b00000000;
      weight_reg_array_15_5_sva <= 8'b00000000;
      weight_reg_array_15_4_sva <= 8'b00000000;
      weight_reg_array_15_3_sva <= 8'b00000000;
      weight_reg_array_15_2_sva <= 8'b00000000;
      weight_reg_array_15_1_sva <= 8'b00000000;
      weight_reg_array_15_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_cse ) begin
      weight_reg_array_15_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_15_15_sva, or_dcpl_45);
      weight_reg_array_15_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_15_14_sva, or_dcpl_45);
      weight_reg_array_15_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_15_13_sva, or_dcpl_45);
      weight_reg_array_15_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]),
          weight_reg_array_15_12_sva, or_dcpl_45);
      weight_reg_array_15_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_15_11_sva,
          or_dcpl_45);
      weight_reg_array_15_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_15_10_sva,
          or_dcpl_45);
      weight_reg_array_15_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_15_9_sva,
          or_dcpl_45);
      weight_reg_array_15_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_15_8_sva,
          or_dcpl_45);
      weight_reg_array_15_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_15_7_sva,
          or_dcpl_45);
      weight_reg_array_15_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_15_6_sva,
          or_dcpl_45);
      weight_reg_array_15_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_15_5_sva,
          or_dcpl_45);
      weight_reg_array_15_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_15_4_sva,
          or_dcpl_45);
      weight_reg_array_15_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_15_3_sva,
          or_dcpl_45);
      weight_reg_array_15_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_15_2_sva,
          or_dcpl_45);
      weight_reg_array_15_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_15_1_sva,
          or_dcpl_45);
      weight_reg_array_15_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_15_0_sva,
          or_dcpl_45);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_14_15_sva <= 8'b00000000;
      weight_reg_array_14_14_sva <= 8'b00000000;
      weight_reg_array_14_13_sva <= 8'b00000000;
      weight_reg_array_14_12_sva <= 8'b00000000;
      weight_reg_array_14_11_sva <= 8'b00000000;
      weight_reg_array_14_10_sva <= 8'b00000000;
      weight_reg_array_14_9_sva <= 8'b00000000;
      weight_reg_array_14_8_sva <= 8'b00000000;
      weight_reg_array_14_7_sva <= 8'b00000000;
      weight_reg_array_14_6_sva <= 8'b00000000;
      weight_reg_array_14_5_sva <= 8'b00000000;
      weight_reg_array_14_4_sva <= 8'b00000000;
      weight_reg_array_14_3_sva <= 8'b00000000;
      weight_reg_array_14_2_sva <= 8'b00000000;
      weight_reg_array_14_1_sva <= 8'b00000000;
      weight_reg_array_14_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_16_cse ) begin
      weight_reg_array_14_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_14_15_sva, or_dcpl_47);
      weight_reg_array_14_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_14_14_sva, or_dcpl_47);
      weight_reg_array_14_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_14_13_sva, or_dcpl_47);
      weight_reg_array_14_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]),
          weight_reg_array_14_12_sva, or_dcpl_47);
      weight_reg_array_14_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_14_11_sva,
          or_dcpl_47);
      weight_reg_array_14_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_14_10_sva,
          or_dcpl_47);
      weight_reg_array_14_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_14_9_sva,
          or_dcpl_47);
      weight_reg_array_14_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_14_8_sva,
          or_dcpl_47);
      weight_reg_array_14_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_14_7_sva,
          or_dcpl_47);
      weight_reg_array_14_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_14_6_sva,
          or_dcpl_47);
      weight_reg_array_14_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_14_5_sva,
          or_dcpl_47);
      weight_reg_array_14_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_14_4_sva,
          or_dcpl_47);
      weight_reg_array_14_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_14_3_sva,
          or_dcpl_47);
      weight_reg_array_14_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_14_2_sva,
          or_dcpl_47);
      weight_reg_array_14_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_14_1_sva,
          or_dcpl_47);
      weight_reg_array_14_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_14_0_sva,
          or_dcpl_47);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_13_15_sva <= 8'b00000000;
      weight_reg_array_13_14_sva <= 8'b00000000;
      weight_reg_array_13_13_sva <= 8'b00000000;
      weight_reg_array_13_12_sva <= 8'b00000000;
      weight_reg_array_13_11_sva <= 8'b00000000;
      weight_reg_array_13_10_sva <= 8'b00000000;
      weight_reg_array_13_9_sva <= 8'b00000000;
      weight_reg_array_13_8_sva <= 8'b00000000;
      weight_reg_array_13_7_sva <= 8'b00000000;
      weight_reg_array_13_6_sva <= 8'b00000000;
      weight_reg_array_13_5_sva <= 8'b00000000;
      weight_reg_array_13_4_sva <= 8'b00000000;
      weight_reg_array_13_3_sva <= 8'b00000000;
      weight_reg_array_13_2_sva <= 8'b00000000;
      weight_reg_array_13_1_sva <= 8'b00000000;
      weight_reg_array_13_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_32_cse ) begin
      weight_reg_array_13_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_13_15_sva, or_dcpl_49);
      weight_reg_array_13_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_13_14_sva, or_dcpl_49);
      weight_reg_array_13_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_13_13_sva, or_dcpl_49);
      weight_reg_array_13_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]),
          weight_reg_array_13_12_sva, or_dcpl_49);
      weight_reg_array_13_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_13_11_sva,
          or_dcpl_49);
      weight_reg_array_13_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_13_10_sva,
          or_dcpl_49);
      weight_reg_array_13_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_13_9_sva,
          or_dcpl_49);
      weight_reg_array_13_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_13_8_sva,
          or_dcpl_49);
      weight_reg_array_13_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_13_7_sva,
          or_dcpl_49);
      weight_reg_array_13_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_13_6_sva,
          or_dcpl_49);
      weight_reg_array_13_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_13_5_sva,
          or_dcpl_49);
      weight_reg_array_13_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_13_4_sva,
          or_dcpl_49);
      weight_reg_array_13_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_13_3_sva,
          or_dcpl_49);
      weight_reg_array_13_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_13_2_sva,
          or_dcpl_49);
      weight_reg_array_13_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_13_1_sva,
          or_dcpl_49);
      weight_reg_array_13_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_13_0_sva,
          or_dcpl_49);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_12_15_sva <= 8'b00000000;
      weight_reg_array_12_14_sva <= 8'b00000000;
      weight_reg_array_12_13_sva <= 8'b00000000;
      weight_reg_array_12_12_sva <= 8'b00000000;
      weight_reg_array_12_11_sva <= 8'b00000000;
      weight_reg_array_12_10_sva <= 8'b00000000;
      weight_reg_array_12_9_sva <= 8'b00000000;
      weight_reg_array_12_8_sva <= 8'b00000000;
      weight_reg_array_12_7_sva <= 8'b00000000;
      weight_reg_array_12_6_sva <= 8'b00000000;
      weight_reg_array_12_5_sva <= 8'b00000000;
      weight_reg_array_12_4_sva <= 8'b00000000;
      weight_reg_array_12_3_sva <= 8'b00000000;
      weight_reg_array_12_2_sva <= 8'b00000000;
      weight_reg_array_12_1_sva <= 8'b00000000;
      weight_reg_array_12_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_48_cse ) begin
      weight_reg_array_12_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_12_15_sva, or_dcpl_50);
      weight_reg_array_12_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_12_14_sva, or_dcpl_50);
      weight_reg_array_12_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_12_13_sva, or_dcpl_50);
      weight_reg_array_12_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]),
          weight_reg_array_12_12_sva, or_dcpl_50);
      weight_reg_array_12_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_12_11_sva,
          or_dcpl_50);
      weight_reg_array_12_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_12_10_sva,
          or_dcpl_50);
      weight_reg_array_12_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_12_9_sva,
          or_dcpl_50);
      weight_reg_array_12_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_12_8_sva,
          or_dcpl_50);
      weight_reg_array_12_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_12_7_sva,
          or_dcpl_50);
      weight_reg_array_12_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_12_6_sva,
          or_dcpl_50);
      weight_reg_array_12_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_12_5_sva,
          or_dcpl_50);
      weight_reg_array_12_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_12_4_sva,
          or_dcpl_50);
      weight_reg_array_12_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_12_3_sva,
          or_dcpl_50);
      weight_reg_array_12_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_12_2_sva,
          or_dcpl_50);
      weight_reg_array_12_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_12_1_sva,
          or_dcpl_50);
      weight_reg_array_12_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_12_0_sva,
          or_dcpl_50);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_11_15_sva <= 8'b00000000;
      weight_reg_array_11_14_sva <= 8'b00000000;
      weight_reg_array_11_13_sva <= 8'b00000000;
      weight_reg_array_11_12_sva <= 8'b00000000;
      weight_reg_array_11_11_sva <= 8'b00000000;
      weight_reg_array_11_10_sva <= 8'b00000000;
      weight_reg_array_11_9_sva <= 8'b00000000;
      weight_reg_array_11_8_sva <= 8'b00000000;
      weight_reg_array_11_7_sva <= 8'b00000000;
      weight_reg_array_11_6_sva <= 8'b00000000;
      weight_reg_array_11_5_sva <= 8'b00000000;
      weight_reg_array_11_4_sva <= 8'b00000000;
      weight_reg_array_11_3_sva <= 8'b00000000;
      weight_reg_array_11_2_sva <= 8'b00000000;
      weight_reg_array_11_1_sva <= 8'b00000000;
      weight_reg_array_11_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_64_cse ) begin
      weight_reg_array_11_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_11_15_sva, or_dcpl_53);
      weight_reg_array_11_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_11_14_sva, or_dcpl_53);
      weight_reg_array_11_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_11_13_sva, or_dcpl_53);
      weight_reg_array_11_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]),
          weight_reg_array_11_12_sva, or_dcpl_53);
      weight_reg_array_11_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_11_11_sva,
          or_dcpl_53);
      weight_reg_array_11_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_11_10_sva,
          or_dcpl_53);
      weight_reg_array_11_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_11_9_sva,
          or_dcpl_53);
      weight_reg_array_11_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_11_8_sva,
          or_dcpl_53);
      weight_reg_array_11_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_11_7_sva,
          or_dcpl_53);
      weight_reg_array_11_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_11_6_sva,
          or_dcpl_53);
      weight_reg_array_11_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_11_5_sva,
          or_dcpl_53);
      weight_reg_array_11_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_11_4_sva,
          or_dcpl_53);
      weight_reg_array_11_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_11_3_sva,
          or_dcpl_53);
      weight_reg_array_11_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_11_2_sva,
          or_dcpl_53);
      weight_reg_array_11_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_11_1_sva,
          or_dcpl_53);
      weight_reg_array_11_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_11_0_sva,
          or_dcpl_53);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_10_15_sva <= 8'b00000000;
      weight_reg_array_10_14_sva <= 8'b00000000;
      weight_reg_array_10_13_sva <= 8'b00000000;
      weight_reg_array_10_12_sva <= 8'b00000000;
      weight_reg_array_10_11_sva <= 8'b00000000;
      weight_reg_array_10_10_sva <= 8'b00000000;
      weight_reg_array_10_9_sva <= 8'b00000000;
      weight_reg_array_10_8_sva <= 8'b00000000;
      weight_reg_array_10_7_sva <= 8'b00000000;
      weight_reg_array_10_6_sva <= 8'b00000000;
      weight_reg_array_10_5_sva <= 8'b00000000;
      weight_reg_array_10_4_sva <= 8'b00000000;
      weight_reg_array_10_3_sva <= 8'b00000000;
      weight_reg_array_10_2_sva <= 8'b00000000;
      weight_reg_array_10_1_sva <= 8'b00000000;
      weight_reg_array_10_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_80_cse ) begin
      weight_reg_array_10_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_10_15_sva, or_dcpl_55);
      weight_reg_array_10_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_10_14_sva, or_dcpl_55);
      weight_reg_array_10_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_10_13_sva, or_dcpl_55);
      weight_reg_array_10_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]),
          weight_reg_array_10_12_sva, or_dcpl_55);
      weight_reg_array_10_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_10_11_sva,
          or_dcpl_55);
      weight_reg_array_10_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_10_10_sva,
          or_dcpl_55);
      weight_reg_array_10_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_10_9_sva,
          or_dcpl_55);
      weight_reg_array_10_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_10_8_sva,
          or_dcpl_55);
      weight_reg_array_10_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_10_7_sva,
          or_dcpl_55);
      weight_reg_array_10_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_10_6_sva,
          or_dcpl_55);
      weight_reg_array_10_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_10_5_sva,
          or_dcpl_55);
      weight_reg_array_10_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_10_4_sva,
          or_dcpl_55);
      weight_reg_array_10_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_10_3_sva,
          or_dcpl_55);
      weight_reg_array_10_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_10_2_sva,
          or_dcpl_55);
      weight_reg_array_10_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_10_1_sva,
          or_dcpl_55);
      weight_reg_array_10_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_10_0_sva,
          or_dcpl_55);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_9_15_sva <= 8'b00000000;
      weight_reg_array_9_14_sva <= 8'b00000000;
      weight_reg_array_9_13_sva <= 8'b00000000;
      weight_reg_array_9_12_sva <= 8'b00000000;
      weight_reg_array_9_11_sva <= 8'b00000000;
      weight_reg_array_9_10_sva <= 8'b00000000;
      weight_reg_array_9_9_sva <= 8'b00000000;
      weight_reg_array_9_8_sva <= 8'b00000000;
      weight_reg_array_9_7_sva <= 8'b00000000;
      weight_reg_array_9_6_sva <= 8'b00000000;
      weight_reg_array_9_5_sva <= 8'b00000000;
      weight_reg_array_9_4_sva <= 8'b00000000;
      weight_reg_array_9_3_sva <= 8'b00000000;
      weight_reg_array_9_2_sva <= 8'b00000000;
      weight_reg_array_9_1_sva <= 8'b00000000;
      weight_reg_array_9_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_96_cse ) begin
      weight_reg_array_9_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_9_15_sva, or_dcpl_56);
      weight_reg_array_9_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_9_14_sva, or_dcpl_56);
      weight_reg_array_9_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_9_13_sva, or_dcpl_56);
      weight_reg_array_9_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_9_12_sva,
          or_dcpl_56);
      weight_reg_array_9_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_9_11_sva,
          or_dcpl_56);
      weight_reg_array_9_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_9_10_sva,
          or_dcpl_56);
      weight_reg_array_9_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_9_9_sva,
          or_dcpl_56);
      weight_reg_array_9_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_9_8_sva,
          or_dcpl_56);
      weight_reg_array_9_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_9_7_sva,
          or_dcpl_56);
      weight_reg_array_9_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_9_6_sva,
          or_dcpl_56);
      weight_reg_array_9_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_9_5_sva,
          or_dcpl_56);
      weight_reg_array_9_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_9_4_sva,
          or_dcpl_56);
      weight_reg_array_9_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_9_3_sva,
          or_dcpl_56);
      weight_reg_array_9_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_9_2_sva,
          or_dcpl_56);
      weight_reg_array_9_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_9_1_sva,
          or_dcpl_56);
      weight_reg_array_9_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_9_0_sva,
          or_dcpl_56);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_8_15_sva <= 8'b00000000;
      weight_reg_array_8_14_sva <= 8'b00000000;
      weight_reg_array_8_13_sva <= 8'b00000000;
      weight_reg_array_8_12_sva <= 8'b00000000;
      weight_reg_array_8_11_sva <= 8'b00000000;
      weight_reg_array_8_10_sva <= 8'b00000000;
      weight_reg_array_8_9_sva <= 8'b00000000;
      weight_reg_array_8_8_sva <= 8'b00000000;
      weight_reg_array_8_7_sva <= 8'b00000000;
      weight_reg_array_8_6_sva <= 8'b00000000;
      weight_reg_array_8_5_sva <= 8'b00000000;
      weight_reg_array_8_4_sva <= 8'b00000000;
      weight_reg_array_8_3_sva <= 8'b00000000;
      weight_reg_array_8_2_sva <= 8'b00000000;
      weight_reg_array_8_1_sva <= 8'b00000000;
      weight_reg_array_8_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_112_cse ) begin
      weight_reg_array_8_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_8_15_sva, or_dcpl_57);
      weight_reg_array_8_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_8_14_sva, or_dcpl_57);
      weight_reg_array_8_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_8_13_sva, or_dcpl_57);
      weight_reg_array_8_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_8_12_sva,
          or_dcpl_57);
      weight_reg_array_8_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_8_11_sva,
          or_dcpl_57);
      weight_reg_array_8_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_8_10_sva,
          or_dcpl_57);
      weight_reg_array_8_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_8_9_sva,
          or_dcpl_57);
      weight_reg_array_8_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_8_8_sva,
          or_dcpl_57);
      weight_reg_array_8_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_8_7_sva,
          or_dcpl_57);
      weight_reg_array_8_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_8_6_sva,
          or_dcpl_57);
      weight_reg_array_8_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_8_5_sva,
          or_dcpl_57);
      weight_reg_array_8_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_8_4_sva,
          or_dcpl_57);
      weight_reg_array_8_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_8_3_sva,
          or_dcpl_57);
      weight_reg_array_8_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_8_2_sva,
          or_dcpl_57);
      weight_reg_array_8_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_8_1_sva,
          or_dcpl_57);
      weight_reg_array_8_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_8_0_sva,
          or_dcpl_57);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_7_15_sva <= 8'b00000000;
      weight_reg_array_7_14_sva <= 8'b00000000;
      weight_reg_array_7_13_sva <= 8'b00000000;
      weight_reg_array_7_12_sva <= 8'b00000000;
      weight_reg_array_7_11_sva <= 8'b00000000;
      weight_reg_array_7_10_sva <= 8'b00000000;
      weight_reg_array_7_9_sva <= 8'b00000000;
      weight_reg_array_7_8_sva <= 8'b00000000;
      weight_reg_array_7_7_sva <= 8'b00000000;
      weight_reg_array_7_6_sva <= 8'b00000000;
      weight_reg_array_7_5_sva <= 8'b00000000;
      weight_reg_array_7_4_sva <= 8'b00000000;
      weight_reg_array_7_3_sva <= 8'b00000000;
      weight_reg_array_7_2_sva <= 8'b00000000;
      weight_reg_array_7_1_sva <= 8'b00000000;
      weight_reg_array_7_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_128_cse ) begin
      weight_reg_array_7_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_7_15_sva, or_dcpl_59);
      weight_reg_array_7_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_7_14_sva, or_dcpl_59);
      weight_reg_array_7_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_7_13_sva, or_dcpl_59);
      weight_reg_array_7_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_7_12_sva,
          or_dcpl_59);
      weight_reg_array_7_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_7_11_sva,
          or_dcpl_59);
      weight_reg_array_7_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_7_10_sva,
          or_dcpl_59);
      weight_reg_array_7_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_7_9_sva,
          or_dcpl_59);
      weight_reg_array_7_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_7_8_sva,
          or_dcpl_59);
      weight_reg_array_7_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_7_7_sva,
          or_dcpl_59);
      weight_reg_array_7_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_7_6_sva,
          or_dcpl_59);
      weight_reg_array_7_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_7_5_sva,
          or_dcpl_59);
      weight_reg_array_7_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_7_4_sva,
          or_dcpl_59);
      weight_reg_array_7_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_7_3_sva,
          or_dcpl_59);
      weight_reg_array_7_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_7_2_sva,
          or_dcpl_59);
      weight_reg_array_7_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_7_1_sva,
          or_dcpl_59);
      weight_reg_array_7_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_7_0_sva,
          or_dcpl_59);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_6_15_sva <= 8'b00000000;
      weight_reg_array_6_14_sva <= 8'b00000000;
      weight_reg_array_6_13_sva <= 8'b00000000;
      weight_reg_array_6_12_sva <= 8'b00000000;
      weight_reg_array_6_11_sva <= 8'b00000000;
      weight_reg_array_6_10_sva <= 8'b00000000;
      weight_reg_array_6_9_sva <= 8'b00000000;
      weight_reg_array_6_8_sva <= 8'b00000000;
      weight_reg_array_6_7_sva <= 8'b00000000;
      weight_reg_array_6_6_sva <= 8'b00000000;
      weight_reg_array_6_5_sva <= 8'b00000000;
      weight_reg_array_6_4_sva <= 8'b00000000;
      weight_reg_array_6_3_sva <= 8'b00000000;
      weight_reg_array_6_2_sva <= 8'b00000000;
      weight_reg_array_6_1_sva <= 8'b00000000;
      weight_reg_array_6_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_144_cse ) begin
      weight_reg_array_6_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_6_15_sva, or_dcpl_60);
      weight_reg_array_6_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_6_14_sva, or_dcpl_60);
      weight_reg_array_6_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_6_13_sva, or_dcpl_60);
      weight_reg_array_6_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_6_12_sva,
          or_dcpl_60);
      weight_reg_array_6_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_6_11_sva,
          or_dcpl_60);
      weight_reg_array_6_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_6_10_sva,
          or_dcpl_60);
      weight_reg_array_6_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_6_9_sva,
          or_dcpl_60);
      weight_reg_array_6_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_6_8_sva,
          or_dcpl_60);
      weight_reg_array_6_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_6_7_sva,
          or_dcpl_60);
      weight_reg_array_6_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_6_6_sva,
          or_dcpl_60);
      weight_reg_array_6_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_6_5_sva,
          or_dcpl_60);
      weight_reg_array_6_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_6_4_sva,
          or_dcpl_60);
      weight_reg_array_6_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_6_3_sva,
          or_dcpl_60);
      weight_reg_array_6_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_6_2_sva,
          or_dcpl_60);
      weight_reg_array_6_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_6_1_sva,
          or_dcpl_60);
      weight_reg_array_6_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_6_0_sva,
          or_dcpl_60);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_5_15_sva <= 8'b00000000;
      weight_reg_array_5_14_sva <= 8'b00000000;
      weight_reg_array_5_13_sva <= 8'b00000000;
      weight_reg_array_5_12_sva <= 8'b00000000;
      weight_reg_array_5_11_sva <= 8'b00000000;
      weight_reg_array_5_10_sva <= 8'b00000000;
      weight_reg_array_5_9_sva <= 8'b00000000;
      weight_reg_array_5_8_sva <= 8'b00000000;
      weight_reg_array_5_7_sva <= 8'b00000000;
      weight_reg_array_5_6_sva <= 8'b00000000;
      weight_reg_array_5_5_sva <= 8'b00000000;
      weight_reg_array_5_4_sva <= 8'b00000000;
      weight_reg_array_5_3_sva <= 8'b00000000;
      weight_reg_array_5_2_sva <= 8'b00000000;
      weight_reg_array_5_1_sva <= 8'b00000000;
      weight_reg_array_5_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_160_cse ) begin
      weight_reg_array_5_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_5_15_sva, or_dcpl_62);
      weight_reg_array_5_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_5_14_sva, or_dcpl_62);
      weight_reg_array_5_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_5_13_sva, or_dcpl_62);
      weight_reg_array_5_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_5_12_sva,
          or_dcpl_62);
      weight_reg_array_5_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_5_11_sva,
          or_dcpl_62);
      weight_reg_array_5_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_5_10_sva,
          or_dcpl_62);
      weight_reg_array_5_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_5_9_sva,
          or_dcpl_62);
      weight_reg_array_5_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_5_8_sva,
          or_dcpl_62);
      weight_reg_array_5_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_5_7_sva,
          or_dcpl_62);
      weight_reg_array_5_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_5_6_sva,
          or_dcpl_62);
      weight_reg_array_5_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_5_5_sva,
          or_dcpl_62);
      weight_reg_array_5_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_5_4_sva,
          or_dcpl_62);
      weight_reg_array_5_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_5_3_sva,
          or_dcpl_62);
      weight_reg_array_5_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_5_2_sva,
          or_dcpl_62);
      weight_reg_array_5_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_5_1_sva,
          or_dcpl_62);
      weight_reg_array_5_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_5_0_sva,
          or_dcpl_62);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_4_15_sva <= 8'b00000000;
      weight_reg_array_4_14_sva <= 8'b00000000;
      weight_reg_array_4_13_sva <= 8'b00000000;
      weight_reg_array_4_12_sva <= 8'b00000000;
      weight_reg_array_4_11_sva <= 8'b00000000;
      weight_reg_array_4_10_sva <= 8'b00000000;
      weight_reg_array_4_9_sva <= 8'b00000000;
      weight_reg_array_4_8_sva <= 8'b00000000;
      weight_reg_array_4_7_sva <= 8'b00000000;
      weight_reg_array_4_6_sva <= 8'b00000000;
      weight_reg_array_4_5_sva <= 8'b00000000;
      weight_reg_array_4_4_sva <= 8'b00000000;
      weight_reg_array_4_3_sva <= 8'b00000000;
      weight_reg_array_4_2_sva <= 8'b00000000;
      weight_reg_array_4_1_sva <= 8'b00000000;
      weight_reg_array_4_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_176_cse ) begin
      weight_reg_array_4_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_4_15_sva, or_dcpl_63);
      weight_reg_array_4_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_4_14_sva, or_dcpl_63);
      weight_reg_array_4_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_4_13_sva, or_dcpl_63);
      weight_reg_array_4_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_4_12_sva,
          or_dcpl_63);
      weight_reg_array_4_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_4_11_sva,
          or_dcpl_63);
      weight_reg_array_4_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_4_10_sva,
          or_dcpl_63);
      weight_reg_array_4_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_4_9_sva,
          or_dcpl_63);
      weight_reg_array_4_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_4_8_sva,
          or_dcpl_63);
      weight_reg_array_4_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_4_7_sva,
          or_dcpl_63);
      weight_reg_array_4_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_4_6_sva,
          or_dcpl_63);
      weight_reg_array_4_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_4_5_sva,
          or_dcpl_63);
      weight_reg_array_4_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_4_4_sva,
          or_dcpl_63);
      weight_reg_array_4_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_4_3_sva,
          or_dcpl_63);
      weight_reg_array_4_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_4_2_sva,
          or_dcpl_63);
      weight_reg_array_4_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_4_1_sva,
          or_dcpl_63);
      weight_reg_array_4_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_4_0_sva,
          or_dcpl_63);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_3_15_sva <= 8'b00000000;
      weight_reg_array_3_14_sva <= 8'b00000000;
      weight_reg_array_3_13_sva <= 8'b00000000;
      weight_reg_array_3_12_sva <= 8'b00000000;
      weight_reg_array_3_11_sva <= 8'b00000000;
      weight_reg_array_3_10_sva <= 8'b00000000;
      weight_reg_array_3_9_sva <= 8'b00000000;
      weight_reg_array_3_8_sva <= 8'b00000000;
      weight_reg_array_3_7_sva <= 8'b00000000;
      weight_reg_array_3_6_sva <= 8'b00000000;
      weight_reg_array_3_5_sva <= 8'b00000000;
      weight_reg_array_3_4_sva <= 8'b00000000;
      weight_reg_array_3_3_sva <= 8'b00000000;
      weight_reg_array_3_2_sva <= 8'b00000000;
      weight_reg_array_3_1_sva <= 8'b00000000;
      weight_reg_array_3_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_192_cse ) begin
      weight_reg_array_3_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_3_15_sva, or_dcpl_64);
      weight_reg_array_3_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_3_14_sva, or_dcpl_64);
      weight_reg_array_3_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_3_13_sva, or_dcpl_64);
      weight_reg_array_3_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_3_12_sva,
          or_dcpl_64);
      weight_reg_array_3_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_3_11_sva,
          or_dcpl_64);
      weight_reg_array_3_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_3_10_sva,
          or_dcpl_64);
      weight_reg_array_3_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_3_9_sva,
          or_dcpl_64);
      weight_reg_array_3_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_3_8_sva,
          or_dcpl_64);
      weight_reg_array_3_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_3_7_sva,
          or_dcpl_64);
      weight_reg_array_3_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_3_6_sva,
          or_dcpl_64);
      weight_reg_array_3_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_3_5_sva,
          or_dcpl_64);
      weight_reg_array_3_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_3_4_sva,
          or_dcpl_64);
      weight_reg_array_3_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_3_3_sva,
          or_dcpl_64);
      weight_reg_array_3_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_3_2_sva,
          or_dcpl_64);
      weight_reg_array_3_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_3_1_sva,
          or_dcpl_64);
      weight_reg_array_3_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_3_0_sva,
          or_dcpl_64);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_2_15_sva <= 8'b00000000;
      weight_reg_array_2_14_sva <= 8'b00000000;
      weight_reg_array_2_13_sva <= 8'b00000000;
      weight_reg_array_2_12_sva <= 8'b00000000;
      weight_reg_array_2_11_sva <= 8'b00000000;
      weight_reg_array_2_10_sva <= 8'b00000000;
      weight_reg_array_2_9_sva <= 8'b00000000;
      weight_reg_array_2_8_sva <= 8'b00000000;
      weight_reg_array_2_7_sva <= 8'b00000000;
      weight_reg_array_2_6_sva <= 8'b00000000;
      weight_reg_array_2_5_sva <= 8'b00000000;
      weight_reg_array_2_4_sva <= 8'b00000000;
      weight_reg_array_2_3_sva <= 8'b00000000;
      weight_reg_array_2_2_sva <= 8'b00000000;
      weight_reg_array_2_1_sva <= 8'b00000000;
      weight_reg_array_2_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_208_cse ) begin
      weight_reg_array_2_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_2_15_sva, or_dcpl_65);
      weight_reg_array_2_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_2_14_sva, or_dcpl_65);
      weight_reg_array_2_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_2_13_sva, or_dcpl_65);
      weight_reg_array_2_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_2_12_sva,
          or_dcpl_65);
      weight_reg_array_2_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_2_11_sva,
          or_dcpl_65);
      weight_reg_array_2_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_2_10_sva,
          or_dcpl_65);
      weight_reg_array_2_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_2_9_sva,
          or_dcpl_65);
      weight_reg_array_2_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_2_8_sva,
          or_dcpl_65);
      weight_reg_array_2_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_2_7_sva,
          or_dcpl_65);
      weight_reg_array_2_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_2_6_sva,
          or_dcpl_65);
      weight_reg_array_2_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_2_5_sva,
          or_dcpl_65);
      weight_reg_array_2_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_2_4_sva,
          or_dcpl_65);
      weight_reg_array_2_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_2_3_sva,
          or_dcpl_65);
      weight_reg_array_2_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_2_2_sva,
          or_dcpl_65);
      weight_reg_array_2_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_2_1_sva,
          or_dcpl_65);
      weight_reg_array_2_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_2_0_sva,
          or_dcpl_65);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_1_15_sva <= 8'b00000000;
      weight_reg_array_1_14_sva <= 8'b00000000;
      weight_reg_array_1_13_sva <= 8'b00000000;
      weight_reg_array_1_12_sva <= 8'b00000000;
      weight_reg_array_1_11_sva <= 8'b00000000;
      weight_reg_array_1_10_sva <= 8'b00000000;
      weight_reg_array_1_9_sva <= 8'b00000000;
      weight_reg_array_1_8_sva <= 8'b00000000;
      weight_reg_array_1_7_sva <= 8'b00000000;
      weight_reg_array_1_6_sva <= 8'b00000000;
      weight_reg_array_1_5_sva <= 8'b00000000;
      weight_reg_array_1_4_sva <= 8'b00000000;
      weight_reg_array_1_3_sva <= 8'b00000000;
      weight_reg_array_1_2_sva <= 8'b00000000;
      weight_reg_array_1_1_sva <= 8'b00000000;
      weight_reg_array_1_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_224_cse ) begin
      weight_reg_array_1_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_1_15_sva, or_dcpl_66);
      weight_reg_array_1_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_1_14_sva, or_dcpl_66);
      weight_reg_array_1_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_1_13_sva, or_dcpl_66);
      weight_reg_array_1_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_1_12_sva,
          or_dcpl_66);
      weight_reg_array_1_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_1_11_sva,
          or_dcpl_66);
      weight_reg_array_1_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_1_10_sva,
          or_dcpl_66);
      weight_reg_array_1_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_1_9_sva,
          or_dcpl_66);
      weight_reg_array_1_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_1_8_sva,
          or_dcpl_66);
      weight_reg_array_1_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_1_7_sva,
          or_dcpl_66);
      weight_reg_array_1_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_1_6_sva,
          or_dcpl_66);
      weight_reg_array_1_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_1_5_sva,
          or_dcpl_66);
      weight_reg_array_1_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_1_4_sva,
          or_dcpl_66);
      weight_reg_array_1_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_1_3_sva,
          or_dcpl_66);
      weight_reg_array_1_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_1_2_sva,
          or_dcpl_66);
      weight_reg_array_1_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_1_1_sva,
          or_dcpl_66);
      weight_reg_array_1_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_1_0_sva,
          or_dcpl_66);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_reg_array_0_15_sva <= 8'b00000000;
      weight_reg_array_0_14_sva <= 8'b00000000;
      weight_reg_array_0_13_sva <= 8'b00000000;
      weight_reg_array_0_12_sva <= 8'b00000000;
      weight_reg_array_0_11_sva <= 8'b00000000;
      weight_reg_array_0_10_sva <= 8'b00000000;
      weight_reg_array_0_9_sva <= 8'b00000000;
      weight_reg_array_0_8_sva <= 8'b00000000;
      weight_reg_array_0_7_sva <= 8'b00000000;
      weight_reg_array_0_6_sva <= 8'b00000000;
      weight_reg_array_0_5_sva <= 8'b00000000;
      weight_reg_array_0_4_sva <= 8'b00000000;
      weight_reg_array_0_3_sva <= 8'b00000000;
      weight_reg_array_0_2_sva <= 8'b00000000;
      weight_reg_array_0_1_sva <= 8'b00000000;
      weight_reg_array_0_0_sva <= 8'b00000000;
    end
    else if ( weight_reg_array_and_240_cse ) begin
      weight_reg_array_0_15_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[127:120]),
          weight_reg_array_0_15_sva, or_dcpl_69);
      weight_reg_array_0_14_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[119:112]),
          weight_reg_array_0_14_sva, or_dcpl_69);
      weight_reg_array_0_13_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[111:104]),
          weight_reg_array_0_13_sva, or_dcpl_69);
      weight_reg_array_0_12_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[103:96]), weight_reg_array_0_12_sva,
          or_dcpl_69);
      weight_reg_array_0_11_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[95:88]), weight_reg_array_0_11_sva,
          or_dcpl_69);
      weight_reg_array_0_10_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[87:80]), weight_reg_array_0_10_sva,
          or_dcpl_69);
      weight_reg_array_0_9_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[79:72]), weight_reg_array_0_9_sva,
          or_dcpl_69);
      weight_reg_array_0_8_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[71:64]), weight_reg_array_0_8_sva,
          or_dcpl_69);
      weight_reg_array_0_7_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[63:56]), weight_reg_array_0_7_sva,
          or_dcpl_69);
      weight_reg_array_0_6_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[55:48]), weight_reg_array_0_6_sva,
          or_dcpl_69);
      weight_reg_array_0_5_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[47:40]), weight_reg_array_0_5_sva,
          or_dcpl_69);
      weight_reg_array_0_4_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[39:32]), weight_reg_array_0_4_sva,
          or_dcpl_69);
      weight_reg_array_0_3_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[31:24]), weight_reg_array_0_3_sva,
          or_dcpl_69);
      weight_reg_array_0_2_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[23:16]), weight_reg_array_0_2_sva,
          or_dcpl_69);
      weight_reg_array_0_1_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[15:8]), weight_reg_array_0_1_sva,
          or_dcpl_69);
      weight_reg_array_0_0_sva <= MUX_v_8_2_2((weight_rsci_idat_mxwt[7:0]), weight_reg_array_0_0_sva,
          or_dcpl_69);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_if_3_if_step_if_3_if_and_1_itm_2 <= 1'b0;
      step_if_3_for_1_acc_5_cse_sva_2 <= 8'b00000000;
    end
    else if ( step_if_3_if_and_1_cse ) begin
      step_if_3_if_step_if_3_if_and_1_itm_2 <= step_if_3_if_step_if_3_if_and_1_itm_1;
      step_if_3_for_1_acc_5_cse_sva_2 <= step_if_3_for_1_acc_5_cse_sva_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_slc_16_2_itm_2 <= 1'b0;
    end
    else if ( run_wen & main_stage_0_2 ) begin
      step_slc_16_2_itm_2 <= step_slc_16_2_itm_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      step_if_3_if_step_if_3_if_and_1_itm_1 <= 1'b0;
      step_if_3_for_1_acc_5_cse_sva_1 <= 8'b00000000;
    end
    else if ( step_if_3_if_and_2_cse ) begin
      step_if_3_if_step_if_3_if_and_1_itm_1 <= (~(((loopIndicesIn_crt_lpi_1_dfm_mx0[31:16])
          != (operator_16_false_2_acc_psp_sva_1[15:0])) | (operator_16_false_2_acc_psp_sva_1[16])))
          & (~(((loopIndicesIn_crt_lpi_1_dfm_mx0[47:32]) != (operator_16_false_1_acc_psp_sva_1[15:0]))
          | (operator_16_false_1_acc_psp_sva_1[16]))) & (~(((loopIndicesIn_crt_lpi_1_dfm_mx0[15:0])
          != (operator_16_false_acc_psp_sva_1[15:0])) | (operator_16_false_acc_psp_sva_1[16])));
      step_if_3_for_1_acc_5_cse_sva_1 <= nl_step_if_3_for_1_acc_5_cse_sva_1[7:0];
    end
  end
  assign and_6_nl = reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse & (~ reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse);
  assign asn_inputIn_reg_array_1_1_sva_nor_nl = ~(reg_accum_fifo_0_run_cmp_1_ccs_ccore_start_rsc_dat_cse
      | reg_input_fifo_0_run_cmp_ccs_ccore_start_rsc_dat_cse);
  assign nand_1_nl = ~(main_stage_0_2 & step_acc_2_cse_16_sva_st_1_1);
  assign nl_step_if_3_for_1_acc_5_cse_sva_1  = (step_step_lpi_1_dfm_1[7:0]) + 8'b11100001;

  function automatic [7:0] MUX1HOT_v_8_3_2;
    input [7:0] input_2;
    input [7:0] input_1;
    input [7:0] input_0;
    input [2:0] sel;
    reg [7:0] result;
  begin
    result = input_0 & {8{sel[0]}};
    result = result | ( input_1 & {8{sel[1]}});
    result = result | ( input_2 & {8{sel[2]}});
    MUX1HOT_v_8_3_2 = result;
  end
  endfunction


  function automatic [127:0] MUX_v_128_2_2;
    input [127:0] input_0;
    input [127:0] input_1;
    input [0:0] sel;
    reg [127:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_128_2_2 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function automatic [47:0] MUX_v_48_2_2;
    input [47:0] input_0;
    input [47:0] input_1;
    input [0:0] sel;
    reg [47:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_48_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_13_1_12;
    input [12:0] vector;
    reg [12:0] tmp;
  begin
    tmp = vector >> 12;
    readslicef_13_1_12 = tmp[0:0];
  end
  endfunction


  function automatic [15:0] readslicef_17_16_1;
    input [16:0] vector;
    reg [16:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_17_16_1 = tmp[15:0];
  end
  endfunction


  function automatic [0:0] readslicef_17_1_16;
    input [16:0] vector;
    reg [16:0] tmp;
  begin
    tmp = vector >> 16;
    readslicef_17_1_16 = tmp[0:0];
  end
  endfunction


  function automatic [16:0] conv_u2s_16_17 ;
    input [15:0]  vector ;
  begin
    conv_u2s_16_17 =  {1'b0, vector};
  end
  endfunction


  function automatic [12:0] conv_u2u_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_13 = {1'b0, vector};
  end
  endfunction


  function automatic [16:0] conv_u2u_16_17 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_17 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct (
  clk, arst_n, input_rsc_dat_value, input_rsc_vld, input_rsc_rdy, weight_rsc_dat_value,
      weight_rsc_vld, weight_rsc_rdy, output_rsc_dat_value, output_rsc_vld, output_rsc_rdy,
      paramsIn_rsc_dat_STRIDE, paramsIn_rsc_dat_FY, paramsIn_rsc_dat_FX, paramsIn_rsc_dat_IC1,
      paramsIn_rsc_dat_OC1, paramsIn_rsc_dat_OX0, paramsIn_rsc_dat_OY0, paramsIn_rsc_dat_OX1,
      paramsIn_rsc_dat_OY1, paramsIn_rsc_vld, paramsIn_rsc_rdy, loopIndicesIn_rsc_dat_fy_idx,
      loopIndicesIn_rsc_dat_fx_idx, loopIndicesIn_rsc_dat_ic1_idx, loopIndicesIn_rsc_vld,
      loopIndicesIn_rsc_rdy
);
  input clk;
  input arst_n;
  input [127:0] input_rsc_dat_value;
  input input_rsc_vld;
  output input_rsc_rdy;
  input [127:0] weight_rsc_dat_value;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  output [255:0] output_rsc_dat_value;
  output output_rsc_vld;
  input output_rsc_rdy;
  input [15:0] paramsIn_rsc_dat_STRIDE;
  input [15:0] paramsIn_rsc_dat_FY;
  input [15:0] paramsIn_rsc_dat_FX;
  input [15:0] paramsIn_rsc_dat_IC1;
  input [15:0] paramsIn_rsc_dat_OC1;
  input [15:0] paramsIn_rsc_dat_OX0;
  input [15:0] paramsIn_rsc_dat_OY0;
  input [15:0] paramsIn_rsc_dat_OX1;
  input [15:0] paramsIn_rsc_dat_OY1;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input [15:0] loopIndicesIn_rsc_dat_fy_idx;
  input [15:0] loopIndicesIn_rsc_dat_fx_idx;
  input [15:0] loopIndicesIn_rsc_dat_ic1_idx;
  input loopIndicesIn_rsc_vld;
  output loopIndicesIn_rsc_rdy;


  // Interconnect Declarations
  wire [15:0] accum_buf_rsc_0_0_i_d_d;
  wire [15:0] accum_buf_rsc_0_0_i_q_d;
  wire [15:0] accum_buf_rsc_0_1_i_d_d;
  wire [15:0] accum_buf_rsc_0_1_i_q_d;
  wire [15:0] accum_buf_rsc_0_2_i_d_d;
  wire [15:0] accum_buf_rsc_0_2_i_q_d;
  wire [15:0] accum_buf_rsc_0_3_i_d_d;
  wire [15:0] accum_buf_rsc_0_3_i_q_d;
  wire [15:0] accum_buf_rsc_0_4_i_d_d;
  wire [15:0] accum_buf_rsc_0_4_i_q_d;
  wire [15:0] accum_buf_rsc_0_5_i_d_d;
  wire [15:0] accum_buf_rsc_0_5_i_q_d;
  wire [15:0] accum_buf_rsc_0_6_i_d_d;
  wire [15:0] accum_buf_rsc_0_6_i_q_d;
  wire [15:0] accum_buf_rsc_0_7_i_d_d;
  wire [15:0] accum_buf_rsc_0_7_i_q_d;
  wire [15:0] accum_buf_rsc_0_8_i_d_d;
  wire [15:0] accum_buf_rsc_0_8_i_q_d;
  wire [15:0] accum_buf_rsc_0_9_i_d_d;
  wire [15:0] accum_buf_rsc_0_9_i_q_d;
  wire [15:0] accum_buf_rsc_0_10_i_d_d;
  wire [15:0] accum_buf_rsc_0_10_i_q_d;
  wire [15:0] accum_buf_rsc_0_11_i_d_d;
  wire [15:0] accum_buf_rsc_0_11_i_q_d;
  wire [15:0] accum_buf_rsc_0_12_i_d_d;
  wire [15:0] accum_buf_rsc_0_12_i_q_d;
  wire [15:0] accum_buf_rsc_0_13_i_d_d;
  wire [15:0] accum_buf_rsc_0_13_i_q_d;
  wire [15:0] accum_buf_rsc_0_14_i_d_d;
  wire [15:0] accum_buf_rsc_0_14_i_q_d;
  wire [15:0] accum_buf_rsc_0_15_i_d_d;
  wire [15:0] accum_buf_rsc_0_15_i_q_d;
  wire accum_buf_rsc_0_0_we;
  wire [15:0] accum_buf_rsc_0_0_d;
  wire [7:0] accum_buf_rsc_0_0_wadr;
  wire [15:0] accum_buf_rsc_0_0_q;
  wire accum_buf_rsc_0_0_re;
  wire [7:0] accum_buf_rsc_0_0_radr;
  wire accum_buf_rsc_0_1_we;
  wire [15:0] accum_buf_rsc_0_1_d;
  wire [7:0] accum_buf_rsc_0_1_wadr;
  wire [15:0] accum_buf_rsc_0_1_q;
  wire accum_buf_rsc_0_1_re;
  wire [7:0] accum_buf_rsc_0_1_radr;
  wire accum_buf_rsc_0_2_we;
  wire [15:0] accum_buf_rsc_0_2_d;
  wire [7:0] accum_buf_rsc_0_2_wadr;
  wire [15:0] accum_buf_rsc_0_2_q;
  wire accum_buf_rsc_0_2_re;
  wire [7:0] accum_buf_rsc_0_2_radr;
  wire accum_buf_rsc_0_3_we;
  wire [15:0] accum_buf_rsc_0_3_d;
  wire [7:0] accum_buf_rsc_0_3_wadr;
  wire [15:0] accum_buf_rsc_0_3_q;
  wire accum_buf_rsc_0_3_re;
  wire [7:0] accum_buf_rsc_0_3_radr;
  wire accum_buf_rsc_0_4_we;
  wire [15:0] accum_buf_rsc_0_4_d;
  wire [7:0] accum_buf_rsc_0_4_wadr;
  wire [15:0] accum_buf_rsc_0_4_q;
  wire accum_buf_rsc_0_4_re;
  wire [7:0] accum_buf_rsc_0_4_radr;
  wire accum_buf_rsc_0_5_we;
  wire [15:0] accum_buf_rsc_0_5_d;
  wire [7:0] accum_buf_rsc_0_5_wadr;
  wire [15:0] accum_buf_rsc_0_5_q;
  wire accum_buf_rsc_0_5_re;
  wire [7:0] accum_buf_rsc_0_5_radr;
  wire accum_buf_rsc_0_6_we;
  wire [15:0] accum_buf_rsc_0_6_d;
  wire [7:0] accum_buf_rsc_0_6_wadr;
  wire [15:0] accum_buf_rsc_0_6_q;
  wire accum_buf_rsc_0_6_re;
  wire [7:0] accum_buf_rsc_0_6_radr;
  wire accum_buf_rsc_0_7_we;
  wire [15:0] accum_buf_rsc_0_7_d;
  wire [7:0] accum_buf_rsc_0_7_wadr;
  wire [15:0] accum_buf_rsc_0_7_q;
  wire accum_buf_rsc_0_7_re;
  wire [7:0] accum_buf_rsc_0_7_radr;
  wire accum_buf_rsc_0_8_we;
  wire [15:0] accum_buf_rsc_0_8_d;
  wire [7:0] accum_buf_rsc_0_8_wadr;
  wire [15:0] accum_buf_rsc_0_8_q;
  wire accum_buf_rsc_0_8_re;
  wire [7:0] accum_buf_rsc_0_8_radr;
  wire accum_buf_rsc_0_9_we;
  wire [15:0] accum_buf_rsc_0_9_d;
  wire [7:0] accum_buf_rsc_0_9_wadr;
  wire [15:0] accum_buf_rsc_0_9_q;
  wire accum_buf_rsc_0_9_re;
  wire [7:0] accum_buf_rsc_0_9_radr;
  wire accum_buf_rsc_0_10_we;
  wire [15:0] accum_buf_rsc_0_10_d;
  wire [7:0] accum_buf_rsc_0_10_wadr;
  wire [15:0] accum_buf_rsc_0_10_q;
  wire accum_buf_rsc_0_10_re;
  wire [7:0] accum_buf_rsc_0_10_radr;
  wire accum_buf_rsc_0_11_we;
  wire [15:0] accum_buf_rsc_0_11_d;
  wire [7:0] accum_buf_rsc_0_11_wadr;
  wire [15:0] accum_buf_rsc_0_11_q;
  wire accum_buf_rsc_0_11_re;
  wire [7:0] accum_buf_rsc_0_11_radr;
  wire accum_buf_rsc_0_12_we;
  wire [15:0] accum_buf_rsc_0_12_d;
  wire [7:0] accum_buf_rsc_0_12_wadr;
  wire [15:0] accum_buf_rsc_0_12_q;
  wire accum_buf_rsc_0_12_re;
  wire [7:0] accum_buf_rsc_0_12_radr;
  wire accum_buf_rsc_0_13_we;
  wire [15:0] accum_buf_rsc_0_13_d;
  wire [7:0] accum_buf_rsc_0_13_wadr;
  wire [15:0] accum_buf_rsc_0_13_q;
  wire accum_buf_rsc_0_13_re;
  wire [7:0] accum_buf_rsc_0_13_radr;
  wire accum_buf_rsc_0_14_we;
  wire [15:0] accum_buf_rsc_0_14_d;
  wire [7:0] accum_buf_rsc_0_14_wadr;
  wire [15:0] accum_buf_rsc_0_14_q;
  wire accum_buf_rsc_0_14_re;
  wire [7:0] accum_buf_rsc_0_14_radr;
  wire accum_buf_rsc_0_15_we;
  wire [15:0] accum_buf_rsc_0_15_d;
  wire [7:0] accum_buf_rsc_0_15_wadr;
  wire [15:0] accum_buf_rsc_0_15_q;
  wire accum_buf_rsc_0_15_re;
  wire [7:0] accum_buf_rsc_0_15_radr;
  wire [255:0] output_rsc_dat;
  wire [7:0] accum_buf_rsc_0_0_i_radr_d_iff;
  wire [7:0] accum_buf_rsc_0_0_i_wadr_d_iff;
  wire accum_buf_rsc_0_0_i_we_d_iff;
  wire accum_buf_rsc_0_0_i_re_d_iff;
  wire accum_buf_rsc_0_1_i_we_d_iff;
  wire accum_buf_rsc_0_1_i_re_d_iff;
  wire accum_buf_rsc_0_2_i_we_d_iff;
  wire accum_buf_rsc_0_2_i_re_d_iff;
  wire accum_buf_rsc_0_3_i_we_d_iff;
  wire accum_buf_rsc_0_3_i_re_d_iff;
  wire accum_buf_rsc_0_4_i_we_d_iff;
  wire accum_buf_rsc_0_4_i_re_d_iff;
  wire accum_buf_rsc_0_5_i_we_d_iff;
  wire accum_buf_rsc_0_5_i_re_d_iff;
  wire accum_buf_rsc_0_6_i_we_d_iff;
  wire accum_buf_rsc_0_6_i_re_d_iff;
  wire accum_buf_rsc_0_7_i_we_d_iff;
  wire accum_buf_rsc_0_7_i_re_d_iff;
  wire accum_buf_rsc_0_8_i_we_d_iff;
  wire accum_buf_rsc_0_8_i_re_d_iff;
  wire accum_buf_rsc_0_9_i_we_d_iff;
  wire accum_buf_rsc_0_9_i_re_d_iff;
  wire accum_buf_rsc_0_10_i_we_d_iff;
  wire accum_buf_rsc_0_10_i_re_d_iff;
  wire accum_buf_rsc_0_11_i_we_d_iff;
  wire accum_buf_rsc_0_11_i_re_d_iff;
  wire accum_buf_rsc_0_12_i_we_d_iff;
  wire accum_buf_rsc_0_12_i_re_d_iff;
  wire accum_buf_rsc_0_13_i_we_d_iff;
  wire accum_buf_rsc_0_13_i_re_d_iff;
  wire accum_buf_rsc_0_14_i_we_d_iff;
  wire accum_buf_rsc_0_14_i_re_d_iff;
  wire accum_buf_rsc_0_15_i_we_d_iff;
  wire accum_buf_rsc_0_15_i_re_d_iff;


  // Interconnect Declarations for Component Instantiations 
  wire [143:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_paramsIn_rsc_dat;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_paramsIn_rsc_dat
      = {paramsIn_rsc_dat_STRIDE , paramsIn_rsc_dat_FY , paramsIn_rsc_dat_FX , paramsIn_rsc_dat_IC1
      , paramsIn_rsc_dat_OC1 , paramsIn_rsc_dat_OX0 , paramsIn_rsc_dat_OY0 , paramsIn_rsc_dat_OX1
      , paramsIn_rsc_dat_OY1};
  wire [47:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_loopIndicesIn_rsc_dat;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_loopIndicesIn_rsc_dat
      = {loopIndicesIn_rsc_dat_fy_idx , loopIndicesIn_rsc_dat_fx_idx , loopIndicesIn_rsc_dat_ic1_idx};
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_0_comp (
      .radr(accum_buf_rsc_0_0_radr),
      .wadr(accum_buf_rsc_0_0_wadr),
      .d(accum_buf_rsc_0_0_d),
      .we(accum_buf_rsc_0_0_we),
      .re(accum_buf_rsc_0_0_re),
      .clk(clk),
      .q(accum_buf_rsc_0_0_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_1_comp (
      .radr(accum_buf_rsc_0_1_radr),
      .wadr(accum_buf_rsc_0_1_wadr),
      .d(accum_buf_rsc_0_1_d),
      .we(accum_buf_rsc_0_1_we),
      .re(accum_buf_rsc_0_1_re),
      .clk(clk),
      .q(accum_buf_rsc_0_1_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_2_comp (
      .radr(accum_buf_rsc_0_2_radr),
      .wadr(accum_buf_rsc_0_2_wadr),
      .d(accum_buf_rsc_0_2_d),
      .we(accum_buf_rsc_0_2_we),
      .re(accum_buf_rsc_0_2_re),
      .clk(clk),
      .q(accum_buf_rsc_0_2_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_3_comp (
      .radr(accum_buf_rsc_0_3_radr),
      .wadr(accum_buf_rsc_0_3_wadr),
      .d(accum_buf_rsc_0_3_d),
      .we(accum_buf_rsc_0_3_we),
      .re(accum_buf_rsc_0_3_re),
      .clk(clk),
      .q(accum_buf_rsc_0_3_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_4_comp (
      .radr(accum_buf_rsc_0_4_radr),
      .wadr(accum_buf_rsc_0_4_wadr),
      .d(accum_buf_rsc_0_4_d),
      .we(accum_buf_rsc_0_4_we),
      .re(accum_buf_rsc_0_4_re),
      .clk(clk),
      .q(accum_buf_rsc_0_4_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_5_comp (
      .radr(accum_buf_rsc_0_5_radr),
      .wadr(accum_buf_rsc_0_5_wadr),
      .d(accum_buf_rsc_0_5_d),
      .we(accum_buf_rsc_0_5_we),
      .re(accum_buf_rsc_0_5_re),
      .clk(clk),
      .q(accum_buf_rsc_0_5_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_6_comp (
      .radr(accum_buf_rsc_0_6_radr),
      .wadr(accum_buf_rsc_0_6_wadr),
      .d(accum_buf_rsc_0_6_d),
      .we(accum_buf_rsc_0_6_we),
      .re(accum_buf_rsc_0_6_re),
      .clk(clk),
      .q(accum_buf_rsc_0_6_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_7_comp (
      .radr(accum_buf_rsc_0_7_radr),
      .wadr(accum_buf_rsc_0_7_wadr),
      .d(accum_buf_rsc_0_7_d),
      .we(accum_buf_rsc_0_7_we),
      .re(accum_buf_rsc_0_7_re),
      .clk(clk),
      .q(accum_buf_rsc_0_7_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_8_comp (
      .radr(accum_buf_rsc_0_8_radr),
      .wadr(accum_buf_rsc_0_8_wadr),
      .d(accum_buf_rsc_0_8_d),
      .we(accum_buf_rsc_0_8_we),
      .re(accum_buf_rsc_0_8_re),
      .clk(clk),
      .q(accum_buf_rsc_0_8_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_9_comp (
      .radr(accum_buf_rsc_0_9_radr),
      .wadr(accum_buf_rsc_0_9_wadr),
      .d(accum_buf_rsc_0_9_d),
      .we(accum_buf_rsc_0_9_we),
      .re(accum_buf_rsc_0_9_re),
      .clk(clk),
      .q(accum_buf_rsc_0_9_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_10_comp (
      .radr(accum_buf_rsc_0_10_radr),
      .wadr(accum_buf_rsc_0_10_wadr),
      .d(accum_buf_rsc_0_10_d),
      .we(accum_buf_rsc_0_10_we),
      .re(accum_buf_rsc_0_10_re),
      .clk(clk),
      .q(accum_buf_rsc_0_10_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_11_comp (
      .radr(accum_buf_rsc_0_11_radr),
      .wadr(accum_buf_rsc_0_11_wadr),
      .d(accum_buf_rsc_0_11_d),
      .we(accum_buf_rsc_0_11_we),
      .re(accum_buf_rsc_0_11_re),
      .clk(clk),
      .q(accum_buf_rsc_0_11_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_12_comp (
      .radr(accum_buf_rsc_0_12_radr),
      .wadr(accum_buf_rsc_0_12_wadr),
      .d(accum_buf_rsc_0_12_d),
      .we(accum_buf_rsc_0_12_we),
      .re(accum_buf_rsc_0_12_re),
      .clk(clk),
      .q(accum_buf_rsc_0_12_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_13_comp (
      .radr(accum_buf_rsc_0_13_radr),
      .wadr(accum_buf_rsc_0_13_wadr),
      .d(accum_buf_rsc_0_13_d),
      .we(accum_buf_rsc_0_13_we),
      .re(accum_buf_rsc_0_13_re),
      .clk(clk),
      .q(accum_buf_rsc_0_13_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_14_comp (
      .radr(accum_buf_rsc_0_14_radr),
      .wadr(accum_buf_rsc_0_14_wadr),
      .d(accum_buf_rsc_0_14_d),
      .we(accum_buf_rsc_0_14_we),
      .re(accum_buf_rsc_0_14_re),
      .clk(clk),
      .q(accum_buf_rsc_0_14_q)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd16),
  .addr_width(32'sd8),
  .depth(32'sd256)) accum_buf_rsc_0_15_comp (
      .radr(accum_buf_rsc_0_15_radr),
      .wadr(accum_buf_rsc_0_15_wadr),
      .d(accum_buf_rsc_0_15_d),
      .we(accum_buf_rsc_0_15_we),
      .re(accum_buf_rsc_0_15_re),
      .clk(clk),
      .q(accum_buf_rsc_0_15_q)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_149_16_8_256_256_16_5_gen
      accum_buf_rsc_0_0_i (
      .we(accum_buf_rsc_0_0_we),
      .d(accum_buf_rsc_0_0_d),
      .wadr(accum_buf_rsc_0_0_wadr),
      .q(accum_buf_rsc_0_0_q),
      .re(accum_buf_rsc_0_0_re),
      .radr(accum_buf_rsc_0_0_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_0_i_d_d),
      .we_d(accum_buf_rsc_0_0_i_we_d_iff),
      .re_d(accum_buf_rsc_0_0_i_re_d_iff),
      .q_d(accum_buf_rsc_0_0_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_0_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_0_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_150_16_8_256_256_16_5_gen
      accum_buf_rsc_0_1_i (
      .we(accum_buf_rsc_0_1_we),
      .d(accum_buf_rsc_0_1_d),
      .wadr(accum_buf_rsc_0_1_wadr),
      .q(accum_buf_rsc_0_1_q),
      .re(accum_buf_rsc_0_1_re),
      .radr(accum_buf_rsc_0_1_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_1_i_d_d),
      .we_d(accum_buf_rsc_0_1_i_we_d_iff),
      .re_d(accum_buf_rsc_0_1_i_re_d_iff),
      .q_d(accum_buf_rsc_0_1_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_1_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_1_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_151_16_8_256_256_16_5_gen
      accum_buf_rsc_0_2_i (
      .we(accum_buf_rsc_0_2_we),
      .d(accum_buf_rsc_0_2_d),
      .wadr(accum_buf_rsc_0_2_wadr),
      .q(accum_buf_rsc_0_2_q),
      .re(accum_buf_rsc_0_2_re),
      .radr(accum_buf_rsc_0_2_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_2_i_d_d),
      .we_d(accum_buf_rsc_0_2_i_we_d_iff),
      .re_d(accum_buf_rsc_0_2_i_re_d_iff),
      .q_d(accum_buf_rsc_0_2_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_2_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_2_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_152_16_8_256_256_16_5_gen
      accum_buf_rsc_0_3_i (
      .we(accum_buf_rsc_0_3_we),
      .d(accum_buf_rsc_0_3_d),
      .wadr(accum_buf_rsc_0_3_wadr),
      .q(accum_buf_rsc_0_3_q),
      .re(accum_buf_rsc_0_3_re),
      .radr(accum_buf_rsc_0_3_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_3_i_d_d),
      .we_d(accum_buf_rsc_0_3_i_we_d_iff),
      .re_d(accum_buf_rsc_0_3_i_re_d_iff),
      .q_d(accum_buf_rsc_0_3_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_3_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_3_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_153_16_8_256_256_16_5_gen
      accum_buf_rsc_0_4_i (
      .we(accum_buf_rsc_0_4_we),
      .d(accum_buf_rsc_0_4_d),
      .wadr(accum_buf_rsc_0_4_wadr),
      .q(accum_buf_rsc_0_4_q),
      .re(accum_buf_rsc_0_4_re),
      .radr(accum_buf_rsc_0_4_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_4_i_d_d),
      .we_d(accum_buf_rsc_0_4_i_we_d_iff),
      .re_d(accum_buf_rsc_0_4_i_re_d_iff),
      .q_d(accum_buf_rsc_0_4_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_4_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_4_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_154_16_8_256_256_16_5_gen
      accum_buf_rsc_0_5_i (
      .we(accum_buf_rsc_0_5_we),
      .d(accum_buf_rsc_0_5_d),
      .wadr(accum_buf_rsc_0_5_wadr),
      .q(accum_buf_rsc_0_5_q),
      .re(accum_buf_rsc_0_5_re),
      .radr(accum_buf_rsc_0_5_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_5_i_d_d),
      .we_d(accum_buf_rsc_0_5_i_we_d_iff),
      .re_d(accum_buf_rsc_0_5_i_re_d_iff),
      .q_d(accum_buf_rsc_0_5_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_5_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_5_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_155_16_8_256_256_16_5_gen
      accum_buf_rsc_0_6_i (
      .we(accum_buf_rsc_0_6_we),
      .d(accum_buf_rsc_0_6_d),
      .wadr(accum_buf_rsc_0_6_wadr),
      .q(accum_buf_rsc_0_6_q),
      .re(accum_buf_rsc_0_6_re),
      .radr(accum_buf_rsc_0_6_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_6_i_d_d),
      .we_d(accum_buf_rsc_0_6_i_we_d_iff),
      .re_d(accum_buf_rsc_0_6_i_re_d_iff),
      .q_d(accum_buf_rsc_0_6_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_6_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_6_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_156_16_8_256_256_16_5_gen
      accum_buf_rsc_0_7_i (
      .we(accum_buf_rsc_0_7_we),
      .d(accum_buf_rsc_0_7_d),
      .wadr(accum_buf_rsc_0_7_wadr),
      .q(accum_buf_rsc_0_7_q),
      .re(accum_buf_rsc_0_7_re),
      .radr(accum_buf_rsc_0_7_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_7_i_d_d),
      .we_d(accum_buf_rsc_0_7_i_we_d_iff),
      .re_d(accum_buf_rsc_0_7_i_re_d_iff),
      .q_d(accum_buf_rsc_0_7_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_7_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_7_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_157_16_8_256_256_16_5_gen
      accum_buf_rsc_0_8_i (
      .we(accum_buf_rsc_0_8_we),
      .d(accum_buf_rsc_0_8_d),
      .wadr(accum_buf_rsc_0_8_wadr),
      .q(accum_buf_rsc_0_8_q),
      .re(accum_buf_rsc_0_8_re),
      .radr(accum_buf_rsc_0_8_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_8_i_d_d),
      .we_d(accum_buf_rsc_0_8_i_we_d_iff),
      .re_d(accum_buf_rsc_0_8_i_re_d_iff),
      .q_d(accum_buf_rsc_0_8_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_8_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_8_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_158_16_8_256_256_16_5_gen
      accum_buf_rsc_0_9_i (
      .we(accum_buf_rsc_0_9_we),
      .d(accum_buf_rsc_0_9_d),
      .wadr(accum_buf_rsc_0_9_wadr),
      .q(accum_buf_rsc_0_9_q),
      .re(accum_buf_rsc_0_9_re),
      .radr(accum_buf_rsc_0_9_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_9_i_d_d),
      .we_d(accum_buf_rsc_0_9_i_we_d_iff),
      .re_d(accum_buf_rsc_0_9_i_re_d_iff),
      .q_d(accum_buf_rsc_0_9_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_9_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_9_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_159_16_8_256_256_16_5_gen
      accum_buf_rsc_0_10_i (
      .we(accum_buf_rsc_0_10_we),
      .d(accum_buf_rsc_0_10_d),
      .wadr(accum_buf_rsc_0_10_wadr),
      .q(accum_buf_rsc_0_10_q),
      .re(accum_buf_rsc_0_10_re),
      .radr(accum_buf_rsc_0_10_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_10_i_d_d),
      .we_d(accum_buf_rsc_0_10_i_we_d_iff),
      .re_d(accum_buf_rsc_0_10_i_re_d_iff),
      .q_d(accum_buf_rsc_0_10_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_10_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_10_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_160_16_8_256_256_16_5_gen
      accum_buf_rsc_0_11_i (
      .we(accum_buf_rsc_0_11_we),
      .d(accum_buf_rsc_0_11_d),
      .wadr(accum_buf_rsc_0_11_wadr),
      .q(accum_buf_rsc_0_11_q),
      .re(accum_buf_rsc_0_11_re),
      .radr(accum_buf_rsc_0_11_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_11_i_d_d),
      .we_d(accum_buf_rsc_0_11_i_we_d_iff),
      .re_d(accum_buf_rsc_0_11_i_re_d_iff),
      .q_d(accum_buf_rsc_0_11_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_11_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_11_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_161_16_8_256_256_16_5_gen
      accum_buf_rsc_0_12_i (
      .we(accum_buf_rsc_0_12_we),
      .d(accum_buf_rsc_0_12_d),
      .wadr(accum_buf_rsc_0_12_wadr),
      .q(accum_buf_rsc_0_12_q),
      .re(accum_buf_rsc_0_12_re),
      .radr(accum_buf_rsc_0_12_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_12_i_d_d),
      .we_d(accum_buf_rsc_0_12_i_we_d_iff),
      .re_d(accum_buf_rsc_0_12_i_re_d_iff),
      .q_d(accum_buf_rsc_0_12_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_12_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_12_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_162_16_8_256_256_16_5_gen
      accum_buf_rsc_0_13_i (
      .we(accum_buf_rsc_0_13_we),
      .d(accum_buf_rsc_0_13_d),
      .wadr(accum_buf_rsc_0_13_wadr),
      .q(accum_buf_rsc_0_13_q),
      .re(accum_buf_rsc_0_13_re),
      .radr(accum_buf_rsc_0_13_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_13_i_d_d),
      .we_d(accum_buf_rsc_0_13_i_we_d_iff),
      .re_d(accum_buf_rsc_0_13_i_re_d_iff),
      .q_d(accum_buf_rsc_0_13_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_13_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_13_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_163_16_8_256_256_16_5_gen
      accum_buf_rsc_0_14_i (
      .we(accum_buf_rsc_0_14_we),
      .d(accum_buf_rsc_0_14_d),
      .wadr(accum_buf_rsc_0_14_wadr),
      .q(accum_buf_rsc_0_14_q),
      .re(accum_buf_rsc_0_14_re),
      .radr(accum_buf_rsc_0_14_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_14_i_d_d),
      .we_d(accum_buf_rsc_0_14_i_we_d_iff),
      .re_d(accum_buf_rsc_0_14_i_re_d_iff),
      .q_d(accum_buf_rsc_0_14_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_14_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_14_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rwport_164_16_8_256_256_16_5_gen
      accum_buf_rsc_0_15_i (
      .we(accum_buf_rsc_0_15_we),
      .d(accum_buf_rsc_0_15_d),
      .wadr(accum_buf_rsc_0_15_wadr),
      .q(accum_buf_rsc_0_15_q),
      .re(accum_buf_rsc_0_15_re),
      .radr(accum_buf_rsc_0_15_radr),
      .radr_d(accum_buf_rsc_0_0_i_radr_d_iff),
      .wadr_d(accum_buf_rsc_0_0_i_wadr_d_iff),
      .d_d(accum_buf_rsc_0_15_i_d_d),
      .we_d(accum_buf_rsc_0_15_i_we_d_iff),
      .re_d(accum_buf_rsc_0_15_i_re_d_iff),
      .q_d(accum_buf_rsc_0_15_i_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(accum_buf_rsc_0_15_i_re_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(accum_buf_rsc_0_15_i_we_d_iff)
    );
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .input_rsc_dat(input_rsc_dat_value),
      .input_rsc_vld(input_rsc_vld),
      .input_rsc_rdy(input_rsc_rdy),
      .weight_rsc_dat(weight_rsc_dat_value),
      .weight_rsc_vld(weight_rsc_vld),
      .weight_rsc_rdy(weight_rsc_rdy),
      .output_rsc_dat(output_rsc_dat),
      .output_rsc_vld(output_rsc_vld),
      .output_rsc_rdy(output_rsc_rdy),
      .paramsIn_rsc_dat(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_paramsIn_rsc_dat[143:0]),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .loopIndicesIn_rsc_dat(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_loopIndicesIn_rsc_dat[47:0]),
      .loopIndicesIn_rsc_vld(loopIndicesIn_rsc_vld),
      .loopIndicesIn_rsc_rdy(loopIndicesIn_rsc_rdy),
      .accum_buf_rsc_0_0_i_d_d(accum_buf_rsc_0_0_i_d_d),
      .accum_buf_rsc_0_0_i_q_d(accum_buf_rsc_0_0_i_q_d),
      .accum_buf_rsc_0_1_i_d_d(accum_buf_rsc_0_1_i_d_d),
      .accum_buf_rsc_0_1_i_q_d(accum_buf_rsc_0_1_i_q_d),
      .accum_buf_rsc_0_2_i_d_d(accum_buf_rsc_0_2_i_d_d),
      .accum_buf_rsc_0_2_i_q_d(accum_buf_rsc_0_2_i_q_d),
      .accum_buf_rsc_0_3_i_d_d(accum_buf_rsc_0_3_i_d_d),
      .accum_buf_rsc_0_3_i_q_d(accum_buf_rsc_0_3_i_q_d),
      .accum_buf_rsc_0_4_i_d_d(accum_buf_rsc_0_4_i_d_d),
      .accum_buf_rsc_0_4_i_q_d(accum_buf_rsc_0_4_i_q_d),
      .accum_buf_rsc_0_5_i_d_d(accum_buf_rsc_0_5_i_d_d),
      .accum_buf_rsc_0_5_i_q_d(accum_buf_rsc_0_5_i_q_d),
      .accum_buf_rsc_0_6_i_d_d(accum_buf_rsc_0_6_i_d_d),
      .accum_buf_rsc_0_6_i_q_d(accum_buf_rsc_0_6_i_q_d),
      .accum_buf_rsc_0_7_i_d_d(accum_buf_rsc_0_7_i_d_d),
      .accum_buf_rsc_0_7_i_q_d(accum_buf_rsc_0_7_i_q_d),
      .accum_buf_rsc_0_8_i_d_d(accum_buf_rsc_0_8_i_d_d),
      .accum_buf_rsc_0_8_i_q_d(accum_buf_rsc_0_8_i_q_d),
      .accum_buf_rsc_0_9_i_d_d(accum_buf_rsc_0_9_i_d_d),
      .accum_buf_rsc_0_9_i_q_d(accum_buf_rsc_0_9_i_q_d),
      .accum_buf_rsc_0_10_i_d_d(accum_buf_rsc_0_10_i_d_d),
      .accum_buf_rsc_0_10_i_q_d(accum_buf_rsc_0_10_i_q_d),
      .accum_buf_rsc_0_11_i_d_d(accum_buf_rsc_0_11_i_d_d),
      .accum_buf_rsc_0_11_i_q_d(accum_buf_rsc_0_11_i_q_d),
      .accum_buf_rsc_0_12_i_d_d(accum_buf_rsc_0_12_i_d_d),
      .accum_buf_rsc_0_12_i_q_d(accum_buf_rsc_0_12_i_q_d),
      .accum_buf_rsc_0_13_i_d_d(accum_buf_rsc_0_13_i_d_d),
      .accum_buf_rsc_0_13_i_q_d(accum_buf_rsc_0_13_i_q_d),
      .accum_buf_rsc_0_14_i_d_d(accum_buf_rsc_0_14_i_d_d),
      .accum_buf_rsc_0_14_i_q_d(accum_buf_rsc_0_14_i_q_d),
      .accum_buf_rsc_0_15_i_d_d(accum_buf_rsc_0_15_i_d_d),
      .accum_buf_rsc_0_15_i_q_d(accum_buf_rsc_0_15_i_q_d),
      .accum_buf_rsc_0_0_i_radr_d_pff(accum_buf_rsc_0_0_i_radr_d_iff),
      .accum_buf_rsc_0_0_i_wadr_d_pff(accum_buf_rsc_0_0_i_wadr_d_iff),
      .accum_buf_rsc_0_0_i_we_d_pff(accum_buf_rsc_0_0_i_we_d_iff),
      .accum_buf_rsc_0_0_i_re_d_pff(accum_buf_rsc_0_0_i_re_d_iff),
      .accum_buf_rsc_0_1_i_we_d_pff(accum_buf_rsc_0_1_i_we_d_iff),
      .accum_buf_rsc_0_1_i_re_d_pff(accum_buf_rsc_0_1_i_re_d_iff),
      .accum_buf_rsc_0_2_i_we_d_pff(accum_buf_rsc_0_2_i_we_d_iff),
      .accum_buf_rsc_0_2_i_re_d_pff(accum_buf_rsc_0_2_i_re_d_iff),
      .accum_buf_rsc_0_3_i_we_d_pff(accum_buf_rsc_0_3_i_we_d_iff),
      .accum_buf_rsc_0_3_i_re_d_pff(accum_buf_rsc_0_3_i_re_d_iff),
      .accum_buf_rsc_0_4_i_we_d_pff(accum_buf_rsc_0_4_i_we_d_iff),
      .accum_buf_rsc_0_4_i_re_d_pff(accum_buf_rsc_0_4_i_re_d_iff),
      .accum_buf_rsc_0_5_i_we_d_pff(accum_buf_rsc_0_5_i_we_d_iff),
      .accum_buf_rsc_0_5_i_re_d_pff(accum_buf_rsc_0_5_i_re_d_iff),
      .accum_buf_rsc_0_6_i_we_d_pff(accum_buf_rsc_0_6_i_we_d_iff),
      .accum_buf_rsc_0_6_i_re_d_pff(accum_buf_rsc_0_6_i_re_d_iff),
      .accum_buf_rsc_0_7_i_we_d_pff(accum_buf_rsc_0_7_i_we_d_iff),
      .accum_buf_rsc_0_7_i_re_d_pff(accum_buf_rsc_0_7_i_re_d_iff),
      .accum_buf_rsc_0_8_i_we_d_pff(accum_buf_rsc_0_8_i_we_d_iff),
      .accum_buf_rsc_0_8_i_re_d_pff(accum_buf_rsc_0_8_i_re_d_iff),
      .accum_buf_rsc_0_9_i_we_d_pff(accum_buf_rsc_0_9_i_we_d_iff),
      .accum_buf_rsc_0_9_i_re_d_pff(accum_buf_rsc_0_9_i_re_d_iff),
      .accum_buf_rsc_0_10_i_we_d_pff(accum_buf_rsc_0_10_i_we_d_iff),
      .accum_buf_rsc_0_10_i_re_d_pff(accum_buf_rsc_0_10_i_re_d_iff),
      .accum_buf_rsc_0_11_i_we_d_pff(accum_buf_rsc_0_11_i_we_d_iff),
      .accum_buf_rsc_0_11_i_re_d_pff(accum_buf_rsc_0_11_i_re_d_iff),
      .accum_buf_rsc_0_12_i_we_d_pff(accum_buf_rsc_0_12_i_we_d_iff),
      .accum_buf_rsc_0_12_i_re_d_pff(accum_buf_rsc_0_12_i_re_d_iff),
      .accum_buf_rsc_0_13_i_we_d_pff(accum_buf_rsc_0_13_i_we_d_iff),
      .accum_buf_rsc_0_13_i_re_d_pff(accum_buf_rsc_0_13_i_re_d_iff),
      .accum_buf_rsc_0_14_i_we_d_pff(accum_buf_rsc_0_14_i_we_d_iff),
      .accum_buf_rsc_0_14_i_re_d_pff(accum_buf_rsc_0_14_i_re_d_iff),
      .accum_buf_rsc_0_15_i_we_d_pff(accum_buf_rsc_0_15_i_we_d_iff),
      .accum_buf_rsc_0_15_i_re_d_pff(accum_buf_rsc_0_15_i_re_d_iff)
    );
  assign output_rsc_dat_value = output_rsc_dat;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16
// ------------------------------------------------------------------


module SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16 (
  clk, arst_n, input_rsc_dat, input_rsc_vld, input_rsc_rdy, weight_rsc_dat, weight_rsc_vld,
      weight_rsc_rdy, output_rsc_dat, output_rsc_vld, output_rsc_rdy, paramsIn_rsc_dat,
      paramsIn_rsc_vld, paramsIn_rsc_rdy, loopIndicesIn_rsc_dat, loopIndicesIn_rsc_vld,
      loopIndicesIn_rsc_rdy
);
  input clk;
  input arst_n;
  input [127:0] input_rsc_dat;
  input input_rsc_vld;
  output input_rsc_rdy;
  input [127:0] weight_rsc_dat;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  output [255:0] output_rsc_dat;
  output output_rsc_vld;
  input output_rsc_rdy;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input [47:0] loopIndicesIn_rsc_dat;
  input loopIndicesIn_rsc_vld;
  output loopIndicesIn_rsc_rdy;


  // Interconnect Declarations
  wire [255:0] output_rsc_dat_value;


  // Interconnect Declarations for Component Instantiations 
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_STRIDE;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_STRIDE
      = paramsIn_rsc_dat[143:128];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_FY;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_FY
      = paramsIn_rsc_dat[127:112];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_FX;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_FX
      = paramsIn_rsc_dat[111:96];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_IC1;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_IC1
      = paramsIn_rsc_dat[95:80];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OC1;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OC1
      = paramsIn_rsc_dat[79:64];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OX0;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OX0
      = paramsIn_rsc_dat[63:48];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OY0;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OY0
      = paramsIn_rsc_dat[47:32];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OX1;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OX1
      = paramsIn_rsc_dat[31:16];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OY1;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OY1
      = paramsIn_rsc_dat[15:0];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_fy_idx;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_fy_idx
      = loopIndicesIn_rsc_dat[47:32];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_fx_idx;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_fx_idx
      = loopIndicesIn_rsc_dat[31:16];
  wire [15:0] nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_ic1_idx;
  assign nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_ic1_idx
      = loopIndicesIn_rsc_dat[15:0];
  SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .input_rsc_dat_value(input_rsc_dat),
      .input_rsc_vld(input_rsc_vld),
      .input_rsc_rdy(input_rsc_rdy),
      .weight_rsc_dat_value(weight_rsc_dat),
      .weight_rsc_vld(weight_rsc_vld),
      .weight_rsc_rdy(weight_rsc_rdy),
      .output_rsc_dat_value(output_rsc_dat_value),
      .output_rsc_vld(output_rsc_vld),
      .output_rsc_rdy(output_rsc_rdy),
      .paramsIn_rsc_dat_STRIDE(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_STRIDE[15:0]),
      .paramsIn_rsc_dat_FY(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_FY[15:0]),
      .paramsIn_rsc_dat_FX(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_FX[15:0]),
      .paramsIn_rsc_dat_IC1(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_IC1[15:0]),
      .paramsIn_rsc_dat_OC1(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OC1[15:0]),
      .paramsIn_rsc_dat_OX0(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OX0[15:0]),
      .paramsIn_rsc_dat_OY0(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OY0[15:0]),
      .paramsIn_rsc_dat_OX1(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OX1[15:0]),
      .paramsIn_rsc_dat_OY1(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_paramsIn_rsc_dat_OY1[15:0]),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .loopIndicesIn_rsc_dat_fy_idx(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_fy_idx[15:0]),
      .loopIndicesIn_rsc_dat_fx_idx(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_fx_idx[15:0]),
      .loopIndicesIn_rsc_dat_ic1_idx(nl_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_loopIndicesIn_rsc_dat_ic1_idx[15:0]),
      .loopIndicesIn_rsc_vld(loopIndicesIn_rsc_vld),
      .loopIndicesIn_rsc_rdy(loopIndicesIn_rsc_rdy)
    );
  assign output_rsc_dat = output_rsc_dat_value;
endmodule



