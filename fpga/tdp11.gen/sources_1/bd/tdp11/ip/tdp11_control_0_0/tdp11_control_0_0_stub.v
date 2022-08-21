// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Aug 20 10:24:02 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top tdp11_control_0_0 -prefix
//               tdp11_control_0_0_ tdp11_control_0_0_stub.v
// Design      : tdp11_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "control,Vivado 2022.1" *)
module tdp11_control_0_0(clk, rst, \input , z, g, l, c, mem_we, pc_inc, pc_load, 
  sp_inc, sp_decr, alu_op, reg_we, reg_we_l, reg_we_m, main_alu_sel, main_mem_sel, 
  main_control_sel, main_reg_sel, main_reg_l_sel, main_reg_m_sel, addr_pc_sel, addr_sp_sel, 
  addr_reg_sel, addr_control_sel, alu_rhs_sel, alu_lhs_sel, output_imm, current_opcode)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,\input [7:0],z,g,l,c,mem_we,pc_inc,pc_load,sp_inc,sp_decr,alu_op[3:0],reg_we[2:0],reg_we_l[2:0],reg_we_m[2:0],main_alu_sel,main_mem_sel,main_control_sel,main_reg_sel[2:0],main_reg_l_sel[2:0],main_reg_m_sel[2:0],addr_pc_sel,addr_sp_sel,addr_reg_sel[2:0],addr_control_sel,alu_rhs_sel[2:0],alu_lhs_sel[2:0],output_imm[15:0],current_opcode[5:0]" */;
  input clk;
  input rst;
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
endmodule
