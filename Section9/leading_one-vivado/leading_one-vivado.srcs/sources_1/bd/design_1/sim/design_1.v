//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Dec 16 17:23:42 2020
//Host        : USR running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (a,
    leading_one);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A, LAYERED_METADATA undef" *) input [8:0]a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LEADING_ONE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LEADING_ONE, LAYERED_METADATA undef" *) output [4:0]leading_one;

  wire [8:0]a_V_0_1;
  wire [4:0]leading_one_0_ap_return;

  assign a_V_0_1 = a[8:0];
  assign leading_one[4:0] = leading_one_0_ap_return;
  design_1_leading_one_0_0 leading_one_0
       (.a_V(a_V_0_1),
        .ap_return(leading_one_0_ap_return));
endmodule
