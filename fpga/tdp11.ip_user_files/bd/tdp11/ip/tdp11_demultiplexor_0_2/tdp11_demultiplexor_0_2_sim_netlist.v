// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 21:12:22 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_demultiplexor_0_2/tdp11_demultiplexor_0_2_sim_netlist.v
// Design      : tdp11_demultiplexor_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_demultiplexor_0_2,demultiplexor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "demultiplexor,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_demultiplexor_0_2
   (clk,
    \input ,
    r0,
    r1,
    r2,
    r3,
    r4,
    r5,
    r6,
    r7);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  input [2:0]\input ;
  output r0;
  output r1;
  output r2;
  output r3;
  output r4;
  output r5;
  output r6;
  output r7;

  wire clk;
  wire [2:0]\input ;
  wire r0;
  wire r1;
  wire r2;
  wire r3;
  wire r4;
  wire r5;
  wire r6;
  wire r7;

  tdp11_demultiplexor_0_2_demultiplexor U0
       (.clk(clk),
        .\input (\input ),
        .r0(r0),
        .r1(r1),
        .r2(r2),
        .r3(r3),
        .r4(r4),
        .r5(r5),
        .r6(r6),
        .r7(r7));
endmodule

(* ORIG_REF_NAME = "demultiplexor" *) 
module tdp11_demultiplexor_0_2_demultiplexor
   (r0,
    r1,
    r2,
    r3,
    r4,
    r5,
    r6,
    r7,
    \input ,
    clk);
  output r0;
  output r1;
  output r2;
  output r3;
  output r4;
  output r5;
  output r6;
  output r7;
  input [2:0]\input ;
  input clk;

  wire clk;
  wire [2:0]\input ;
  wire r0;
  wire r0__0_n_0;
  wire r1;
  wire r1__0_n_0;
  wire r2;
  wire r2_i_1_n_0;
  wire r3;
  wire r3__0_n_0;
  wire r4;
  wire r4__0_n_0;
  wire r5;
  wire r5__0_n_0;
  wire r6;
  wire r6__0_n_0;
  wire r7;
  wire r7_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    r0__0
       (.I0(\input [1]),
        .I1(\input [0]),
        .I2(\input [2]),
        .O(r0__0_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r0_reg
       (.C(clk),
        .CE(1'b1),
        .D(r0__0_n_0),
        .Q(r0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    r1__0
       (.I0(\input [0]),
        .I1(\input [2]),
        .I2(\input [1]),
        .O(r1__0_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r1_reg
       (.C(clk),
        .CE(1'b1),
        .D(r1__0_n_0),
        .Q(r1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    r2_i_1
       (.I0(\input [1]),
        .I1(\input [0]),
        .I2(\input [2]),
        .O(r2_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(r2_i_1_n_0),
        .Q(r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    r3__0
       (.I0(\input [2]),
        .I1(\input [0]),
        .I2(\input [1]),
        .O(r3__0_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r3_reg
       (.C(clk),
        .CE(1'b1),
        .D(r3__0_n_0),
        .Q(r3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    r4__0
       (.I0(\input [2]),
        .I1(\input [0]),
        .I2(\input [1]),
        .O(r4__0_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r4_reg
       (.C(clk),
        .CE(1'b1),
        .D(r4__0_n_0),
        .Q(r4),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    r5__0
       (.I0(\input [1]),
        .I1(\input [0]),
        .I2(\input [2]),
        .O(r5__0_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r5_reg
       (.C(clk),
        .CE(1'b1),
        .D(r5__0_n_0),
        .Q(r5),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    r6__0
       (.I0(\input [0]),
        .I1(\input [2]),
        .I2(\input [1]),
        .O(r6__0_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r6_reg
       (.C(clk),
        .CE(1'b1),
        .D(r6__0_n_0),
        .Q(r6),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r7_i_1
       (.I0(\input [1]),
        .I1(\input [0]),
        .I2(\input [2]),
        .O(r7_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    r7_reg
       (.C(clk),
        .CE(1'b1),
        .D(r7_i_1_n_0),
        .Q(r7),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
