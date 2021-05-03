// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Dec 13 15:22:51 2020
// Host        : USR running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/usr/Workspaces/HLS/Ejercicios/Seccion5/punto1-vivado/punto1-vivado.srcs/sources_1/bd/design_1/ip/design_1_in_out_0_0/design_1_in_out_0_0_stub.v
// Design      : design_1_in_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "in_out,Vivado 2020.1" *)
module design_1_in_out_0_0(input_r, output_r)
/* synthesis syn_black_box black_box_pad_pin="input_r[15:0],output_r[15:0]" */;
  input [15:0]input_r;
  output [15:0]output_r;
endmodule
