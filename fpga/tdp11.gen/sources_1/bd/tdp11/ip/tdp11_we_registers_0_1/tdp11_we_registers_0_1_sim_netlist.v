// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Aug 20 09:48:17 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_we_registers_0_1/tdp11_we_registers_0_1_sim_netlist.v
// Design      : tdp11_we_registers_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_we_registers_0_1,we_registers,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "we_registers,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_we_registers_0_1
   (clk,
    we,
    we_l,
    we_m,
    r0,
    r0_m,
    r0_l,
    r1,
    r1_m,
    r1_l,
    r2,
    r2_m,
    r2_l,
    r3,
    r3_m,
    r3_l,
    r4,
    r4_m,
    r4_l,
    r5,
    r5_m,
    r5_l,
    r6,
    r6_m,
    r6_l,
    r7,
    r7_m,
    r7_l);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  input [2:0]we;
  input [2:0]we_l;
  input [2:0]we_m;
  output r0;
  output r0_m;
  output r0_l;
  output r1;
  output r1_m;
  output r1_l;
  output r2;
  output r2_m;
  output r2_l;
  output r3;
  output r3_m;
  output r3_l;
  output r4;
  output r4_m;
  output r4_l;
  output r5;
  output r5_m;
  output r5_l;
  output r6;
  output r6_m;
  output r6_l;
  output r7;
  output r7_m;
  output r7_l;

  wire \<const1> ;
  wire clk;
  wire r0;
  wire r1;
  wire r2;
  wire r3;
  wire r4;
  wire r5;
  wire r6;
  wire r7;
  wire [2:0]we;

  assign r0_l = \<const1> ;
  assign r0_m = \<const1> ;
  assign r1_l = \<const1> ;
  assign r1_m = \<const1> ;
  assign r2_l = \<const1> ;
  assign r2_m = \<const1> ;
  assign r3_l = \<const1> ;
  assign r3_m = \<const1> ;
  assign r4_l = \<const1> ;
  assign r4_m = \<const1> ;
  assign r5_l = \<const1> ;
  assign r5_m = \<const1> ;
  assign r6_l = \<const1> ;
  assign r6_m = \<const1> ;
  assign r7_l = \<const1> ;
  assign r7_m = \<const1> ;
  tdp11_we_registers_0_1_we_registers U0
       (.clk(clk),
        .r0(r0),
        .r1(r1),
        .r2(r2),
        .r3(r3),
        .r4(r4),
        .r5(r5),
        .r6(r6),
        .r7(r7),
        .we(we));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "we_registers" *) 
module tdp11_we_registers_0_1_we_registers
   (r0,
    r1,
    r2,
    r3,
    r4,
    r5,
    r6,
    r7,
    we,
    clk);
  output r0;
  output r1;
  output r2;
  output r3;
  output r4;
  output r5;
  output r6;
  output r7;
  input [2:0]we;
  input clk;

  wire clk;
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
  wire [2:0]we;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    r0__0
       (.I0(we[1]),
        .I1(we[0]),
        .I2(we[2]),
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
       (.I0(we[0]),
        .I1(we[2]),
        .I2(we[1]),
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
       (.I0(we[1]),
        .I1(we[0]),
        .I2(we[2]),
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
       (.I0(we[2]),
        .I1(we[0]),
        .I2(we[1]),
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
       (.I0(we[2]),
        .I1(we[0]),
        .I2(we[1]),
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
       (.I0(we[1]),
        .I1(we[0]),
        .I2(we[2]),
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
       (.I0(we[0]),
        .I1(we[2]),
        .I2(we[1]),
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
       (.I0(we[1]),
        .I1(we[0]),
        .I2(we[2]),
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
