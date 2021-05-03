//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Dec 14 19:35:38 2020
//Host        : USR running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (d,
    ew,
    l,
    ns,
    r,
    rule1,
    rule2,
    rule3,
    rule4,
    rule5,
    u);
  input d;
  output ew;
  input l;
  output ns;
  input r;
  output rule1;
  output rule2;
  output rule3;
  output rule4;
  output rule5;
  input u;

  wire d;
  wire ew;
  wire l;
  wire ns;
  wire r;
  wire rule1;
  wire rule2;
  wire rule3;
  wire rule4;
  wire rule5;
  wire u;

  design_1 design_1_i
       (.d(d),
        .ew(ew),
        .l(l),
        .ns(ns),
        .r(r),
        .rule1(rule1),
        .rule2(rule2),
        .rule3(rule3),
        .rule4(rule4),
        .rule5(rule5),
        .u(u));
endmodule
