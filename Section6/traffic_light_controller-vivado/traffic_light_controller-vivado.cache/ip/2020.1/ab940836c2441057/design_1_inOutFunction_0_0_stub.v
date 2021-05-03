// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec 14 19:08:56 2020
// Host        : USR running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_inOutFunction_0_0_stub.v
// Design      : design_1_inOutFunction_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "inOutFunction,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(l, r, u, d, rule1, rule2, rule3, rule4, rule5, ew, ns)
/* synthesis syn_black_box black_box_pad_pin="l,r,u,d,rule1,rule2,rule3,rule4,rule5,ew,ns" */;
  input l;
  input r;
  input u;
  input d;
  output rule1;
  output rule2;
  output rule3;
  output rule4;
  output rule5;
  output ew;
  output ns;
endmodule
