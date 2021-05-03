//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sun Dec 13 21:38:40 2020
//Host        : USR running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (a,
    b,
    c,
    d);
  input a;
  input b;
  input c;
  output d;

  wire a;
  wire b;
  wire c;
  wire d;

  design_1 design_1_i
       (.a(a),
        .b(b),
        .c(c),
        .d(d));
endmodule
