// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="inOutFunction,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.956000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=30,HLS_VERSION=2020_1}" *)

module inOutFunction (
        l,
        r,
        u,
        d,
        rule1,
        rule2,
        rule3,
        rule4,
        rule5,
        ew,
        ns
);


input   l;
input   r;
input   u;
input   d;
output   rule1;
output   rule2;
output   rule3;
output   rule4;
output   rule5;
output   ew;
output   ns;

wire   [0:0] and_ln20_fu_121_p2;
wire   [0:0] and_ln20_fu_121_p0;
wire   [0:0] and_ln20_fu_121_p1;
wire   [0:0] xor_ln21_fu_128_p0;
wire   [0:0] xor_ln21_fu_128_p1;
wire   [0:0] and_ln21_fu_134_p0;
wire   [0:0] and_ln21_fu_134_p1;
wire   [0:0] and_ln21_fu_134_p2;
wire   [0:0] xor_ln21_fu_128_p2;
wire   [0:0] xor_ln21_1_fu_140_p2;
wire   [0:0] r_not8_fu_153_p0;
wire   [0:0] r_not8_fu_153_p2;
wire   [0:0] or_ln22_fu_159_p2;
wire   [0:0] or_ln22_1_fu_165_p1;
wire   [0:0] tmp1_fu_172_p0;
wire   [0:0] tmp1_fu_172_p1;
wire   [0:0] tmp1_fu_172_p2;
wire   [0:0] phitmp_fu_178_p2;
wire   [0:0] or_ln24_fu_191_p0;
wire   [0:0] or_ln24_fu_191_p1;
wire   [0:0] or_ln24_1_fu_197_p0;
wire   [0:0] or_ln24_1_fu_197_p1;
wire   [0:0] or_ln24_1_fu_197_p2;
wire   [0:0] or_ln24_fu_191_p2;
wire   [0:0] or_ln24_2_fu_203_p2;

assign and_ln20_fu_121_p0 = l;

assign and_ln20_fu_121_p1 = r;

assign and_ln20_fu_121_p2 = (and_ln20_fu_121_p1 & and_ln20_fu_121_p0);

assign and_ln21_fu_134_p0 = u;

assign and_ln21_fu_134_p1 = d;

assign and_ln21_fu_134_p2 = (and_ln21_fu_134_p1 & and_ln21_fu_134_p0);

assign ew = 1'd1;

assign ns = 1'd0;

assign or_ln22_1_fu_165_p1 = l;

assign or_ln22_fu_159_p2 = (xor_ln21_1_fu_140_p2 | r_not8_fu_153_p2);

assign or_ln24_1_fu_197_p0 = d;

assign or_ln24_1_fu_197_p1 = u;

assign or_ln24_1_fu_197_p2 = (or_ln24_1_fu_197_p1 | or_ln24_1_fu_197_p0);

assign or_ln24_2_fu_203_p2 = (or_ln24_fu_191_p2 | or_ln24_1_fu_197_p2);

assign or_ln24_fu_191_p0 = r;

assign or_ln24_fu_191_p1 = l;

assign or_ln24_fu_191_p2 = (or_ln24_fu_191_p1 | or_ln24_fu_191_p0);

assign phitmp_fu_178_p2 = (tmp1_fu_172_p2 ^ 1'd1);

assign r_not8_fu_153_p0 = r;

assign r_not8_fu_153_p2 = (r_not8_fu_153_p0 ^ 1'd1);

assign rule1 = and_ln20_fu_121_p2;

assign rule2 = (xor_ln21_fu_128_p2 & xor_ln21_1_fu_140_p2);

assign rule3 = (or_ln22_fu_159_p2 | or_ln22_1_fu_165_p1);

assign rule4 = (phitmp_fu_178_p2 | and_ln20_fu_121_p2);

assign rule5 = (or_ln24_2_fu_203_p2 ^ 1'd1);

assign tmp1_fu_172_p0 = u;

assign tmp1_fu_172_p1 = d;

assign tmp1_fu_172_p2 = (tmp1_fu_172_p1 ^ tmp1_fu_172_p0);

assign xor_ln21_1_fu_140_p2 = (1'd1 ^ and_ln21_fu_134_p2);

assign xor_ln21_fu_128_p0 = r;

assign xor_ln21_fu_128_p1 = l;

assign xor_ln21_fu_128_p2 = (xor_ln21_fu_128_p1 ^ xor_ln21_fu_128_p0);

endmodule //inOutFunction
