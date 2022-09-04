// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Aug 28 20:20:42 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_sp_0_0/tdp11_sp_0_0_sim_netlist.v
// Design      : tdp11_sp_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_sp_0_0,sp,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sp,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_sp_0_0
   (clk,
    rst,
    inc,
    decr,
    \output );
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input inc;
  input decr;
  output [15:0]\output ;

  wire clk;
  wire decr;
  wire inc;
  wire [15:0]\output ;
  wire rst;

  tdp11_sp_0_0_sp U0
       (.clk(clk),
        .decr(decr),
        .inc(inc),
        .\output (\output ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "sp" *) 
module tdp11_sp_0_0_sp
   (\output ,
    clk,
    rst,
    inc,
    decr);
  output [15:0]\output ;
  input clk;
  input rst;
  input inc;
  input decr;

  wire clk;
  wire decr;
  wire inc;
  wire [15:0]\output ;
  wire \output[3]_i_2_n_0 ;
  wire \output_reg[11]_i_1_n_0 ;
  wire \output_reg[11]_i_1_n_1 ;
  wire \output_reg[11]_i_1_n_2 ;
  wire \output_reg[11]_i_1_n_3 ;
  wire \output_reg[11]_i_1_n_4 ;
  wire \output_reg[11]_i_1_n_5 ;
  wire \output_reg[11]_i_1_n_6 ;
  wire \output_reg[11]_i_1_n_7 ;
  wire \output_reg[15]_i_2_n_1 ;
  wire \output_reg[15]_i_2_n_2 ;
  wire \output_reg[15]_i_2_n_3 ;
  wire \output_reg[15]_i_2_n_4 ;
  wire \output_reg[15]_i_2_n_5 ;
  wire \output_reg[15]_i_2_n_6 ;
  wire \output_reg[15]_i_2_n_7 ;
  wire \output_reg[3]_i_1_n_0 ;
  wire \output_reg[3]_i_1_n_1 ;
  wire \output_reg[3]_i_1_n_2 ;
  wire \output_reg[3]_i_1_n_3 ;
  wire \output_reg[3]_i_1_n_4 ;
  wire \output_reg[3]_i_1_n_5 ;
  wire \output_reg[3]_i_1_n_6 ;
  wire \output_reg[3]_i_1_n_7 ;
  wire \output_reg[7]_i_1_n_0 ;
  wire \output_reg[7]_i_1_n_1 ;
  wire \output_reg[7]_i_1_n_2 ;
  wire \output_reg[7]_i_1_n_3 ;
  wire \output_reg[7]_i_1_n_4 ;
  wire \output_reg[7]_i_1_n_5 ;
  wire \output_reg[7]_i_1_n_6 ;
  wire \output_reg[7]_i_1_n_7 ;
  wire rst;
  wire value;
  wire [3:3]\NLW_output_reg[15]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \output[15]_i_1 
       (.I0(inc),
        .I1(decr),
        .O(value));
  LUT1 #(
    .INIT(2'h1)) 
    \output[3]_i_2 
       (.I0(\output [0]),
        .O(\output[3]_i_2_n_0 ));
  FDCE \output_reg[0] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_7 ),
        .Q(\output [0]));
  FDCE \output_reg[10] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_5 ),
        .Q(\output [10]));
  FDCE \output_reg[11] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_4 ),
        .Q(\output [11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_reg[11]_i_1 
       (.CI(\output_reg[7]_i_1_n_0 ),
        .CO({\output_reg[11]_i_1_n_0 ,\output_reg[11]_i_1_n_1 ,\output_reg[11]_i_1_n_2 ,\output_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_reg[11]_i_1_n_4 ,\output_reg[11]_i_1_n_5 ,\output_reg[11]_i_1_n_6 ,\output_reg[11]_i_1_n_7 }),
        .S(\output [11:8]));
  FDCE \output_reg[12] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_7 ),
        .Q(\output [12]));
  FDCE \output_reg[13] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_6 ),
        .Q(\output [13]));
  FDCE \output_reg[14] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_5 ),
        .Q(\output [14]));
  FDCE \output_reg[15] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_4 ),
        .Q(\output [15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_reg[15]_i_2 
       (.CI(\output_reg[11]_i_1_n_0 ),
        .CO({\NLW_output_reg[15]_i_2_CO_UNCONNECTED [3],\output_reg[15]_i_2_n_1 ,\output_reg[15]_i_2_n_2 ,\output_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_reg[15]_i_2_n_4 ,\output_reg[15]_i_2_n_5 ,\output_reg[15]_i_2_n_6 ,\output_reg[15]_i_2_n_7 }),
        .S(\output [15:12]));
  FDCE \output_reg[1] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_6 ),
        .Q(\output [1]));
  FDCE \output_reg[2] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_5 ),
        .Q(\output [2]));
  FDCE \output_reg[3] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_4 ),
        .Q(\output [3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\output_reg[3]_i_1_n_0 ,\output_reg[3]_i_1_n_1 ,\output_reg[3]_i_1_n_2 ,\output_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\output_reg[3]_i_1_n_4 ,\output_reg[3]_i_1_n_5 ,\output_reg[3]_i_1_n_6 ,\output_reg[3]_i_1_n_7 }),
        .S({\output [3:1],\output[3]_i_2_n_0 }));
  FDCE \output_reg[4] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_7 ),
        .Q(\output [4]));
  FDCE \output_reg[5] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_6 ),
        .Q(\output [5]));
  FDCE \output_reg[6] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_5 ),
        .Q(\output [6]));
  FDCE \output_reg[7] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_4 ),
        .Q(\output [7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_reg[7]_i_1 
       (.CI(\output_reg[3]_i_1_n_0 ),
        .CO({\output_reg[7]_i_1_n_0 ,\output_reg[7]_i_1_n_1 ,\output_reg[7]_i_1_n_2 ,\output_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_reg[7]_i_1_n_4 ,\output_reg[7]_i_1_n_5 ,\output_reg[7]_i_1_n_6 ,\output_reg[7]_i_1_n_7 }),
        .S(\output [7:4]));
  FDCE \output_reg[8] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_7 ),
        .Q(\output [8]));
  FDCE \output_reg[9] 
       (.C(clk),
        .CE(value),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_6 ),
        .Q(\output [9]));
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
