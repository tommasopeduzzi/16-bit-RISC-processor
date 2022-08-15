// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 20:55:24 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_alu_bus_1_0/tdp11_alu_bus_1_0_stub.v
// Design      : tdp11_alu_bus_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "alu_bus,Vivado 2022.1" *)
module tdp11_alu_bus_1_0(clk, reg_sel, r0, r1, r2, r3, r4, r5, r6, r7, \output )
/* synthesis syn_black_box black_box_pad_pin="clk,reg_sel[2:0],r0[15:0],r1[15:0],r2[15:0],r3[15:0],r4[15:0],r5[15:0],r6[15:0],r7[15:0],\output [15:0]" */;
  input clk;
  input [2:0]reg_sel;
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
