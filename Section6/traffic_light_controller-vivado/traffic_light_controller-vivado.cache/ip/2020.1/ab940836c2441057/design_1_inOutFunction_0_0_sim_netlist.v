// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec 14 19:08:56 2020
// Host        : USR running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_inOutFunction_0_0_sim_netlist.v
// Design      : design_1_inOutFunction_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_inOutFunction_0_0,inOutFunction,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "inOutFunction,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (l,
    r,
    u,
    d,
    rule1,
    rule2,
    rule3,
    rule4,
    rule5,
    ew,
    ns);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 l DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME l, LAYERED_METADATA undef" *) input l;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 r DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME r, LAYERED_METADATA undef" *) input r;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 u DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME u, LAYERED_METADATA undef" *) input u;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d, LAYERED_METADATA undef" *) input d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rule1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rule1, LAYERED_METADATA undef" *) output rule1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rule2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rule2, LAYERED_METADATA undef" *) output rule2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rule3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rule3, LAYERED_METADATA undef" *) output rule3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rule4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rule4, LAYERED_METADATA undef" *) output rule4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rule5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rule5, LAYERED_METADATA undef" *) output rule5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ew DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ew, LAYERED_METADATA undef" *) output ew;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ns DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ns, LAYERED_METADATA undef" *) output ns;

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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inOutFunction inst
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

(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inOutFunction
   (l,
    r,
    u,
    d,
    rule1,
    rule2,
    rule3,
    rule4,
    rule5,
    ew,
    ns);
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

  wire \<const0> ;
  wire \<const1> ;
  wire d;
  wire l;
  wire r;
  wire rule1;
  wire rule2;
  wire rule3;
  wire rule4;
  wire rule5;
  wire u;

  assign ew = \<const1> ;
  assign ns = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    rule1_INST_0
       (.I0(r),
        .I1(l),
        .O(rule1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    rule2_INST_0
       (.I0(l),
        .I1(r),
        .I2(u),
        .I3(d),
        .O(rule2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8FFF)) 
    rule3_INST_0
       (.I0(l),
        .I1(r),
        .I2(u),
        .I3(d),
        .O(rule3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    rule4_INST_0
       (.I0(d),
        .I1(u),
        .I2(l),
        .I3(r),
        .O(rule4));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    rule5_INST_0
       (.I0(d),
        .I1(r),
        .I2(l),
        .I3(u),
        .O(rule5));
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
