//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Dec 16 17:23:42 2020
//Host        : USR running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (a,
    leading_one);
  input [8:0]a;
  output [4:0]leading_one;

  wire [8:0]a;
  wire [4:0]leading_one;

  design_1 design_1_i
       (.a(a),
        .leading_one(leading_one));
endmodule
