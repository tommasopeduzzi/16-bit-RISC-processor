// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Aug 16 16:07:14 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_control_0_0/tdp11_control_0_0_sim_netlist.v
// Design      : tdp11_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_control_0_0,control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "control,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_control_0_0
   (clk,
    rst,
    \input ,
    z,
    g,
    l,
    c,
    mem_we,
    pc_inc,
    pc_load,
    sp_inc,
    sp_decr,
    alu_op,
    reg_we,
    reg_we_l,
    reg_we_m,
    main_alu_sel,
    main_mem_sel,
    main_control_sel,
    main_reg_sel,
    main_reg_l_sel,
    main_reg_m_sel,
    addr_pc_sel,
    addr_sp_sel,
    addr_reg_sel,
    addr_control_sel,
    alu_rhs_sel,
    alu_lhs_sel,
    output_imm,
    current_opcode);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]\input ;
  input z;
  input g;
  input l;
  input c;
  output mem_we;
  output pc_inc;
  output pc_load;
  output sp_inc;
  output sp_decr;
  output [3:0]alu_op;
  output [2:0]reg_we;
  output [2:0]reg_we_l;
  output [2:0]reg_we_m;
  output main_alu_sel;
  output main_mem_sel;
  output main_control_sel;
  output [2:0]main_reg_sel;
  output [2:0]main_reg_l_sel;
  output [2:0]main_reg_m_sel;
  output addr_pc_sel;
  output addr_sp_sel;
  output [2:0]addr_reg_sel;
  output addr_control_sel;
  output [2:0]alu_rhs_sel;
  output [2:0]alu_lhs_sel;
  output [15:0]output_imm;
  output [5:0]current_opcode;

  wire \<const0> ;

  assign addr_control_sel = \<const0> ;
  assign addr_pc_sel = \<const0> ;
  assign addr_reg_sel[2] = \<const0> ;
  assign addr_reg_sel[1] = \<const0> ;
  assign addr_reg_sel[0] = \<const0> ;
  assign addr_sp_sel = \<const0> ;
  assign alu_lhs_sel[2] = \<const0> ;
  assign alu_lhs_sel[1] = \<const0> ;
  assign alu_lhs_sel[0] = \<const0> ;
  assign alu_op[3] = \<const0> ;
  assign alu_op[2] = \<const0> ;
  assign alu_op[1] = \<const0> ;
  assign alu_op[0] = \<const0> ;
  assign alu_rhs_sel[2] = \<const0> ;
  assign alu_rhs_sel[1] = \<const0> ;
  assign alu_rhs_sel[0] = \<const0> ;
  assign current_opcode[5] = \<const0> ;
  assign current_opcode[4] = \<const0> ;
  assign current_opcode[3] = \<const0> ;
  assign current_opcode[2] = \<const0> ;
  assign current_opcode[1] = \<const0> ;
  assign current_opcode[0] = \<const0> ;
  assign main_alu_sel = \<const0> ;
  assign main_control_sel = \<const0> ;
  assign main_mem_sel = \<const0> ;
  assign main_reg_l_sel[2] = \<const0> ;
  assign main_reg_l_sel[1] = \<const0> ;
  assign main_reg_l_sel[0] = \<const0> ;
  assign main_reg_m_sel[2] = \<const0> ;
  assign main_reg_m_sel[1] = \<const0> ;
  assign main_reg_m_sel[0] = \<const0> ;
  assign main_reg_sel[2] = \<const0> ;
  assign main_reg_sel[1] = \<const0> ;
  assign main_reg_sel[0] = \<const0> ;
  assign mem_we = \<const0> ;
  assign output_imm[15] = \<const0> ;
  assign output_imm[14] = \<const0> ;
  assign output_imm[13] = \<const0> ;
  assign output_imm[12] = \<const0> ;
  assign output_imm[11] = \<const0> ;
  assign output_imm[10] = \<const0> ;
  assign output_imm[9] = \<const0> ;
  assign output_imm[8] = \<const0> ;
  assign output_imm[7] = \<const0> ;
  assign output_imm[6] = \<const0> ;
  assign output_imm[5] = \<const0> ;
  assign output_imm[4] = \<const0> ;
  assign output_imm[3] = \<const0> ;
  assign output_imm[2] = \<const0> ;
  assign output_imm[1] = \<const0> ;
  assign output_imm[0] = \<const0> ;
  assign pc_inc = \<const0> ;
  assign pc_load = \<const0> ;
  assign reg_we[2] = \<const0> ;
  assign reg_we[1] = \<const0> ;
  assign reg_we[0] = \<const0> ;
  assign reg_we_l[2] = \<const0> ;
  assign reg_we_l[1] = \<const0> ;
  assign reg_we_l[0] = \<const0> ;
  assign reg_we_m[2] = \<const0> ;
  assign reg_we_m[1] = \<const0> ;
  assign reg_we_m[0] = \<const0> ;
  assign sp_decr = \<const0> ;
  assign sp_inc = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
