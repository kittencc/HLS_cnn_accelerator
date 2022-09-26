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


