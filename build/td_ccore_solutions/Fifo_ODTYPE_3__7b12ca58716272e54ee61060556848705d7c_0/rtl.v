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



