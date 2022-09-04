// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Aug 28 12:21:37 2022
// Host        : framework running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_pc_0_0/tdp11_pc_0_0_sim_netlist.v
// Design      : tdp11_pc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tdp11_pc_0_0,pc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pc,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module tdp11_pc_0_0
   (clk,
    rst,
    inc,
    load,
    \input ,
    \output );
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input inc;
  input load;
  input [15:0]\input ;
  output [15:0]\output ;

  wire clk;
  wire inc;
  wire [15:0]\input ;
  wire load;
  wire [15:0]\output ;
  wire rst;

  tdp11_pc_0_0_pc U0
       (.clk(clk),
        .inc(inc),
        .\input (\input ),
        .load(load),
        .\output (\output ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pc" *) 
module tdp11_pc_0_0_pc
   (\output ,
    clk,
    rst,
    inc,
    \input ,
    load);
  output [15:0]\output ;
  input clk;
  input rst;
  input inc;
  input [15:0]\input ;
  input load;

  wire clk;
  wire inc;
  wire [15:0]\input ;
  wire load;
  wire [15:0]\output ;
  wire \output[3]_i_2_n_0 ;
  wire \output_reg[11]_i_1_n_0 ;
  wire \output_reg[11]_i_1_n_1 ;
  wire \output_reg[11]_i_1_n_2 ;
  wire \output_reg[11]_i_1_n_3 ;
  wire \output_reg[11]_i_1_n_4 ;
  wire \output_reg[11]_i_1_n_5 ;
  wire \output_reg[11]_i_1_n_6 ;
  wire \output_reg[11]_i_1_n_7 ;
  wire \output_reg[15]_i_2_n_1 ;
  wire \output_reg[15]_i_2_n_2 ;
  wire \output_reg[15]_i_2_n_3 ;
  wire \output_reg[15]_i_2_n_4 ;
  wire \output_reg[15]_i_2_n_5 ;
  wire \output_reg[15]_i_2_n_6 ;
  wire \output_reg[15]_i_2_n_7 ;
  wire \output_reg[3]_i_1_n_0 ;
  wire \output_reg[3]_i_1_n_1 ;
  wire \output_reg[3]_i_1_n_2 ;
  wire \output_reg[3]_i_1_n_3 ;
  wire \output_reg[3]_i_1_n_4 ;
  wire \output_reg[3]_i_1_n_5 ;
  wire \output_reg[3]_i_1_n_6 ;
  wire \output_reg[3]_i_1_n_7 ;
  wire \output_reg[7]_i_1_n_0 ;
  wire \output_reg[7]_i_1_n_1 ;
  wire \output_reg[7]_i_1_n_2 ;
  wire \output_reg[7]_i_1_n_3 ;
  wire \output_reg[7]_i_1_n_4 ;
  wire \output_reg[7]_i_1_n_5 ;
  wire \output_reg[7]_i_1_n_6 ;
  wire \output_reg[7]_i_1_n_7 ;
  wire rst;
  wire sel;
  wire \value[0]_i_2_n_0 ;
  wire \value[0]_i_3_n_0 ;
  wire \value[0]_i_4_n_0 ;
  wire \value[0]_i_5_n_0 ;
  wire \value[12]_i_2_n_0 ;
  wire \value[12]_i_3_n_0 ;
  wire \value[12]_i_4_n_0 ;
  wire \value[12]_i_5_n_0 ;
  wire \value[4]_i_2_n_0 ;
  wire \value[4]_i_3_n_0 ;
  wire \value[4]_i_4_n_0 ;
  wire \value[4]_i_5_n_0 ;
  wire \value[8]_i_2_n_0 ;
  wire \value[8]_i_3_n_0 ;
  wire \value[8]_i_4_n_0 ;
  wire \value[8]_i_5_n_0 ;
  wire [15:0]value_reg;
  wire \value_reg[0]_i_1_n_0 ;
  wire \value_reg[0]_i_1_n_1 ;
  wire \value_reg[0]_i_1_n_2 ;
  wire \value_reg[0]_i_1_n_3 ;
  wire \value_reg[0]_i_1_n_4 ;
  wire \value_reg[0]_i_1_n_5 ;
  wire \value_reg[0]_i_1_n_6 ;
  wire \value_reg[0]_i_1_n_7 ;
  wire \value_reg[12]_i_1_n_1 ;
  wire \value_reg[12]_i_1_n_2 ;
  wire \value_reg[12]_i_1_n_3 ;
  wire \value_reg[12]_i_1_n_4 ;
  wire \value_reg[12]_i_1_n_5 ;
  wire \value_reg[12]_i_1_n_6 ;
  wire \value_reg[12]_i_1_n_7 ;
  wire \value_reg[4]_i_1_n_0 ;
  wire \value_reg[4]_i_1_n_1 ;
  wire \value_reg[4]_i_1_n_2 ;
  wire \value_reg[4]_i_1_n_3 ;
  wire \value_reg[4]_i_1_n_4 ;
  wire \value_reg[4]_i_1_n_5 ;
  wire \value_reg[4]_i_1_n_6 ;
  wire \value_reg[4]_i_1_n_7 ;
  wire \value_reg[8]_i_1_n_0 ;
  wire \value_reg[8]_i_1_n_1 ;
  wire \value_reg[8]_i_1_n_2 ;
  wire \value_reg[8]_i_1_n_3 ;
  wire \value_reg[8]_i_1_n_4 ;
  wire \value_reg[8]_i_1_n_5 ;
  wire \value_reg[8]_i_1_n_6 ;
  wire \value_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_output_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_value_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \output[15]_i_1 
       (.I0(load),
        .I1(inc),
        .O(sel));
  LUT2 #(
    .INIT(4'h6)) 
    \output[3]_i_2 
       (.I0(value_reg[0]),
        .I1(inc),
        .O(\output[3]_i_2_n_0 ));
  FDCE \output_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_7 ),
        .Q(\output [0]));
  FDCE \output_reg[10] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_5 ),
        .Q(\output [10]));
  FDCE \output_reg[11] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_4 ),
        .Q(\output [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \output_reg[11]_i_1 
       (.CI(\output_reg[7]_i_1_n_0 ),
        .CO({\output_reg[11]_i_1_n_0 ,\output_reg[11]_i_1_n_1 ,\output_reg[11]_i_1_n_2 ,\output_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_reg[11]_i_1_n_4 ,\output_reg[11]_i_1_n_5 ,\output_reg[11]_i_1_n_6 ,\output_reg[11]_i_1_n_7 }),
        .S(value_reg[11:8]));
  FDCE \output_reg[12] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_7 ),
        .Q(\output [12]));
  FDCE \output_reg[13] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_6 ),
        .Q(\output [13]));
  FDCE \output_reg[14] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_5 ),
        .Q(\output [14]));
  FDCE \output_reg[15] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[15]_i_2_n_4 ),
        .Q(\output [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \output_reg[15]_i_2 
       (.CI(\output_reg[11]_i_1_n_0 ),
        .CO({\NLW_output_reg[15]_i_2_CO_UNCONNECTED [3],\output_reg[15]_i_2_n_1 ,\output_reg[15]_i_2_n_2 ,\output_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_reg[15]_i_2_n_4 ,\output_reg[15]_i_2_n_5 ,\output_reg[15]_i_2_n_6 ,\output_reg[15]_i_2_n_7 }),
        .S(value_reg[15:12]));
  FDCE \output_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_6 ),
        .Q(\output [1]));
  FDCE \output_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_5 ),
        .Q(\output [2]));
  FDCE \output_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[3]_i_1_n_4 ),
        .Q(\output [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \output_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\output_reg[3]_i_1_n_0 ,\output_reg[3]_i_1_n_1 ,\output_reg[3]_i_1_n_2 ,\output_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,value_reg[0]}),
        .O({\output_reg[3]_i_1_n_4 ,\output_reg[3]_i_1_n_5 ,\output_reg[3]_i_1_n_6 ,\output_reg[3]_i_1_n_7 }),
        .S({value_reg[3:1],\output[3]_i_2_n_0 }));
  FDCE \output_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_7 ),
        .Q(\output [4]));
  FDCE \output_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_6 ),
        .Q(\output [5]));
  FDCE \output_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_5 ),
        .Q(\output [6]));
  FDCE \output_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[7]_i_1_n_4 ),
        .Q(\output [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \output_reg[7]_i_1 
       (.CI(\output_reg[3]_i_1_n_0 ),
        .CO({\output_reg[7]_i_1_n_0 ,\output_reg[7]_i_1_n_1 ,\output_reg[7]_i_1_n_2 ,\output_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_reg[7]_i_1_n_4 ,\output_reg[7]_i_1_n_5 ,\output_reg[7]_i_1_n_6 ,\output_reg[7]_i_1_n_7 }),
        .S(value_reg[7:4]));
  FDCE \output_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_7 ),
        .Q(\output [8]));
  FDCE \output_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\output_reg[11]_i_1_n_6 ),
        .Q(\output [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[0]_i_2 
       (.I0(value_reg[3]),
        .I1(inc),
        .I2(\input [3]),
        .O(\value[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[0]_i_3 
       (.I0(value_reg[2]),
        .I1(inc),
        .I2(\input [2]),
        .O(\value[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[0]_i_4 
       (.I0(value_reg[1]),
        .I1(inc),
        .I2(\input [1]),
        .O(\value[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \value[0]_i_5 
       (.I0(\input [0]),
        .I1(value_reg[0]),
        .I2(inc),
        .O(\value[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[12]_i_2 
       (.I0(value_reg[15]),
        .I1(inc),
        .I2(\input [15]),
        .O(\value[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[12]_i_3 
       (.I0(value_reg[14]),
        .I1(inc),
        .I2(\input [14]),
        .O(\value[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[12]_i_4 
       (.I0(value_reg[13]),
        .I1(inc),
        .I2(\input [13]),
        .O(\value[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[12]_i_5 
       (.I0(value_reg[12]),
        .I1(inc),
        .I2(\input [12]),
        .O(\value[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[4]_i_2 
       (.I0(value_reg[7]),
        .I1(inc),
        .I2(\input [7]),
        .O(\value[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[4]_i_3 
       (.I0(value_reg[6]),
        .I1(inc),
        .I2(\input [6]),
        .O(\value[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[4]_i_4 
       (.I0(value_reg[5]),
        .I1(inc),
        .I2(\input [5]),
        .O(\value[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[4]_i_5 
       (.I0(value_reg[4]),
        .I1(inc),
        .I2(\input [4]),
        .O(\value[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[8]_i_2 
       (.I0(value_reg[11]),
        .I1(inc),
        .I2(\input [11]),
        .O(\value[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[8]_i_3 
       (.I0(value_reg[10]),
        .I1(inc),
        .I2(\input [10]),
        .O(\value[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[8]_i_4 
       (.I0(value_reg[9]),
        .I1(inc),
        .I2(\input [9]),
        .O(\value[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[8]_i_5 
       (.I0(value_reg[8]),
        .I1(inc),
        .I2(\input [8]),
        .O(\value[8]_i_5_n_0 ));
  FDCE \value_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[0]_i_1_n_7 ),
        .Q(value_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \value_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\value_reg[0]_i_1_n_0 ,\value_reg[0]_i_1_n_1 ,\value_reg[0]_i_1_n_2 ,\value_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,inc}),
        .O({\value_reg[0]_i_1_n_4 ,\value_reg[0]_i_1_n_5 ,\value_reg[0]_i_1_n_6 ,\value_reg[0]_i_1_n_7 }),
        .S({\value[0]_i_2_n_0 ,\value[0]_i_3_n_0 ,\value[0]_i_4_n_0 ,\value[0]_i_5_n_0 }));
  FDCE \value_reg[10] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[8]_i_1_n_5 ),
        .Q(value_reg[10]));
  FDCE \value_reg[11] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[8]_i_1_n_4 ),
        .Q(value_reg[11]));
  FDCE \value_reg[12] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[12]_i_1_n_7 ),
        .Q(value_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \value_reg[12]_i_1 
       (.CI(\value_reg[8]_i_1_n_0 ),
        .CO({\NLW_value_reg[12]_i_1_CO_UNCONNECTED [3],\value_reg[12]_i_1_n_1 ,\value_reg[12]_i_1_n_2 ,\value_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\value_reg[12]_i_1_n_4 ,\value_reg[12]_i_1_n_5 ,\value_reg[12]_i_1_n_6 ,\value_reg[12]_i_1_n_7 }),
        .S({\value[12]_i_2_n_0 ,\value[12]_i_3_n_0 ,\value[12]_i_4_n_0 ,\value[12]_i_5_n_0 }));
  FDCE \value_reg[13] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[12]_i_1_n_6 ),
        .Q(value_reg[13]));
  FDCE \value_reg[14] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[12]_i_1_n_5 ),
        .Q(value_reg[14]));
  FDCE \value_reg[15] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[12]_i_1_n_4 ),
        .Q(value_reg[15]));
  FDCE \value_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[0]_i_1_n_6 ),
        .Q(value_reg[1]));
  FDCE \value_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[0]_i_1_n_5 ),
        .Q(value_reg[2]));
  FDCE \value_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[0]_i_1_n_4 ),
        .Q(value_reg[3]));
  FDCE \value_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[4]_i_1_n_7 ),
        .Q(value_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \value_reg[4]_i_1 
       (.CI(\value_reg[0]_i_1_n_0 ),
        .CO({\value_reg[4]_i_1_n_0 ,\value_reg[4]_i_1_n_1 ,\value_reg[4]_i_1_n_2 ,\value_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\value_reg[4]_i_1_n_4 ,\value_reg[4]_i_1_n_5 ,\value_reg[4]_i_1_n_6 ,\value_reg[4]_i_1_n_7 }),
        .S({\value[4]_i_2_n_0 ,\value[4]_i_3_n_0 ,\value[4]_i_4_n_0 ,\value[4]_i_5_n_0 }));
  FDCE \value_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[4]_i_1_n_6 ),
        .Q(value_reg[5]));
  FDCE \value_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[4]_i_1_n_5 ),
        .Q(value_reg[6]));
  FDCE \value_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[4]_i_1_n_4 ),
        .Q(value_reg[7]));
  FDCE \value_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[8]_i_1_n_7 ),
        .Q(value_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \value_reg[8]_i_1 
       (.CI(\value_reg[4]_i_1_n_0 ),
        .CO({\value_reg[8]_i_1_n_0 ,\value_reg[8]_i_1_n_1 ,\value_reg[8]_i_1_n_2 ,\value_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\value_reg[8]_i_1_n_4 ,\value_reg[8]_i_1_n_5 ,\value_reg[8]_i_1_n_6 ,\value_reg[8]_i_1_n_7 }),
        .S({\value[8]_i_2_n_0 ,\value[8]_i_3_n_0 ,\value[8]_i_4_n_0 ,\value[8]_i_5_n_0 }));
  FDCE \value_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(rst),
        .D(\value_reg[8]_i_1_n_6 ),
        .Q(value_reg[9]));
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
