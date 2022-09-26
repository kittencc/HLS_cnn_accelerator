
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



//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
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


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/mgc_in_sync_v2.v 
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


module mgc_in_sync_v2 (vd, vz);
    parameter valid = 1;

    output vd;
    input  vz;

    wire   vd;

    assign vd = vz;

endmodule



//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_genreg_v1.v 
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

module ccs_genreg_v1 (clk, en, arst, srst, d, z);
    parameter integer width   = 1;
    parameter integer ph_clk  = 1;
    parameter integer ph_en   = 1;
    parameter integer ph_arst = 0;
    parameter integer ph_srst = 1;
    parameter         has_en  = 1'b1;

    input clk;
    input en;
    input arst;
    input srst;
    input      [width-1:0] d;
    output reg [width-1:0] z;

    //  Generate parameters
    //  ph_clk | ph_arst | has_en     Label:
    //    1        1          1       GEN_CLK1_ARST1_EN1
    //    1        1          0       GEN_CLK1_ARST1_EN0
    //    1        0          1       GEN_CLK1_ARST0_EN1
    //    1        0          0       GEN_CLK1_ARST0_EN0
    //    0        1          1       GEN_CLK0_ARST1_EN1
    //    0        1          0       GEN_CLK0_ARST1_EN0
    //    0        0          1       GEN_CLK0_ARST0_EN1
    //    0        0          0       GEN_CLK0_ARST0_EN0
    
    generate 
      // Pos edge clock, pos edge async reset, has enable
      if (ph_clk == 1 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK1_ARST1_EN1
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST1_EN1

      // Pos edge clock, pos edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK1_ARST1_EN0
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST1_EN0

      // Pos edge clock, neg edge async reset, has enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK1_ARST0_EN1
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST0_EN1

      // Pos edge clock, neg edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK1_ARST0_EN0
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST0_EN0


      // Neg edge clock, pos edge async reset, has enable
      if (ph_clk == 0 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK0_ARST1_EN1
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST1_EN1

      // Neg edge clock, pos edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK0_ARST1_EN0
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST1_EN0

      // Neg edge clock, neg edge async reset, has enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK0_ARST0_EN1
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST0_EN1

      // Neg edge clock, neg edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK0_ARST0_EN0
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST0_EN0
    endgenerate
endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_fifo_wait_core_v5.v 
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

/*
 *            _________________________________________________
 * WRITER    |                                                 |   READER
 *           |               ccs_fifo_wait_core                |
 *           |             _____________________               |
 *        --<|  din_rdy --<|  ---------------- <|--- dout_rdy <|---
 *           |             |       FIFO         |              |
 *        ---|> din_vld ---|> ----------------  |>-- dout_vld  |>--
 *        ---|>     din ---|> ----------------  |>-- dout      |>--
 *           |             |____________________|              |
 *           |_________________________________________________|
 *
 *    rdy    - can be considered as a notFULL signal
 *    vld    - can be considered as a notEMPTY signal
 *    is_idle - clk can be safely gated
 *
 * Change History:
 *    2019-01-24 - Add assertion to verify rdy signal behavior under reset.
 *                 Fix bug in that behavior.
 */

module ccs_fifo_wait_core_v5 (clk, en, arst, srst, din_vld, din_rdy, din, dout_vld, dout_rdy, dout, sd, is_idle);

    parameter integer rscid    = 0;     // resource ID
    parameter integer width    = 8;     // fifo width
    parameter integer sz_width = 8;     // size of port for elements in fifo
    parameter integer fifo_sz  = 8;     // fifo depth
    parameter integer ph_clk   = 1;  // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1;  // clock enable polarity
    parameter integer ph_arst  = 1;  // async reset polarity
    parameter integer ph_srst  = 1;  // sync reset polarity
    parameter integer ph_log2  = 3;     // log2(fifo_sz)

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 din_vld;    // writer has valid data 
    output                din_rdy;    // fifo ready for data (not full)
    input  [width-1:0]    din;
    output                dout_vld;   // fifo has valid data (not empty)
    input                 dout_rdy;   // reader ready for data
    output [width-1:0]    dout;
    output [sz_width-1:0] sd; 
    output                is_idle;

    localparam integer fifo_b  = width * fifo_sz;
    localparam integer fifo_mx = (fifo_sz > 0) ? (fifo_sz-1) : 0 ;
    localparam integer fifo_mx_over_8 = fifo_mx / 8 ;

    reg      [fifo_mx:0] stat_pre;
    wire     [fifo_mx:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [fifo_mx:0] en_l;
    reg      [fifo_mx_over_8:0] en_l_s;

    reg      [width-1:0] buff_nxt;

    reg                  stat_nxt;
    reg                  stat_behind;
    reg                  stat_ahead;
    reg                  en_l_var;

    integer              i;
    genvar               eni;

    wire [32:0]          size_t;
    reg  [31:0]          count;
    reg  [31:0]          count_t;
    reg  [32:0]          n_elem;
    // synopsys translate_off
    reg  [31:0]          peak;
    initial
    begin
      count = 32'b0;
      peak  = 32'b0;
    end
    // synopsys translate_on
  wire din_rdy_drv  ;
  wire dout_vld_drv ;
    wire                 active;
    wire                 din_vld_int;
    wire                 hs_init;

    //assign din_rdy  = din_rdy_drv;    // dout_rdy | (~stat[0] & hs_init);   // original
    assign din_rdy = (fifo_sz > 0) ? (~stat[0] | dout_rdy) && hs_init : dout_rdy ;       // experiment
 
    assign dout_vld = dout_vld_drv;
    assign is_idle = (~((din_vld && din_rdy) || (dout_vld && dout_rdy))) && hs_init;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
    assign din_vld_int = din_vld & hs_init;
    // KH assign active = din_vld_int | dout_rdy; // (din_vld & ~din_rdy) | (dout_rdy & ~dout_vld);
    assign active =   (din_vld_int & din_rdy_drv) | (dout_rdy & dout_vld_drv);

      assign din_rdy_drv = dout_rdy | (~stat[0] & hs_init);
      assign dout_vld_drv = din_vld_int | stat[fifo_sz-1];

      assign size_t = (count - {31'b0 , (dout_rdy & stat[fifo_sz-1])}) + { 31'b0, din_vld_int};
      assign sd = size_t[sz_width-1:0];

      assign dout = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : din;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          stat_behind = (i != 0) ? stat[i-1] : 1'b0;
          stat_ahead  = (i != (fifo_sz-1)) ? stat[i+1] : 1'b1;

          // Determine if this buffer element will have data
          stat_nxt = stat_ahead &                       // valid element ahead of this one (or head)
                       (stat_behind                     // valid element behind this one
                         | (stat[i] & (~dout_rdy))      // valid element and output not ready (in use, no tx)
                         | (stat[i] & din_vld_int)      // valid element and input has data
                         | (din_vld_int  & (~dout_rdy)) // input has data and output not ready
                       );
          stat_pre[i] = stat_nxt;

          if (dout_rdy & stat_behind )
          begin
            // pop n shift
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
            en_l_var = 1'b1;
          end
          else if (din_vld_int & stat_nxt & ~((~dout_rdy) & stat[i]))
          begin
            // update tail with input data
            buff_nxt = din;
            en_l_var = 1'b1;
          end
          else
          begin
            // no-op, disable register
            buff_nxt = din; // Don't care input to disabled flop
            en_l_var = 1'b0;
          end
          buff_pre[width*i+:width] = buff_nxt[0+:width];
             
          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          if ((stat_ahead == 1'b1) & (stat[i] == 1'b0)) 
            //found tail, update the number of elements for count
            n_elem = ($unsigned(fifo_sz) - 1) - $unsigned(i);
        end //for loop

        // Enable for stat registers (partitioned into banks of eight)
        // Take care of the head first
        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en & active;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en | ~active;

        // Now every eight
        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if (($unsigned(i)%8) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]) & (active);
            else
              en_l_s[(i/8)-1] = en | ~(stat[i]) | ~(active);
          end
        end
        
        // Update count and peak
        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = fifo_sz;
        else 
          count_t = n_elem[31:0];
        count = count_t;
        // synopsys translate_off
        if ( peak < count )
          peak = count;
        // synopsys translate_on
      end //FIFOPROC

      // Handshake valid after reset
      ccs_genreg_v1
      #(
        .width   (1),
        .ph_clk  (ph_clk),
        .ph_en   (1),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .has_en  (1'b0)
      )
      HS_INIT_REG
      (
        .clk     (clk),
        .en      (1'b1),
        .arst    (arst),
        .srst    (srst),
        .d       (1'b1),
        .z       (hs_init)
      );

      // Buffer and status registers
      for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
      begin: GEN_REGS
        ccs_genreg_v1
        #(
          .width   (1),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        STATREG
        (
          .clk     (clk),
          .en      (en_l_s[eni/8]),
          .arst    (arst),
          .srst    (srst),
          .d       (stat_pre[eni]),
          .z       (stat[eni])
        );

        ccs_genreg_v1
        #(
          .width   (width),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        BUFREG
        (
          .clk     (clk),
          .en      (en_l[eni]),
          .arst    (arst),
          .srst    (srst),
          .d       (buff_pre[width*eni+:width]),
          .z       (buff[width*eni+:width])
        );
      end

    end
    else
    begin: FEED_THRU
      assign din_rdy_drv  = dout_rdy;
      assign dout_vld_drv = din_vld;
      assign dout     = din;
      // non-blocking is not II=1 when fifo_sz=0
      assign sd = {{(sz_width-1){1'b0}}, (din_vld & ~dout_rdy)};
    end
    endgenerate

`ifdef RDY_ASRT 
    generate
    if (ph_clk==1) 
    begin: POS_CLK_ASSERT

       property rdyAsrt ;
         @(posedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Pos: assert property(rdyAsrt);

    end else if (ph_clk==0) 
    begin: NEG_CLK_ASSERT

       property rdyAsrt ;
         @(negedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Neg: assert property(rdyAsrt);

    end
    endgenerate

`endif
   
endmodule



//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_pipe_v5.v 
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
/*
 *
 *            _______________________________________________
 * WRITER    |                                              |          READER
 *           |                 ccs_pipe                     |
 *           |            ______________________            |
 *        --<| din_rdy --<|  ---------------- <|---dout_rdy<|---
 *           |            |       FIFO         |            |
 *        ---|>din_vld ---|> ----------------  |>--dout_vld |>--
 *        ---|>din -------|> ----------------  |> -----dout |>--
 *           |            |____________________|            |
 *           |______________________________________________|
 *
 *    din_rdy     - can be considered as a notFULL signal
 *    dout_vld    - can be considered as a notEMPTY signal
 *    write_stall - an internal debug signal formed from din_vld & !din_rdy
 *    read_stall  - an internal debug signal formed from dout_rdy & !dout_vld
 *    is_idle     - indicates the clock can be safely gated
 */

module ccs_pipe_v5 (clk, en, arst, srst, din_rdy, din_vld, din, dout_rdy, dout_vld, dout, sz, sz_req, is_idle);

    parameter integer rscid    = 0; // resource ID
    parameter integer width    = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz  = 8; // fifo depth
    parameter integer log2_sz  = 3; // log2(fifo_sz)
    parameter integer ph_clk   = 1; // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1; // clock enable polarity
    parameter integer ph_arst  = 1; // async reset polarity
    parameter integer ph_srst  = 1; // sync reset polarity

    // clock 
    input              clk;
    input              en;
    input              arst;
    input              srst;

    // writer
    output             din_rdy;
    input              din_vld;
    input  [width-1:0] din;

    // reader
    input              dout_rdy;
    output             dout_vld;
    output [width-1:0] dout;

    // size
    output [sz_width-1:0] sz;
    input                 sz_req;
    output                is_idle;
   
    // synopsys translate_off
    wire   write_stall;
    wire   read_stall;
    assign write_stall = din_vld & !din_rdy;
    assign read_stall  = dout_rdy & !dout_vld;
    // synopsys translate_on

    ccs_fifo_wait_core_v5
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz)
    )
    FIFO
    (
        .clk      (clk),
        .en       (en),
        .arst     (arst),
        .srst     (srst),
        .din_vld  (din_vld),
        .din_rdy  (din_rdy),
        .din      (din),
        .dout_vld (dout_vld),
        .dout_rdy (dout_rdy),
        .dout     (dout),
        .sd       (sz),
        .is_idle  (is_idle)
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
//  Generated date: Sun Sep 25 20:34:05 2022
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleMvdcCem_cns_bctl
// ------------------------------------------------------------------


module WeightDoubleMvdcCem_cns_bctl (
  clk, arst_n, paramsIn_rsc_rdy_nweightDoubleBufferWriter, din_rsc_rdy_nweightDoubleBufferWriter,
      dout_rsc_wadr_nweightDoubleBufferWriter, dout_rsc_d_nweightDoubleBufferWriter,
      dout_rsc_we_nweightDoubleBufferWriter, dout_rsc_req_vz_nweightDoubleBufferWriter,
      paramsIn_rsc_rdy_nweightDoubleBufferReader, din_rsc_radr_nweightDoubleBufferReader,
      din_rsc_re_nweightDoubleBufferReader, din_rsc_q_nweightDoubleBufferReader,
      din_rsc_req_vz_nweightDoubleBufferReader, dout_rsc_vld_nweightDoubleBufferReader,
      paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud, din_rsc_rdy_nweightDoubleBufferWriter_bud,
      dout_rsc_rls_lz_nweightDoubleBufferWriter_bud, din_rsc_rls_lz_nweightDoubleBufferReader_bud,
      paramsIn_rsc_rdy_nweightDoubleBufferReader_bud, dout_rsc_vld_nweightDoubleBufferReader_bud,
      mem_cns_S0, mem_cns_R0, mem_cns_S1, mem_cns_R1, mem_cns_radr_shi0, mem_cns_radr_shi1,
      mem_cns_wadr_shi0, mem_cns_wadr_shi1, mem_cns_d_shi0, mem_cns_d_shi1, mem_cns_we_shi0,
      mem_cns_we_shi1, mem_cns_re_shi0, mem_cns_re_shi1, mem_cns_q_sho0, mem_cns_q_sho1,
      mem_cns_S0_pff, mem_cns_S1_pff
);
  input clk;
  input arst_n;
  output paramsIn_rsc_rdy_nweightDoubleBufferWriter;
  output din_rsc_rdy_nweightDoubleBufferWriter;
  input [11:0] dout_rsc_wadr_nweightDoubleBufferWriter;
  input [127:0] dout_rsc_d_nweightDoubleBufferWriter;
  input dout_rsc_we_nweightDoubleBufferWriter;
  output dout_rsc_req_vz_nweightDoubleBufferWriter;
  output paramsIn_rsc_rdy_nweightDoubleBufferReader;
  input [11:0] din_rsc_radr_nweightDoubleBufferReader;
  input din_rsc_re_nweightDoubleBufferReader;
  output [127:0] din_rsc_q_nweightDoubleBufferReader;
  output din_rsc_req_vz_nweightDoubleBufferReader;
  output dout_rsc_vld_nweightDoubleBufferReader;
  input paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud;
  input din_rsc_rdy_nweightDoubleBufferWriter_bud;
  input dout_rsc_rls_lz_nweightDoubleBufferWriter_bud;
  input din_rsc_rls_lz_nweightDoubleBufferReader_bud;
  input paramsIn_rsc_rdy_nweightDoubleBufferReader_bud;
  input dout_rsc_vld_nweightDoubleBufferReader_bud;
  output mem_cns_S0;
  input mem_cns_R0;
  output mem_cns_S1;
  input mem_cns_R1;
  output [11:0] mem_cns_radr_shi0;
  output [11:0] mem_cns_radr_shi1;
  output [11:0] mem_cns_wadr_shi0;
  output [11:0] mem_cns_wadr_shi1;
  output [127:0] mem_cns_d_shi0;
  output [127:0] mem_cns_d_shi1;
  output mem_cns_we_shi0;
  output mem_cns_we_shi1;
  output mem_cns_re_shi0;
  output mem_cns_re_shi1;
  input [127:0] mem_cns_q_sho0;
  input [127:0] mem_cns_q_sho1;
  output mem_cns_S0_pff;
  output mem_cns_S1_pff;


  // Interconnect Declarations
  wire mem_cns_PC0;
  reg mem_cns_ppidx;
  reg [1:0] mem_cns_ppown;
  wire mem_cns_PC1;
  reg mem_cns_ppidx_1;
  reg [1:0] mem_cns_ppown_1;
  wire [1:0] mem_acc_rmff;
  wire [3:0] nl_mem_acc_rmff;
  wire mem_xor_rmff;
  wire [1:0] mem_acc_1_rmff;
  wire [3:0] nl_mem_acc_1_rmff;
  wire mem_xor_1_rmff;


  // Interconnect Declarations for Component Instantiations 
  assign paramsIn_rsc_rdy_nweightDoubleBufferWriter = paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud;
  assign din_rsc_rdy_nweightDoubleBufferWriter = din_rsc_rdy_nweightDoubleBufferWriter_bud;
  assign paramsIn_rsc_rdy_nweightDoubleBufferReader = paramsIn_rsc_rdy_nweightDoubleBufferReader_bud;
  assign dout_rsc_vld_nweightDoubleBufferReader = dout_rsc_vld_nweightDoubleBufferReader_bud;
  assign dout_rsc_req_vz_nweightDoubleBufferWriter = mem_cns_R0;
  assign din_rsc_req_vz_nweightDoubleBufferReader = mem_cns_R1;
  assign mem_xor_rmff = mem_cns_ppidx ^ mem_cns_PC0;
  assign nl_mem_acc_rmff = mem_cns_ppown + conv_u2u_1_2(mem_cns_PC0) + conv_s2u_1_2(mem_cns_PC1);
  assign mem_acc_rmff = nl_mem_acc_rmff[1:0];
  assign mem_cns_PC0 = mem_cns_S0 & dout_rsc_rls_lz_nweightDoubleBufferWriter_bud;
  assign mem_xor_1_rmff = mem_cns_ppidx_1 ^ mem_cns_PC1;
  assign nl_mem_acc_1_rmff = mem_cns_ppown_1 + conv_u2u_1_2(mem_cns_PC1) + conv_s2u_1_2(mem_cns_PC0);
  assign mem_acc_1_rmff = nl_mem_acc_1_rmff[1:0];
  assign mem_cns_PC1 = mem_cns_S1 & din_rsc_rls_lz_nweightDoubleBufferReader_bud;
  assign din_rsc_q_nweightDoubleBufferReader = MUX_v_128_2_2(mem_cns_q_sho0, mem_cns_q_sho1,
      mem_cns_ppidx_1);
  assign mem_cns_radr_shi0 = din_rsc_radr_nweightDoubleBufferReader;
  assign mem_cns_wadr_shi0 = dout_rsc_wadr_nweightDoubleBufferWriter;
  assign mem_cns_d_shi0 = dout_rsc_d_nweightDoubleBufferWriter;
  assign mem_cns_we_shi0 = dout_rsc_we_nweightDoubleBufferWriter & mem_cns_S0_pff
      & (~ mem_xor_rmff);
  assign mem_cns_S0 = ~((mem_cns_ppown==2'b10));
  assign mem_cns_S0_pff = ~((mem_acc_rmff==2'b10));
  assign mem_cns_re_shi0 = din_rsc_re_nweightDoubleBufferReader & mem_cns_S1_pff
      & (~ mem_xor_1_rmff);
  assign mem_cns_S1 = (mem_cns_ppown_1!=2'b00);
  assign mem_cns_S1_pff = (mem_acc_1_rmff!=2'b00);
  assign mem_cns_radr_shi1 = din_rsc_radr_nweightDoubleBufferReader;
  assign mem_cns_wadr_shi1 = dout_rsc_wadr_nweightDoubleBufferWriter;
  assign mem_cns_d_shi1 = dout_rsc_d_nweightDoubleBufferWriter;
  assign mem_cns_we_shi1 = dout_rsc_we_nweightDoubleBufferWriter & mem_cns_S0_pff
      & mem_xor_rmff;
  assign mem_cns_re_shi1 = din_rsc_re_nweightDoubleBufferReader & mem_cns_S1_pff
      & mem_xor_1_rmff;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      mem_cns_ppidx <= 1'b0;
      mem_cns_ppown <= 2'b00;
      mem_cns_ppidx_1 <= 1'b0;
      mem_cns_ppown_1 <= 2'b00;
    end
    else begin
      mem_cns_ppidx <= mem_xor_rmff;
      mem_cns_ppown <= mem_acc_rmff;
      mem_cns_ppidx_1 <= mem_xor_1_rmff;
      mem_cns_ppown_1 <= mem_acc_1_rmff;
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


  function automatic [1:0] conv_s2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_s2u_1_2 = {vector[0], vector};
  end
  endfunction


  function automatic [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    unreg_hier
// ------------------------------------------------------------------


module unreg_hier (
  in_0, out_0
);
  input in_0;
  output out_0;



  // Interconnect Declarations for Component Instantiations 
  assign out_0 = in_0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_run_fsm (
  clk, arst_n, run_wen, fsm_output
);
  input clk;
  input arst_n;
  input run_wen;
  output [2:0] fsm_output;
  reg [2:0] fsm_output;


  // FSM State Type Declaration for WeightDoubleBuffer_4096_16_16_run_run_run_fsm_1
  parameter
    run_rlp_C_0 = 2'd0,
    main_C_0 = 2'd1,
    main_C_1 = 2'd2;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : WeightDoubleBuffer_4096_16_16_run_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 3'b010;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 3'b100;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 3'b001;
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
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_staller
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_staller (
  run_wen, paramsIn_rsci_wen_comp, weightDoubleBufferWriterParams_cnsi_wen_comp,
      weightDoubleBufferReaderParams_cnsi_wen_comp
);
  output run_wen;
  input paramsIn_rsci_wen_comp;
  input weightDoubleBufferWriterParams_cnsi_wen_comp;
  input weightDoubleBufferReaderParams_cnsi_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = paramsIn_rsci_wen_comp & weightDoubleBufferWriterParams_cnsi_wen_comp
      & weightDoubleBufferReaderParams_cnsi_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_dp
    (
  clk, arst_n, weightDoubleBufferReaderParams_cnsi_oswt, weightDoubleBufferReaderParams_cnsi_wen_comp,
      weightDoubleBufferReaderParams_cnsi_biwt, weightDoubleBufferReaderParams_cnsi_bdwt,
      weightDoubleBufferReaderParams_cnsi_bcwt
);
  input clk;
  input arst_n;
  input weightDoubleBufferReaderParams_cnsi_oswt;
  output weightDoubleBufferReaderParams_cnsi_wen_comp;
  input weightDoubleBufferReaderParams_cnsi_biwt;
  input weightDoubleBufferReaderParams_cnsi_bdwt;
  output weightDoubleBufferReaderParams_cnsi_bcwt;
  reg weightDoubleBufferReaderParams_cnsi_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign weightDoubleBufferReaderParams_cnsi_wen_comp = (~ weightDoubleBufferReaderParams_cnsi_oswt)
      | weightDoubleBufferReaderParams_cnsi_biwt | weightDoubleBufferReaderParams_cnsi_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weightDoubleBufferReaderParams_cnsi_bcwt <= 1'b0;
    end
    else begin
      weightDoubleBufferReaderParams_cnsi_bcwt <= ~((~(weightDoubleBufferReaderParams_cnsi_bcwt
          | weightDoubleBufferReaderParams_cnsi_biwt)) | weightDoubleBufferReaderParams_cnsi_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl
    (
  run_wen, weightDoubleBufferReaderParams_cnsi_oswt, weightDoubleBufferReaderParams_cnsi_irdy,
      weightDoubleBufferReaderParams_cnsi_biwt, weightDoubleBufferReaderParams_cnsi_bdwt,
      weightDoubleBufferReaderParams_cnsi_bcwt, weightDoubleBufferReaderParams_cnsi_ivld_run_sct
);
  input run_wen;
  input weightDoubleBufferReaderParams_cnsi_oswt;
  input weightDoubleBufferReaderParams_cnsi_irdy;
  output weightDoubleBufferReaderParams_cnsi_biwt;
  output weightDoubleBufferReaderParams_cnsi_bdwt;
  input weightDoubleBufferReaderParams_cnsi_bcwt;
  output weightDoubleBufferReaderParams_cnsi_ivld_run_sct;


  // Interconnect Declarations
  wire weightDoubleBufferReaderParams_cnsi_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign weightDoubleBufferReaderParams_cnsi_bdwt = weightDoubleBufferReaderParams_cnsi_oswt
      & run_wen;
  assign weightDoubleBufferReaderParams_cnsi_biwt = weightDoubleBufferReaderParams_cnsi_ogwt
      & weightDoubleBufferReaderParams_cnsi_irdy;
  assign weightDoubleBufferReaderParams_cnsi_ogwt = weightDoubleBufferReaderParams_cnsi_oswt
      & (~ weightDoubleBufferReaderParams_cnsi_bcwt);
  assign weightDoubleBufferReaderParams_cnsi_ivld_run_sct = weightDoubleBufferReaderParams_cnsi_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_dp
    (
  clk, arst_n, weightDoubleBufferWriterParams_cnsi_oswt, weightDoubleBufferWriterParams_cnsi_wen_comp,
      weightDoubleBufferWriterParams_cnsi_biwt, weightDoubleBufferWriterParams_cnsi_bdwt,
      weightDoubleBufferWriterParams_cnsi_bcwt
);
  input clk;
  input arst_n;
  input weightDoubleBufferWriterParams_cnsi_oswt;
  output weightDoubleBufferWriterParams_cnsi_wen_comp;
  input weightDoubleBufferWriterParams_cnsi_biwt;
  input weightDoubleBufferWriterParams_cnsi_bdwt;
  output weightDoubleBufferWriterParams_cnsi_bcwt;
  reg weightDoubleBufferWriterParams_cnsi_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign weightDoubleBufferWriterParams_cnsi_wen_comp = (~ weightDoubleBufferWriterParams_cnsi_oswt)
      | weightDoubleBufferWriterParams_cnsi_biwt | weightDoubleBufferWriterParams_cnsi_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weightDoubleBufferWriterParams_cnsi_bcwt <= 1'b0;
    end
    else begin
      weightDoubleBufferWriterParams_cnsi_bcwt <= ~((~(weightDoubleBufferWriterParams_cnsi_bcwt
          | weightDoubleBufferWriterParams_cnsi_biwt)) | weightDoubleBufferWriterParams_cnsi_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl
    (
  run_wen, weightDoubleBufferWriterParams_cnsi_oswt, weightDoubleBufferWriterParams_cnsi_irdy,
      weightDoubleBufferWriterParams_cnsi_biwt, weightDoubleBufferWriterParams_cnsi_bdwt,
      weightDoubleBufferWriterParams_cnsi_bcwt, weightDoubleBufferWriterParams_cnsi_ivld_run_sct
);
  input run_wen;
  input weightDoubleBufferWriterParams_cnsi_oswt;
  input weightDoubleBufferWriterParams_cnsi_irdy;
  output weightDoubleBufferWriterParams_cnsi_biwt;
  output weightDoubleBufferWriterParams_cnsi_bdwt;
  input weightDoubleBufferWriterParams_cnsi_bcwt;
  output weightDoubleBufferWriterParams_cnsi_ivld_run_sct;


  // Interconnect Declarations
  wire weightDoubleBufferWriterParams_cnsi_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign weightDoubleBufferWriterParams_cnsi_bdwt = weightDoubleBufferWriterParams_cnsi_oswt
      & run_wen;
  assign weightDoubleBufferWriterParams_cnsi_biwt = weightDoubleBufferWriterParams_cnsi_ogwt
      & weightDoubleBufferWriterParams_cnsi_irdy;
  assign weightDoubleBufferWriterParams_cnsi_ogwt = weightDoubleBufferWriterParams_cnsi_oswt
      & (~ weightDoubleBufferWriterParams_cnsi_bcwt);
  assign weightDoubleBufferWriterParams_cnsi_ivld_run_sct = weightDoubleBufferWriterParams_cnsi_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_dp (
  clk, arst_n, paramsIn_rsci_oswt, paramsIn_rsci_wen_comp, paramsIn_rsci_idat_mxwt,
      paramsIn_rsci_biwt, paramsIn_rsci_bdwt, paramsIn_rsci_bcwt, paramsIn_rsci_idat
);
  input clk;
  input arst_n;
  input paramsIn_rsci_oswt;
  output paramsIn_rsci_wen_comp;
  output [143:0] paramsIn_rsci_idat_mxwt;
  input paramsIn_rsci_biwt;
  input paramsIn_rsci_bdwt;
  output paramsIn_rsci_bcwt;
  reg paramsIn_rsci_bcwt;
  input [143:0] paramsIn_rsci_idat;


  // Interconnect Declarations
  reg [143:0] paramsIn_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign paramsIn_rsci_wen_comp = (~ paramsIn_rsci_oswt) | paramsIn_rsci_biwt | paramsIn_rsci_bcwt;
  assign paramsIn_rsci_idat_mxwt = MUX_v_144_2_2(paramsIn_rsci_idat, paramsIn_rsci_idat_bfwt,
      paramsIn_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      paramsIn_rsci_bcwt <= 1'b0;
    end
    else begin
      paramsIn_rsci_bcwt <= ~((~(paramsIn_rsci_bcwt | paramsIn_rsci_biwt)) | paramsIn_rsci_bdwt);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      paramsIn_rsci_idat_bfwt <= 144'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ paramsIn_rsci_bcwt ) begin
      paramsIn_rsci_idat_bfwt <= paramsIn_rsci_idat_mxwt;
    end
  end

  function automatic [143:0] MUX_v_144_2_2;
    input [143:0] input_0;
    input [143:0] input_1;
    input [0:0] sel;
    reg [143:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_144_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl (
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
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_wport_3_128_12_4096_4096_128_5_gen
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_wport_3_128_12_4096_4096_128_5_gen
    (
  we, d, wadr, wadr_d, d_d, we_d, port_1_w_ram_ir_internal_WMASK_B_d
);
  output we;
  output [127:0] d;
  output [11:0] wadr;
  input [11:0] wadr_d;
  input [127:0] d_d;
  input we_d;
  input port_1_w_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign we = (port_1_w_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign wadr = (wadr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_run_fsm (
  clk, arst_n, run_wen, fsm_output, main_C_2_tr0, while_while_C_1_tr0, while_while_C_1_tr1,
      while_while_for_for_C_0_tr0, while_while_for_C_1_tr0, while_C_1_tr0
);
  input clk;
  input arst_n;
  input run_wen;
  output [11:0] fsm_output;
  reg [11:0] fsm_output;
  input main_C_2_tr0;
  input while_while_C_1_tr0;
  input while_while_C_1_tr1;
  input while_while_for_for_C_0_tr0;
  input while_while_for_C_1_tr0;
  input while_C_1_tr0;


  // FSM State Type Declaration for WeightDoubleBufferWriter_4096_16_16_run_run_fsm_1
  parameter
    run_rlp_C_0 = 4'd0,
    main_C_0 = 4'd1,
    main_C_1 = 4'd2,
    main_C_2 = 4'd3,
    while_C_0 = 4'd4,
    while_while_C_0 = 4'd5,
    while_while_C_1 = 4'd6,
    while_while_for_for_C_0 = 4'd7,
    while_while_for_C_0 = 4'd8,
    while_while_for_C_1 = 4'd9,
    while_while_C_2 = 4'd10,
    while_C_1 = 4'd11;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : WeightDoubleBufferWriter_4096_16_16_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 12'b000000000010;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 12'b000000000100;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 12'b000000001000;
        if ( main_C_2_tr0 ) begin
          state_var_NS = main_C_0;
        end
        else begin
          state_var_NS = while_C_0;
        end
      end
      while_C_0 : begin
        fsm_output = 12'b000000010000;
        state_var_NS = while_while_C_0;
      end
      while_while_C_0 : begin
        fsm_output = 12'b000000100000;
        state_var_NS = while_while_C_1;
      end
      while_while_C_1 : begin
        fsm_output = 12'b000001000000;
        if ( while_while_C_1_tr0 ) begin
          state_var_NS = while_C_1;
        end
        else if ( while_while_C_1_tr1 ) begin
          state_var_NS = while_while_C_2;
        end
        else begin
          state_var_NS = while_while_for_for_C_0;
        end
      end
      while_while_for_for_C_0 : begin
        fsm_output = 12'b000010000000;
        if ( while_while_for_for_C_0_tr0 ) begin
          state_var_NS = while_while_for_C_0;
        end
        else begin
          state_var_NS = while_while_for_for_C_0;
        end
      end
      while_while_for_C_0 : begin
        fsm_output = 12'b000100000000;
        state_var_NS = while_while_for_C_1;
      end
      while_while_for_C_1 : begin
        fsm_output = 12'b001000000000;
        if ( while_while_for_C_1_tr0 ) begin
          state_var_NS = while_while_C_2;
        end
        else begin
          state_var_NS = while_while_for_for_C_0;
        end
      end
      while_while_C_2 : begin
        fsm_output = 12'b010000000000;
        state_var_NS = while_while_C_0;
      end
      while_C_1 : begin
        fsm_output = 12'b100000000000;
        if ( while_C_1_tr0 ) begin
          state_var_NS = main_C_0;
        end
        else begin
          state_var_NS = while_C_0;
        end
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 12'b000000000001;
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
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_staller
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_staller (
  clk, arst_n, run_wen, run_wten, paramsIn_rsci_wen_comp, din_rsci_wen_comp, dout_rsc_req_obj_wen_comp
);
  input clk;
  input arst_n;
  output run_wen;
  output run_wten;
  input paramsIn_rsci_wen_comp;
  input din_rsci_wen_comp;
  input dout_rsc_req_obj_wen_comp;


  // Interconnect Declarations
  reg run_wten_reg;


  // Interconnect Declarations for Component Instantiations 
  assign run_wen = paramsIn_rsci_wen_comp & din_rsci_wen_comp & dout_rsc_req_obj_wen_comp;
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
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_dp
    (
  clk, arst_n, dout_rsc_req_obj_oswt, dout_rsc_req_obj_wen_comp, dout_rsc_req_obj_biwt,
      dout_rsc_req_obj_bdwt, dout_rsc_req_obj_bcwt
);
  input clk;
  input arst_n;
  input dout_rsc_req_obj_oswt;
  output dout_rsc_req_obj_wen_comp;
  input dout_rsc_req_obj_biwt;
  input dout_rsc_req_obj_bdwt;
  output dout_rsc_req_obj_bcwt;
  reg dout_rsc_req_obj_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dout_rsc_req_obj_wen_comp = (~ dout_rsc_req_obj_oswt) | dout_rsc_req_obj_biwt
      | dout_rsc_req_obj_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dout_rsc_req_obj_bcwt <= 1'b0;
    end
    else begin
      dout_rsc_req_obj_bcwt <= ~((~(dout_rsc_req_obj_bcwt | dout_rsc_req_obj_biwt))
          | dout_rsc_req_obj_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl
    (
  run_wen, dout_rsc_req_obj_oswt, dout_rsc_req_obj_vd, dout_rsc_req_obj_biwt, dout_rsc_req_obj_bdwt,
      dout_rsc_req_obj_bcwt
);
  input run_wen;
  input dout_rsc_req_obj_oswt;
  input dout_rsc_req_obj_vd;
  output dout_rsc_req_obj_biwt;
  output dout_rsc_req_obj_bdwt;
  input dout_rsc_req_obj_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dout_rsc_req_obj_bdwt = dout_rsc_req_obj_oswt & run_wen;
  assign dout_rsc_req_obj_biwt = dout_rsc_req_obj_oswt & (~ dout_rsc_req_obj_bcwt)
      & dout_rsc_req_obj_vd;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl
    (
  run_wten, dout_rsc_rls_obj_iswt0, dout_rsc_rls_obj_ld_run_sct
);
  input run_wten;
  input dout_rsc_rls_obj_iswt0;
  output dout_rsc_rls_obj_ld_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign dout_rsc_rls_obj_ld_run_sct = dout_rsc_rls_obj_iswt0 & (~ run_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_dout_rsc_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_dout_rsc_wait_ctrl (
  dout_rsci_we_d_run_sct_pff, dout_rsci_iswt0_pff, run_wten_pff
);
  output dout_rsci_we_d_run_sct_pff;
  input dout_rsci_iswt0_pff;
  input run_wten_pff;



  // Interconnect Declarations for Component Instantiations 
  assign dout_rsci_we_d_run_sct_pff = dout_rsci_iswt0_pff & (~ run_wten_pff);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_dp (
  clk, arst_n, din_rsci_oswt, din_rsci_wen_comp, din_rsci_idat_mxwt, din_rsci_biwt,
      din_rsci_bdwt, din_rsci_bcwt, din_rsci_idat
);
  input clk;
  input arst_n;
  input din_rsci_oswt;
  output din_rsci_wen_comp;
  output [7:0] din_rsci_idat_mxwt;
  input din_rsci_biwt;
  input din_rsci_bdwt;
  output din_rsci_bcwt;
  reg din_rsci_bcwt;
  input [7:0] din_rsci_idat;


  // Interconnect Declarations
  reg [7:0] din_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign din_rsci_wen_comp = (~ din_rsci_oswt) | din_rsci_biwt | din_rsci_bcwt;
  assign din_rsci_idat_mxwt = MUX_v_8_2_2(din_rsci_idat, din_rsci_idat_bfwt, din_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      din_rsci_bcwt <= 1'b0;
    end
    else begin
      din_rsci_bcwt <= ~((~(din_rsci_bcwt | din_rsci_biwt)) | din_rsci_bdwt);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      din_rsci_idat_bfwt <= 8'b00000000;
    end
    else if ( ~ din_rsci_bcwt ) begin
      din_rsci_idat_bfwt <= din_rsci_idat_mxwt;
    end
  end

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

endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl (
  run_wen, din_rsci_oswt, din_rsci_biwt, din_rsci_bdwt, din_rsci_bcwt, din_rsci_irdy_run_sct,
      din_rsci_ivld
);
  input run_wen;
  input din_rsci_oswt;
  output din_rsci_biwt;
  output din_rsci_bdwt;
  input din_rsci_bcwt;
  output din_rsci_irdy_run_sct;
  input din_rsci_ivld;


  // Interconnect Declarations
  wire din_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign din_rsci_bdwt = din_rsci_oswt & run_wen;
  assign din_rsci_biwt = din_rsci_ogwt & din_rsci_ivld;
  assign din_rsci_ogwt = din_rsci_oswt & (~ din_rsci_bcwt);
  assign din_rsci_irdy_run_sct = din_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp (
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
  reg [7:0] reg_paramsIn_rsci_idat_bfwt_ftd;
  reg [39:0] reg_paramsIn_rsci_idat_bfwt_ftd_9;
  reg [31:0] reg_paramsIn_rsci_idat_bfwt_ftd_42;
  wire [7:0] paramsIn_rsci_idat_mxwt_opt_119_112;
  wire [39:0] paramsIn_rsci_idat_mxwt_opt_103_64;
  wire [31:0] paramsIn_rsci_idat_mxwt_opt_31_0;


  // Interconnect Declarations for Component Instantiations 
  assign paramsIn_rsci_wen_comp = (~ paramsIn_rsci_oswt) | paramsIn_rsci_biwt | paramsIn_rsci_bcwt;
  assign paramsIn_rsci_idat_mxwt_opt_119_112 = MUX_v_8_2_2((paramsIn_rsci_idat[119:112]),
      reg_paramsIn_rsci_idat_bfwt_ftd, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt_opt_103_64 = MUX_v_40_2_2((paramsIn_rsci_idat[103:64]),
      reg_paramsIn_rsci_idat_bfwt_ftd_9, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt_opt_31_0 = MUX_v_32_2_2((paramsIn_rsci_idat[31:0]),
      reg_paramsIn_rsci_idat_bfwt_ftd_42, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt = {paramsIn_rsci_idat_mxwt_opt_119_112 , paramsIn_rsci_idat_mxwt_opt_103_64
      , paramsIn_rsci_idat_mxwt_opt_31_0};
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      paramsIn_rsci_bcwt <= 1'b0;
    end
    else begin
      paramsIn_rsci_bcwt <= ~((~(paramsIn_rsci_bcwt | paramsIn_rsci_biwt)) | paramsIn_rsci_bdwt);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd <= 8'b00000000;
    end
    else if ( ~ paramsIn_rsci_bcwt ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd <= paramsIn_rsci_idat_mxwt_opt_119_112;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd_9 <= 40'b0000000000000000000000000000000000000000;
    end
    else if ( ~ paramsIn_rsci_bcwt ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd_9 <= paramsIn_rsci_idat_mxwt_opt_103_64;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd_42 <= 32'b00000000000000000000000000000000;
    end
    else if ( ~ paramsIn_rsci_bcwt ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd_42 <= paramsIn_rsci_idat_mxwt_opt_31_0;
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


  function automatic [39:0] MUX_v_40_2_2;
    input [39:0] input_0;
    input [39:0] input_1;
    input [0:0] sel;
    reg [39:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_40_2_2 = result;
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

endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl (
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
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rport_7_128_12_4096_4096_128_5_gen
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rport_7_128_12_4096_4096_128_5_gen
    (
  q, re, radr, radr_d, re_d, q_d, port_0_r_ram_ir_internal_RMASK_B_d
);
  input [127:0] q;
  output re;
  output [11:0] radr;
  input [11:0] radr_d;
  input re_d;
  output [127:0] q_d;
  input port_0_r_ram_ir_internal_RMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign q_d = q;
  assign re = (port_0_r_ram_ir_internal_RMASK_B_d);
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_run_fsm (
  clk, arst_n, run_wen, fsm_output, main_C_3_tr0, while_while_C_2_tr0, while_while_for_C_0_tr0,
      while_C_1_tr0
);
  input clk;
  input arst_n;
  input run_wen;
  output [11:0] fsm_output;
  reg [11:0] fsm_output;
  input main_C_3_tr0;
  input while_while_C_2_tr0;
  input while_while_for_C_0_tr0;
  input while_C_1_tr0;


  // FSM State Type Declaration for WeightDoubleBufferReader_4096_16_16_run_run_fsm_1
  parameter
    run_rlp_C_0 = 4'd0,
    main_C_0 = 4'd1,
    main_C_1 = 4'd2,
    main_C_2 = 4'd3,
    main_C_3 = 4'd4,
    while_C_0 = 4'd5,
    while_while_C_0 = 4'd6,
    while_while_C_1 = 4'd7,
    while_while_C_2 = 4'd8,
    while_while_for_C_0 = 4'd9,
    while_while_C_3 = 4'd10,
    while_C_1 = 4'd11;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : WeightDoubleBufferReader_4096_16_16_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 12'b000000000010;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 12'b000000000100;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 12'b000000001000;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 12'b000000010000;
        if ( main_C_3_tr0 ) begin
          state_var_NS = main_C_0;
        end
        else begin
          state_var_NS = while_C_0;
        end
      end
      while_C_0 : begin
        fsm_output = 12'b000000100000;
        state_var_NS = while_while_C_0;
      end
      while_while_C_0 : begin
        fsm_output = 12'b000001000000;
        state_var_NS = while_while_C_1;
      end
      while_while_C_1 : begin
        fsm_output = 12'b000010000000;
        state_var_NS = while_while_C_2;
      end
      while_while_C_2 : begin
        fsm_output = 12'b000100000000;
        if ( while_while_C_2_tr0 ) begin
          state_var_NS = while_C_1;
        end
        else begin
          state_var_NS = while_while_for_C_0;
        end
      end
      while_while_for_C_0 : begin
        fsm_output = 12'b001000000000;
        if ( while_while_for_C_0_tr0 ) begin
          state_var_NS = while_while_C_3;
        end
        else begin
          state_var_NS = while_while_for_C_0;
        end
      end
      while_while_C_3 : begin
        fsm_output = 12'b010000000000;
        state_var_NS = while_while_C_0;
      end
      while_C_1 : begin
        fsm_output = 12'b100000000000;
        if ( while_C_1_tr0 ) begin
          state_var_NS = main_C_0;
        end
        else begin
          state_var_NS = while_C_0;
        end
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 12'b000000000001;
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
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_staller
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_staller (
  clk, arst_n, run_wen, run_wten, paramsIn_rsci_wen_comp, dout_rsci_wen_comp, din_rsc_req_obj_wen_comp
);
  input clk;
  input arst_n;
  output run_wen;
  output run_wten;
  input paramsIn_rsci_wen_comp;
  input dout_rsci_wen_comp;
  input din_rsc_req_obj_wen_comp;


  // Interconnect Declarations
  reg run_wten_reg;


  // Interconnect Declarations for Component Instantiations 
  assign run_wen = paramsIn_rsci_wen_comp & dout_rsci_wen_comp & din_rsc_req_obj_wen_comp;
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
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_dp
    (
  clk, arst_n, din_rsc_req_obj_oswt, din_rsc_req_obj_wen_comp, din_rsc_req_obj_biwt,
      din_rsc_req_obj_bdwt, din_rsc_req_obj_bcwt
);
  input clk;
  input arst_n;
  input din_rsc_req_obj_oswt;
  output din_rsc_req_obj_wen_comp;
  input din_rsc_req_obj_biwt;
  input din_rsc_req_obj_bdwt;
  output din_rsc_req_obj_bcwt;
  reg din_rsc_req_obj_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign din_rsc_req_obj_wen_comp = (~ din_rsc_req_obj_oswt) | din_rsc_req_obj_biwt
      | din_rsc_req_obj_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      din_rsc_req_obj_bcwt <= 1'b0;
    end
    else begin
      din_rsc_req_obj_bcwt <= ~((~(din_rsc_req_obj_bcwt | din_rsc_req_obj_biwt))
          | din_rsc_req_obj_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl
    (
  run_wen, din_rsc_req_obj_oswt, din_rsc_req_obj_vd, din_rsc_req_obj_biwt, din_rsc_req_obj_bdwt,
      din_rsc_req_obj_bcwt
);
  input run_wen;
  input din_rsc_req_obj_oswt;
  input din_rsc_req_obj_vd;
  output din_rsc_req_obj_biwt;
  output din_rsc_req_obj_bdwt;
  input din_rsc_req_obj_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign din_rsc_req_obj_bdwt = din_rsc_req_obj_oswt & run_wen;
  assign din_rsc_req_obj_biwt = din_rsc_req_obj_oswt & (~ din_rsc_req_obj_bcwt) &
      din_rsc_req_obj_vd;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl
    (
  run_wten, din_rsc_rls_obj_iswt0, din_rsc_rls_obj_ld_run_sct
);
  input run_wten;
  input din_rsc_rls_obj_iswt0;
  output din_rsc_rls_obj_ld_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign din_rsc_rls_obj_ld_run_sct = din_rsc_rls_obj_iswt0 & (~ run_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_dp (
  clk, arst_n, dout_rsci_oswt, dout_rsci_wen_comp, dout_rsci_biwt, dout_rsci_bdwt,
      dout_rsci_bcwt
);
  input clk;
  input arst_n;
  input dout_rsci_oswt;
  output dout_rsci_wen_comp;
  input dout_rsci_biwt;
  input dout_rsci_bdwt;
  output dout_rsci_bcwt;
  reg dout_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dout_rsci_wen_comp = (~ dout_rsci_oswt) | dout_rsci_biwt | dout_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dout_rsci_bcwt <= 1'b0;
    end
    else begin
      dout_rsci_bcwt <= ~((~(dout_rsci_bcwt | dout_rsci_biwt)) | dout_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl (
  run_wen, dout_rsci_oswt, dout_rsci_irdy, dout_rsci_biwt, dout_rsci_bdwt, dout_rsci_bcwt,
      dout_rsci_ivld_run_sct
);
  input run_wen;
  input dout_rsci_oswt;
  input dout_rsci_irdy;
  output dout_rsci_biwt;
  output dout_rsci_bdwt;
  input dout_rsci_bcwt;
  output dout_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dout_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dout_rsci_bdwt = dout_rsci_oswt & run_wen;
  assign dout_rsci_biwt = dout_rsci_ogwt & dout_rsci_irdy;
  assign dout_rsci_ogwt = dout_rsci_oswt & (~ dout_rsci_bcwt);
  assign dout_rsci_ivld_run_sct = dout_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_dp (
  clk, arst_n, din_rsci_q_d, din_rsci_q_d_mxwt, din_rsci_biwt, din_rsci_bdwt
);
  input clk;
  input arst_n;
  input [127:0] din_rsci_q_d;
  output [127:0] din_rsci_q_d_mxwt;
  input din_rsci_biwt;
  input din_rsci_bdwt;


  // Interconnect Declarations
  reg din_rsci_bcwt;
  reg [127:0] din_rsci_q_d_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign din_rsci_q_d_mxwt = MUX_v_128_2_2(din_rsci_q_d, din_rsci_q_d_bfwt, din_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      din_rsci_bcwt <= 1'b0;
    end
    else begin
      din_rsci_bcwt <= ~((~(din_rsci_bcwt | din_rsci_biwt)) | din_rsci_bdwt);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      din_rsci_q_d_bfwt <= 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ din_rsci_bcwt ) begin
      din_rsci_q_d_bfwt <= din_rsci_q_d_mxwt;
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
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_ctrl (
  run_wen, run_wten, din_rsci_oswt, din_rsci_biwt, din_rsci_bdwt, din_rsci_re_d_run_sct_pff,
      din_rsci_oswt_pff
);
  input run_wen;
  input run_wten;
  input din_rsci_oswt;
  output din_rsci_biwt;
  output din_rsci_bdwt;
  output din_rsci_re_d_run_sct_pff;
  input din_rsci_oswt_pff;



  // Interconnect Declarations for Component Instantiations 
  assign din_rsci_bdwt = din_rsci_oswt & run_wen;
  assign din_rsci_biwt = (~ run_wten) & din_rsci_oswt;
  assign din_rsci_re_d_run_sct_pff = din_rsci_oswt_pff & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp (
  clk, arst_n, paramsIn_rsci_oswt, paramsIn_rsci_wen_comp, paramsIn_rsci_idat_mxwt,
      paramsIn_rsci_biwt, paramsIn_rsci_bdwt, paramsIn_rsci_bcwt, paramsIn_rsci_idat
);
  input clk;
  input arst_n;
  input paramsIn_rsci_oswt;
  output paramsIn_rsci_wen_comp;
  output [95:0] paramsIn_rsci_idat_mxwt;
  input paramsIn_rsci_biwt;
  input paramsIn_rsci_bdwt;
  output paramsIn_rsci_bcwt;
  reg paramsIn_rsci_bcwt;
  input [143:0] paramsIn_rsci_idat;


  // Interconnect Declarations
  reg [63:0] reg_paramsIn_rsci_idat_bfwt_ftd;
  reg [31:0] reg_paramsIn_rsci_idat_bfwt_ftd_33;
  wire [63:0] paramsIn_rsci_idat_mxwt_opt_127_64;
  wire [31:0] paramsIn_rsci_idat_mxwt_opt_31_0;


  // Interconnect Declarations for Component Instantiations 
  assign paramsIn_rsci_wen_comp = (~ paramsIn_rsci_oswt) | paramsIn_rsci_biwt | paramsIn_rsci_bcwt;
  assign paramsIn_rsci_idat_mxwt_opt_127_64 = MUX_v_64_2_2((paramsIn_rsci_idat[127:64]),
      reg_paramsIn_rsci_idat_bfwt_ftd, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt_opt_31_0 = MUX_v_32_2_2((paramsIn_rsci_idat[31:0]),
      reg_paramsIn_rsci_idat_bfwt_ftd_33, paramsIn_rsci_bcwt);
  assign paramsIn_rsci_idat_mxwt = {paramsIn_rsci_idat_mxwt_opt_127_64 , paramsIn_rsci_idat_mxwt_opt_31_0};
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      paramsIn_rsci_bcwt <= 1'b0;
    end
    else begin
      paramsIn_rsci_bcwt <= ~((~(paramsIn_rsci_bcwt | paramsIn_rsci_biwt)) | paramsIn_rsci_bdwt);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ paramsIn_rsci_bcwt ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd <= paramsIn_rsci_idat_mxwt_opt_127_64;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd_33 <= 32'b00000000000000000000000000000000;
    end
    else if ( ~ paramsIn_rsci_bcwt ) begin
      reg_paramsIn_rsci_idat_bfwt_ftd_33 <= paramsIn_rsci_idat_mxwt_opt_31_0;
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


  function automatic [63:0] MUX_v_64_2_2;
    input [63:0] input_0;
    input [63:0] input_1;
    input [0:0] sel;
    reg [63:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_64_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl (
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
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi
    (
  clk, arst_n, weightDoubleBufferReaderParams_cns_dat, weightDoubleBufferReaderParams_cns_vld,
      weightDoubleBufferReaderParams_cns_rdy, run_wen, weightDoubleBufferReaderParams_cnsi_oswt,
      weightDoubleBufferReaderParams_cnsi_wen_comp, weightDoubleBufferReaderParams_cnsi_idat
);
  input clk;
  input arst_n;
  output [143:0] weightDoubleBufferReaderParams_cns_dat;
  output weightDoubleBufferReaderParams_cns_vld;
  input weightDoubleBufferReaderParams_cns_rdy;
  input run_wen;
  input weightDoubleBufferReaderParams_cnsi_oswt;
  output weightDoubleBufferReaderParams_cnsi_wen_comp;
  input [143:0] weightDoubleBufferReaderParams_cnsi_idat;


  // Interconnect Declarations
  wire weightDoubleBufferReaderParams_cnsi_irdy;
  wire weightDoubleBufferReaderParams_cnsi_biwt;
  wire weightDoubleBufferReaderParams_cnsi_bdwt;
  wire weightDoubleBufferReaderParams_cnsi_bcwt;
  wire weightDoubleBufferReaderParams_cnsi_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd18),
  .width(32'sd144)) weightDoubleBufferReaderParams_cnsi (
      .irdy(weightDoubleBufferReaderParams_cnsi_irdy),
      .ivld(weightDoubleBufferReaderParams_cnsi_ivld_run_sct),
      .idat(weightDoubleBufferReaderParams_cnsi_idat),
      .rdy(weightDoubleBufferReaderParams_cns_rdy),
      .vld(weightDoubleBufferReaderParams_cns_vld),
      .dat(weightDoubleBufferReaderParams_cns_dat)
    );
  WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl
      WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .weightDoubleBufferReaderParams_cnsi_oswt(weightDoubleBufferReaderParams_cnsi_oswt),
      .weightDoubleBufferReaderParams_cnsi_irdy(weightDoubleBufferReaderParams_cnsi_irdy),
      .weightDoubleBufferReaderParams_cnsi_biwt(weightDoubleBufferReaderParams_cnsi_biwt),
      .weightDoubleBufferReaderParams_cnsi_bdwt(weightDoubleBufferReaderParams_cnsi_bdwt),
      .weightDoubleBufferReaderParams_cnsi_bcwt(weightDoubleBufferReaderParams_cnsi_bcwt),
      .weightDoubleBufferReaderParams_cnsi_ivld_run_sct(weightDoubleBufferReaderParams_cnsi_ivld_run_sct)
    );
  WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_dp
      WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weightDoubleBufferReaderParams_cnsi_oswt(weightDoubleBufferReaderParams_cnsi_oswt),
      .weightDoubleBufferReaderParams_cnsi_wen_comp(weightDoubleBufferReaderParams_cnsi_wen_comp),
      .weightDoubleBufferReaderParams_cnsi_biwt(weightDoubleBufferReaderParams_cnsi_biwt),
      .weightDoubleBufferReaderParams_cnsi_bdwt(weightDoubleBufferReaderParams_cnsi_bdwt),
      .weightDoubleBufferReaderParams_cnsi_bcwt(weightDoubleBufferReaderParams_cnsi_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi
    (
  clk, arst_n, weightDoubleBufferWriterParams_cns_dat, weightDoubleBufferWriterParams_cns_vld,
      weightDoubleBufferWriterParams_cns_rdy, run_wen, weightDoubleBufferWriterParams_cnsi_oswt,
      weightDoubleBufferWriterParams_cnsi_wen_comp, weightDoubleBufferWriterParams_cnsi_idat
);
  input clk;
  input arst_n;
  output [143:0] weightDoubleBufferWriterParams_cns_dat;
  output weightDoubleBufferWriterParams_cns_vld;
  input weightDoubleBufferWriterParams_cns_rdy;
  input run_wen;
  input weightDoubleBufferWriterParams_cnsi_oswt;
  output weightDoubleBufferWriterParams_cnsi_wen_comp;
  input [143:0] weightDoubleBufferWriterParams_cnsi_idat;


  // Interconnect Declarations
  wire weightDoubleBufferWriterParams_cnsi_irdy;
  wire weightDoubleBufferWriterParams_cnsi_biwt;
  wire weightDoubleBufferWriterParams_cnsi_bdwt;
  wire weightDoubleBufferWriterParams_cnsi_bcwt;
  wire weightDoubleBufferWriterParams_cnsi_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd17),
  .width(32'sd144)) weightDoubleBufferWriterParams_cnsi (
      .irdy(weightDoubleBufferWriterParams_cnsi_irdy),
      .ivld(weightDoubleBufferWriterParams_cnsi_ivld_run_sct),
      .idat(weightDoubleBufferWriterParams_cnsi_idat),
      .rdy(weightDoubleBufferWriterParams_cns_rdy),
      .vld(weightDoubleBufferWriterParams_cns_vld),
      .dat(weightDoubleBufferWriterParams_cns_dat)
    );
  WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl
      WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .weightDoubleBufferWriterParams_cnsi_oswt(weightDoubleBufferWriterParams_cnsi_oswt),
      .weightDoubleBufferWriterParams_cnsi_irdy(weightDoubleBufferWriterParams_cnsi_irdy),
      .weightDoubleBufferWriterParams_cnsi_biwt(weightDoubleBufferWriterParams_cnsi_biwt),
      .weightDoubleBufferWriterParams_cnsi_bdwt(weightDoubleBufferWriterParams_cnsi_bdwt),
      .weightDoubleBufferWriterParams_cnsi_bcwt(weightDoubleBufferWriterParams_cnsi_bcwt),
      .weightDoubleBufferWriterParams_cnsi_ivld_run_sct(weightDoubleBufferWriterParams_cnsi_ivld_run_sct)
    );
  WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_dp
      WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weightDoubleBufferWriterParams_cnsi_oswt(weightDoubleBufferWriterParams_cnsi_oswt),
      .weightDoubleBufferWriterParams_cnsi_wen_comp(weightDoubleBufferWriterParams_cnsi_wen_comp),
      .weightDoubleBufferWriterParams_cnsi_biwt(weightDoubleBufferWriterParams_cnsi_biwt),
      .weightDoubleBufferWriterParams_cnsi_bdwt(weightDoubleBufferWriterParams_cnsi_bdwt),
      .weightDoubleBufferWriterParams_cnsi_bcwt(weightDoubleBufferWriterParams_cnsi_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci (
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
  output [143:0] paramsIn_rsci_idat_mxwt;


  // Interconnect Declarations
  wire paramsIn_rsci_biwt;
  wire paramsIn_rsci_bdwt;
  wire paramsIn_rsci_bcwt;
  wire paramsIn_rsci_irdy_run_sct;
  wire paramsIn_rsci_ivld;
  wire [143:0] paramsIn_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd16),
  .width(32'sd144)) paramsIn_rsci (
      .rdy(paramsIn_rsc_rdy),
      .vld(paramsIn_rsc_vld),
      .dat(paramsIn_rsc_dat),
      .irdy(paramsIn_rsci_irdy_run_sct),
      .ivld(paramsIn_rsci_ivld),
      .idat(paramsIn_rsci_idat)
    );
  WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(paramsIn_rsci_oswt),
      .paramsIn_rsci_biwt(paramsIn_rsci_biwt),
      .paramsIn_rsci_bdwt(paramsIn_rsci_bdwt),
      .paramsIn_rsci_bcwt(paramsIn_rsci_bcwt),
      .paramsIn_rsci_irdy_run_sct(paramsIn_rsci_irdy_run_sct),
      .paramsIn_rsci_ivld(paramsIn_rsci_ivld)
    );
  WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_dp WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsci_oswt(paramsIn_rsci_oswt),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .paramsIn_rsci_idat_mxwt(paramsIn_rsci_idat_mxwt),
      .paramsIn_rsci_biwt(paramsIn_rsci_biwt),
      .paramsIn_rsci_bdwt(paramsIn_rsci_bdwt),
      .paramsIn_rsci_bcwt(paramsIn_rsci_bcwt),
      .paramsIn_rsci_idat(paramsIn_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj (
  clk, arst_n, dout_rsc_req_vz, run_wen, dout_rsc_req_obj_oswt, dout_rsc_req_obj_wen_comp
);
  input clk;
  input arst_n;
  input dout_rsc_req_vz;
  input run_wen;
  input dout_rsc_req_obj_oswt;
  output dout_rsc_req_obj_wen_comp;


  // Interconnect Declarations
  wire dout_rsc_req_obj_vd;
  wire dout_rsc_req_obj_biwt;
  wire dout_rsc_req_obj_bdwt;
  wire dout_rsc_req_obj_bcwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_sync_v2 #(.valid(32'sd1)) dout_rsc_req_obj (
      .vd(dout_rsc_req_obj_vd),
      .vz(dout_rsc_req_vz)
    );
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl
      WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dout_rsc_req_obj_oswt(dout_rsc_req_obj_oswt),
      .dout_rsc_req_obj_vd(dout_rsc_req_obj_vd),
      .dout_rsc_req_obj_biwt(dout_rsc_req_obj_biwt),
      .dout_rsc_req_obj_bdwt(dout_rsc_req_obj_bdwt),
      .dout_rsc_req_obj_bcwt(dout_rsc_req_obj_bcwt)
    );
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_dp WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .dout_rsc_req_obj_oswt(dout_rsc_req_obj_oswt),
      .dout_rsc_req_obj_wen_comp(dout_rsc_req_obj_wen_comp),
      .dout_rsc_req_obj_biwt(dout_rsc_req_obj_biwt),
      .dout_rsc_req_obj_bdwt(dout_rsc_req_obj_bdwt),
      .dout_rsc_req_obj_bcwt(dout_rsc_req_obj_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj (
  dout_rsc_rls_lz, run_wten, dout_rsc_rls_obj_iswt0
);
  output dout_rsc_rls_lz;
  input run_wten;
  input dout_rsc_rls_obj_iswt0;


  // Interconnect Declarations
  wire dout_rsc_rls_obj_ld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) dout_rsc_rls_obj (
      .ld(dout_rsc_rls_obj_ld_run_sct),
      .lz(dout_rsc_rls_lz)
    );
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl
      WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .dout_rsc_rls_obj_iswt0(dout_rsc_rls_obj_iswt0),
      .dout_rsc_rls_obj_ld_run_sct(dout_rsc_rls_obj_ld_run_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1 (
  dout_rsci_we_d_pff, dout_rsci_iswt0_pff, run_wten_pff
);
  output dout_rsci_we_d_pff;
  input dout_rsci_iswt0_pff;
  input run_wten_pff;


  // Interconnect Declarations
  wire dout_rsci_we_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_dout_rsc_wait_ctrl WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_dout_rsc_wait_ctrl_inst
      (
      .dout_rsci_we_d_run_sct_pff(dout_rsci_we_d_run_sct_iff),
      .dout_rsci_iswt0_pff(dout_rsci_iswt0_pff),
      .run_wten_pff(run_wten_pff)
    );
  assign dout_rsci_we_d_pff = dout_rsci_we_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_din_rsci
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_din_rsci (
  clk, arst_n, din_rsc_dat, din_rsc_vld, din_rsc_rdy, run_wen, din_rsci_oswt, din_rsci_wen_comp,
      din_rsci_idat_mxwt
);
  input clk;
  input arst_n;
  input [7:0] din_rsc_dat;
  input din_rsc_vld;
  output din_rsc_rdy;
  input run_wen;
  input din_rsci_oswt;
  output din_rsci_wen_comp;
  output [7:0] din_rsci_idat_mxwt;


  // Interconnect Declarations
  wire din_rsci_biwt;
  wire din_rsci_bdwt;
  wire din_rsci_bcwt;
  wire din_rsci_irdy_run_sct;
  wire din_rsci_ivld;
  wire [7:0] din_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd2),
  .width(32'sd8)) din_rsci (
      .rdy(din_rsc_rdy),
      .vld(din_rsc_vld),
      .dat(din_rsc_dat),
      .irdy(din_rsci_irdy_run_sct),
      .ivld(din_rsci_ivld),
      .idat(din_rsci_idat)
    );
  WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .din_rsci_oswt(din_rsci_oswt),
      .din_rsci_biwt(din_rsci_biwt),
      .din_rsci_bdwt(din_rsci_bdwt),
      .din_rsci_bcwt(din_rsci_bcwt),
      .din_rsci_irdy_run_sct(din_rsci_irdy_run_sct),
      .din_rsci_ivld(din_rsci_ivld)
    );
  WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_dp WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .din_rsci_oswt(din_rsci_oswt),
      .din_rsci_wen_comp(din_rsci_wen_comp),
      .din_rsci_idat_mxwt(din_rsci_idat_mxwt),
      .din_rsci_biwt(din_rsci_biwt),
      .din_rsci_bdwt(din_rsci_bdwt),
      .din_rsci_bcwt(din_rsci_bcwt),
      .din_rsci_idat(din_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci (
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
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd144)) paramsIn_rsci (
      .rdy(paramsIn_rsc_rdy),
      .vld(paramsIn_rsc_vld),
      .dat(paramsIn_rsc_dat),
      .irdy(paramsIn_rsci_irdy_run_sct),
      .ivld(paramsIn_rsci_ivld),
      .idat(paramsIn_rsci_idat)
    );
  WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(paramsIn_rsci_oswt),
      .paramsIn_rsci_biwt(paramsIn_rsci_biwt),
      .paramsIn_rsci_bdwt(paramsIn_rsci_bdwt),
      .paramsIn_rsci_bcwt(paramsIn_rsci_bcwt),
      .paramsIn_rsci_irdy_run_sct(paramsIn_rsci_irdy_run_sct),
      .paramsIn_rsci_ivld(paramsIn_rsci_ivld)
    );
  WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp_inst
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
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj (
  clk, arst_n, din_rsc_req_vz, run_wen, din_rsc_req_obj_oswt, din_rsc_req_obj_wen_comp
);
  input clk;
  input arst_n;
  input din_rsc_req_vz;
  input run_wen;
  input din_rsc_req_obj_oswt;
  output din_rsc_req_obj_wen_comp;


  // Interconnect Declarations
  wire din_rsc_req_obj_vd;
  wire din_rsc_req_obj_biwt;
  wire din_rsc_req_obj_bdwt;
  wire din_rsc_req_obj_bcwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_sync_v2 #(.valid(32'sd1)) din_rsc_req_obj (
      .vd(din_rsc_req_obj_vd),
      .vz(din_rsc_req_vz)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .din_rsc_req_obj_oswt(din_rsc_req_obj_oswt),
      .din_rsc_req_obj_vd(din_rsc_req_obj_vd),
      .din_rsc_req_obj_biwt(din_rsc_req_obj_biwt),
      .din_rsc_req_obj_bdwt(din_rsc_req_obj_bdwt),
      .din_rsc_req_obj_bcwt(din_rsc_req_obj_bcwt)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_dp WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .din_rsc_req_obj_oswt(din_rsc_req_obj_oswt),
      .din_rsc_req_obj_wen_comp(din_rsc_req_obj_wen_comp),
      .din_rsc_req_obj_biwt(din_rsc_req_obj_biwt),
      .din_rsc_req_obj_bdwt(din_rsc_req_obj_bdwt),
      .din_rsc_req_obj_bcwt(din_rsc_req_obj_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj (
  din_rsc_rls_lz, run_wten, din_rsc_rls_obj_iswt0
);
  output din_rsc_rls_lz;
  input run_wten;
  input din_rsc_rls_obj_iswt0;


  // Interconnect Declarations
  wire din_rsc_rls_obj_ld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) din_rsc_rls_obj (
      .ld(din_rsc_rls_obj_ld_run_sct),
      .lz(din_rsc_rls_lz)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .din_rsc_rls_obj_iswt0(din_rsc_rls_obj_iswt0),
      .din_rsc_rls_obj_ld_run_sct(din_rsc_rls_obj_ld_run_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_dout_rsci
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_dout_rsci (
  clk, arst_n, dout_rsc_dat, dout_rsc_vld, dout_rsc_rdy, run_wen, dout_rsci_oswt,
      dout_rsci_wen_comp, dout_rsci_idat
);
  input clk;
  input arst_n;
  output [127:0] dout_rsc_dat;
  output dout_rsc_vld;
  input dout_rsc_rdy;
  input run_wen;
  input dout_rsci_oswt;
  output dout_rsci_wen_comp;
  input [127:0] dout_rsci_idat;


  // Interconnect Declarations
  wire dout_rsci_irdy;
  wire dout_rsci_biwt;
  wire dout_rsci_bdwt;
  wire dout_rsci_bcwt;
  wire dout_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd8),
  .width(32'sd128)) dout_rsci (
      .irdy(dout_rsci_irdy),
      .ivld(dout_rsci_ivld_run_sct),
      .idat(dout_rsci_idat),
      .rdy(dout_rsc_rdy),
      .vld(dout_rsc_vld),
      .dat(dout_rsc_dat)
    );
  WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dout_rsci_oswt(dout_rsci_oswt),
      .dout_rsci_irdy(dout_rsci_irdy),
      .dout_rsci_biwt(dout_rsci_biwt),
      .dout_rsci_bdwt(dout_rsci_bdwt),
      .dout_rsci_bcwt(dout_rsci_bcwt),
      .dout_rsci_ivld_run_sct(dout_rsci_ivld_run_sct)
    );
  WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_dp WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .dout_rsci_oswt(dout_rsci_oswt),
      .dout_rsci_wen_comp(dout_rsci_wen_comp),
      .dout_rsci_biwt(dout_rsci_biwt),
      .dout_rsci_bdwt(dout_rsci_bdwt),
      .dout_rsci_bcwt(dout_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_din_rsci_1
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_din_rsci_1 (
  clk, arst_n, din_rsci_q_d, run_wen, run_wten, din_rsci_oswt, din_rsci_q_d_mxwt,
      din_rsci_re_d_pff, din_rsci_oswt_pff
);
  input clk;
  input arst_n;
  input [127:0] din_rsci_q_d;
  input run_wen;
  input run_wten;
  input din_rsci_oswt;
  output [127:0] din_rsci_q_d_mxwt;
  output din_rsci_re_d_pff;
  input din_rsci_oswt_pff;


  // Interconnect Declarations
  wire din_rsci_biwt;
  wire din_rsci_bdwt;
  wire din_rsci_re_d_run_sct_iff;


  // Interconnect Declarations for Component Instantiations 
  WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_ctrl WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .run_wten(run_wten),
      .din_rsci_oswt(din_rsci_oswt),
      .din_rsci_biwt(din_rsci_biwt),
      .din_rsci_bdwt(din_rsci_bdwt),
      .din_rsci_re_d_run_sct_pff(din_rsci_re_d_run_sct_iff),
      .din_rsci_oswt_pff(din_rsci_oswt_pff)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_dp WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_din_rsc_wait_dp_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .din_rsci_q_d(din_rsci_q_d),
      .din_rsci_q_d_mxwt(din_rsci_q_d_mxwt),
      .din_rsci_biwt(din_rsci_biwt),
      .din_rsci_bdwt(din_rsci_bdwt)
    );
  assign din_rsci_re_d_pff = din_rsci_re_d_run_sct_iff;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci (
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
  output [95:0] paramsIn_rsci_idat_mxwt;


  // Interconnect Declarations
  wire paramsIn_rsci_biwt;
  wire paramsIn_rsci_bdwt;
  wire paramsIn_rsci_bcwt;
  wire paramsIn_rsci_irdy_run_sct;
  wire paramsIn_rsci_ivld;
  wire [143:0] paramsIn_rsci_idat;
  wire [95:0] paramsIn_rsci_idat_mxwt_pconst;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd6),
  .width(32'sd144)) paramsIn_rsci (
      .rdy(paramsIn_rsc_rdy),
      .vld(paramsIn_rsc_vld),
      .dat(paramsIn_rsc_dat),
      .irdy(paramsIn_rsci_irdy_run_sct),
      .ivld(paramsIn_rsci_ivld),
      .idat(paramsIn_rsci_idat)
    );
  WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(paramsIn_rsci_oswt),
      .paramsIn_rsci_biwt(paramsIn_rsci_biwt),
      .paramsIn_rsci_bdwt(paramsIn_rsci_bdwt),
      .paramsIn_rsci_bcwt(paramsIn_rsci_bcwt),
      .paramsIn_rsci_irdy_run_sct(paramsIn_rsci_irdy_run_sct),
      .paramsIn_rsci_ivld(paramsIn_rsci_ivld)
    );
  WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_dp_inst
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
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run_run
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run_run (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, weightDoubleBufferWriterParams_cns_dat,
      weightDoubleBufferWriterParams_cns_vld, weightDoubleBufferWriterParams_cns_rdy,
      weightDoubleBufferReaderParams_cns_dat, weightDoubleBufferReaderParams_cns_vld,
      weightDoubleBufferReaderParams_cns_rdy
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  output [143:0] weightDoubleBufferWriterParams_cns_dat;
  output weightDoubleBufferWriterParams_cns_vld;
  input weightDoubleBufferWriterParams_cns_rdy;
  output [143:0] weightDoubleBufferReaderParams_cns_dat;
  output weightDoubleBufferReaderParams_cns_vld;
  input weightDoubleBufferReaderParams_cns_rdy;


  // Interconnect Declarations
  wire run_wen;
  wire paramsIn_rsci_wen_comp;
  wire [143:0] paramsIn_rsci_idat_mxwt;
  wire weightDoubleBufferWriterParams_cnsi_wen_comp;
  wire weightDoubleBufferReaderParams_cnsi_wen_comp;
  wire [2:0] fsm_output;
  reg reg_weightDoubleBufferReaderParams_cnsi_ivld_run_psct_cse;
  reg [143:0] reg_weightDoubleBufferReaderParams_cnsi_idat_cse;
  reg reg_paramsIn_rsci_irdy_run_psct_cse;


  // Interconnect Declarations for Component Instantiations 
  WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(reg_paramsIn_rsci_irdy_run_psct_cse),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .paramsIn_rsci_idat_mxwt(paramsIn_rsci_idat_mxwt)
    );
  WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weightDoubleBufferWriterParams_cns_dat(weightDoubleBufferWriterParams_cns_dat),
      .weightDoubleBufferWriterParams_cns_vld(weightDoubleBufferWriterParams_cns_vld),
      .weightDoubleBufferWriterParams_cns_rdy(weightDoubleBufferWriterParams_cns_rdy),
      .run_wen(run_wen),
      .weightDoubleBufferWriterParams_cnsi_oswt(reg_weightDoubleBufferReaderParams_cnsi_ivld_run_psct_cse),
      .weightDoubleBufferWriterParams_cnsi_wen_comp(weightDoubleBufferWriterParams_cnsi_wen_comp),
      .weightDoubleBufferWriterParams_cnsi_idat(reg_weightDoubleBufferReaderParams_cnsi_idat_cse)
    );
  WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weightDoubleBufferReaderParams_cns_dat(weightDoubleBufferReaderParams_cns_dat),
      .weightDoubleBufferReaderParams_cns_vld(weightDoubleBufferReaderParams_cns_vld),
      .weightDoubleBufferReaderParams_cns_rdy(weightDoubleBufferReaderParams_cns_rdy),
      .run_wen(run_wen),
      .weightDoubleBufferReaderParams_cnsi_oswt(reg_weightDoubleBufferReaderParams_cnsi_ivld_run_psct_cse),
      .weightDoubleBufferReaderParams_cnsi_wen_comp(weightDoubleBufferReaderParams_cnsi_wen_comp),
      .weightDoubleBufferReaderParams_cnsi_idat(reg_weightDoubleBufferReaderParams_cnsi_idat_cse)
    );
  WeightDoubleBuffer_4096_16_16_run_run_staller WeightDoubleBuffer_4096_16_16_run_run_staller_inst
      (
      .run_wen(run_wen),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .weightDoubleBufferWriterParams_cnsi_wen_comp(weightDoubleBufferWriterParams_cnsi_wen_comp),
      .weightDoubleBufferReaderParams_cnsi_wen_comp(weightDoubleBufferReaderParams_cnsi_wen_comp)
    );
  WeightDoubleBuffer_4096_16_16_run_run_run_fsm WeightDoubleBuffer_4096_16_16_run_run_run_fsm_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output)
    );
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_weightDoubleBufferReaderParams_cnsi_idat_cse <= 144'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( run_wen & (fsm_output[1]) ) begin
      reg_weightDoubleBufferReaderParams_cnsi_idat_cse <= paramsIn_rsci_idat_mxwt;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_weightDoubleBufferReaderParams_cnsi_ivld_run_psct_cse <= 1'b0;
      reg_paramsIn_rsci_irdy_run_psct_cse <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_weightDoubleBufferReaderParams_cnsi_ivld_run_psct_cse <= fsm_output[1];
      reg_paramsIn_rsci_irdy_run_psct_cse <= ~ (fsm_output[1]);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16_run
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16_run (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, din_rsc_dat,
      din_rsc_vld, din_rsc_rdy, dout_rsc_req_vz, dout_rsc_rls_lz, dout_rsci_wadr_d,
      dout_rsci_d_d, dout_rsci_we_d_pff
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input [7:0] din_rsc_dat;
  input din_rsc_vld;
  output din_rsc_rdy;
  input dout_rsc_req_vz;
  output dout_rsc_rls_lz;
  output [11:0] dout_rsci_wadr_d;
  output [127:0] dout_rsci_d_d;
  output dout_rsci_we_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire paramsIn_rsci_wen_comp;
  wire [79:0] paramsIn_rsci_idat_mxwt;
  wire din_rsci_wen_comp;
  wire [7:0] din_rsci_idat_mxwt;
  wire dout_rsc_req_obj_wen_comp;
  wire [11:0] fsm_output;
  wire [4:0] while_while_for_for_acc_1_tmp;
  wire [5:0] nl_while_while_for_for_acc_1_tmp;
  wire and_dcpl_3;
  wire or_dcpl_4;
  wire or_dcpl_5;
  wire or_dcpl_6;
  wire or_dcpl_8;
  wire or_dcpl_9;
  wire or_dcpl_10;
  wire or_dcpl_12;
  wire or_dcpl_17;
  wire or_dcpl_19;
  wire or_dcpl_21;
  wire or_dcpl_33;
  wire and_dcpl_11;
  wire or_dcpl_45;
  wire or_dcpl_46;
  wire or_dcpl_48;
  wire or_dcpl_49;
  wire or_dcpl_51;
  wire or_dcpl_52;
  wire or_dcpl_54;
  wire or_dcpl_55;
  reg exit_while_while_for_sva;
  wire exit_while_sva_mx0;
  reg while_while_for_slc_while_while_for_acc_8_1_itm;
  reg [3:0] while_while_for_for_j_4_0_sva_3_0;
  reg [31:0] reg_paramsIn_crt_sva_119_0_ftd_24;
  reg reg_dout_rsc_req_obj_iswt0_cse;
  reg reg_dout_rsc_rls_obj_ld_run_psct_cse;
  reg reg_din_rsci_irdy_run_psct_cse;
  reg reg_paramsIn_rsci_irdy_run_psct_cse;
  wire dout_rsci_we_d_iff;
  reg [15:0] while_page_idx_sva;
  reg [7:0] block_size_mul_psp_sva;
  reg [11:0] while_while_for_i_sva;
  reg [7:0] while_while_for_for_din_tmp_sva;
  reg [7:0] while_while_for_chained_data_value_14_sva;
  reg [7:0] while_while_for_chained_data_value_13_sva;
  reg [7:0] while_while_for_chained_data_value_12_sva;
  reg [7:0] while_while_for_chained_data_value_11_sva;
  reg [7:0] while_while_for_chained_data_value_10_sva;
  reg [7:0] while_while_for_chained_data_value_9_sva;
  reg [7:0] while_while_for_chained_data_value_8_sva;
  reg [7:0] while_while_for_chained_data_value_7_sva;
  reg [7:0] while_while_for_chained_data_value_6_sva;
  reg [7:0] while_while_for_chained_data_value_5_sva;
  reg [7:0] while_while_for_chained_data_value_4_sva;
  reg [7:0] while_while_for_chained_data_value_3_sva;
  reg [7:0] while_while_for_chained_data_value_2_sva;
  reg [7:0] while_while_for_chained_data_value_1_sva;
  reg [7:0] while_while_for_chained_data_value_0_sva;
  reg [23:0] while_while_aif_mul_itm;
  wire [24:0] nl_while_while_aif_mul_itm;
  reg [31:0] weight_write_bank_num_mul_1_itm;
  wire [31:0] weight_write_bank_num_sva_1;
  wire [47:0] nl_weight_write_bank_num_sva_1;
  wire [11:0] while_while_for_i_sva_2;
  wire [12:0] nl_while_while_for_i_sva_2;
  wire while_while_aelse_and_cse;
  wire operator_32_false_1_acc_1_itm_32_1;
  wire operator_45_true_acc_itm_24_1;

  wire[7:0] block_size_mul_nl;
  wire[15:0] nl_block_size_mul_nl;
  wire[31:0] weight_write_bank_num_mul_2_nl;
  wire[31:0] weight_write_bank_num_mul_1_nl;
  wire[47:0] nl_weight_write_bank_num_mul_1_nl;
  wire[31:0] while_while_acc_1_nl;
  wire[32:0] nl_while_while_acc_1_nl;
  wire[15:0] while_page_idx_mux_nl;
  wire[15:0] while_while_acc_nl;
  wire[16:0] nl_while_while_acc_nl;
  wire[0:0] while_page_idx_nor_nl;
  wire[16:0] operator_16_false_acc_nl;
  wire[17:0] nl_operator_16_false_acc_nl;
  wire[8:0] while_while_for_acc_4_nl;
  wire[9:0] nl_while_while_for_acc_4_nl;
  wire[8:0] while_while_for_acc_5_nl;
  wire[10:0] nl_while_while_for_acc_5_nl;
  wire[11:0] while_while_for_i_mux_nl;
  wire[0:0] or_91_nl;
  wire[0:0] not_60_nl;
  wire[0:0] or_51_nl;
  wire[0:0] or_54_nl;
  wire[0:0] or_57_nl;
  wire[0:0] or_60_nl;
  wire[0:0] or_61_nl;
  wire[0:0] or_62_nl;
  wire[0:0] or_63_nl;
  wire[0:0] or_64_nl;
  wire[0:0] or_65_nl;
  wire[0:0] or_66_nl;
  wire[0:0] or_67_nl;
  wire[0:0] or_68_nl;
  wire[0:0] or_69_nl;
  wire[0:0] or_70_nl;
  wire[0:0] or_71_nl;
  wire[32:0] operator_32_false_acc_1_nl;
  wire[33:0] nl_operator_32_false_acc_1_nl;
  wire[32:0] operator_32_false_1_acc_1_nl;
  wire[33:0] nl_operator_32_false_1_acc_1_nl;
  wire[24:0] operator_45_true_acc_nl;
  wire[25:0] nl_operator_45_true_acc_nl;
  wire[7:0] while_while_for_acc_3_nl;
  wire[8:0] nl_while_while_for_acc_3_nl;
  wire[7:0] while_while_for_mul_nl;
  wire[15:0] nl_while_while_for_mul_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst_dout_rsci_iswt0_pff;
  assign nl_WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst_dout_rsci_iswt0_pff
      = fsm_output[8];
  wire [0:0] nl_WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst_run_wten_pff;
  assign nl_WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst_run_wten_pff
      = ~ run_wen;
  wire [0:0] nl_WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst_while_while_C_1_tr1;
  assign nl_WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst_while_while_C_1_tr1
      = and_dcpl_3 & (~ while_while_for_slc_while_while_for_acc_8_1_itm);
  wire [0:0] nl_WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst_while_while_for_for_C_0_tr0;
  assign nl_WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst_while_while_for_for_C_0_tr0
      = while_while_for_for_acc_1_tmp[4];
  WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(reg_paramsIn_rsci_irdy_run_psct_cse),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .paramsIn_rsci_idat_mxwt(paramsIn_rsci_idat_mxwt)
    );
  WeightDoubleBufferWriter_4096_16_16_run_din_rsci WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .din_rsc_dat(din_rsc_dat),
      .din_rsc_vld(din_rsc_vld),
      .din_rsc_rdy(din_rsc_rdy),
      .run_wen(run_wen),
      .din_rsci_oswt(reg_din_rsci_irdy_run_psct_cse),
      .din_rsci_wen_comp(din_rsci_wen_comp),
      .din_rsci_idat_mxwt(din_rsci_idat_mxwt)
    );
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1 WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst
      (
      .dout_rsci_we_d_pff(dout_rsci_we_d_iff),
      .dout_rsci_iswt0_pff(nl_WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst_dout_rsci_iswt0_pff[0:0]),
      .run_wten_pff(nl_WeightDoubleBufferWriter_4096_16_16_run_dout_rsci_1_inst_run_wten_pff[0:0])
    );
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst
      (
      .dout_rsc_rls_lz(dout_rsc_rls_lz),
      .run_wten(run_wten),
      .dout_rsc_rls_obj_iswt0(reg_dout_rsc_rls_obj_ld_run_psct_cse)
    );
  WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .dout_rsc_req_vz(dout_rsc_req_vz),
      .run_wen(run_wen),
      .dout_rsc_req_obj_oswt(reg_dout_rsc_req_obj_iswt0_cse),
      .dout_rsc_req_obj_wen_comp(dout_rsc_req_obj_wen_comp)
    );
  WeightDoubleBufferWriter_4096_16_16_run_staller WeightDoubleBufferWriter_4096_16_16_run_staller_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .din_rsci_wen_comp(din_rsci_wen_comp),
      .dout_rsc_req_obj_wen_comp(dout_rsc_req_obj_wen_comp)
    );
  WeightDoubleBufferWriter_4096_16_16_run_run_fsm WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .main_C_2_tr0(exit_while_sva_mx0),
      .while_while_C_1_tr0(or_dcpl_33),
      .while_while_C_1_tr1(nl_WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst_while_while_C_1_tr1[0:0]),
      .while_while_for_for_C_0_tr0(nl_WeightDoubleBufferWriter_4096_16_16_run_run_fsm_inst_while_while_for_for_C_0_tr0[0:0]),
      .while_while_for_C_1_tr0(exit_while_while_for_sva),
      .while_C_1_tr0(exit_while_sva_mx0)
    );
  assign while_while_aelse_and_cse = run_wen & operator_32_false_1_acc_1_itm_32_1;
  assign nl_weight_write_bank_num_sva_1 = weight_write_bank_num_mul_1_itm * (reg_paramsIn_crt_sva_119_0_ftd_24[31:16]);
  assign weight_write_bank_num_sva_1 = nl_weight_write_bank_num_sva_1[31:0];
  assign nl_operator_32_false_acc_1_nl = ({1'b1 , (~ weight_write_bank_num_sva_1)})
      + 33'b000000000000000000000000000000001;
  assign operator_32_false_acc_1_nl = nl_operator_32_false_acc_1_nl[32:0];
  assign exit_while_sva_mx0 = MUX_s_1_2_2((~ (readslicef_33_1_32((operator_32_false_acc_1_nl)))),
      (~ operator_32_false_1_acc_1_itm_32_1), fsm_output[11]);
  assign nl_while_while_for_i_sva_2 = while_while_for_i_sva + 12'b000000000001;
  assign while_while_for_i_sva_2 = nl_while_while_for_i_sva_2[11:0];
  assign nl_while_while_for_for_acc_1_tmp = conv_u2s_4_5(while_while_for_for_j_4_0_sva_3_0)
      + 5'b00001;
  assign while_while_for_for_acc_1_tmp = nl_while_while_for_for_acc_1_tmp[4:0];
  assign nl_operator_32_false_1_acc_1_nl = ({1'b1 , (~ weight_write_bank_num_mul_1_itm)})
      + 33'b000000000000000000000000000000001;
  assign operator_32_false_1_acc_1_nl = nl_operator_32_false_1_acc_1_nl[32:0];
  assign operator_32_false_1_acc_1_itm_32_1 = readslicef_33_1_32((operator_32_false_1_acc_1_nl));
  assign and_dcpl_3 = exit_while_while_for_sva & (~ operator_45_true_acc_itm_24_1);
  assign or_dcpl_4 = (while_while_for_for_acc_1_tmp[1:0]!=2'b00);
  assign or_dcpl_5 = (while_while_for_for_acc_1_tmp[4:3]!=2'b00);
  assign or_dcpl_6 = or_dcpl_5 | (while_while_for_for_acc_1_tmp[2]);
  assign or_dcpl_8 = (while_while_for_for_acc_1_tmp[1:0]!=2'b10);
  assign or_dcpl_9 = (while_while_for_for_acc_1_tmp[4:3]!=2'b01);
  assign or_dcpl_10 = or_dcpl_9 | (~ (while_while_for_for_acc_1_tmp[2]));
  assign or_dcpl_12 = (while_while_for_for_acc_1_tmp[1:0]!=2'b01);
  assign or_dcpl_17 = ~((while_while_for_for_acc_1_tmp[1:0]==2'b11));
  assign or_dcpl_19 = or_dcpl_9 | (while_while_for_for_acc_1_tmp[2]);
  assign or_dcpl_21 = or_dcpl_5 | (~ (while_while_for_for_acc_1_tmp[2]));
  assign or_dcpl_33 = operator_45_true_acc_itm_24_1 | (~ exit_while_while_for_sva);
  assign and_dcpl_11 = ~((fsm_output[1:0]!=2'b00));
  assign or_dcpl_45 = (~ (while_while_for_for_j_4_0_sva_3_0[2])) | (while_while_for_for_j_4_0_sva_3_0[0]);
  assign or_dcpl_46 = ~((while_while_for_for_j_4_0_sva_3_0[1]) & (while_while_for_for_j_4_0_sva_3_0[3]));
  assign or_dcpl_48 = (while_while_for_for_j_4_0_sva_3_0[2]) | (~ (while_while_for_for_j_4_0_sva_3_0[0]));
  assign or_dcpl_49 = (while_while_for_for_j_4_0_sva_3_0[1]) | (while_while_for_for_j_4_0_sva_3_0[3]);
  assign or_dcpl_51 = ~((while_while_for_for_j_4_0_sva_3_0[2]) & (while_while_for_for_j_4_0_sva_3_0[0]));
  assign or_dcpl_52 = (while_while_for_for_j_4_0_sva_3_0[1]) | (~ (while_while_for_for_j_4_0_sva_3_0[3]));
  assign or_dcpl_54 = (while_while_for_for_j_4_0_sva_3_0[2]) | (while_while_for_for_j_4_0_sva_3_0[0]);
  assign or_dcpl_55 = (~ (while_while_for_for_j_4_0_sva_3_0[1])) | (while_while_for_for_j_4_0_sva_3_0[3]);
  assign nl_operator_45_true_acc_nl = ({1'b1 , (~ while_while_aif_mul_itm)}) + 25'b0000000000000000100000001;
  assign operator_45_true_acc_nl = nl_operator_45_true_acc_nl[24:0];
  assign operator_45_true_acc_itm_24_1 = readslicef_25_1_24((operator_45_true_acc_nl));
  assign nl_while_while_for_mul_nl = (while_page_idx_sva[7:0]) * block_size_mul_psp_sva;
  assign while_while_for_mul_nl = nl_while_while_for_mul_nl[7:0];
  assign nl_while_while_for_acc_3_nl = (while_while_for_mul_nl) + (while_while_for_i_sva[11:4]);
  assign while_while_for_acc_3_nl = nl_while_while_for_acc_3_nl[7:0];
  assign dout_rsci_wadr_d = {(while_while_for_acc_3_nl) , (while_while_for_i_sva[3:0])};
  assign dout_rsci_d_d = {while_while_for_for_din_tmp_sva , while_while_for_chained_data_value_14_sva
      , while_while_for_chained_data_value_13_sva , while_while_for_chained_data_value_12_sva
      , while_while_for_chained_data_value_11_sva , while_while_for_chained_data_value_10_sva
      , while_while_for_chained_data_value_9_sva , while_while_for_chained_data_value_8_sva
      , while_while_for_chained_data_value_7_sva , while_while_for_chained_data_value_6_sva
      , while_while_for_chained_data_value_5_sva , while_while_for_chained_data_value_4_sva
      , while_while_for_chained_data_value_3_sva , while_while_for_chained_data_value_2_sva
      , while_while_for_chained_data_value_1_sva , while_while_for_chained_data_value_0_sva};
  assign dout_rsci_we_d_pff = dout_rsci_we_d_iff;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_dout_rsc_req_obj_iswt0_cse <= 1'b0;
      reg_dout_rsc_rls_obj_ld_run_psct_cse <= 1'b0;
      reg_din_rsci_irdy_run_psct_cse <= 1'b0;
      reg_paramsIn_rsci_irdy_run_psct_cse <= 1'b0;
      block_size_mul_psp_sva <= 8'b00000000;
      while_page_idx_sva <= 16'b0000000000000000;
      exit_while_while_for_sva <= 1'b0;
      while_while_for_i_sva <= 12'b000000000000;
      while_while_for_for_j_4_0_sva_3_0 <= 4'b0000;
    end
    else if ( run_wen ) begin
      reg_dout_rsc_req_obj_iswt0_cse <= ~(exit_while_sva_mx0 | (~((fsm_output[3])
          | (fsm_output[11]))));
      reg_dout_rsc_rls_obj_ld_run_psct_cse <= or_dcpl_33 & (fsm_output[6]);
      reg_din_rsci_irdy_run_psct_cse <= ((~ (while_while_for_for_acc_1_tmp[4])) &
          (fsm_output[7])) | ((~ exit_while_while_for_sva) & (fsm_output[9])) | (and_dcpl_3
          & while_while_for_slc_while_while_for_acc_8_1_itm & (fsm_output[6]));
      reg_paramsIn_rsci_irdy_run_psct_cse <= ~((~((fsm_output[3]) | (fsm_output[0])
          | (fsm_output[11]))) | (~(exit_while_sva_mx0 | (fsm_output[0]))));
      block_size_mul_psp_sva <= MUX_v_8_2_2((block_size_mul_nl), block_size_mul_psp_sva,
          and_dcpl_11);
      while_page_idx_sva <= MUX_v_16_2_2(16'b0000000000000000, (while_page_idx_mux_nl),
          (while_page_idx_nor_nl));
      exit_while_while_for_sva <= MUX_s_1_2_2(operator_32_false_1_acc_1_itm_32_1,
          (~ (readslicef_9_1_8((while_while_for_acc_5_nl)))), fsm_output[8]);
      while_while_for_i_sva <= MUX_v_12_2_2(12'b000000000000, (while_while_for_i_mux_nl),
          (not_60_nl));
      while_while_for_for_j_4_0_sva_3_0 <= MUX_v_4_2_2(4'b0000, (while_while_for_for_acc_1_tmp[3:0]),
          (fsm_output[7]));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_write_bank_num_mul_1_itm <= 32'b00000000000000000000000000000000;
    end
    else if ( run_wen & ((fsm_output[3]) | (fsm_output[2]) | (fsm_output[10]) | (~
        and_dcpl_11)) ) begin
      weight_write_bank_num_mul_1_itm <= MUX1HOT_v_32_4_2((weight_write_bank_num_mul_2_nl),
          (weight_write_bank_num_mul_1_nl), weight_write_bank_num_sva_1, (while_while_acc_1_nl),
          {(fsm_output[1]) , (fsm_output[2]) , (fsm_output[3]) , (fsm_output[10])});
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_aif_mul_itm <= 24'b000000000000000000000000;
      while_while_for_slc_while_while_for_acc_8_1_itm <= 1'b0;
    end
    else if ( while_while_aelse_and_cse ) begin
      while_while_aif_mul_itm <= nl_while_while_aif_mul_itm[23:0];
      while_while_for_slc_while_while_for_acc_8_1_itm <= readslicef_9_1_8((while_while_for_acc_4_nl));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_14_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_10 | or_dcpl_8) ) begin
      while_while_for_chained_data_value_14_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_14_sva, or_51_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_1_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_6 | or_dcpl_12) ) begin
      while_while_for_chained_data_value_1_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_1_sva, or_54_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_13_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_10 | or_dcpl_12) ) begin
      while_while_for_chained_data_value_13_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_13_sva, or_57_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_2_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_6 | or_dcpl_8) ) begin
      while_while_for_chained_data_value_2_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_2_sva, or_60_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_12_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_10 | or_dcpl_4) ) begin
      while_while_for_chained_data_value_12_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_12_sva, or_61_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_3_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_6 | or_dcpl_17) ) begin
      while_while_for_chained_data_value_3_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_3_sva, or_62_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_11_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_19 | or_dcpl_17) ) begin
      while_while_for_chained_data_value_11_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_11_sva, or_63_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_4_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_21 | or_dcpl_4) ) begin
      while_while_for_chained_data_value_4_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_4_sva, or_64_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_10_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_19 | or_dcpl_8) ) begin
      while_while_for_chained_data_value_10_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_10_sva, or_65_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_5_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_21 | or_dcpl_12) ) begin
      while_while_for_chained_data_value_5_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_5_sva, or_66_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_9_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_19 | or_dcpl_12) ) begin
      while_while_for_chained_data_value_9_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_9_sva, or_67_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_6_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_21 | or_dcpl_8) ) begin
      while_while_for_chained_data_value_6_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_6_sva, or_68_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_8_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_19 | or_dcpl_4) ) begin
      while_while_for_chained_data_value_8_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_8_sva, or_69_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_7_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_21 | or_dcpl_17) ) begin
      while_while_for_chained_data_value_7_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_7_sva, or_70_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_chained_data_value_0_sva <= 8'b00000000;
    end
    else if ( run_wen & (or_dcpl_6 | or_dcpl_4) ) begin
      while_while_for_chained_data_value_0_sva <= MUX_v_8_2_2(din_rsci_idat_mxwt,
          while_while_for_chained_data_value_0_sva, or_71_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_din_tmp_sva <= 8'b00000000;
    end
    else if ( run_wen & (while_while_for_for_acc_1_tmp[4]) ) begin
      while_while_for_for_din_tmp_sva <= din_rsci_idat_mxwt;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_paramsIn_crt_sva_119_0_ftd_24 <= 32'b00000000000000000000000000000000;
    end
    else if ( run_wen & (fsm_output[1]) ) begin
      reg_paramsIn_crt_sva_119_0_ftd_24 <= paramsIn_rsci_idat_mxwt[63:32];
    end
  end
  assign nl_block_size_mul_nl = (paramsIn_rsci_idat_mxwt[79:72]) * (paramsIn_rsci_idat_mxwt[71:64]);
  assign block_size_mul_nl = nl_block_size_mul_nl[7:0];
  assign nl_while_while_acc_nl = while_page_idx_sva + 16'b0000000000000001;
  assign while_while_acc_nl = nl_while_while_acc_nl[15:0];
  assign while_page_idx_mux_nl = MUX_v_16_2_2(while_page_idx_sva, (while_while_acc_nl),
      fsm_output[10]);
  assign while_page_idx_nor_nl = ~((fsm_output[4]) | (fsm_output[3]) | (fsm_output[2])
      | (fsm_output[0]) | (fsm_output[1]) | (fsm_output[11]));
  assign nl_while_while_for_acc_5_nl = ({1'b1 , (while_while_for_i_sva_2[11:4])})
      + conv_u2u_8_9(~ block_size_mul_psp_sva) + 9'b000000001;
  assign while_while_for_acc_5_nl = nl_while_while_for_acc_5_nl[8:0];
  assign or_91_nl = (fsm_output[9]) | (fsm_output[7]);
  assign while_while_for_i_mux_nl = MUX_v_12_2_2(while_while_for_i_sva_2, while_while_for_i_sva,
      or_91_nl);
  assign not_60_nl = ~ (fsm_output[6]);
  assign weight_write_bank_num_mul_2_nl = conv_u2u_32_32((paramsIn_rsci_idat_mxwt[15:0])
      * (paramsIn_rsci_idat_mxwt[31:16]));
  assign nl_weight_write_bank_num_mul_1_nl = weight_write_bank_num_mul_1_itm * (reg_paramsIn_crt_sva_119_0_ftd_24[15:0]);
  assign weight_write_bank_num_mul_1_nl = nl_weight_write_bank_num_mul_1_nl[31:0];
  assign nl_while_while_acc_1_nl = weight_write_bank_num_mul_1_itm + 32'b11111111111111111111111111111111;
  assign while_while_acc_1_nl = nl_while_while_acc_1_nl[31:0];
  assign nl_operator_16_false_acc_nl = conv_u2u_16_17(while_page_idx_sva) + 17'b00000000000000001;
  assign operator_16_false_acc_nl = nl_operator_16_false_acc_nl[16:0];
  assign nl_while_while_aif_mul_itm  = (operator_16_false_acc_nl) * block_size_mul_psp_sva;
  assign nl_while_while_for_acc_4_nl = ({1'b1 , (~ block_size_mul_psp_sva)}) + 9'b000000001;
  assign while_while_for_acc_4_nl = nl_while_while_for_acc_4_nl[8:0];
  assign or_51_nl = or_dcpl_46 | or_dcpl_45;
  assign or_54_nl = or_dcpl_49 | or_dcpl_48;
  assign or_57_nl = or_dcpl_52 | or_dcpl_51;
  assign or_60_nl = or_dcpl_55 | or_dcpl_54;
  assign or_61_nl = or_dcpl_52 | or_dcpl_45;
  assign or_62_nl = or_dcpl_55 | or_dcpl_48;
  assign or_63_nl = or_dcpl_46 | or_dcpl_48;
  assign or_64_nl = or_dcpl_49 | or_dcpl_45;
  assign or_65_nl = or_dcpl_46 | or_dcpl_54;
  assign or_66_nl = or_dcpl_49 | or_dcpl_51;
  assign or_67_nl = or_dcpl_52 | or_dcpl_48;
  assign or_68_nl = or_dcpl_55 | or_dcpl_45;
  assign or_69_nl = or_dcpl_52 | or_dcpl_54;
  assign or_70_nl = or_dcpl_55 | or_dcpl_51;
  assign or_71_nl = or_dcpl_49 | or_dcpl_54;

  function automatic [31:0] MUX1HOT_v_32_4_2;
    input [31:0] input_3;
    input [31:0] input_2;
    input [31:0] input_1;
    input [31:0] input_0;
    input [3:0] sel;
    reg [31:0] result;
  begin
    result = input_0 & {32{sel[0]}};
    result = result | ( input_1 & {32{sel[1]}});
    result = result | ( input_2 & {32{sel[2]}});
    result = result | ( input_3 & {32{sel[3]}});
    MUX1HOT_v_32_4_2 = result;
  end
  endfunction


  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [11:0] MUX_v_12_2_2;
    input [11:0] input_0;
    input [11:0] input_1;
    input [0:0] sel;
    reg [11:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_12_2_2 = result;
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


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
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


  function automatic [0:0] readslicef_25_1_24;
    input [24:0] vector;
    reg [24:0] tmp;
  begin
    tmp = vector >> 24;
    readslicef_25_1_24 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_33_1_32;
    input [32:0] vector;
    reg [32:0] tmp;
  begin
    tmp = vector >> 32;
    readslicef_33_1_32 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function automatic [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 =  {1'b0, vector};
  end
  endfunction


  function automatic [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function automatic [16:0] conv_u2u_16_17 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_17 = {1'b0, vector};
  end
  endfunction


  function automatic [31:0] conv_u2u_32_32 ;
    input [31:0]  vector ;
  begin
    conv_u2u_32_32 = vector;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16_run
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16_run (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, din_rsc_req_vz,
      din_rsc_rls_lz, dout_rsc_dat, dout_rsc_vld, dout_rsc_rdy, din_rsci_radr_d,
      din_rsci_q_d, din_rsci_re_d_pff
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input din_rsc_req_vz;
  output din_rsc_rls_lz;
  output [127:0] dout_rsc_dat;
  output dout_rsc_vld;
  input dout_rsc_rdy;
  output [11:0] din_rsci_radr_d;
  input [127:0] din_rsci_q_d;
  output din_rsci_re_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire paramsIn_rsci_wen_comp;
  wire [95:0] paramsIn_rsci_idat_mxwt;
  wire [127:0] din_rsci_q_d_mxwt;
  wire dout_rsci_wen_comp;
  reg [127:0] dout_rsci_idat;
  wire din_rsc_req_obj_wen_comp;
  wire [11:0] fsm_output;
  wire [4:0] while_while_for_for_for_acc_2_tmp;
  wire [5:0] nl_while_while_for_for_for_acc_2_tmp;
  wire or_tmp_3;
  wire mux_tmp_1;
  wire mux_tmp_2;
  wire or_dcpl_9;
  reg lfst_exitL_exit_while_while_for_for_for_lpi_2;
  wire exitL_exitL_exit_while_while_for_for_for_lpi_4_dfm_6;
  reg exitL_exitL_exit_while_while_for_for_for_lpi_2;
  reg exitL_exit_while_while_for_for_sva;
  reg lfst_exit_while_while_for_for_lpi_2;
  reg exit_while_while_for_lpi_4_dfm_st_1;
  reg while_while_for_stage_0_2;
  reg while_while_for_stage_0_3;
  reg while_while_for_for_asn_sft_lpi_4;
  reg while_while_for_for_asn_sft_lpi_4_dfm_st_2;
  reg exit_while_while_for_lpi_4_dfm_st_2;
  reg while_while_for_for_asn_sft_lpi_4_dfm_st_1;
  wire lfst_exit_while_while_for_for_lpi_4_dfm_1_mx0w0;
  wire and_48_m1c;
  reg [63:0] reg_paramsIn_crt_sva_127_0_ftd;
  reg reg_din_rsc_req_obj_iswt0_cse;
  reg reg_din_rsc_rls_obj_ld_run_psct_cse;
  reg reg_dout_rsci_ivld_run_psct_cse;
  reg reg_din_rsci_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse;
  reg reg_paramsIn_rsci_irdy_run_psct_cse;
  wire while_while_for_for_for_and_cse;
  reg reg_while_while_for_stage_0_cse;
  wire while_while_for_for_while_while_for_for_and_cse;
  wire nor_6_cse;
  wire while_while_aelse_while_while_aelse_and_cse;
  wire and_8_cse;
  wire din_rsci_re_d_iff;
  wire and_62_rmff;
  reg [7:0] while_while_for_for_for_idx_mul_itm_1;
  wire [15:0] nl_while_while_for_for_for_idx_mul_itm_1;
  reg [7:0] while_while_for_for_for_slc_while_while_for_for_fx_7_0_itm_1;
  reg [7:0] while_while_for_for_for_mul_1_itm_1;
  wire [15:0] nl_while_while_for_for_for_mul_1_itm_1;
  reg [3:0] while_while_for_for_for_ic0_slc_while_while_for_for_for_ic0_4_0_3_0_itm_1;
  reg [7:0] block_size_mul_psp_sva;
  wire [15:0] nl_block_size_mul_psp_sva;
  reg [31:0] weight_read_bank_num_lpi_3;
  reg [15:0] while_page_idx_sva;
  reg [15:0] while_while_for_for_fx_lpi_4;
  reg [15:0] while_while_for_fy_sva;
  reg [23:0] while_while_aif_mul_itm;
  reg [3:0] while_while_for_for_for_ic0_4_0_lpi_4_3_0;
  wire lfst_exit_while_while_for_for_lpi_2_mx0c1;
  wire exit_while_while_for_for_lpi_4_dfm_mx1w0;
  wire while_while_for_for_asn_sft_lpi_4_dfm_st_1_mx0;
  wire [3:0] while_while_for_for_for_ic0_4_0_lpi_4_dfm_3_0_1;
  wire lfst_exitL_exit_while_while_for_for_for_lpi_4_dfm_3;
  wire [15:0] while_while_for_for_fx_lpi_4_dfm_1_mx0;
  wire while_while_for_for_for_idx_and_cse;
  wire block_size_and_cse;
  wire or_73_cse;
  wire while_while_for_for_acc_2_itm_16;
  wire while_while_for_acc_3_itm_16_1;
  wire operator_32_false_1_acc_1_itm_32_1;

  wire[31:0] weight_read_bank_num_mul_2_nl;
  wire[31:0] weight_read_bank_num_mul_1_nl;
  wire[47:0] nl_weight_read_bank_num_mul_1_nl;
  wire[31:0] weight_read_bank_num_mul_nl;
  wire[47:0] nl_weight_read_bank_num_mul_nl;
  wire[31:0] while_while_acc_1_nl;
  wire[32:0] nl_while_while_acc_1_nl;
  wire[15:0] while_while_acc_nl;
  wire[16:0] nl_while_while_acc_nl;
  wire[0:0] while_page_idx_or_nl;
  wire[16:0] operator_16_false_acc_nl;
  wire[17:0] nl_operator_16_false_acc_nl;
  wire[23:0] while_while_aif_mul_nl;
  wire[24:0] nl_while_while_aif_mul_nl;
  wire[15:0] while_while_for_acc_2_nl;
  wire[16:0] nl_while_while_for_acc_2_nl;
  wire[0:0] while_while_for_mux_4_nl;
  wire[15:0] while_while_for_for_acc_1_nl;
  wire[16:0] nl_while_while_for_for_acc_1_nl;
  wire[0:0] while_while_for_for_and_1_nl;
  wire[0:0] or_34_nl;
  wire[16:0] while_while_for_for_acc_2_nl;
  wire[18:0] nl_while_while_for_for_acc_2_nl;
  wire[0:0] while_while_for_for_mux_6_nl;
  wire[16:0] while_while_for_acc_3_nl;
  wire[18:0] nl_while_while_for_acc_3_nl;
  wire[32:0] operator_32_false_1_acc_1_nl;
  wire[33:0] nl_operator_32_false_1_acc_1_nl;
  wire[0:0] and_5_nl;
  wire[0:0] mux_6_nl;
  wire[0:0] nor_nl;
  wire[0:0] and_114_nl;
  wire[24:0] operator_45_true_acc_nl;
  wire[25:0] nl_operator_45_true_acc_nl;
  wire[7:0] while_while_for_for_for_idx_acc_nl;
  wire[9:0] nl_while_while_for_for_for_idx_acc_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_main_C_3_tr0;
  assign nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_main_C_3_tr0 = ~
      operator_32_false_1_acc_1_itm_32_1;
  wire [0:0] nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_while_while_for_C_0_tr0;
  assign nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_while_while_for_C_0_tr0
      = ~(while_while_for_stage_0_2 | while_while_for_stage_0_3 | reg_while_while_for_stage_0_cse);
  wire [0:0] nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_while_C_1_tr0;
  assign nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_while_C_1_tr0 =
      ~ operator_32_false_1_acc_1_itm_32_1;
  WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .run_wen(run_wen),
      .paramsIn_rsci_oswt(reg_paramsIn_rsci_irdy_run_psct_cse),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .paramsIn_rsci_idat_mxwt(paramsIn_rsci_idat_mxwt)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsci_1 WeightDoubleBufferReader_4096_16_16_run_din_rsci_1_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .din_rsci_q_d(din_rsci_q_d),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .din_rsci_oswt(reg_din_rsci_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse),
      .din_rsci_q_d_mxwt(din_rsci_q_d_mxwt),
      .din_rsci_re_d_pff(din_rsci_re_d_iff),
      .din_rsci_oswt_pff(and_62_rmff)
    );
  WeightDoubleBufferReader_4096_16_16_run_dout_rsci WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .dout_rsc_dat(dout_rsc_dat),
      .dout_rsc_vld(dout_rsc_vld),
      .dout_rsc_rdy(dout_rsc_rdy),
      .run_wen(run_wen),
      .dout_rsci_oswt(reg_dout_rsci_ivld_run_psct_cse),
      .dout_rsci_wen_comp(dout_rsci_wen_comp),
      .dout_rsci_idat(dout_rsci_idat)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst
      (
      .din_rsc_rls_lz(din_rsc_rls_lz),
      .run_wten(run_wten),
      .din_rsc_rls_obj_iswt0(reg_din_rsc_rls_obj_ld_run_psct_cse)
    );
  WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .din_rsc_req_vz(din_rsc_req_vz),
      .run_wen(run_wen),
      .din_rsc_req_obj_oswt(reg_din_rsc_req_obj_iswt0_cse),
      .din_rsc_req_obj_wen_comp(din_rsc_req_obj_wen_comp)
    );
  WeightDoubleBufferReader_4096_16_16_run_staller WeightDoubleBufferReader_4096_16_16_run_staller_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .paramsIn_rsci_wen_comp(paramsIn_rsci_wen_comp),
      .dout_rsci_wen_comp(dout_rsci_wen_comp),
      .din_rsc_req_obj_wen_comp(din_rsc_req_obj_wen_comp)
    );
  WeightDoubleBufferReader_4096_16_16_run_run_fsm WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .main_C_3_tr0(nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_main_C_3_tr0[0:0]),
      .while_while_C_2_tr0(or_dcpl_9),
      .while_while_for_C_0_tr0(nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_while_while_for_C_0_tr0[0:0]),
      .while_C_1_tr0(nl_WeightDoubleBufferReader_4096_16_16_run_run_fsm_inst_while_C_1_tr0[0:0])
    );
  assign and_62_rmff = while_while_for_stage_0_2 & (~ while_while_for_for_asn_sft_lpi_4_dfm_st_1)
      & (~ exit_while_while_for_lpi_4_dfm_st_1) & (fsm_output[9]);
  assign while_while_for_for_for_and_cse = run_wen & (~((~ (fsm_output[9])) | while_while_for_for_while_while_for_for_and_cse
      | (~ reg_while_while_for_stage_0_cse)));
  assign block_size_and_cse = run_wen & (~ nor_6_cse);
  assign while_while_for_for_while_while_for_for_and_cse = (~ while_while_for_acc_3_itm_16_1)
      & exitL_exit_while_while_for_for_sva;
  assign while_while_aelse_while_while_aelse_and_cse = reg_while_while_for_stage_0_cse
      & or_tmp_3;
  assign or_73_cse = (~ lfst_exit_while_while_for_for_lpi_2) | exitL_exitL_exit_while_while_for_for_for_lpi_2
      | exitL_exit_while_while_for_for_sva;
  assign and_8_cse = (~((while_while_for_for_for_acc_2_tmp[4]) | (~ mux_tmp_2)))
      & reg_while_while_for_stage_0_cse;
  assign and_48_m1c = (~((~((~(exitL_exit_while_while_for_for_sva | exitL_exitL_exit_while_while_for_for_for_lpi_2))
      & lfst_exit_while_while_for_for_lpi_2 & lfst_exitL_exit_while_while_for_for_for_lpi_2
      & while_while_for_for_asn_sft_lpi_4)) & (while_while_for_for_for_acc_2_tmp[4])))
      & reg_while_while_for_stage_0_cse;
  assign while_while_for_for_for_idx_and_cse = run_wen & mux_tmp_2 & reg_while_while_for_stage_0_cse;
  assign exit_while_while_for_for_lpi_4_dfm_mx1w0 = (~ while_while_for_for_acc_2_itm_16)
      & exitL_exitL_exit_while_while_for_for_for_lpi_4_dfm_6;
  assign or_34_nl = exitL_exit_while_while_for_for_sva | exitL_exitL_exit_while_while_for_for_for_lpi_2
      | (~ lfst_exit_while_while_for_for_lpi_2) | (~ lfst_exitL_exit_while_while_for_for_for_lpi_2);
  assign while_while_for_for_asn_sft_lpi_4_dfm_st_1_mx0 = MUX_s_1_2_2(while_while_for_for_asn_sft_lpi_4,
      exit_while_while_for_for_lpi_4_dfm_mx1w0, or_34_nl);
  assign while_while_for_for_for_ic0_4_0_lpi_4_dfm_3_0_1 = MUX_v_4_2_2(4'b0000, while_while_for_for_for_ic0_4_0_lpi_4_3_0,
      lfst_exitL_exit_while_while_for_for_for_lpi_4_dfm_3);
  assign nl_while_while_for_for_for_acc_2_tmp = conv_u2u_4_5(while_while_for_for_for_ic0_4_0_lpi_4_dfm_3_0_1)
      + 5'b00001;
  assign while_while_for_for_for_acc_2_tmp = nl_while_while_for_for_for_acc_2_tmp[4:0];
  assign lfst_exitL_exit_while_while_for_for_for_lpi_4_dfm_3 = lfst_exitL_exit_while_while_for_for_for_lpi_2
      & (~ exitL_exitL_exit_while_while_for_for_for_lpi_4_dfm_6);
  assign nl_while_while_for_for_acc_2_nl = ({1'b1 , while_while_for_for_fx_lpi_4_dfm_1_mx0})
      + conv_u2u_16_17(~ (reg_paramsIn_crt_sva_127_0_ftd[47:32])) + 17'b00000000000000001;
  assign while_while_for_for_acc_2_nl = nl_while_while_for_for_acc_2_nl[16:0];
  assign while_while_for_for_acc_2_itm_16 = readslicef_17_1_16((while_while_for_for_acc_2_nl));
  assign while_while_for_for_fx_lpi_4_dfm_1_mx0 = MUX_v_16_2_2(while_while_for_for_fx_lpi_4,
      (signext_16_1(~ while_while_for_acc_3_itm_16_1)), exitL_exit_while_while_for_for_sva);
  assign while_while_for_for_mux_6_nl = MUX_s_1_2_2(lfst_exit_while_while_for_for_lpi_2,
      lfst_exit_while_while_for_for_lpi_4_dfm_1_mx0w0, exitL_exit_while_while_for_for_sva);
  assign exitL_exitL_exit_while_while_for_for_for_lpi_4_dfm_6 = exitL_exitL_exit_while_while_for_for_for_lpi_2
      | (~ (while_while_for_for_mux_6_nl));
  assign lfst_exit_while_while_for_for_lpi_4_dfm_1_mx0w0 = lfst_exit_while_while_for_for_lpi_2
      & (~ while_while_for_acc_3_itm_16_1);
  assign nl_while_while_for_acc_3_nl = ({1'b1 , while_while_for_fy_sva}) + conv_u2u_16_17(~
      (reg_paramsIn_crt_sva_127_0_ftd[63:48])) + 17'b00000000000000001;
  assign while_while_for_acc_3_nl = nl_while_while_for_acc_3_nl[16:0];
  assign while_while_for_acc_3_itm_16_1 = readslicef_17_1_16((while_while_for_acc_3_nl));
  assign nl_operator_32_false_1_acc_1_nl = ({1'b1 , (~ weight_read_bank_num_lpi_3)})
      + 33'b000000000000000000000000000000001;
  assign operator_32_false_1_acc_1_nl = nl_operator_32_false_1_acc_1_nl[32:0];
  assign operator_32_false_1_acc_1_itm_32_1 = readslicef_33_1_32((operator_32_false_1_acc_1_nl));
  assign or_tmp_3 = while_while_for_acc_3_itm_16_1 | (~ exitL_exit_while_while_for_for_sva);
  assign mux_tmp_1 = MUX_s_1_2_2((~ or_73_cse), or_tmp_3, while_while_for_for_acc_2_itm_16);
  assign nor_nl = ~((~((~ lfst_exit_while_while_for_for_lpi_2) | exitL_exitL_exit_while_while_for_for_for_lpi_2))
      | exitL_exit_while_while_for_for_sva);
  assign mux_6_nl = MUX_s_1_2_2((nor_nl), or_73_cse, while_while_for_acc_3_itm_16_1);
  assign and_5_nl = while_while_for_for_acc_2_itm_16 & (mux_6_nl);
  assign and_114_nl = while_while_for_for_asn_sft_lpi_4 & lfst_exitL_exit_while_while_for_for_for_lpi_2;
  assign mux_tmp_2 = MUX_s_1_2_2(mux_tmp_1, (and_5_nl), and_114_nl);
  assign nor_6_cse = ~((fsm_output[1:0]!=2'b00));
  assign nl_operator_45_true_acc_nl = ({1'b1 , (~ while_while_aif_mul_itm)}) + 25'b0000000000000000100000001;
  assign operator_45_true_acc_nl = nl_operator_45_true_acc_nl[24:0];
  assign or_dcpl_9 = ~(exit_while_while_for_lpi_4_dfm_st_1 & (~ (readslicef_25_1_24((operator_45_true_acc_nl)))));
  assign lfst_exit_while_while_for_for_lpi_2_mx0c1 = while_while_for_for_while_while_for_for_and_cse
      & reg_while_while_for_stage_0_cse & (fsm_output[9]);
  assign nl_while_while_for_for_for_idx_acc_nl = while_while_for_for_for_mul_1_itm_1
      + while_while_for_for_for_idx_mul_itm_1 + while_while_for_for_for_slc_while_while_for_for_fx_7_0_itm_1;
  assign while_while_for_for_for_idx_acc_nl = nl_while_while_for_for_for_idx_acc_nl[7:0];
  assign din_rsci_radr_d = {(while_while_for_for_for_idx_acc_nl) , while_while_for_for_for_ic0_slc_while_while_for_for_for_ic0_4_0_3_0_itm_1};
  assign din_rsci_re_d_pff = din_rsci_re_d_iff;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_din_rsc_req_obj_iswt0_cse <= 1'b0;
      reg_din_rsc_rls_obj_ld_run_psct_cse <= 1'b0;
      reg_dout_rsci_ivld_run_psct_cse <= 1'b0;
      reg_din_rsci_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse <= 1'b0;
      reg_paramsIn_rsci_irdy_run_psct_cse <= 1'b0;
      while_while_aif_mul_itm <= 24'b000000000000000000000000;
      reg_while_while_for_stage_0_cse <= 1'b0;
      exitL_exit_while_while_for_for_sva <= 1'b0;
      while_while_for_stage_0_2 <= 1'b0;
      while_while_for_stage_0_3 <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_din_rsc_req_obj_iswt0_cse <= operator_32_false_1_acc_1_itm_32_1 & ((fsm_output[11])
          | (fsm_output[4]));
      reg_din_rsc_rls_obj_ld_run_psct_cse <= or_dcpl_9 & (fsm_output[8]);
      reg_dout_rsci_ivld_run_psct_cse <= while_while_for_stage_0_3 & (~ while_while_for_for_asn_sft_lpi_4_dfm_st_2)
          & (~ exit_while_while_for_lpi_4_dfm_st_2) & (fsm_output[9]);
      reg_din_rsci_port_0_r_ram_ir_internal_RMASK_B_d_run_psct_cse <= and_62_rmff;
      reg_paramsIn_rsci_irdy_run_psct_cse <= ~((~((fsm_output[11]) | (fsm_output[4])
          | (fsm_output[0]))) | (~((~ operator_32_false_1_acc_1_itm_32_1) | (fsm_output[0]))));
      while_while_aif_mul_itm <= MUX_v_24_2_2(({7'b0000000 , (operator_16_false_acc_nl)}),
          (while_while_aif_mul_nl), fsm_output[7]);
      reg_while_while_for_stage_0_cse <= while_while_aelse_while_while_aelse_and_cse
          | (~ (fsm_output[9]));
      exitL_exit_while_while_for_for_sva <= (while_while_for_mux_4_nl) | (~ (fsm_output[9]));
      while_while_for_stage_0_2 <= reg_while_while_for_stage_0_cse & (fsm_output[9]);
      while_while_for_stage_0_3 <= while_while_for_stage_0_2 & (fsm_output[9]);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dout_rsci_idat <= 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( run_wen & (~((~ (fsm_output[9])) | (~ while_while_for_stage_0_3) |
        while_while_for_for_asn_sft_lpi_4_dfm_st_2 | exit_while_while_for_lpi_4_dfm_st_2))
        ) begin
      dout_rsci_idat <= din_rsci_q_d_mxwt;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      lfst_exit_while_while_for_for_lpi_2 <= 1'b0;
    end
    else if ( run_wen & ((or_tmp_3 & reg_while_while_for_stage_0_cse & (fsm_output[9]))
        | lfst_exit_while_while_for_for_lpi_2_mx0c1) ) begin
      lfst_exit_while_while_for_for_lpi_2 <= MUX_s_1_2_2((~ exit_while_while_for_for_lpi_4_dfm_mx1w0),
          lfst_exit_while_while_for_for_lpi_4_dfm_1_mx0w0, lfst_exit_while_while_for_for_lpi_2_mx0c1);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      exitL_exitL_exit_while_while_for_for_for_lpi_2 <= 1'b0;
      lfst_exitL_exit_while_while_for_for_for_lpi_2 <= 1'b0;
    end
    else if ( while_while_for_for_for_and_cse ) begin
      exitL_exitL_exit_while_while_for_for_for_lpi_2 <= (while_while_for_for_for_acc_2_tmp[4])
          | while_while_for_for_asn_sft_lpi_4_dfm_st_1_mx0;
      lfst_exitL_exit_while_while_for_for_for_lpi_2 <= ~((while_while_for_for_for_acc_2_tmp[4])
          | while_while_for_for_asn_sft_lpi_4_dfm_st_1_mx0);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      block_size_mul_psp_sva <= 8'b00000000;
      reg_paramsIn_crt_sva_127_0_ftd <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( block_size_and_cse ) begin
      block_size_mul_psp_sva <= nl_block_size_mul_psp_sva[7:0];
      reg_paramsIn_crt_sva_127_0_ftd <= paramsIn_rsci_idat_mxwt[95:32];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      weight_read_bank_num_lpi_3 <= 32'b00000000000000000000000000000000;
    end
    else if ( run_wen & ((~ nor_6_cse) | (fsm_output[2]) | (fsm_output[3]) | (fsm_output[10]))
        ) begin
      weight_read_bank_num_lpi_3 <= MUX1HOT_v_32_4_2((weight_read_bank_num_mul_2_nl),
          (weight_read_bank_num_mul_1_nl), (weight_read_bank_num_mul_nl), (while_while_acc_1_nl),
          {(fsm_output[1]) , (fsm_output[2]) , (fsm_output[3]) , (fsm_output[10])});
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_page_idx_sva <= 16'b0000000000000000;
    end
    else if ( (fsm_output[9:6]==4'b0000) & run_wen ) begin
      while_page_idx_sva <= MUX_v_16_2_2(16'b0000000000000000, (while_while_acc_nl),
          (while_page_idx_or_nl));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      exit_while_while_for_lpi_4_dfm_st_1 <= 1'b0;
    end
    else if ( run_wen & ((fsm_output[9]) | (fsm_output[6])) ) begin
      exit_while_while_for_lpi_4_dfm_st_1 <= MUX_s_1_2_2(operator_32_false_1_acc_1_itm_32_1,
          while_while_for_for_while_while_for_for_and_cse, fsm_output[9]);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_fy_sva <= 16'b0000000000000000;
    end
    else if ( (~((~(or_73_cse & reg_while_while_for_stage_0_cse & (~ while_while_for_for_acc_2_itm_16)))
        & (fsm_output[9]))) & run_wen ) begin
      while_while_for_fy_sva <= MUX_v_16_2_2(16'b0000000000000000, (while_while_for_acc_2_nl),
          (fsm_output[9]));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_asn_sft_lpi_4_dfm_st_2 <= 1'b0;
    end
    else if ( run_wen & while_while_for_stage_0_2 & (~ exit_while_while_for_lpi_4_dfm_st_1)
        ) begin
      while_while_for_for_asn_sft_lpi_4_dfm_st_2 <= while_while_for_for_asn_sft_lpi_4_dfm_st_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      exit_while_while_for_lpi_4_dfm_st_2 <= 1'b0;
    end
    else if ( run_wen & while_while_for_stage_0_2 ) begin
      exit_while_while_for_lpi_4_dfm_st_2 <= exit_while_while_for_lpi_4_dfm_st_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_asn_sft_lpi_4_dfm_st_1 <= 1'b0;
    end
    else if ( run_wen & while_while_aelse_while_while_aelse_and_cse ) begin
      while_while_for_for_asn_sft_lpi_4_dfm_st_1 <= while_while_for_for_asn_sft_lpi_4_dfm_st_1_mx0;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_for_ic0_4_0_lpi_4_3_0 <= 4'b0000;
    end
    else if ( run_wen & and_8_cse ) begin
      while_while_for_for_for_ic0_4_0_lpi_4_3_0 <= while_while_for_for_for_acc_2_tmp[3:0];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_asn_sft_lpi_4 <= 1'b0;
    end
    else if ( run_wen & and_8_cse & (~ lfst_exitL_exit_while_while_for_for_for_lpi_4_dfm_3)
        ) begin
      while_while_for_for_asn_sft_lpi_4 <= exit_while_while_for_for_lpi_4_dfm_mx1w0;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_fx_lpi_4 <= 16'b0000000000000000;
    end
    else if ( run_wen & mux_tmp_1 & reg_while_while_for_stage_0_cse & (~((~ exitL_exit_while_while_for_for_sva)
        & and_48_m1c)) ) begin
      while_while_for_for_fx_lpi_4 <= MUX_v_16_2_2((while_while_for_for_acc_1_nl),
          (signext_16_1(~ while_while_for_acc_3_itm_16_1)), while_while_for_for_and_1_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      while_while_for_for_for_idx_mul_itm_1 <= 8'b00000000;
      while_while_for_for_for_slc_while_while_for_for_fx_7_0_itm_1 <= 8'b00000000;
      while_while_for_for_for_mul_1_itm_1 <= 8'b00000000;
      while_while_for_for_for_ic0_slc_while_while_for_for_for_ic0_4_0_3_0_itm_1 <=
          4'b0000;
    end
    else if ( while_while_for_for_for_idx_and_cse ) begin
      while_while_for_for_for_idx_mul_itm_1 <= nl_while_while_for_for_for_idx_mul_itm_1[7:0];
      while_while_for_for_for_slc_while_while_for_for_fx_7_0_itm_1 <= while_while_for_for_fx_lpi_4_dfm_1_mx0[7:0];
      while_while_for_for_for_mul_1_itm_1 <= nl_while_while_for_for_for_mul_1_itm_1[7:0];
      while_while_for_for_for_ic0_slc_while_while_for_for_for_ic0_4_0_3_0_itm_1 <=
          while_while_for_for_for_ic0_4_0_lpi_4_dfm_3_0_1;
    end
  end
  assign nl_operator_16_false_acc_nl = conv_u2u_16_17(while_page_idx_sva) + 17'b00000000000000001;
  assign operator_16_false_acc_nl = nl_operator_16_false_acc_nl[16:0];
  assign nl_while_while_aif_mul_nl = (while_while_aif_mul_itm[16:0]) * block_size_mul_psp_sva;
  assign while_while_aif_mul_nl = nl_while_while_aif_mul_nl[23:0];
  assign while_while_for_mux_4_nl = MUX_s_1_2_2(exitL_exit_while_while_for_for_sva,
      exit_while_while_for_for_lpi_4_dfm_mx1w0, reg_while_while_for_stage_0_cse);
  assign nl_block_size_mul_psp_sva  = (paramsIn_rsci_idat_mxwt[87:80]) * (paramsIn_rsci_idat_mxwt[71:64]);
  assign weight_read_bank_num_mul_2_nl = conv_u2u_32_32((paramsIn_rsci_idat_mxwt[15:0])
      * (paramsIn_rsci_idat_mxwt[31:16]));
  assign nl_weight_read_bank_num_mul_1_nl = weight_read_bank_num_lpi_3 * (reg_paramsIn_crt_sva_127_0_ftd[15:0]);
  assign weight_read_bank_num_mul_1_nl = nl_weight_read_bank_num_mul_1_nl[31:0];
  assign nl_weight_read_bank_num_mul_nl = weight_read_bank_num_lpi_3 * (reg_paramsIn_crt_sva_127_0_ftd[31:16]);
  assign weight_read_bank_num_mul_nl = nl_weight_read_bank_num_mul_nl[31:0];
  assign nl_while_while_acc_1_nl = weight_read_bank_num_lpi_3 + 32'b11111111111111111111111111111111;
  assign while_while_acc_1_nl = nl_while_while_acc_1_nl[31:0];
  assign nl_while_while_acc_nl = while_page_idx_sva + 16'b0000000000000001;
  assign while_while_acc_nl = nl_while_while_acc_nl[15:0];
  assign while_page_idx_or_nl = (fsm_output[10:6]!=5'b00000);
  assign nl_while_while_for_acc_2_nl = while_while_for_fy_sva + 16'b0000000000000001;
  assign while_while_for_acc_2_nl = nl_while_while_for_acc_2_nl[15:0];
  assign nl_while_while_for_for_acc_1_nl = while_while_for_for_fx_lpi_4_dfm_1_mx0
      + 16'b0000000000000001;
  assign while_while_for_for_acc_1_nl = nl_while_while_for_for_acc_1_nl[15:0];
  assign while_while_for_for_and_1_nl = exitL_exit_while_while_for_for_sva & and_48_m1c;
  assign nl_while_while_for_for_for_idx_mul_itm_1  = (while_while_for_fy_sva[7:0])
      * (reg_paramsIn_crt_sva_127_0_ftd[39:32]);
  assign nl_while_while_for_for_for_mul_1_itm_1  = (while_page_idx_sva[7:0]) * block_size_mul_psp_sva;

  function automatic [31:0] MUX1HOT_v_32_4_2;
    input [31:0] input_3;
    input [31:0] input_2;
    input [31:0] input_1;
    input [31:0] input_0;
    input [3:0] sel;
    reg [31:0] result;
  begin
    result = input_0 & {32{sel[0]}};
    result = result | ( input_1 & {32{sel[1]}});
    result = result | ( input_2 & {32{sel[2]}});
    result = result | ( input_3 & {32{sel[3]}});
    MUX1HOT_v_32_4_2 = result;
  end
  endfunction


  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
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


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input [0:0] sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
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


  function automatic [0:0] readslicef_25_1_24;
    input [24:0] vector;
    reg [24:0] tmp;
  begin
    tmp = vector >> 24;
    readslicef_25_1_24 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_33_1_32;
    input [32:0] vector;
    reg [32:0] tmp;
  begin
    tmp = vector >> 32;
    readslicef_33_1_32 = tmp[0:0];
  end
  endfunction


  function automatic [15:0] signext_16_1;
    input [0:0] vector;
  begin
    signext_16_1= {{15{vector[0]}}, vector};
  end
  endfunction


  function automatic [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function automatic [16:0] conv_u2u_16_17 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_17 = {1'b0, vector};
  end
  endfunction


  function automatic [31:0] conv_u2u_32_32 ;
    input [31:0]  vector ;
  begin
    conv_u2u_32_32 = vector;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_run
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_run (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, weightDoubleBufferWriterParams_cns_dat,
      weightDoubleBufferWriterParams_cns_vld, weightDoubleBufferWriterParams_cns_rdy,
      weightDoubleBufferReaderParams_cns_dat, weightDoubleBufferReaderParams_cns_vld,
      weightDoubleBufferReaderParams_cns_rdy
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  output [143:0] weightDoubleBufferWriterParams_cns_dat;
  output weightDoubleBufferWriterParams_cns_vld;
  input weightDoubleBufferWriterParams_cns_rdy;
  output [143:0] weightDoubleBufferReaderParams_cns_dat;
  output weightDoubleBufferReaderParams_cns_vld;
  input weightDoubleBufferReaderParams_cns_rdy;



  // Interconnect Declarations for Component Instantiations 
  WeightDoubleBuffer_4096_16_16_run_run WeightDoubleBuffer_4096_16_16_run_run_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .weightDoubleBufferWriterParams_cns_dat(weightDoubleBufferWriterParams_cns_dat),
      .weightDoubleBufferWriterParams_cns_vld(weightDoubleBufferWriterParams_cns_vld),
      .weightDoubleBufferWriterParams_cns_rdy(weightDoubleBufferWriterParams_cns_rdy),
      .weightDoubleBufferReaderParams_cns_dat(weightDoubleBufferReaderParams_cns_dat),
      .weightDoubleBufferReaderParams_cns_vld(weightDoubleBufferReaderParams_cns_vld),
      .weightDoubleBufferReaderParams_cns_rdy(weightDoubleBufferReaderParams_cns_rdy)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferWriter_4096_16_16
// ------------------------------------------------------------------


module WeightDoubleBufferWriter_4096_16_16 (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, din_rsc_dat,
      din_rsc_vld, din_rsc_rdy, dout_rsc_wadr, dout_rsc_d, dout_rsc_we, dout_rsc_req_vz,
      dout_rsc_rls_lz
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  input [7:0] din_rsc_dat;
  input din_rsc_vld;
  output din_rsc_rdy;
  output [11:0] dout_rsc_wadr;
  output [127:0] dout_rsc_d;
  output dout_rsc_we;
  input dout_rsc_req_vz;
  output dout_rsc_rls_lz;


  // Interconnect Declarations
  wire [11:0] dout_rsci_wadr_d;
  wire [127:0] dout_rsci_d_d;
  wire dout_rsci_we_d_iff;


  // Interconnect Declarations for Component Instantiations 
  WeightDoubleBufferWriter_4096_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_wport_3_128_12_4096_4096_128_5_gen
      dout_rsci (
      .we(dout_rsc_we),
      .d(dout_rsc_d),
      .wadr(dout_rsc_wadr),
      .wadr_d(dout_rsci_wadr_d),
      .d_d(dout_rsci_d_d),
      .we_d(dout_rsci_we_d_iff),
      .port_1_w_ram_ir_internal_WMASK_B_d(dout_rsci_we_d_iff)
    );
  WeightDoubleBufferWriter_4096_16_16_run WeightDoubleBufferWriter_4096_16_16_run_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .din_rsc_dat(din_rsc_dat),
      .din_rsc_vld(din_rsc_vld),
      .din_rsc_rdy(din_rsc_rdy),
      .dout_rsc_req_vz(dout_rsc_req_vz),
      .dout_rsc_rls_lz(dout_rsc_rls_lz),
      .dout_rsci_wadr_d(dout_rsci_wadr_d),
      .dout_rsci_d_d(dout_rsci_d_d),
      .dout_rsci_we_d_pff(dout_rsci_we_d_iff)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBufferReader_4096_16_16
// ------------------------------------------------------------------


module WeightDoubleBufferReader_4096_16_16 (
  clk, arst_n, paramsIn_rsc_dat, paramsIn_rsc_vld, paramsIn_rsc_rdy, din_rsc_radr,
      din_rsc_re, din_rsc_q, din_rsc_req_vz, din_rsc_rls_lz, dout_rsc_dat, dout_rsc_vld,
      dout_rsc_rdy
);
  input clk;
  input arst_n;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;
  output [11:0] din_rsc_radr;
  output din_rsc_re;
  input [127:0] din_rsc_q;
  input din_rsc_req_vz;
  output din_rsc_rls_lz;
  output [127:0] dout_rsc_dat;
  output dout_rsc_vld;
  input dout_rsc_rdy;


  // Interconnect Declarations
  wire [11:0] din_rsci_radr_d;
  wire [127:0] din_rsci_q_d;
  wire din_rsci_re_d_iff;


  // Interconnect Declarations for Component Instantiations 
  WeightDoubleBufferReader_4096_16_16_ccs_sample_mem_ccs_ram_sync_1R1W_rport_7_128_12_4096_4096_128_5_gen
      din_rsci (
      .q(din_rsc_q),
      .re(din_rsc_re),
      .radr(din_rsc_radr),
      .radr_d(din_rsci_radr_d),
      .re_d(din_rsci_re_d_iff),
      .q_d(din_rsci_q_d),
      .port_0_r_ram_ir_internal_RMASK_B_d(din_rsci_re_d_iff)
    );
  WeightDoubleBufferReader_4096_16_16_run WeightDoubleBufferReader_4096_16_16_run_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy),
      .din_rsc_req_vz(din_rsc_req_vz),
      .din_rsc_rls_lz(din_rsc_rls_lz),
      .dout_rsc_dat(dout_rsc_dat),
      .dout_rsc_vld(dout_rsc_vld),
      .dout_rsc_rdy(dout_rsc_rdy),
      .din_rsci_radr_d(din_rsci_radr_d),
      .din_rsci_q_d(din_rsci_q_d),
      .din_rsci_re_d_pff(din_rsci_re_d_iff)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16_struct
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16_struct (
  clk, arst_n, weights_in_rsc_dat, weights_in_rsc_vld, weights_in_rsc_rdy, weights_out_rsc_dat_value,
      weights_out_rsc_vld, weights_out_rsc_rdy, paramsIn_rsc_dat_STRIDE, paramsIn_rsc_dat_FY,
      paramsIn_rsc_dat_FX, paramsIn_rsc_dat_IC1, paramsIn_rsc_dat_OC1, paramsIn_rsc_dat_OX0,
      paramsIn_rsc_dat_OY0, paramsIn_rsc_dat_OX1, paramsIn_rsc_dat_OY1, paramsIn_rsc_vld,
      paramsIn_rsc_rdy
);
  input clk;
  input arst_n;
  input [7:0] weights_in_rsc_dat;
  input weights_in_rsc_vld;
  output weights_in_rsc_rdy;
  output [127:0] weights_out_rsc_dat_value;
  output weights_out_rsc_vld;
  input weights_out_rsc_rdy;
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


  // Interconnect Declarations
  wire [143:0] paramsIn_rsc_dat_nweightDoubleBufferWriter;
  wire paramsIn_rsc_vld_nweightDoubleBufferWriter;
  wire paramsIn_rsc_rdy_nweightDoubleBufferWriter;
  wire din_rsc_rdy_nweightDoubleBufferWriter;
  wire [11:0] dout_rsc_wadr_nweightDoubleBufferWriter;
  wire [127:0] dout_rsc_d_nweightDoubleBufferWriter;
  wire dout_rsc_we_nweightDoubleBufferWriter;
  wire dout_rsc_req_vz_nweightDoubleBufferWriter;
  wire [143:0] paramsIn_rsc_dat_nweightDoubleBufferReader;
  wire paramsIn_rsc_vld_nweightDoubleBufferReader;
  wire paramsIn_rsc_rdy_nweightDoubleBufferReader;
  wire [11:0] din_rsc_radr_nweightDoubleBufferReader;
  wire din_rsc_re_nweightDoubleBufferReader;
  wire [127:0] din_rsc_q_nweightDoubleBufferReader;
  wire din_rsc_req_vz_nweightDoubleBufferReader;
  wire [127:0] dout_rsc_dat_nweightDoubleBufferReader;
  wire dout_rsc_vld_nweightDoubleBufferReader;
  wire [143:0] weightDoubleBufferWriterParams_cns_dat_nWeightDoubleBuffer_4096_16_16_run_inst;
  wire weightDoubleBufferWriterParams_cns_rdy_nWeightDoubleBuffer_4096_16_16_run_inst;
  wire [143:0] weightDoubleBufferReaderParams_cns_dat_nWeightDoubleBuffer_4096_16_16_run_inst;
  wire weightDoubleBufferReaderParams_cns_rdy_nWeightDoubleBuffer_4096_16_16_run_inst;
  wire paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud;
  wire weightDoubleBufferWriterParams_cns_vld_nWeightDoubleBuffer_4096_16_16_run_inst_bud;
  wire din_rsc_rdy_nweightDoubleBufferWriter_bud;
  wire dout_rsc_rls_lz_nweightDoubleBufferWriter_bud;
  wire din_rsc_rls_lz_nweightDoubleBufferReader_bud;
  wire paramsIn_rsc_rdy_nweightDoubleBufferReader_bud;
  wire weightDoubleBufferReaderParams_cns_vld_nWeightDoubleBuffer_4096_16_16_run_inst_bud;
  wire dout_rsc_vld_nweightDoubleBufferReader_bud;
  wire paramsIn_rsc_rdy_nWeightDoubleBuffer_4096_16_16_run_inst_bud;
  wire weightDoubleBufferWriterParams_unc_2;
  wire weightDoubleBufferWriterParams_idle;
  wire mem_cns_R0;
  wire mem_cns_R1;
  wire [11:0] mem_cns_radr_shi0;
  wire [11:0] mem_cns_radr_shi1;
  wire [11:0] mem_cns_wadr_shi0;
  wire [11:0] mem_cns_wadr_shi1;
  wire [127:0] mem_cns_d_shi0;
  wire [127:0] mem_cns_d_shi1;
  wire mem_cns_we_shi0;
  wire mem_cns_we_shi1;
  wire mem_cns_re_shi0;
  wire mem_cns_re_shi1;
  wire [127:0] mem_cns_q_sho0;
  wire [127:0] mem_cns_q_sho1;
  wire weightDoubleBufferReaderParams_unc_2;
  wire weightDoubleBufferReaderParams_idle;
  wire mem_cns_S0_iff;
  wire mem_cns_S1_iff;
  wire mem_cns_S0_dmo;
  wire mem_cns_S1_dmo;


  // Interconnect Declarations for Component Instantiations 
  wire [143:0] nl_WeightDoubleBuffer_4096_16_16_run_inst_paramsIn_rsc_dat;
  assign nl_WeightDoubleBuffer_4096_16_16_run_inst_paramsIn_rsc_dat = {paramsIn_rsc_dat_STRIDE
      , paramsIn_rsc_dat_FY , paramsIn_rsc_dat_FX , paramsIn_rsc_dat_IC1 , paramsIn_rsc_dat_OC1
      , paramsIn_rsc_dat_OX0 , paramsIn_rsc_dat_OY0 , paramsIn_rsc_dat_OX1 , paramsIn_rsc_dat_OY1};
  ccs_pipe_v5 #(.rscid(32'sd14),
  .width(32'sd144),
  .sz_width(32'sd1),
  .fifo_sz(32'sd1),
  .log2_sz(32'sd0),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd0)) weightDoubleBufferWriterParams_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(arst_n),
      .srst(1'b1),
      .din_rdy(weightDoubleBufferWriterParams_cns_rdy_nWeightDoubleBuffer_4096_16_16_run_inst),
      .din_vld(weightDoubleBufferWriterParams_cns_vld_nWeightDoubleBuffer_4096_16_16_run_inst_bud),
      .din(weightDoubleBufferWriterParams_cns_dat_nWeightDoubleBuffer_4096_16_16_run_inst),
      .dout_rdy(paramsIn_rsc_rdy_nweightDoubleBufferWriter),
      .dout_vld(paramsIn_rsc_vld_nweightDoubleBufferWriter),
      .dout(paramsIn_rsc_dat_nweightDoubleBufferWriter),
      .sz(weightDoubleBufferWriterParams_unc_2),
      .sz_req(1'b0),
      .is_idle(weightDoubleBufferWriterParams_idle)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd128),
  .addr_width(32'sd12),
  .depth(32'sd4096)) mem_cns_comp (
      .radr(mem_cns_radr_shi0),
      .wadr(mem_cns_wadr_shi0),
      .d(mem_cns_d_shi0),
      .we(mem_cns_we_shi0),
      .re(mem_cns_re_shi0),
      .clk(clk),
      .q(mem_cns_q_sho0)
    );
  ccs_ram_sync_1R1W #(.data_width(32'sd128),
  .addr_width(32'sd12),
  .depth(32'sd4096)) mem_cns_comp_1 (
      .radr(mem_cns_radr_shi1),
      .wadr(mem_cns_wadr_shi1),
      .d(mem_cns_d_shi1),
      .we(mem_cns_we_shi1),
      .re(mem_cns_re_shi1),
      .clk(clk),
      .q(mem_cns_q_sho1)
    );
  ccs_pipe_v5 #(.rscid(32'sd15),
  .width(32'sd144),
  .sz_width(32'sd1),
  .fifo_sz(32'sd1),
  .log2_sz(32'sd0),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd0)) weightDoubleBufferReaderParams_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(arst_n),
      .srst(1'b1),
      .din_rdy(weightDoubleBufferReaderParams_cns_rdy_nWeightDoubleBuffer_4096_16_16_run_inst),
      .din_vld(weightDoubleBufferReaderParams_cns_vld_nWeightDoubleBuffer_4096_16_16_run_inst_bud),
      .din(weightDoubleBufferReaderParams_cns_dat_nWeightDoubleBuffer_4096_16_16_run_inst),
      .dout_rdy(paramsIn_rsc_rdy_nweightDoubleBufferReader),
      .dout_vld(paramsIn_rsc_vld_nweightDoubleBufferReader),
      .dout(paramsIn_rsc_dat_nweightDoubleBufferReader),
      .sz(weightDoubleBufferReaderParams_unc_2),
      .sz_req(1'b0),
      .is_idle(weightDoubleBufferReaderParams_idle)
    );
  WeightDoubleBufferWriter_4096_16_16 weightDoubleBufferWriter (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat_nweightDoubleBufferWriter),
      .paramsIn_rsc_vld(paramsIn_rsc_vld_nweightDoubleBufferWriter),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud),
      .din_rsc_dat(weights_in_rsc_dat),
      .din_rsc_vld(weights_in_rsc_vld),
      .din_rsc_rdy(din_rsc_rdy_nweightDoubleBufferWriter_bud),
      .dout_rsc_wadr(dout_rsc_wadr_nweightDoubleBufferWriter),
      .dout_rsc_d(dout_rsc_d_nweightDoubleBufferWriter),
      .dout_rsc_we(dout_rsc_we_nweightDoubleBufferWriter),
      .dout_rsc_req_vz(dout_rsc_req_vz_nweightDoubleBufferWriter),
      .dout_rsc_rls_lz(dout_rsc_rls_lz_nweightDoubleBufferWriter_bud)
    );
  WeightDoubleBufferReader_4096_16_16 weightDoubleBufferReader (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(paramsIn_rsc_dat_nweightDoubleBufferReader),
      .paramsIn_rsc_vld(paramsIn_rsc_vld_nweightDoubleBufferReader),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy_nweightDoubleBufferReader_bud),
      .din_rsc_radr(din_rsc_radr_nweightDoubleBufferReader),
      .din_rsc_re(din_rsc_re_nweightDoubleBufferReader),
      .din_rsc_q(din_rsc_q_nweightDoubleBufferReader),
      .din_rsc_req_vz(din_rsc_req_vz_nweightDoubleBufferReader),
      .din_rsc_rls_lz(din_rsc_rls_lz_nweightDoubleBufferReader_bud),
      .dout_rsc_dat(dout_rsc_dat_nweightDoubleBufferReader),
      .dout_rsc_vld(dout_rsc_vld_nweightDoubleBufferReader_bud),
      .dout_rsc_rdy(weights_out_rsc_rdy)
    );
  WeightDoubleBuffer_4096_16_16_run WeightDoubleBuffer_4096_16_16_run_inst (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_dat(nl_WeightDoubleBuffer_4096_16_16_run_inst_paramsIn_rsc_dat[143:0]),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy_nWeightDoubleBuffer_4096_16_16_run_inst_bud),
      .weightDoubleBufferWriterParams_cns_dat(weightDoubleBufferWriterParams_cns_dat_nWeightDoubleBuffer_4096_16_16_run_inst),
      .weightDoubleBufferWriterParams_cns_vld(weightDoubleBufferWriterParams_cns_vld_nWeightDoubleBuffer_4096_16_16_run_inst_bud),
      .weightDoubleBufferWriterParams_cns_rdy(weightDoubleBufferWriterParams_cns_rdy_nWeightDoubleBuffer_4096_16_16_run_inst),
      .weightDoubleBufferReaderParams_cns_dat(weightDoubleBufferReaderParams_cns_dat_nWeightDoubleBuffer_4096_16_16_run_inst),
      .weightDoubleBufferReaderParams_cns_vld(weightDoubleBufferReaderParams_cns_vld_nWeightDoubleBuffer_4096_16_16_run_inst_bud),
      .weightDoubleBufferReaderParams_cns_rdy(weightDoubleBufferReaderParams_cns_rdy_nWeightDoubleBuffer_4096_16_16_run_inst)
    );
  unreg_hier unreg (
      .in_0(mem_cns_S0_iff),
      .out_0(mem_cns_R0)
    );
  unreg_hier unreg_1 (
      .in_0(mem_cns_S1_iff),
      .out_0(mem_cns_R1)
    );
  WeightDoubleMvdcCem_cns_bctl WeightDoubleMvdcCem_cns_bctl_inst (
      .clk(clk),
      .arst_n(arst_n),
      .paramsIn_rsc_rdy_nweightDoubleBufferWriter(paramsIn_rsc_rdy_nweightDoubleBufferWriter),
      .din_rsc_rdy_nweightDoubleBufferWriter(din_rsc_rdy_nweightDoubleBufferWriter),
      .dout_rsc_wadr_nweightDoubleBufferWriter(dout_rsc_wadr_nweightDoubleBufferWriter),
      .dout_rsc_d_nweightDoubleBufferWriter(dout_rsc_d_nweightDoubleBufferWriter),
      .dout_rsc_we_nweightDoubleBufferWriter(dout_rsc_we_nweightDoubleBufferWriter),
      .dout_rsc_req_vz_nweightDoubleBufferWriter(dout_rsc_req_vz_nweightDoubleBufferWriter),
      .paramsIn_rsc_rdy_nweightDoubleBufferReader(paramsIn_rsc_rdy_nweightDoubleBufferReader),
      .din_rsc_radr_nweightDoubleBufferReader(din_rsc_radr_nweightDoubleBufferReader),
      .din_rsc_re_nweightDoubleBufferReader(din_rsc_re_nweightDoubleBufferReader),
      .din_rsc_q_nweightDoubleBufferReader(din_rsc_q_nweightDoubleBufferReader),
      .din_rsc_req_vz_nweightDoubleBufferReader(din_rsc_req_vz_nweightDoubleBufferReader),
      .dout_rsc_vld_nweightDoubleBufferReader(dout_rsc_vld_nweightDoubleBufferReader),
      .paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud(paramsIn_rsc_rdy_nweightDoubleBufferWriter_bud),
      .din_rsc_rdy_nweightDoubleBufferWriter_bud(din_rsc_rdy_nweightDoubleBufferWriter_bud),
      .dout_rsc_rls_lz_nweightDoubleBufferWriter_bud(dout_rsc_rls_lz_nweightDoubleBufferWriter_bud),
      .din_rsc_rls_lz_nweightDoubleBufferReader_bud(din_rsc_rls_lz_nweightDoubleBufferReader_bud),
      .paramsIn_rsc_rdy_nweightDoubleBufferReader_bud(paramsIn_rsc_rdy_nweightDoubleBufferReader_bud),
      .dout_rsc_vld_nweightDoubleBufferReader_bud(dout_rsc_vld_nweightDoubleBufferReader_bud),
      .mem_cns_S0(mem_cns_S0_dmo),
      .mem_cns_R0(mem_cns_R0),
      .mem_cns_S1(mem_cns_S1_dmo),
      .mem_cns_R1(mem_cns_R1),
      .mem_cns_radr_shi0(mem_cns_radr_shi0),
      .mem_cns_radr_shi1(mem_cns_radr_shi1),
      .mem_cns_wadr_shi0(mem_cns_wadr_shi0),
      .mem_cns_wadr_shi1(mem_cns_wadr_shi1),
      .mem_cns_d_shi0(mem_cns_d_shi0),
      .mem_cns_d_shi1(mem_cns_d_shi1),
      .mem_cns_we_shi0(mem_cns_we_shi0),
      .mem_cns_we_shi1(mem_cns_we_shi1),
      .mem_cns_re_shi0(mem_cns_re_shi0),
      .mem_cns_re_shi1(mem_cns_re_shi1),
      .mem_cns_q_sho0(mem_cns_q_sho0),
      .mem_cns_q_sho1(mem_cns_q_sho1),
      .mem_cns_S0_pff(mem_cns_S0_iff),
      .mem_cns_S1_pff(mem_cns_S1_iff)
    );
  assign weights_out_rsc_dat_value = dout_rsc_dat_nweightDoubleBufferReader;
  assign weights_in_rsc_rdy = din_rsc_rdy_nweightDoubleBufferWriter;
  assign weights_out_rsc_vld = dout_rsc_vld_nweightDoubleBufferReader;
  assign paramsIn_rsc_rdy = paramsIn_rsc_rdy_nWeightDoubleBuffer_4096_16_16_run_inst_bud;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    WeightDoubleBuffer_4096_16_16
// ------------------------------------------------------------------


module WeightDoubleBuffer_4096_16_16 (
  clk, arst_n, weights_in_rsc_dat, weights_in_rsc_vld, weights_in_rsc_rdy, weights_out_rsc_dat,
      weights_out_rsc_vld, weights_out_rsc_rdy, paramsIn_rsc_dat, paramsIn_rsc_vld,
      paramsIn_rsc_rdy
);
  input clk;
  input arst_n;
  input [7:0] weights_in_rsc_dat;
  input weights_in_rsc_vld;
  output weights_in_rsc_rdy;
  output [127:0] weights_out_rsc_dat;
  output weights_out_rsc_vld;
  input weights_out_rsc_rdy;
  input [143:0] paramsIn_rsc_dat;
  input paramsIn_rsc_vld;
  output paramsIn_rsc_rdy;


  // Interconnect Declarations
  wire [127:0] weights_out_rsc_dat_value;


  // Interconnect Declarations for Component Instantiations 
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_STRIDE;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_STRIDE = paramsIn_rsc_dat[143:128];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_FY;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_FY = paramsIn_rsc_dat[127:112];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_FX;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_FX = paramsIn_rsc_dat[111:96];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_IC1;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_IC1 = paramsIn_rsc_dat[95:80];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OC1;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OC1 = paramsIn_rsc_dat[79:64];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OX0;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OX0 = paramsIn_rsc_dat[63:48];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OY0;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OY0 = paramsIn_rsc_dat[47:32];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OX1;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OX1 = paramsIn_rsc_dat[31:16];
  wire [15:0] nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OY1;
  assign nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OY1 = paramsIn_rsc_dat[15:0];
  WeightDoubleBuffer_4096_16_16_struct WeightDoubleBuffer_4096_16_16_struct_inst
      (
      .clk(clk),
      .arst_n(arst_n),
      .weights_in_rsc_dat(weights_in_rsc_dat),
      .weights_in_rsc_vld(weights_in_rsc_vld),
      .weights_in_rsc_rdy(weights_in_rsc_rdy),
      .weights_out_rsc_dat_value(weights_out_rsc_dat_value),
      .weights_out_rsc_vld(weights_out_rsc_vld),
      .weights_out_rsc_rdy(weights_out_rsc_rdy),
      .paramsIn_rsc_dat_STRIDE(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_STRIDE[15:0]),
      .paramsIn_rsc_dat_FY(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_FY[15:0]),
      .paramsIn_rsc_dat_FX(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_FX[15:0]),
      .paramsIn_rsc_dat_IC1(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_IC1[15:0]),
      .paramsIn_rsc_dat_OC1(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OC1[15:0]),
      .paramsIn_rsc_dat_OX0(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OX0[15:0]),
      .paramsIn_rsc_dat_OY0(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OY0[15:0]),
      .paramsIn_rsc_dat_OX1(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OX1[15:0]),
      .paramsIn_rsc_dat_OY1(nl_WeightDoubleBuffer_4096_16_16_struct_inst_paramsIn_rsc_dat_OY1[15:0]),
      .paramsIn_rsc_vld(paramsIn_rsc_vld),
      .paramsIn_rsc_rdy(paramsIn_rsc_rdy)
    );
  assign weights_out_rsc_dat = weights_out_rsc_dat_value;
endmodule



