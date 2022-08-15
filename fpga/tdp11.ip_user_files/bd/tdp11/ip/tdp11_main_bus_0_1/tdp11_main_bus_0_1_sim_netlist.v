// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 20:56:53 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_main_bus_0_1/tdp11_main_bus_0_1_sim_netlist.v
// Design      : tdp11_main_bus_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_main_bus_0_1,main_bus,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "main_bus,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_main_bus_0_1
   (clk,
    reg_sel,
    reg_sel_l,
    reg_sel_m,
    mem_sel,
    alu_sel,
    control_sel,
    r0,
    r1,
    r2,
    r3,
    r4,
    r5,
    r6,
    r7,
    alu,
    control,
    mem,
    \output );
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  input [2:0]reg_sel;
  input [2:0]reg_sel_l;
  input [2:0]reg_sel_m;
  input mem_sel;
  input alu_sel;
  input control_sel;
  input [15:0]r0;
  input [15:0]r1;
  input [15:0]r2;
  input [15:0]r3;
  input [15:0]r4;
  input [15:0]r5;
  input [15:0]r6;
  input [15:0]r7;
  input [15:0]alu;
  input [15:0]control;
  input [7:0]mem;
  output [15:0]\output ;

  wire [15:0]alu;
  wire alu_sel;
  wire clk;
  wire [15:0]control;
  wire control_sel;
  wire [7:0]mem;
  wire mem_sel;
  wire [15:0]\output ;
  wire [15:0]r0;
  wire [15:0]r1;
  wire [15:0]r2;
  wire [15:0]r3;
  wire [15:0]r4;
  wire [15:0]r5;
  wire [15:0]r6;
  wire [15:0]r7;
  wire [2:0]reg_sel;

  tdp11_main_bus_0_1_main_bus U0
       (.alu(alu),
        .alu_sel(alu_sel),
        .clk(clk),
        .control(control),
        .control_sel(control_sel),
        .mem(mem),
        .mem_sel(mem_sel),
        .\output (\output ),
        .r0(r0),
        .r1(r1),
        .r2(r2),
        .r3(r3),
        .r4(r4),
        .r5(r5),
        .r6(r6),
        .r7(r7),
        .reg_sel(reg_sel));
endmodule

