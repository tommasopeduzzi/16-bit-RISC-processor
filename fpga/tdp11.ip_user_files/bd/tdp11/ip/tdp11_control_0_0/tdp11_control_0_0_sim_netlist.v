// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Aug 28 19:59:32 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top tdp11_control_0_0 -prefix
//               tdp11_control_0_0_ tdp11_control_0_0_sim_netlist.v
// Design      : tdp11_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tdp11_control_0_0_control
   (addr_pc_sel,
    current_opcode,
    \input ,
    clk,
    rst);
  output addr_pc_sel;
  output [5:0]current_opcode;
  input [5:0]\input ;
  input clk;
  input rst;

  wire addr_pc_sel;
  wire addr_pc_sel0;
  wire clk;
  wire [5:0]current_opcode;
  wire [5:0]\input ;
  wire [5:0]opcode;
  wire p_0_in;
  wire pc_inc_i_3_n_0;
  wire pc_inc_i_4_n_0;
  wire pc_inc_i_5_n_0;
  wire pc_inc_i_6_n_0;
  wire pc_inc_i_7_n_0;
  wire pc_inc_i_8_n_0;
  wire pc_inc_i_9_n_0;
  wire rst;
  wire \step[0]_i_2_n_0 ;
  wire [30:0]step_reg;
  wire \step_reg[0]_i_1_n_0 ;
  wire \step_reg[0]_i_1_n_1 ;
  wire \step_reg[0]_i_1_n_2 ;
  wire \step_reg[0]_i_1_n_3 ;
  wire \step_reg[0]_i_1_n_4 ;
  wire \step_reg[0]_i_1_n_5 ;
  wire \step_reg[0]_i_1_n_6 ;
  wire \step_reg[0]_i_1_n_7 ;
  wire \step_reg[12]_i_1_n_0 ;
  wire \step_reg[12]_i_1_n_1 ;
  wire \step_reg[12]_i_1_n_2 ;
  wire \step_reg[12]_i_1_n_3 ;
  wire \step_reg[12]_i_1_n_4 ;
  wire \step_reg[12]_i_1_n_5 ;
  wire \step_reg[12]_i_1_n_6 ;
  wire \step_reg[12]_i_1_n_7 ;
  wire \step_reg[16]_i_1_n_0 ;
  wire \step_reg[16]_i_1_n_1 ;
  wire \step_reg[16]_i_1_n_2 ;
  wire \step_reg[16]_i_1_n_3 ;
  wire \step_reg[16]_i_1_n_4 ;
  wire \step_reg[16]_i_1_n_5 ;
  wire \step_reg[16]_i_1_n_6 ;
  wire \step_reg[16]_i_1_n_7 ;
  wire \step_reg[20]_i_1_n_0 ;
  wire \step_reg[20]_i_1_n_1 ;
  wire \step_reg[20]_i_1_n_2 ;
  wire \step_reg[20]_i_1_n_3 ;
  wire \step_reg[20]_i_1_n_4 ;
  wire \step_reg[20]_i_1_n_5 ;
  wire \step_reg[20]_i_1_n_6 ;
  wire \step_reg[20]_i_1_n_7 ;
  wire \step_reg[24]_i_1_n_0 ;
  wire \step_reg[24]_i_1_n_1 ;
  wire \step_reg[24]_i_1_n_2 ;
  wire \step_reg[24]_i_1_n_3 ;
  wire \step_reg[24]_i_1_n_4 ;
  wire \step_reg[24]_i_1_n_5 ;
  wire \step_reg[24]_i_1_n_6 ;
  wire \step_reg[24]_i_1_n_7 ;
  wire \step_reg[28]_i_1_n_2 ;
  wire \step_reg[28]_i_1_n_3 ;
  wire \step_reg[28]_i_1_n_5 ;
  wire \step_reg[28]_i_1_n_6 ;
  wire \step_reg[28]_i_1_n_7 ;
  wire \step_reg[4]_i_1_n_0 ;
  wire \step_reg[4]_i_1_n_1 ;
  wire \step_reg[4]_i_1_n_2 ;
  wire \step_reg[4]_i_1_n_3 ;
  wire \step_reg[4]_i_1_n_4 ;
  wire \step_reg[4]_i_1_n_5 ;
  wire \step_reg[4]_i_1_n_6 ;
  wire \step_reg[4]_i_1_n_7 ;
  wire \step_reg[8]_i_1_n_0 ;
  wire \step_reg[8]_i_1_n_1 ;
  wire \step_reg[8]_i_1_n_2 ;
  wire \step_reg[8]_i_1_n_3 ;
  wire \step_reg[8]_i_1_n_4 ;
  wire \step_reg[8]_i_1_n_5 ;
  wire \step_reg[8]_i_1_n_6 ;
  wire \step_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_step_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step_reg[28]_i_1_O_UNCONNECTED ;

  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \current_opcode_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(opcode[0]),
        .Q(current_opcode[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \current_opcode_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(opcode[1]),
        .Q(current_opcode[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \current_opcode_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(opcode[2]),
        .Q(current_opcode[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \current_opcode_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(opcode[3]),
        .Q(current_opcode[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \current_opcode_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(opcode[4]),
        .Q(current_opcode[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \current_opcode_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(opcode[5]),
        .Q(current_opcode[5]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[0] 
       (.C(clk),
        .CE(addr_pc_sel0),
        .CLR(rst),
        .D(\input [0]),
        .Q(opcode[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[1] 
       (.C(clk),
        .CE(addr_pc_sel0),
        .CLR(rst),
        .D(\input [1]),
        .Q(opcode[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[2] 
       (.C(clk),
        .CE(addr_pc_sel0),
        .CLR(rst),
        .D(\input [2]),
        .Q(opcode[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[3] 
       (.C(clk),
        .CE(addr_pc_sel0),
        .CLR(rst),
        .D(\input [3]),
        .Q(opcode[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[4] 
       (.C(clk),
        .CE(addr_pc_sel0),
        .CLR(rst),
        .D(\input [4]),
        .Q(opcode[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[5] 
       (.C(clk),
        .CE(addr_pc_sel0),
        .CLR(rst),
        .D(\input [5]),
        .Q(opcode[5]));
  LUT1 #(
    .INIT(2'h1)) 
    pc_inc_i_1
       (.I0(rst),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    pc_inc_i_2
       (.I0(pc_inc_i_3_n_0),
        .I1(pc_inc_i_4_n_0),
        .O(addr_pc_sel0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    pc_inc_i_3
       (.I0(pc_inc_i_5_n_0),
        .I1(pc_inc_i_6_n_0),
        .I2(pc_inc_i_7_n_0),
        .I3(pc_inc_i_8_n_0),
        .I4(opcode[0]),
        .I5(pc_inc_i_9_n_0),
        .O(pc_inc_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_inc_i_4
       (.I0(step_reg[27]),
        .I1(step_reg[28]),
        .I2(step_reg[25]),
        .I3(step_reg[26]),
        .I4(step_reg[30]),
        .I5(step_reg[29]),
        .O(pc_inc_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_inc_i_5
       (.I0(step_reg[9]),
        .I1(step_reg[10]),
        .I2(step_reg[7]),
        .I3(step_reg[8]),
        .I4(step_reg[12]),
        .I5(step_reg[11]),
        .O(pc_inc_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_inc_i_6
       (.I0(step_reg[3]),
        .I1(step_reg[4]),
        .I2(step_reg[1]),
        .I3(step_reg[2]),
        .I4(step_reg[6]),
        .I5(step_reg[5]),
        .O(pc_inc_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_inc_i_7
       (.I0(step_reg[21]),
        .I1(step_reg[22]),
        .I2(step_reg[19]),
        .I3(step_reg[20]),
        .I4(step_reg[24]),
        .I5(step_reg[23]),
        .O(pc_inc_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_inc_i_8
       (.I0(step_reg[15]),
        .I1(step_reg[16]),
        .I2(step_reg[13]),
        .I3(step_reg[14]),
        .I4(step_reg[18]),
        .I5(step_reg[17]),
        .O(pc_inc_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_inc_i_9
       (.I0(opcode[3]),
        .I1(opcode[4]),
        .I2(opcode[1]),
        .I3(opcode[2]),
        .I4(step_reg[0]),
        .I5(opcode[5]),
        .O(pc_inc_i_9_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    pc_inc_reg
       (.C(clk),
        .CE(p_0_in),
        .D(addr_pc_sel0),
        .Q(addr_pc_sel),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \step[0]_i_2 
       (.I0(step_reg[0]),
        .O(\step[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[0]_i_1_n_7 ),
        .Q(step_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\step_reg[0]_i_1_n_0 ,\step_reg[0]_i_1_n_1 ,\step_reg[0]_i_1_n_2 ,\step_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\step_reg[0]_i_1_n_4 ,\step_reg[0]_i_1_n_5 ,\step_reg[0]_i_1_n_6 ,\step_reg[0]_i_1_n_7 }),
        .S({step_reg[3:1],\step[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[8]_i_1_n_5 ),
        .Q(step_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[8]_i_1_n_4 ),
        .Q(step_reg[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[12]_i_1_n_7 ),
        .Q(step_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[12]_i_1 
       (.CI(\step_reg[8]_i_1_n_0 ),
        .CO({\step_reg[12]_i_1_n_0 ,\step_reg[12]_i_1_n_1 ,\step_reg[12]_i_1_n_2 ,\step_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_reg[12]_i_1_n_4 ,\step_reg[12]_i_1_n_5 ,\step_reg[12]_i_1_n_6 ,\step_reg[12]_i_1_n_7 }),
        .S(step_reg[15:12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[12]_i_1_n_6 ),
        .Q(step_reg[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[12]_i_1_n_5 ),
        .Q(step_reg[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[12]_i_1_n_4 ),
        .Q(step_reg[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[16]_i_1_n_7 ),
        .Q(step_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[16]_i_1 
       (.CI(\step_reg[12]_i_1_n_0 ),
        .CO({\step_reg[16]_i_1_n_0 ,\step_reg[16]_i_1_n_1 ,\step_reg[16]_i_1_n_2 ,\step_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_reg[16]_i_1_n_4 ,\step_reg[16]_i_1_n_5 ,\step_reg[16]_i_1_n_6 ,\step_reg[16]_i_1_n_7 }),
        .S(step_reg[19:16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[16]_i_1_n_6 ),
        .Q(step_reg[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[16]_i_1_n_5 ),
        .Q(step_reg[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[16]_i_1_n_4 ),
        .Q(step_reg[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[0]_i_1_n_6 ),
        .Q(step_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[20]_i_1_n_7 ),
        .Q(step_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[20]_i_1 
       (.CI(\step_reg[16]_i_1_n_0 ),
        .CO({\step_reg[20]_i_1_n_0 ,\step_reg[20]_i_1_n_1 ,\step_reg[20]_i_1_n_2 ,\step_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_reg[20]_i_1_n_4 ,\step_reg[20]_i_1_n_5 ,\step_reg[20]_i_1_n_6 ,\step_reg[20]_i_1_n_7 }),
        .S(step_reg[23:20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[20]_i_1_n_6 ),
        .Q(step_reg[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[20]_i_1_n_5 ),
        .Q(step_reg[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[20]_i_1_n_4 ),
        .Q(step_reg[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[24]_i_1_n_7 ),
        .Q(step_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[24]_i_1 
       (.CI(\step_reg[20]_i_1_n_0 ),
        .CO({\step_reg[24]_i_1_n_0 ,\step_reg[24]_i_1_n_1 ,\step_reg[24]_i_1_n_2 ,\step_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_reg[24]_i_1_n_4 ,\step_reg[24]_i_1_n_5 ,\step_reg[24]_i_1_n_6 ,\step_reg[24]_i_1_n_7 }),
        .S(step_reg[27:24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[24]_i_1_n_6 ),
        .Q(step_reg[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[24]_i_1_n_5 ),
        .Q(step_reg[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[24]_i_1_n_4 ),
        .Q(step_reg[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[28]_i_1_n_7 ),
        .Q(step_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[28]_i_1 
       (.CI(\step_reg[24]_i_1_n_0 ),
        .CO({\NLW_step_reg[28]_i_1_CO_UNCONNECTED [3:2],\step_reg[28]_i_1_n_2 ,\step_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_step_reg[28]_i_1_O_UNCONNECTED [3],\step_reg[28]_i_1_n_5 ,\step_reg[28]_i_1_n_6 ,\step_reg[28]_i_1_n_7 }),
        .S({1'b0,step_reg[30:28]}));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[28]_i_1_n_6 ),
        .Q(step_reg[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[0]_i_1_n_5 ),
        .Q(step_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[28]_i_1_n_5 ),
        .Q(step_reg[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[0]_i_1_n_4 ),
        .Q(step_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[4]_i_1_n_7 ),
        .Q(step_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[4]_i_1 
       (.CI(\step_reg[0]_i_1_n_0 ),
        .CO({\step_reg[4]_i_1_n_0 ,\step_reg[4]_i_1_n_1 ,\step_reg[4]_i_1_n_2 ,\step_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_reg[4]_i_1_n_4 ,\step_reg[4]_i_1_n_5 ,\step_reg[4]_i_1_n_6 ,\step_reg[4]_i_1_n_7 }),
        .S(step_reg[7:4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[4]_i_1_n_6 ),
        .Q(step_reg[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[4]_i_1_n_5 ),
        .Q(step_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[4]_i_1_n_4 ),
        .Q(step_reg[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[8]_i_1_n_7 ),
        .Q(step_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \step_reg[8]_i_1 
       (.CI(\step_reg[4]_i_1_n_0 ),
        .CO({\step_reg[8]_i_1_n_0 ,\step_reg[8]_i_1_n_1 ,\step_reg[8]_i_1_n_2 ,\step_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step_reg[8]_i_1_n_4 ,\step_reg[8]_i_1_n_5 ,\step_reg[8]_i_1_n_6 ,\step_reg[8]_i_1_n_7 }),
        .S(step_reg[11:8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \step_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\step_reg[8]_i_1_n_6 ),
        .Q(step_reg[9]));
endmodule

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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
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
  wire addr_pc_sel;
  wire clk;
  wire [5:0]current_opcode;
  wire [7:0]\input ;
  wire rst;

  assign addr_control_sel = \<const0> ;
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
  assign pc_inc = addr_pc_sel;
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
  tdp11_control_0_0_control U0
       (.addr_pc_sel(addr_pc_sel),
        .clk(clk),
        .current_opcode(current_opcode),
        .\input (\input [5:0]),
        .rst(rst));
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
