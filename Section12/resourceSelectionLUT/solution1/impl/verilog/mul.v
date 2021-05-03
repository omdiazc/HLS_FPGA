// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mul (
        ap_ready,
        a,
        b,
        ap_return
);


output   ap_ready;
input  [31:0] a;
input  [31:0] b;
output  [31:0] ap_return;

wire   [31:0] t_fu_26_p2;

inOutFunction_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inOutFunction_mulbkb_U1(
    .din0(b),
    .din1(a),
    .dout(t_fu_26_p2)
);

assign ap_ready = 1'b1;

assign ap_return = t_fu_26_p2;

endmodule //mul
