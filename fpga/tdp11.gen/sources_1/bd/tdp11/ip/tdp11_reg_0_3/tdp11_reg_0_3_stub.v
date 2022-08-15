// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 20:54:11 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_reg_0_3/tdp11_reg_0_3_stub.v
// Design      : tdp11_reg_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "reg,Vivado 2022.1" *)
module tdp11_reg_0_3(clk, rst, we, we_m, we_l, \input , \output )
/* synthesis syn_black_box black_box_pad_pin="clk,rst,we,we_m,we_l,\input [15:0],\output [15:0]" */;
  input clk;
  input rst;
  input we;
  input we_m;
  input we_l;
  input [15:0]\input ;
  output [15:0]\output ;
endmodule
