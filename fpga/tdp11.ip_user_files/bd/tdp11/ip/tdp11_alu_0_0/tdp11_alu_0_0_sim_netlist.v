// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 15 21:17:36 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_alu_0_0/tdp11_alu_0_0_sim_netlist.v
// Design      : tdp11_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_alu_0_0,alu,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "alu,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_alu_0_0
   (clk,
    rhs,
    lhs,
    op,
    \output ,
    z,
    g,
    l,
    c);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  input [15:0]rhs;
  input [15:0]lhs;
  input [3:0]op;
  output [15:0]\output ;
  output z;
  output g;
  output l;
  output c;

  wire c;
  wire clk;
  wire g;
  wire l;
  wire [15:0]lhs;
  wire [3:0]op;
  wire [15:0]\output ;
  wire [15:0]rhs;
  wire z;

  tdp11_alu_0_0_alu U0
       (.c(c),
        .clk(clk),
        .g(g),
        .l(l),
        .lhs(lhs),
        .op(op),
        .\output (\output ),
        .rhs(rhs),
        .z(z));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module tdp11_alu_0_0_alu
   (\output ,
    g,
    l,
    c,
    z,
    clk,
    op,
    lhs,
    rhs);
  output [15:0]\output ;
  output g;
  output l;
  output c;
  output z;
  input clk;
  input [3:0]op;
  input [15:0]lhs;
  input [15:0]rhs;

  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__2_i_1_n_0;
  wire _carry__2_i_2_n_0;
  wire _carry__2_i_3_n_0;
  wire _carry__2_i_4_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire c;
  wire c1_carry__0_i_1_n_0;
  wire c1_carry__0_i_2_n_0;
  wire c1_carry__0_i_3_n_0;
  wire c1_carry__0_i_4_n_0;
  wire c1_carry__0_i_5_n_0;
  wire c1_carry__0_i_6_n_0;
  wire c1_carry__0_i_7_n_0;
  wire c1_carry__0_i_8_n_0;
  wire c1_carry__0_n_0;
  wire c1_carry__0_n_1;
  wire c1_carry__0_n_2;
  wire c1_carry__0_n_3;
  wire c1_carry__1_n_3;
  wire c1_carry_i_1_n_0;
  wire c1_carry_i_2_n_0;
  wire c1_carry_i_3_n_0;
  wire c1_carry_i_4_n_0;
  wire c1_carry_i_5_n_0;
  wire c1_carry_i_6_n_0;
  wire c1_carry_i_7_n_0;
  wire c1_carry_i_8_n_0;
  wire c1_carry_n_0;
  wire c1_carry_n_1;
  wire c1_carry_n_2;
  wire c1_carry_n_3;
  wire clk;
  wire [15:0]data0;
  wire g;
  wire g0_carry__0_i_1_n_0;
  wire g0_carry__0_i_2_n_0;
  wire g0_carry__0_i_3_n_0;
  wire g0_carry__0_i_4_n_0;
  wire g0_carry__0_i_5_n_0;
  wire g0_carry__0_i_6_n_0;
  wire g0_carry__0_i_7_n_0;
  wire g0_carry__0_i_8_n_0;
  wire g0_carry__0_n_0;
  wire g0_carry__0_n_1;
  wire g0_carry__0_n_2;
  wire g0_carry__0_n_3;
  wire g0_carry_i_1_n_0;
  wire g0_carry_i_2_n_0;
  wire g0_carry_i_3_n_0;
  wire g0_carry_i_4_n_0;
  wire g0_carry_i_5_n_0;
  wire g0_carry_i_6_n_0;
  wire g0_carry_i_7_n_0;
  wire g0_carry_i_8_n_0;
  wire g0_carry_n_0;
  wire g0_carry_n_1;
  wire g0_carry_n_2;
  wire g0_carry_n_3;
  wire l;
  wire [15:0]lhs;
  wire [3:0]op;
  wire [15:0]\output ;
  wire [0:0]p_0_out;
  wire [15:0]result;
  wire \result[0]_i_2_n_0 ;
  wire \result[0]_i_3_n_0 ;
  wire \result[0]_i_4_n_0 ;
  wire \result[0]_i_5_n_0 ;
  wire \result[10]_i_2_n_0 ;
  wire \result[10]_i_3_n_0 ;
  wire \result[10]_i_4_n_0 ;
  wire \result[10]_i_5_n_0 ;
  wire \result[11]_i_2_n_0 ;
  wire \result[11]_i_3_n_0 ;
  wire \result[11]_i_4_n_0 ;
  wire \result[11]_i_5_n_0 ;
  wire \result[12]_i_2_n_0 ;
  wire \result[12]_i_3_n_0 ;
  wire \result[12]_i_4_n_0 ;
  wire \result[12]_i_5_n_0 ;
  wire \result[13]_i_2_n_0 ;
  wire \result[13]_i_3_n_0 ;
  wire \result[13]_i_4_n_0 ;
  wire \result[13]_i_5_n_0 ;
  wire \result[14]_i_2_n_0 ;
  wire \result[14]_i_3_n_0 ;
  wire \result[14]_i_4_n_0 ;
  wire \result[14]_i_5_n_0 ;
  wire \result[15]_i_2_n_0 ;
  wire \result[15]_i_3_n_0 ;
  wire \result[15]_i_4_n_0 ;
  wire \result[15]_i_5_n_0 ;
  wire \result[1]_i_2_n_0 ;
  wire \result[1]_i_3_n_0 ;
  wire \result[1]_i_4_n_0 ;
  wire \result[1]_i_5_n_0 ;
  wire \result[2]_i_2_n_0 ;
  wire \result[2]_i_3_n_0 ;
  wire \result[2]_i_4_n_0 ;
  wire \result[2]_i_5_n_0 ;
  wire \result[3]_i_2_n_0 ;
  wire \result[3]_i_3_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[4]_i_2_n_0 ;
  wire \result[4]_i_3_n_0 ;
  wire \result[4]_i_4_n_0 ;
  wire \result[4]_i_5_n_0 ;
  wire \result[5]_i_2_n_0 ;
  wire \result[5]_i_3_n_0 ;
  wire \result[5]_i_4_n_0 ;
  wire \result[5]_i_5_n_0 ;
  wire \result[6]_i_2_n_0 ;
  wire \result[6]_i_3_n_0 ;
  wire \result[6]_i_4_n_0 ;
  wire \result[6]_i_5_n_0 ;
  wire \result[7]_i_2_n_0 ;
  wire \result[7]_i_3_n_0 ;
  wire \result[7]_i_4_n_0 ;
  wire \result[7]_i_5_n_0 ;
  wire \result[8]_i_2_n_0 ;
  wire \result[8]_i_3_n_0 ;
  wire \result[8]_i_4_n_0 ;
  wire \result[8]_i_5_n_0 ;
  wire \result[9]_i_2_n_0 ;
  wire \result[9]_i_3_n_0 ;
  wire \result[9]_i_4_n_0 ;
  wire \result[9]_i_5_n_0 ;
  wire [15:0]result_0;
  wire [15:0]rhs;
  wire z;
  wire z_i_1_n_0;
  wire z_i_2_n_0;
  wire z_i_3_n_0;
  wire [3:3]NLW__carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_c1_carry_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_c1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_c1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_g0_carry_O_UNCONNECTED;
  wire [3:0]NLW_g0_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(lhs[0]),
        .DI({lhs[3:1],p_0_out}),
        .O(data0[3:0]),
        .S({_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0,_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(lhs[7:4]),
        .O(data0[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__0_i_1
       (.I0(rhs[7]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[7]),
        .O(_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__0_i_2
       (.I0(rhs[6]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[6]),
        .O(_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__0_i_3
       (.I0(rhs[5]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[5]),
        .O(_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__0_i_4
       (.I0(rhs[4]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[4]),
        .O(_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(lhs[11:8]),
        .O(data0[11:8]),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__1_i_1
       (.I0(rhs[11]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[11]),
        .O(_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__1_i_2
       (.I0(rhs[10]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[10]),
        .O(_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__1_i_3
       (.I0(rhs[9]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[9]),
        .O(_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__1_i_4
       (.I0(rhs[8]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[8]),
        .O(_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({NLW__carry__2_CO_UNCONNECTED[3],_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,lhs[14:12]}),
        .O(data0[15:12]),
        .S({_carry__2_i_1_n_0,_carry__2_i_2_n_0,_carry__2_i_3_n_0,_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'hE11E)) 
    _carry__2_i_1
       (.I0(op[1]),
        .I1(op[0]),
        .I2(lhs[15]),
        .I3(rhs[15]),
        .O(_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__2_i_2
       (.I0(rhs[14]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[14]),
        .O(_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__2_i_3
       (.I0(rhs[13]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[13]),
        .O(_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__2_i_4
       (.I0(rhs[12]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[12]),
        .O(_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    _carry_i_1
       (.I0(op[0]),
        .I1(op[1]),
        .O(p_0_out));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry_i_2
       (.I0(rhs[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[3]),
        .O(_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry_i_3
       (.I0(rhs[2]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[2]),
        .O(_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry_i_4
       (.I0(rhs[1]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(lhs[1]),
        .O(_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    _carry_i_5
       (.I0(rhs[0]),
        .O(_carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry
       (.CI(1'b0),
        .CO({c1_carry_n_0,c1_carry_n_1,c1_carry_n_2,c1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry_i_1_n_0,c1_carry_i_2_n_0,c1_carry_i_3_n_0,c1_carry_i_4_n_0}),
        .O(NLW_c1_carry_O_UNCONNECTED[3:0]),
        .S({c1_carry_i_5_n_0,c1_carry_i_6_n_0,c1_carry_i_7_n_0,c1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry__0
       (.CI(c1_carry_n_0),
        .CO({c1_carry__0_n_0,c1_carry__0_n_1,c1_carry__0_n_2,c1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry__0_i_1_n_0,c1_carry__0_i_2_n_0,c1_carry__0_i_3_n_0,c1_carry__0_i_4_n_0}),
        .O(NLW_c1_carry__0_O_UNCONNECTED[3:0]),
        .S({c1_carry__0_i_5_n_0,c1_carry__0_i_6_n_0,c1_carry__0_i_7_n_0,c1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_1
       (.I0(result[14]),
        .I1(result[15]),
        .O(c1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry__0_i_2
       (.I0(result[12]),
        .I1(result[13]),
        .O(c1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry__0_i_3
       (.I0(result[10]),
        .I1(result[11]),
        .O(c1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry__0_i_4
       (.I0(result[8]),
        .I1(result[9]),
        .O(c1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    c1_carry__0_i_5
       (.I0(result[14]),
        .I1(result[15]),
        .O(c1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry__0_i_6
       (.I0(result[12]),
        .I1(result[13]),
        .O(c1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry__0_i_7
       (.I0(result[10]),
        .I1(result[11]),
        .O(c1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry__0_i_8
       (.I0(result[8]),
        .I1(result[9]),
        .O(c1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry__1
       (.CI(c1_carry__0_n_0),
        .CO({NLW_c1_carry__1_CO_UNCONNECTED[3:1],c1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,result[15]}));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry_i_1
       (.I0(result[6]),
        .I1(result[7]),
        .O(c1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry_i_2
       (.I0(result[4]),
        .I1(result[5]),
        .O(c1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry_i_3
       (.I0(result[2]),
        .I1(result[3]),
        .O(c1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    c1_carry_i_4
       (.I0(result[0]),
        .I1(result[1]),
        .O(c1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry_i_5
       (.I0(result[6]),
        .I1(result[7]),
        .O(c1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry_i_6
       (.I0(result[4]),
        .I1(result[5]),
        .O(c1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry_i_7
       (.I0(result[2]),
        .I1(result[3]),
        .O(c1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry_i_8
       (.I0(result[0]),
        .I1(result[1]),
        .O(c1_carry_i_8_n_0));
  FDRE c_reg
       (.C(clk),
        .CE(1'b1),
        .D(c1_carry__1_n_3),
        .Q(c),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 g0_carry
       (.CI(1'b0),
        .CO({g0_carry_n_0,g0_carry_n_1,g0_carry_n_2,g0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({g0_carry_i_1_n_0,g0_carry_i_2_n_0,g0_carry_i_3_n_0,g0_carry_i_4_n_0}),
        .O(NLW_g0_carry_O_UNCONNECTED[3:0]),
        .S({g0_carry_i_5_n_0,g0_carry_i_6_n_0,g0_carry_i_7_n_0,g0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 g0_carry__0
       (.CI(g0_carry_n_0),
        .CO({g0_carry__0_n_0,g0_carry__0_n_1,g0_carry__0_n_2,g0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({g0_carry__0_i_1_n_0,g0_carry__0_i_2_n_0,g0_carry__0_i_3_n_0,g0_carry__0_i_4_n_0}),
        .O(NLW_g0_carry__0_O_UNCONNECTED[3:0]),
        .S({g0_carry__0_i_5_n_0,g0_carry__0_i_6_n_0,g0_carry__0_i_7_n_0,g0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    g0_carry__0_i_1
       (.I0(result[14]),
        .I1(result[15]),
        .O(g0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry__0_i_2
       (.I0(result[12]),
        .I1(result[13]),
        .O(g0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry__0_i_3
       (.I0(result[10]),
        .I1(result[11]),
        .O(g0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry__0_i_4
       (.I0(result[8]),
        .I1(result[9]),
        .O(g0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry__0_i_5
       (.I0(result[14]),
        .I1(result[15]),
        .O(g0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry__0_i_6
       (.I0(result[13]),
        .I1(result[12]),
        .O(g0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry__0_i_7
       (.I0(result[11]),
        .I1(result[10]),
        .O(g0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry__0_i_8
       (.I0(result[9]),
        .I1(result[8]),
        .O(g0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry_i_1
       (.I0(result[6]),
        .I1(result[7]),
        .O(g0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry_i_2
       (.I0(result[4]),
        .I1(result[5]),
        .O(g0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry_i_3
       (.I0(result[2]),
        .I1(result[3]),
        .O(g0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_carry_i_4
       (.I0(result[0]),
        .I1(result[1]),
        .O(g0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry_i_5
       (.I0(result[7]),
        .I1(result[6]),
        .O(g0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry_i_6
       (.I0(result[5]),
        .I1(result[4]),
        .O(g0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry_i_7
       (.I0(result[3]),
        .I1(result[2]),
        .O(g0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_carry_i_8
       (.I0(result[1]),
        .I1(result[0]),
        .O(g0_carry_i_8_n_0));
  FDRE g_reg
       (.C(clk),
        .CE(1'b1),
        .D(g0_carry__0_n_0),
        .Q(g),
        .R(1'b0));
  FDRE l_reg
       (.C(clk),
        .CE(1'b1),
        .D(result[15]),
        .Q(l),
        .R(1'b0));
  FDRE \output_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(result[0]),
        .Q(\output [0]),
        .R(1'b0));
  FDRE \output_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(result[10]),
        .Q(\output [10]),
        .R(1'b0));
  FDRE \output_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(result[11]),
        .Q(\output [11]),
        .R(1'b0));
  FDRE \output_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(result[12]),
        .Q(\output [12]),
        .R(1'b0));
  FDRE \output_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(result[13]),
        .Q(\output [13]),
        .R(1'b0));
  FDRE \output_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(result[14]),
        .Q(\output [14]),
        .R(1'b0));
  FDRE \output_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(result[15]),
        .Q(\output [15]),
        .R(1'b0));
  FDRE \output_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(result[1]),
        .Q(\output [1]),
        .R(1'b0));
  FDRE \output_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(result[2]),
        .Q(\output [2]),
        .R(1'b0));
  FDRE \output_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(result[3]),
        .Q(\output [3]),
        .R(1'b0));
  FDRE \output_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(result[4]),
        .Q(\output [4]),
        .R(1'b0));
  FDRE \output_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(result[5]),
        .Q(\output [5]),
        .R(1'b0));
  FDRE \output_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(result[6]),
        .Q(\output [6]),
        .R(1'b0));
  FDRE \output_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(result[7]),
        .Q(\output [7]),
        .R(1'b0));
  FDRE \output_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(result[8]),
        .Q(\output [8]),
        .R(1'b0));
  FDRE \output_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(result[9]),
        .Q(\output [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[0]_i_2 
       (.I0(\result[0]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[0]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[0]),
        .O(\result[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[0]_i_3 
       (.I0(lhs[0]),
        .O(\result[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h83B3B380)) 
    \result[0]_i_4 
       (.I0(lhs[1]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(rhs[0]),
        .I4(lhs[0]),
        .O(\result[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[0]_i_5 
       (.I0(rhs[0]),
        .I1(lhs[0]),
        .O(\result[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[10]_i_2 
       (.I0(\result[10]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[10]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[10]),
        .O(\result[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[10]_i_3 
       (.I0(lhs[10]),
        .O(\result[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[10]_i_4 
       (.I0(lhs[11]),
        .I1(lhs[9]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[10]),
        .I5(lhs[10]),
        .O(\result[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[10]_i_5 
       (.I0(rhs[10]),
        .I1(lhs[10]),
        .O(\result[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[11]_i_2 
       (.I0(\result[11]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[11]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[11]),
        .O(\result[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[11]_i_3 
       (.I0(lhs[11]),
        .O(\result[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[11]_i_4 
       (.I0(lhs[12]),
        .I1(lhs[10]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[11]),
        .I5(lhs[11]),
        .O(\result[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[11]_i_5 
       (.I0(rhs[11]),
        .I1(lhs[11]),
        .O(\result[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[12]_i_2 
       (.I0(\result[12]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[12]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[12]),
        .O(\result[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_3 
       (.I0(lhs[12]),
        .O(\result[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[12]_i_4 
       (.I0(lhs[13]),
        .I1(lhs[11]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[12]),
        .I5(lhs[12]),
        .O(\result[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[12]_i_5 
       (.I0(rhs[12]),
        .I1(lhs[12]),
        .O(\result[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[13]_i_2 
       (.I0(\result[13]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[13]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[13]),
        .O(\result[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[13]_i_3 
       (.I0(lhs[13]),
        .O(\result[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[13]_i_4 
       (.I0(lhs[14]),
        .I1(lhs[12]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[13]),
        .I5(lhs[13]),
        .O(\result[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[13]_i_5 
       (.I0(rhs[13]),
        .I1(lhs[13]),
        .O(\result[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[14]_i_2 
       (.I0(\result[14]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[14]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[14]),
        .O(\result[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[14]_i_3 
       (.I0(lhs[14]),
        .O(\result[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[14]_i_4 
       (.I0(lhs[15]),
        .I1(lhs[13]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[14]),
        .I5(lhs[14]),
        .O(\result[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[14]_i_5 
       (.I0(rhs[14]),
        .I1(lhs[14]),
        .O(\result[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[15]_i_2 
       (.I0(\result[15]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[15]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[15]),
        .O(\result[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[15]_i_3 
       (.I0(lhs[15]),
        .O(\result[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0B3B3B08)) 
    \result[15]_i_4 
       (.I0(lhs[14]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(rhs[15]),
        .I4(lhs[15]),
        .O(\result[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[15]_i_5 
       (.I0(rhs[15]),
        .I1(lhs[15]),
        .O(\result[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[1]_i_2 
       (.I0(\result[1]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[1]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[1]),
        .O(\result[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[1]_i_3 
       (.I0(lhs[1]),
        .O(\result[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[1]_i_4 
       (.I0(lhs[2]),
        .I1(lhs[0]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[1]),
        .I5(lhs[1]),
        .O(\result[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[1]_i_5 
       (.I0(rhs[1]),
        .I1(lhs[1]),
        .O(\result[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[2]_i_2 
       (.I0(\result[2]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[2]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[2]),
        .O(\result[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[2]_i_3 
       (.I0(lhs[2]),
        .O(\result[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[2]_i_4 
       (.I0(lhs[3]),
        .I1(lhs[1]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[2]),
        .I5(lhs[2]),
        .O(\result[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[2]_i_5 
       (.I0(rhs[2]),
        .I1(lhs[2]),
        .O(\result[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[3]_i_2 
       (.I0(\result[3]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[3]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[3]),
        .O(\result[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[3]_i_3 
       (.I0(lhs[3]),
        .O(\result[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[3]_i_4 
       (.I0(lhs[4]),
        .I1(lhs[2]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[3]),
        .I5(lhs[3]),
        .O(\result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[3]_i_5 
       (.I0(rhs[3]),
        .I1(lhs[3]),
        .O(\result[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[4]_i_2 
       (.I0(\result[4]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[4]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[4]),
        .O(\result[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_3 
       (.I0(lhs[4]),
        .O(\result[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[4]_i_4 
       (.I0(lhs[5]),
        .I1(lhs[3]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[4]),
        .I5(lhs[4]),
        .O(\result[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[4]_i_5 
       (.I0(rhs[4]),
        .I1(lhs[4]),
        .O(\result[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[5]_i_2 
       (.I0(\result[5]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[5]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[5]),
        .O(\result[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[5]_i_3 
       (.I0(lhs[5]),
        .O(\result[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[5]_i_4 
       (.I0(lhs[6]),
        .I1(lhs[4]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[5]),
        .I5(lhs[5]),
        .O(\result[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[5]_i_5 
       (.I0(rhs[5]),
        .I1(lhs[5]),
        .O(\result[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[6]_i_2 
       (.I0(\result[6]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[6]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[6]),
        .O(\result[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[6]_i_3 
       (.I0(lhs[6]),
        .O(\result[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[6]_i_4 
       (.I0(lhs[7]),
        .I1(lhs[5]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[6]),
        .I5(lhs[6]),
        .O(\result[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[6]_i_5 
       (.I0(rhs[6]),
        .I1(lhs[6]),
        .O(\result[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[7]_i_2 
       (.I0(\result[7]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[7]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[7]),
        .O(\result[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[7]_i_3 
       (.I0(lhs[7]),
        .O(\result[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[7]_i_4 
       (.I0(lhs[8]),
        .I1(lhs[6]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[7]),
        .I5(lhs[7]),
        .O(\result[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[7]_i_5 
       (.I0(rhs[7]),
        .I1(lhs[7]),
        .O(\result[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[8]_i_2 
       (.I0(\result[8]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[8]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[8]),
        .O(\result[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_3 
       (.I0(lhs[8]),
        .O(\result[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[8]_i_4 
       (.I0(lhs[9]),
        .I1(lhs[7]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[8]),
        .I5(lhs[8]),
        .O(\result[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[8]_i_5 
       (.I0(rhs[8]),
        .I1(lhs[8]),
        .O(\result[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \result[9]_i_2 
       (.I0(\result[9]_i_4_n_0 ),
        .I1(op[2]),
        .I2(\result[9]_i_5_n_0 ),
        .I3(op[0]),
        .I4(op[1]),
        .I5(data0[9]),
        .O(\result[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[9]_i_3 
       (.I0(lhs[9]),
        .O(\result[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFAFCFAFCFA0C0)) 
    \result[9]_i_4 
       (.I0(lhs[10]),
        .I1(lhs[8]),
        .I2(op[1]),
        .I3(op[0]),
        .I4(rhs[9]),
        .I5(lhs[9]),
        .O(\result[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[9]_i_5 
       (.I0(rhs[9]),
        .I1(lhs[9]),
        .O(\result[9]_i_5_n_0 ));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[0]),
        .Q(result[0]),
        .R(1'b0));
  MUXF7 \result_reg[0]_i_1 
       (.I0(\result[0]_i_2_n_0 ),
        .I1(\result[0]_i_3_n_0 ),
        .O(result_0[0]),
        .S(op[3]));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[10]),
        .Q(result[10]),
        .R(1'b0));
  MUXF7 \result_reg[10]_i_1 
       (.I0(\result[10]_i_2_n_0 ),
        .I1(\result[10]_i_3_n_0 ),
        .O(result_0[10]),
        .S(op[3]));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[11]),
        .Q(result[11]),
        .R(1'b0));
  MUXF7 \result_reg[11]_i_1 
       (.I0(\result[11]_i_2_n_0 ),
        .I1(\result[11]_i_3_n_0 ),
        .O(result_0[11]),
        .S(op[3]));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[12]),
        .Q(result[12]),
        .R(1'b0));
  MUXF7 \result_reg[12]_i_1 
       (.I0(\result[12]_i_2_n_0 ),
        .I1(\result[12]_i_3_n_0 ),
        .O(result_0[12]),
        .S(op[3]));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[13]),
        .Q(result[13]),
        .R(1'b0));
  MUXF7 \result_reg[13]_i_1 
       (.I0(\result[13]_i_2_n_0 ),
        .I1(\result[13]_i_3_n_0 ),
        .O(result_0[13]),
        .S(op[3]));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[14]),
        .Q(result[14]),
        .R(1'b0));
  MUXF7 \result_reg[14]_i_1 
       (.I0(\result[14]_i_2_n_0 ),
        .I1(\result[14]_i_3_n_0 ),
        .O(result_0[14]),
        .S(op[3]));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[15]),
        .Q(result[15]),
        .R(1'b0));
  MUXF7 \result_reg[15]_i_1 
       (.I0(\result[15]_i_2_n_0 ),
        .I1(\result[15]_i_3_n_0 ),
        .O(result_0[15]),
        .S(op[3]));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[1]),
        .Q(result[1]),
        .R(1'b0));
  MUXF7 \result_reg[1]_i_1 
       (.I0(\result[1]_i_2_n_0 ),
        .I1(\result[1]_i_3_n_0 ),
        .O(result_0[1]),
        .S(op[3]));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[2]),
        .Q(result[2]),
        .R(1'b0));
  MUXF7 \result_reg[2]_i_1 
       (.I0(\result[2]_i_2_n_0 ),
        .I1(\result[2]_i_3_n_0 ),
        .O(result_0[2]),
        .S(op[3]));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[3]),
        .Q(result[3]),
        .R(1'b0));
  MUXF7 \result_reg[3]_i_1 
       (.I0(\result[3]_i_2_n_0 ),
        .I1(\result[3]_i_3_n_0 ),
        .O(result_0[3]),
        .S(op[3]));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[4]),
        .Q(result[4]),
        .R(1'b0));
  MUXF7 \result_reg[4]_i_1 
       (.I0(\result[4]_i_2_n_0 ),
        .I1(\result[4]_i_3_n_0 ),
        .O(result_0[4]),
        .S(op[3]));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[5]),
        .Q(result[5]),
        .R(1'b0));
  MUXF7 \result_reg[5]_i_1 
       (.I0(\result[5]_i_2_n_0 ),
        .I1(\result[5]_i_3_n_0 ),
        .O(result_0[5]),
        .S(op[3]));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[6]),
        .Q(result[6]),
        .R(1'b0));
  MUXF7 \result_reg[6]_i_1 
       (.I0(\result[6]_i_2_n_0 ),
        .I1(\result[6]_i_3_n_0 ),
        .O(result_0[6]),
        .S(op[3]));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[7]),
        .Q(result[7]),
        .R(1'b0));
  MUXF7 \result_reg[7]_i_1 
       (.I0(\result[7]_i_2_n_0 ),
        .I1(\result[7]_i_3_n_0 ),
        .O(result_0[7]),
        .S(op[3]));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[8]),
        .Q(result[8]),
        .R(1'b0));
  MUXF7 \result_reg[8]_i_1 
       (.I0(\result[8]_i_2_n_0 ),
        .I1(\result[8]_i_3_n_0 ),
        .O(result_0[8]),
        .S(op[3]));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(result_0[9]),
        .Q(result[9]),
        .R(1'b0));
  MUXF7 \result_reg[9]_i_1 
       (.I0(\result[9]_i_2_n_0 ),
        .I1(\result[9]_i_3_n_0 ),
        .O(result_0[9]),
        .S(op[3]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    z_i_1
       (.I0(z_i_2_n_0),
        .I1(result[15]),
        .I2(result[14]),
        .I3(result[7]),
        .I4(result[6]),
        .I5(z_i_3_n_0),
        .O(z_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    z_i_2
       (.I0(result[0]),
        .I1(result[1]),
        .I2(result[2]),
        .I3(result[3]),
        .I4(result[5]),
        .I5(result[4]),
        .O(z_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    z_i_3
       (.I0(result[8]),
        .I1(result[9]),
        .I2(result[10]),
        .I3(result[11]),
        .I4(result[13]),
        .I5(result[12]),
        .O(z_i_3_n_0));
  FDRE z_reg
       (.C(clk),
        .CE(1'b1),
        .D(z_i_1_n_0),
        .Q(z),
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
