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



