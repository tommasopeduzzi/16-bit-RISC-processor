// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Aug 20 09:48:17 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_we_registers_0_1/tdp11_we_registers_0_1_stub.v
// Design      : tdp11_we_registers_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "we_registers,Vivado 2022.1" *)
module tdp11_we_registers_0_1(clk, we, we_l, we_m, r0, r0_m, r0_l, r1, r1_m, r1_l, r2, r2_m, 
  r2_l, r3, r3_m, r3_l, r4, r4_m, r4_l, r5, r5_m, r5_l, r6, r6_m, r6_l, r7, r7_m, r7_l)
/* synthesis syn_black_box black_box_pad_pin="clk,we[2:0],we_l[2:0],we_m[2:0],r0,r0_m,r0_l,r1,r1_m,r1_l,r2,r2_m,r2_l,r3,r3_m,r3_l,r4,r4_m,r4_l,r5,r5_m,r5_l,r6,r6_m,r6_l,r7,r7_m,r7_l" */;
  input clk;
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
endmodule
