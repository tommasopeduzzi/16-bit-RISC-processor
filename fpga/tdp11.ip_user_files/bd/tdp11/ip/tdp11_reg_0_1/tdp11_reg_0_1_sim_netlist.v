// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Aug 28 19:58:28 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top tdp11_reg_0_1 -prefix
//               tdp11_reg_0_1_ tdp11_reg_0_2_sim_netlist.v
// Design      : tdp11_reg_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tdp11_reg_0_1_reg
   (\output ,
    we,
    we_m,
    we_l,
    \input ,
    clk,
    rst);
  output [15:0]\output ;
  input we;
  input we_m;
  input we_l;
  input [15:0]\input ;
  input clk;
  input rst;

  wire clk;
  wire [15:0]\input ;
  wire [15:0]\output ;
  wire [15:7]p_0_in;
  wire rst;
  wire we;
  wire we_l;
  wire we_m;

  LUT3 #(
    .INIT(8'hBA)) 
    \output[15]_i_1 
       (.I0(we),
        .I1(we_m),
        .I2(we_l),
        .O(p_0_in[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \output[7]_i_1 
       (.I0(we),
        .I1(we_m),
        .O(p_0_in[7]));
  FDCE \output_reg[0] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [0]),
        .Q(\output [0]));
  FDCE \output_reg[10] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [10]),
        .Q(\output [10]));
  FDCE \output_reg[11] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [11]),
        .Q(\output [11]));
  FDCE \output_reg[12] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [12]),
        .Q(\output [12]));
  FDCE \output_reg[13] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [13]),
        .Q(\output [13]));
  FDCE \output_reg[14] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [14]),
        .Q(\output [14]));
  FDCE \output_reg[15] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [15]),
        .Q(\output [15]));
  FDCE \output_reg[1] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [1]),
        .Q(\output [1]));
  FDCE \output_reg[2] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [2]),
        .Q(\output [2]));
  FDCE \output_reg[3] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [3]),
        .Q(\output [3]));
  FDCE \output_reg[4] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [4]),
        .Q(\output [4]));
  FDCE \output_reg[5] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [5]),
        .Q(\output [5]));
  FDCE \output_reg[6] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [6]),
        .Q(\output [6]));
  FDCE \output_reg[7] 
       (.C(clk),
        .CE(p_0_in[7]),
        .CLR(rst),
        .D(\input [7]),
        .Q(\output [7]));
  FDCE \output_reg[8] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [8]),
        .Q(\output [8]));
  FDCE \output_reg[9] 
       (.C(clk),
        .CE(p_0_in[15]),
        .CLR(rst),
        .D(\input [9]),
        .Q(\output [9]));
endmodule

(* CHECK_LICENSE_TYPE = "tdp11_reg_0_2,reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reg,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_reg_0_1
   (clk,
    rst,
    we,
    we_m,
    we_l,
    \input ,
    \output );
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input we;
  input we_m;
  input we_l;
  input [15:0]\input ;
  output [15:0]\output ;

  wire clk;
  wire [15:0]\input ;
  wire [15:0]\output ;
  wire rst;
  wire we;
  wire we_l;
  wire we_m;

  tdp11_reg_0_1_reg U0
       (.clk(clk),
        .\input (\input ),
        .\output (\output ),
        .rst(rst),
        .we(we),
        .we_l(we_l),
        .we_m(we_m));
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