(* ORIG_REF_NAME = "main_bus" *) 
module tdp11_main_bus_0_1_main_bus
   (\output ,
    clk,
    mem_sel,
    mem,
    alu,
    alu_sel,
    control,
    control_sel,
    reg_sel,
    r3,
    r2,
    r1,
    r0,
    r7,
    r6,
    r5,
    r4);
  output [15:0]\output ;
  input clk;
  input mem_sel;
  input [7:0]mem;
  input [15:0]alu;
  input alu_sel;
  input [15:0]control;
  input control_sel;
  input [2:0]reg_sel;
  input [15:0]r3;
  input [15:0]r2;
  input [15:0]r1;
  input [15:0]r0;
  input [15:0]r7;
  input [15:0]r6;
  input [15:0]r5;
  input [15:0]r4;

  wire [15:0]alu;
  wire alu_sel;
  wire clk;
  wire [15:0]control;
  wire control_sel;
  wire [7:0]mem;
  wire mem_sel;
  wire [15:0]\output ;
  wire \output[0]_i_2_n_0 ;
  wire \output[0]_i_3_n_0 ;
  wire \output[0]_i_4_n_0 ;
  wire \output[10]_i_1_n_0 ;
  wire \output[10]_i_3_n_0 ;
  wire \output[10]_i_4_n_0 ;
  wire \output[11]_i_1_n_0 ;
  wire \output[11]_i_3_n_0 ;
  wire \output[11]_i_4_n_0 ;
  wire \output[12]_i_1_n_0 ;
  wire \output[12]_i_3_n_0 ;
  wire \output[12]_i_4_n_0 ;
  wire \output[13]_i_1_n_0 ;
  wire \output[13]_i_3_n_0 ;
  wire \output[13]_i_4_n_0 ;
  wire \output[14]_i_1_n_0 ;
  wire \output[14]_i_3_n_0 ;
  wire \output[14]_i_4_n_0 ;
  wire \output[15]_i_1_n_0 ;
  wire \output[15]_i_3_n_0 ;
  wire \output[15]_i_4_n_0 ;
  wire \output[1]_i_2_n_0 ;
  wire \output[1]_i_3_n_0 ;
  wire \output[1]_i_4_n_0 ;
  wire \output[2]_i_2_n_0 ;
  wire \output[2]_i_3_n_0 ;
  wire \output[2]_i_4_n_0 ;
  wire \output[3]_i_2_n_0 ;
  wire \output[3]_i_3_n_0 ;
  wire \output[3]_i_4_n_0 ;
  wire \output[4]_i_2_n_0 ;
  wire \output[4]_i_3_n_0 ;
  wire \output[4]_i_4_n_0 ;
  wire \output[5]_i_2_n_0 ;
  wire \output[5]_i_3_n_0 ;
  wire \output[5]_i_4_n_0 ;
  wire \output[6]_i_2_n_0 ;
  wire \output[6]_i_3_n_0 ;
  wire \output[6]_i_4_n_0 ;
  wire \output[7]_i_2_n_0 ;
  wire \output[7]_i_3_n_0 ;
  wire \output[7]_i_4_n_0 ;
  wire \output[8]_i_1_n_0 ;
  wire \output[8]_i_3_n_0 ;
  wire \output[8]_i_4_n_0 ;
  wire \output[9]_i_1_n_0 ;
  wire \output[9]_i_3_n_0 ;
  wire \output[9]_i_4_n_0 ;
  wire \output_reg[10]_i_2_n_0 ;
  wire \output_reg[11]_i_2_n_0 ;
  wire \output_reg[12]_i_2_n_0 ;
  wire \output_reg[13]_i_2_n_0 ;
  wire \output_reg[14]_i_2_n_0 ;
  wire \output_reg[15]_i_2_n_0 ;
  wire \output_reg[8]_i_2_n_0 ;
  wire \output_reg[9]_i_2_n_0 ;
  wire [7:0]p_0_in;
  wire [15:0]r0;
  wire [15:0]r1;
  wire [15:0]r2;
  wire [15:0]r3;
  wire [15:0]r4;
  wire [15:0]r5;
  wire [15:0]r6;
  wire [15:0]r7;
  wire [2:0]reg_sel;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[0]_i_1 
       (.I0(mem[0]),
        .I1(mem_sel),
        .I2(alu[0]),
        .I3(alu_sel),
        .I4(\output[0]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[0]_i_2 
       (.I0(control[0]),
        .I1(control_sel),
        .I2(\output[0]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[0]_i_4_n_0 ),
        .O(\output[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[0]_i_3 
       (.I0(r7[0]),
        .I1(r6[0]),
        .I2(reg_sel[1]),
        .I3(r5[0]),
        .I4(reg_sel[0]),
        .I5(r4[0]),
        .O(\output[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[0]_i_4 
       (.I0(r3[0]),
        .I1(r2[0]),
        .I2(reg_sel[1]),
        .I3(r1[0]),
        .I4(reg_sel[0]),
        .I5(r0[0]),
        .O(\output[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[10]_i_1 
       (.I0(alu[10]),
        .I1(alu_sel),
        .I2(control[10]),
        .I3(control_sel),
        .I4(\output_reg[10]_i_2_n_0 ),
        .O(\output[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[10]_i_3 
       (.I0(r3[10]),
        .I1(r2[10]),
        .I2(reg_sel[1]),
        .I3(r1[10]),
        .I4(reg_sel[0]),
        .I5(r0[10]),
        .O(\output[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[10]_i_4 
       (.I0(r7[10]),
        .I1(r6[10]),
        .I2(reg_sel[1]),
        .I3(r5[10]),
        .I4(reg_sel[0]),
        .I5(r4[10]),
        .O(\output[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[11]_i_1 
       (.I0(alu[11]),
        .I1(alu_sel),
        .I2(control[11]),
        .I3(control_sel),
        .I4(\output_reg[11]_i_2_n_0 ),
        .O(\output[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[11]_i_3 
       (.I0(r3[11]),
        .I1(r2[11]),
        .I2(reg_sel[1]),
        .I3(r1[11]),
        .I4(reg_sel[0]),
        .I5(r0[11]),
        .O(\output[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[11]_i_4 
       (.I0(r7[11]),
        .I1(r6[11]),
        .I2(reg_sel[1]),
        .I3(r5[11]),
        .I4(reg_sel[0]),
        .I5(r4[11]),
        .O(\output[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[12]_i_1 
       (.I0(alu[12]),
        .I1(alu_sel),
        .I2(control[12]),
        .I3(control_sel),
        .I4(\output_reg[12]_i_2_n_0 ),
        .O(\output[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[12]_i_3 
       (.I0(r3[12]),
        .I1(r2[12]),
        .I2(reg_sel[1]),
        .I3(r1[12]),
        .I4(reg_sel[0]),
        .I5(r0[12]),
        .O(\output[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[12]_i_4 
       (.I0(r7[12]),
        .I1(r6[12]),
        .I2(reg_sel[1]),
        .I3(r5[12]),
        .I4(reg_sel[0]),
        .I5(r4[12]),
        .O(\output[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[13]_i_1 
       (.I0(alu[13]),
        .I1(alu_sel),
        .I2(control[13]),
        .I3(control_sel),
        .I4(\output_reg[13]_i_2_n_0 ),
        .O(\output[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[13]_i_3 
       (.I0(r3[13]),
        .I1(r2[13]),
        .I2(reg_sel[1]),
        .I3(r1[13]),
        .I4(reg_sel[0]),
        .I5(r0[13]),
        .O(\output[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[13]_i_4 
       (.I0(r7[13]),
        .I1(r6[13]),
        .I2(reg_sel[1]),
        .I3(r5[13]),
        .I4(reg_sel[0]),
        .I5(r4[13]),
        .O(\output[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[14]_i_1 
       (.I0(alu[14]),
        .I1(alu_sel),
        .I2(control[14]),
        .I3(control_sel),
        .I4(\output_reg[14]_i_2_n_0 ),
        .O(\output[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[14]_i_3 
       (.I0(r3[14]),
        .I1(r2[14]),
        .I2(reg_sel[1]),
        .I3(r1[14]),
        .I4(reg_sel[0]),
        .I5(r0[14]),
        .O(\output[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[14]_i_4 
       (.I0(r7[14]),
        .I1(r6[14]),
        .I2(reg_sel[1]),
        .I3(r5[14]),
        .I4(reg_sel[0]),
        .I5(r4[14]),
        .O(\output[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[15]_i_1 
       (.I0(alu[15]),
        .I1(alu_sel),
        .I2(control[15]),
        .I3(control_sel),
        .I4(\output_reg[15]_i_2_n_0 ),
        .O(\output[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[15]_i_3 
       (.I0(r3[15]),
        .I1(r2[15]),
        .I2(reg_sel[1]),
        .I3(r1[15]),
        .I4(reg_sel[0]),
        .I5(r0[15]),
        .O(\output[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[15]_i_4 
       (.I0(r7[15]),
        .I1(r6[15]),
        .I2(reg_sel[1]),
        .I3(r5[15]),
        .I4(reg_sel[0]),
        .I5(r4[15]),
        .O(\output[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[1]_i_1 
       (.I0(mem[1]),
        .I1(mem_sel),
        .I2(alu[1]),
        .I3(alu_sel),
        .I4(\output[1]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[1]_i_2 
       (.I0(control[1]),
        .I1(control_sel),
        .I2(\output[1]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[1]_i_4_n_0 ),
        .O(\output[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[1]_i_3 
       (.I0(r7[1]),
        .I1(r6[1]),
        .I2(reg_sel[1]),
        .I3(r5[1]),
        .I4(reg_sel[0]),
        .I5(r4[1]),
        .O(\output[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[1]_i_4 
       (.I0(r3[1]),
        .I1(r2[1]),
        .I2(reg_sel[1]),
        .I3(r1[1]),
        .I4(reg_sel[0]),
        .I5(r0[1]),
        .O(\output[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[2]_i_1 
       (.I0(mem[2]),
        .I1(mem_sel),
        .I2(alu[2]),
        .I3(alu_sel),
        .I4(\output[2]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[2]_i_2 
       (.I0(control[2]),
        .I1(control_sel),
        .I2(\output[2]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[2]_i_4_n_0 ),
        .O(\output[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[2]_i_3 
       (.I0(r7[2]),
        .I1(r6[2]),
        .I2(reg_sel[1]),
        .I3(r5[2]),
        .I4(reg_sel[0]),
        .I5(r4[2]),
        .O(\output[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[2]_i_4 
       (.I0(r3[2]),
        .I1(r2[2]),
        .I2(reg_sel[1]),
        .I3(r1[2]),
        .I4(reg_sel[0]),
        .I5(r0[2]),
        .O(\output[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[3]_i_1 
       (.I0(mem[3]),
        .I1(mem_sel),
        .I2(alu[3]),
        .I3(alu_sel),
        .I4(\output[3]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[3]_i_2 
       (.I0(control[3]),
        .I1(control_sel),
        .I2(\output[3]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[3]_i_4_n_0 ),
        .O(\output[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[3]_i_3 
       (.I0(r7[3]),
        .I1(r6[3]),
        .I2(reg_sel[1]),
        .I3(r5[3]),
        .I4(reg_sel[0]),
        .I5(r4[3]),
        .O(\output[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[3]_i_4 
       (.I0(r3[3]),
        .I1(r2[3]),
        .I2(reg_sel[1]),
        .I3(r1[3]),
        .I4(reg_sel[0]),
        .I5(r0[3]),
        .O(\output[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[4]_i_1 
       (.I0(mem[4]),
        .I1(mem_sel),
        .I2(alu[4]),
        .I3(alu_sel),
        .I4(\output[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[4]_i_2 
       (.I0(control[4]),
        .I1(control_sel),
        .I2(\output[4]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[4]_i_4_n_0 ),
        .O(\output[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[4]_i_3 
       (.I0(r7[4]),
        .I1(r6[4]),
        .I2(reg_sel[1]),
        .I3(r5[4]),
        .I4(reg_sel[0]),
        .I5(r4[4]),
        .O(\output[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[4]_i_4 
       (.I0(r3[4]),
        .I1(r2[4]),
        .I2(reg_sel[1]),
        .I3(r1[4]),
        .I4(reg_sel[0]),
        .I5(r0[4]),
        .O(\output[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[5]_i_1 
       (.I0(mem[5]),
        .I1(mem_sel),
        .I2(alu[5]),
        .I3(alu_sel),
        .I4(\output[5]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[5]_i_2 
       (.I0(control[5]),
        .I1(control_sel),
        .I2(\output[5]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[5]_i_4_n_0 ),
        .O(\output[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[5]_i_3 
       (.I0(r7[5]),
        .I1(r6[5]),
        .I2(reg_sel[1]),
        .I3(r5[5]),
        .I4(reg_sel[0]),
        .I5(r4[5]),
        .O(\output[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[5]_i_4 
       (.I0(r3[5]),
        .I1(r2[5]),
        .I2(reg_sel[1]),
        .I3(r1[5]),
        .I4(reg_sel[0]),
        .I5(r0[5]),
        .O(\output[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[6]_i_1 
       (.I0(mem[6]),
        .I1(mem_sel),
        .I2(alu[6]),
        .I3(alu_sel),
        .I4(\output[6]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[6]_i_2 
       (.I0(control[6]),
        .I1(control_sel),
        .I2(\output[6]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[6]_i_4_n_0 ),
        .O(\output[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[6]_i_3 
       (.I0(r7[6]),
        .I1(r6[6]),
        .I2(reg_sel[1]),
        .I3(r5[6]),
        .I4(reg_sel[0]),
        .I5(r4[6]),
        .O(\output[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[6]_i_4 
       (.I0(r3[6]),
        .I1(r2[6]),
        .I2(reg_sel[1]),
        .I3(r1[6]),
        .I4(reg_sel[0]),
        .I5(r0[6]),
        .O(\output[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[7]_i_1 
       (.I0(mem[7]),
        .I1(mem_sel),
        .I2(alu[7]),
        .I3(alu_sel),
        .I4(\output[7]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[7]_i_2 
       (.I0(control[7]),
        .I1(control_sel),
        .I2(\output[7]_i_3_n_0 ),
        .I3(reg_sel[2]),
        .I4(\output[7]_i_4_n_0 ),
        .O(\output[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[7]_i_3 
       (.I0(r7[7]),
        .I1(r6[7]),
        .I2(reg_sel[1]),
        .I3(r5[7]),
        .I4(reg_sel[0]),
        .I5(r4[7]),
        .O(\output[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[7]_i_4 
       (.I0(r3[7]),
        .I1(r2[7]),
        .I2(reg_sel[1]),
        .I3(r1[7]),
        .I4(reg_sel[0]),
        .I5(r0[7]),
        .O(\output[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[8]_i_1 
       (.I0(alu[8]),
        .I1(alu_sel),
        .I2(control[8]),
        .I3(control_sel),
        .I4(\output_reg[8]_i_2_n_0 ),
        .O(\output[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[8]_i_3 
       (.I0(r3[8]),
        .I1(r2[8]),
        .I2(reg_sel[1]),
        .I3(r1[8]),
        .I4(reg_sel[0]),
        .I5(r0[8]),
        .O(\output[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[8]_i_4 
       (.I0(r7[8]),
        .I1(r6[8]),
        .I2(reg_sel[1]),
        .I3(r5[8]),
        .I4(reg_sel[0]),
        .I5(r4[8]),
        .O(\output[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \output[9]_i_1 
       (.I0(alu[9]),
        .I1(alu_sel),
        .I2(control[9]),
        .I3(control_sel),
        .I4(\output_reg[9]_i_2_n_0 ),
        .O(\output[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[9]_i_3 
       (.I0(r3[9]),
        .I1(r2[9]),
        .I2(reg_sel[1]),
        .I3(r1[9]),
        .I4(reg_sel[0]),
        .I5(r0[9]),
        .O(\output[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output[9]_i_4 
       (.I0(r7[9]),
        .I1(r6[9]),
        .I2(reg_sel[1]),
        .I3(r5[9]),
        .I4(reg_sel[0]),
        .I5(r4[9]),
        .O(\output[9]_i_4_n_0 ));
  FDRE \output_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\output [0]),
        .R(1'b0));
  FDRE \output_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[10]_i_1_n_0 ),
        .Q(\output [10]),
        .R(mem_sel));
  MUXF7 \output_reg[10]_i_2 
       (.I0(\output[10]_i_3_n_0 ),
        .I1(\output[10]_i_4_n_0 ),
        .O(\output_reg[10]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[11]_i_1_n_0 ),
        .Q(\output [11]),
        .R(mem_sel));
  MUXF7 \output_reg[11]_i_2 
       (.I0(\output[11]_i_3_n_0 ),
        .I1(\output[11]_i_4_n_0 ),
        .O(\output_reg[11]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[12]_i_1_n_0 ),
        .Q(\output [12]),
        .R(mem_sel));
  MUXF7 \output_reg[12]_i_2 
       (.I0(\output[12]_i_3_n_0 ),
        .I1(\output[12]_i_4_n_0 ),
        .O(\output_reg[12]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[13]_i_1_n_0 ),
        .Q(\output [13]),
        .R(mem_sel));
  MUXF7 \output_reg[13]_i_2 
       (.I0(\output[13]_i_3_n_0 ),
        .I1(\output[13]_i_4_n_0 ),
        .O(\output_reg[13]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[14]_i_1_n_0 ),
        .Q(\output [14]),
        .R(mem_sel));
  MUXF7 \output_reg[14]_i_2 
       (.I0(\output[14]_i_3_n_0 ),
        .I1(\output[14]_i_4_n_0 ),
        .O(\output_reg[14]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[15]_i_1_n_0 ),
        .Q(\output [15]),
        .R(mem_sel));
  MUXF7 \output_reg[15]_i_2 
       (.I0(\output[15]_i_3_n_0 ),
        .I1(\output[15]_i_4_n_0 ),
        .O(\output_reg[15]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\output [1]),
        .R(1'b0));
  FDRE \output_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\output [2]),
        .R(1'b0));
  FDRE \output_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\output [3]),
        .R(1'b0));
  FDRE \output_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\output [4]),
        .R(1'b0));
  FDRE \output_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\output [5]),
        .R(1'b0));
  FDRE \output_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\output [6]),
        .R(1'b0));
  FDRE \output_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\output [7]),
        .R(1'b0));
  FDRE \output_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[8]_i_1_n_0 ),
        .Q(\output [8]),
        .R(mem_sel));
  MUXF7 \output_reg[8]_i_2 
       (.I0(\output[8]_i_3_n_0 ),
        .I1(\output[8]_i_4_n_0 ),
        .O(\output_reg[8]_i_2_n_0 ),
        .S(reg_sel[2]));
  FDRE \output_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\output[9]_i_1_n_0 ),
        .Q(\output [9]),
        .R(mem_sel));
  MUXF7 \output_reg[9]_i_2 
       (.I0(\output[9]_i_3_n_0 ),
        .I1(\output[9]_i_4_n_0 ),
        .O(\output_reg[9]_i_2_n_0 ),
        .S(reg_sel[2]));
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
