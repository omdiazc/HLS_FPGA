// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Dec 16 17:24:17 2020
// Host        : USR running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/usr/Workspaces/HLS/Seccion9/leading_one-vivado/leading_one-vivado.srcs/sources_1/bd/design_1/ip/design_1_leading_one_0_0/design_1_leading_one_0_0_stub.v
// Design      : design_1_leading_one_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "leading_one,Vivado 2020.1" *)
module design_1_leading_one_0_0(a_V, ap_return)
/* synthesis syn_black_box black_box_pad_pin="a_V[8:0],ap_return[4:0]" */;
  input [8:0]a_V;
  output [4:0]ap_return;
endmodule
