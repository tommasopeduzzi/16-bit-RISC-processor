// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 21:12:22 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_demultiplexor_0_2/tdp11_demultiplexor_0_2_stub.v
// Design      : tdp11_demultiplexor_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "demultiplexor,Vivado 2022.1" *)
module tdp11_demultiplexor_0_2(clk, \input , r0, r1, r2, r3, r4, r5, r6, r7)
/* synthesis syn_black_box black_box_pad_pin="clk,\input [2:0],r0,r1,r2,r3,r4,r5,r6,r7" */;
  input clk;
  input [2:0]\input ;
  output r0;
  output r1;
  output r2;
  output r3;
  output r4;
  output r5;
  output r6;
  output r7;
endmodule
