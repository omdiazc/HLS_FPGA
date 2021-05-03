//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Dec 14 19:35:38 2020
//Host        : USR running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.D DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.D, LAYERED_METADATA undef" *) input d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.EW DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.EW, LAYERED_METADATA undef" *) output ew;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.L DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.L, LAYERED_METADATA undef" *) input l;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NS, LAYERED_METADATA undef" *) output ns;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.R DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.R, LAYERED_METADATA undef" *) input r;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RULE1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RULE1, LAYERED_METADATA undef" *) output rule1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RULE2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RULE2, LAYERED_METADATA undef" *) output rule2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RULE3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RULE3, LAYERED_METADATA undef" *) output rule3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RULE4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RULE4, LAYERED_METADATA undef" *) output rule4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RULE5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RULE5, LAYERED_METADATA undef" *) output rule5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.U DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.U, LAYERED_METADATA undef" *) input u;

  wire d_0_1;
  wire inOutFunction_0_ew;
  wire inOutFunction_0_ns;
  wire inOutFunction_0_rule1;
  wire inOutFunction_0_rule2;
  wire inOutFunction_0_rule3;
  wire inOutFunction_0_rule4;
  wire inOutFunction_0_rule5;
  wire l_0_1;
  wire r_0_1;
  wire u_0_1;

  assign d_0_1 = d;
  assign ew = inOutFunction_0_ew;
  assign l_0_1 = l;
  assign ns = inOutFunction_0_ns;
  assign r_0_1 = r;
  assign rule1 = inOutFunction_0_rule1;
  assign rule2 = inOutFunction_0_rule2;
  assign rule3 = inOutFunction_0_rule3;
  assign rule4 = inOutFunction_0_rule4;
  assign rule5 = inOutFunction_0_rule5;
  assign u_0_1 = u;
  design_1_inOutFunction_0_0 inOutFunction_0
       (.d(d_0_1),
        .ew(inOutFunction_0_ew),
        .l(l_0_1),
        .ns(inOutFunction_0_ns),
        .r(r_0_1),
        .rule1(inOutFunction_0_rule1),
        .rule2(inOutFunction_0_rule2),
        .rule3(inOutFunction_0_rule3),
        .rule4(inOutFunction_0_rule4),
        .rule5(inOutFunction_0_rule5),
        .u(u_0_1));
endmodule
