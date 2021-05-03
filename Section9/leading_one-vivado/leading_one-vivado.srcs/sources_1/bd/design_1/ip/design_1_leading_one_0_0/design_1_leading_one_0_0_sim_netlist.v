// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Dec 16 17:24:18 2020
// Host        : USR running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/usr/Workspaces/HLS/Seccion9/leading_one-vivado/leading_one-vivado.srcs/sources_1/bd/design_1/ip/design_1_leading_one_0_0/design_1_leading_one_0_0_sim_netlist.v
// Design      : design_1_leading_one_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_leading_one_0_0,leading_one,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "leading_one,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_leading_one_0_0
   (a_V,
    ap_return);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_V, LAYERED_METADATA undef" *) input [8:0]a_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef" *) output [4:0]ap_return;

  wire [8:0]a_V;
  wire [4:0]ap_return;

  design_1_leading_one_0_0_leading_one inst
       (.a_V(a_V),
        .ap_return(ap_return));
endmodule

(* ORIG_REF_NAME = "leading_one" *) (* hls_module = "yes" *) 
module design_1_leading_one_0_0_leading_one
   (a_V,
    ap_return);
  input [8:0]a_V;
  output [4:0]ap_return;

  wire [8:0]a_V;
  wire [4:0]ap_return;
  wire \ap_return[0]_INST_0_i_1_n_0 ;
  wire \ap_return[1]_INST_0_i_1_n_0 ;
  wire \ap_return[4]_INST_0_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h00000000AAEEAAFE)) 
    \ap_return[0]_INST_0 
       (.I0(a_V[7]),
        .I1(a_V[5]),
        .I2(\ap_return[0]_INST_0_i_1_n_0 ),
        .I3(a_V[6]),
        .I4(a_V[4]),
        .I5(a_V[8]),
        .O(ap_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF45)) 
    \ap_return[0]_INST_0_i_1 
       (.I0(a_V[2]),
        .I1(a_V[1]),
        .I2(a_V[0]),
        .I3(a_V[3]),
        .O(\ap_return[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEFE)) 
    \ap_return[1]_INST_0 
       (.I0(a_V[7]),
        .I1(a_V[6]),
        .I2(\ap_return[1]_INST_0_i_1_n_0 ),
        .I3(a_V[5]),
        .I4(a_V[4]),
        .I5(a_V[8]),
        .O(ap_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \ap_return[1]_INST_0_i_1 
       (.I0(a_V[1]),
        .I1(a_V[0]),
        .I2(a_V[3]),
        .I3(a_V[2]),
        .O(\ap_return[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000001)) 
    \ap_return[2]_INST_0 
       (.I0(a_V[2]),
        .I1(a_V[3]),
        .I2(a_V[1]),
        .I3(a_V[0]),
        .I4(a_V[8]),
        .I5(\ap_return[4]_INST_0_i_1_n_0 ),
        .O(ap_return[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \ap_return[3]_INST_0 
       (.I0(\ap_return[4]_INST_0_i_1_n_0 ),
        .I1(a_V[1]),
        .I2(a_V[0]),
        .I3(a_V[3]),
        .I4(a_V[2]),
        .I5(a_V[8]),
        .O(ap_return[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_return[4]_INST_0 
       (.I0(a_V[2]),
        .I1(a_V[3]),
        .I2(a_V[8]),
        .I3(a_V[1]),
        .I4(a_V[0]),
        .I5(\ap_return[4]_INST_0_i_1_n_0 ),
        .O(ap_return[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_return[4]_INST_0_i_1 
       (.I0(a_V[7]),
        .I1(a_V[5]),
        .I2(a_V[6]),
        .I3(a_V[4]),
        .O(\ap_return[4]_INST_0_i_1_n_0 ));
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
