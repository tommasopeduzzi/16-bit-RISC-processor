// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 20:56:25 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top tdp11_address_bus_0_0 -prefix
//               tdp11_address_bus_0_0_ tdp11_address_bus_0_0_stub.v
// Design      : tdp11_address_bus_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "address_bus,Vivado 2022.1" *)
module tdp11_address_bus_0_0(clk, pc_sel, sp_sel, control_sel, reg_sel, pc, sp, 
  control, r0, r1, r2, r3, r4, r5, r6, r7, \output )
/* synthesis syn_black_box black_box_pad_pin="clk,pc_sel,sp_sel,control_sel,reg_sel[2:0],pc[15:0],sp[15:0],control[15:0],r0[15:0],r1[15:0],r2[15:0],r3[15:0],r4[15:0],r5[15:0],r6[15:0],r7[15:0],\output [15:0]" */;
  input clk;
  input pc_sel;
  input sp_sel;
  input control_sel;
  input [2:0]reg_sel;
  input [15:0]pc;
  input [15:0]sp;
  input [15:0]control;
  input [15:0]r0;
  input [15:0]r1;
  input [15:0]r2;
  input [15:0]r3;
  input [15:0]r4;
  input [15:0]r5;
  input [15:0]r6;
  input [15:0]r7;
  output [15:0]\output ;
endmodule
