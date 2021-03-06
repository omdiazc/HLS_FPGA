// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="inOutFunction,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.978000,HLS_SYN_LAT=274,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=157,HLS_SYN_LUT=1178,HLS_VERSION=2020_1}" *)

module inOutFunction (
        ap_clk,
        ap_rst,
        inNumber_V,
        pushButton_V,
        anodes_V,
        outputSegments_V
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input  [15:0] inNumber_V;
input  [3:0] pushButton_V;
output  [3:0] anodes_V;
output  [7:0] outputSegments_V;

reg[3:0] anodes_V;
reg[7:0] outputSegments_V;

reg   [3:0] sevenSegmentNumbers_address0;
reg    sevenSegmentNumbers_ce0;
wire   [6:0] sevenSegmentNumbers_q0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [35:0] dabble_V_fu_234_p1;
wire   [4:0] e_fu_244_p2;
reg   [4:0] e_reg_583;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln791_fu_250_p1;
reg   [0:0] trunc_ln791_reg_588;
wire   [0:0] icmp_ln15_fu_238_p2;
wire   [0:0] tmp_fu_253_p3;
reg   [0:0] tmp_reg_592;
wire   [0:0] tmp_1_fu_260_p3;
reg   [0:0] tmp_1_reg_596;
wire   [0:0] tmp_5_fu_267_p3;
reg   [0:0] tmp_5_reg_600;
wire   [2:0] i_fu_340_p2;
reg   [2:0] i_reg_627;
wire    ap_CS_fsm_state3;
wire   [5:0] zext_ln19_fu_354_p1;
reg   [5:0] zext_ln19_reg_632;
wire   [0:0] icmp_ln17_fu_334_p2;
wire   [5:0] add_ln19_fu_359_p2;
reg   [5:0] add_ln19_reg_637;
wire   [5:0] add_ln19_1_fu_366_p2;
reg   [5:0] add_ln19_1_reg_644;
wire   [3:0] trunc_ln647_fu_409_p1;
reg   [3:0] trunc_ln647_reg_652;
wire   [35:0] r_V_fu_413_p2;
wire   [0:0] icmp_ln895_fu_426_p2;
reg   [0:0] icmp_ln895_reg_662;
wire    ap_CS_fsm_state4;
wire   [35:0] p_Result_8_fu_535_p2;
reg   [35:0] p_Result_8_reg_667;
wire   [35:0] dabble_V_3_fu_541_p3;
wire    ap_CS_fsm_state5;
reg   [35:0] p_Val2_s_reg_182;
reg   [4:0] e_0_i_reg_192;
reg   [35:0] p_Val2_1_reg_203;
reg   [2:0] i_0_i_reg_214;
wire   [63:0] zext_ln681_3_fu_284_p1;
wire   [63:0] zext_ln681_2_fu_299_p1;
wire   [63:0] zext_ln681_1_fu_314_p1;
wire   [63:0] zext_ln681_fu_329_p1;
wire    ap_CS_fsm_state6;
wire   [7:0] zext_ln59_fu_547_p1;
wire   [7:0] zext_ln54_fu_552_p1;
wire   [7:0] zext_ln48_fu_557_p1;
wire   [7:0] zext_ln43_fu_562_p1;
reg   [5:0] grp_fu_225_p0;
reg   [5:0] grp_fu_225_p1;
reg   [5:0] grp_fu_229_p1;
wire   [3:0] p_Result_3_fu_274_p4;
wire   [3:0] p_Result_2_fu_289_p4;
wire   [3:0] p_Result_1_fu_304_p4;
wire   [3:0] p_Result_s_fu_319_p4;
wire   [4:0] shl_ln_fu_346_p3;
wire   [0:0] grp_fu_225_p2;
reg   [35:0] tmp_2_fu_373_p4;
wire   [5:0] grp_fu_229_p2;
wire   [5:0] select_ln647_1_fu_391_p3;
wire   [35:0] select_ln647_fu_383_p3;
wire   [35:0] zext_ln647_fu_399_p1;
wire   [35:0] lshr_ln647_fu_403_p2;
wire   [35:0] p_Result_7_fu_419_p3;
wire   [5:0] select_ln414_fu_438_p3;
wire   [5:0] select_ln414_2_fu_450_p3;
wire   [5:0] select_ln414_1_fu_444_p3;
wire   [5:0] sub_ln414_1_fu_457_p2;
wire   [35:0] tmp_V_fu_432_p2;
wire   [35:0] zext_ln414_fu_463_p1;
wire   [35:0] shl_ln414_fu_475_p2;
reg   [35:0] tmp_4_fu_481_p4;
wire   [35:0] zext_ln414_1_fu_467_p1;
wire   [35:0] zext_ln414_2_fu_471_p1;
wire   [35:0] shl_ln414_1_fu_499_p2;
wire   [35:0] lshr_ln414_fu_505_p2;
wire   [35:0] and_ln414_fu_511_p2;
wire   [35:0] xor_ln414_fu_517_p2;
wire   [35:0] select_ln414_3_fu_491_p3;
wire   [35:0] and_ln414_1_fu_523_p2;
wire   [35:0] and_ln414_2_fu_529_p2;
reg   [5:0] ap_NS_fsm;
reg    ap_condition_155;
reg    ap_condition_159;
reg    ap_condition_414;
reg    ap_condition_417;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

inOutFunction_sevbkb #(
    .DataWidth( 7 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
sevenSegmentNumbers_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sevenSegmentNumbers_address0),
    .ce0(sevenSegmentNumbers_ce0),
    .q0(sevenSegmentNumbers_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        e_0_i_reg_192 <= e_reg_583;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        e_0_i_reg_192 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_238_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_214 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_214 <= i_reg_627;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_238_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_Val2_1_reg_203 <= p_Val2_s_reg_182;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        p_Val2_1_reg_203 <= dabble_V_3_fu_541_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_Val2_s_reg_182 <= r_V_fu_413_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        p_Val2_s_reg_182 <= dabble_V_fu_234_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln19_1_reg_644[5 : 2] <= add_ln19_1_fu_366_p2[5 : 2];
        add_ln19_reg_637[5 : 2] <= add_ln19_fu_359_p2[5 : 2];
        trunc_ln647_reg_652 <= trunc_ln647_fu_409_p1;
        zext_ln19_reg_632[4 : 2] <= zext_ln19_fu_354_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        e_reg_583 <= e_fu_244_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_627 <= i_fu_340_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln895_reg_662 <= icmp_ln895_fu_426_p2;
        p_Result_8_reg_667 <= p_Result_8_fu_535_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_253_p3 == 1'd0) & (icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_1_reg_596 <= pushButton_V[32'd2];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_fu_260_p3 == 1'd0) & (tmp_fu_253_p3 == 1'd0) & (icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_5_reg_600 <= pushButton_V[32'd3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_592 <= pushButton_V[32'd1];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln791_reg_588 <= trunc_ln791_fu_250_p1;
    end
end

always @ (*) begin
    if (((trunc_ln791_reg_588 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        anodes_V = 4'd14;
    end else if (((tmp_reg_592 == 1'd1) & (trunc_ln791_reg_588 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        anodes_V = 4'd13;
    end else if (((tmp_reg_592 == 1'd0) & (tmp_1_reg_596 == 1'd1) & (trunc_ln791_reg_588 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        anodes_V = 4'd11;
    end else if (((tmp_1_reg_596 == 1'd0) & (tmp_reg_592 == 1'd0) & (tmp_5_reg_600 == 1'd1) & (trunc_ln791_reg_588 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        anodes_V = 4'd7;
    end else if (((tmp_5_fu_267_p3 == 1'd0) & (tmp_1_fu_260_p3 == 1'd0) & (tmp_fu_253_p3 == 1'd0) & (icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        anodes_V = 4'd15;
    end else begin
        anodes_V = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_225_p0 = add_ln19_1_reg_644;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_225_p0 = add_ln19_1_fu_366_p2;
    end else begin
        grp_fu_225_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_225_p1 = add_ln19_reg_637;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_225_p1 = add_ln19_fu_359_p2;
    end else begin
        grp_fu_225_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_p1 = zext_ln19_reg_632;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_229_p1 = zext_ln19_fu_354_p1;
    end else begin
        grp_fu_229_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((trunc_ln791_reg_588 == 1'd1)) begin
            outputSegments_V = zext_ln43_fu_562_p1;
        end else if (((tmp_reg_592 == 1'd1) & (trunc_ln791_reg_588 == 1'd0))) begin
            outputSegments_V = zext_ln48_fu_557_p1;
        end else if ((1'b1 == ap_condition_159)) begin
            outputSegments_V = zext_ln54_fu_552_p1;
        end else if ((1'b1 == ap_condition_155)) begin
            outputSegments_V = zext_ln59_fu_547_p1;
        end else begin
            outputSegments_V = 'bx;
        end
    end else begin
        outputSegments_V = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((trunc_ln791_fu_250_p1 == 1'd1)) begin
            sevenSegmentNumbers_address0 = zext_ln681_fu_329_p1;
        end else if (((tmp_fu_253_p3 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0))) begin
            sevenSegmentNumbers_address0 = zext_ln681_1_fu_314_p1;
        end else if ((1'b1 == ap_condition_417)) begin
            sevenSegmentNumbers_address0 = zext_ln681_2_fu_299_p1;
        end else if ((1'b1 == ap_condition_414)) begin
            sevenSegmentNumbers_address0 = zext_ln681_3_fu_284_p1;
        end else begin
            sevenSegmentNumbers_address0 = 'bx;
        end
    end else begin
        sevenSegmentNumbers_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_fu_253_p3 == 1'd1) & (icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_fu_253_p3 == 1'd0) & (tmp_1_fu_260_p3 == 1'd1) & (icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_1_fu_260_p3 == 1'd0) & (tmp_fu_253_p3 == 1'd0) & (tmp_5_fu_267_p3 == 1'd1) & (icmp_ln15_fu_238_p2 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        sevenSegmentNumbers_ce0 = 1'b1;
    end else begin
        sevenSegmentNumbers_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln15_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln17_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln19_1_fu_366_p2 = (6'd16 + zext_ln19_fu_354_p1);

assign add_ln19_fu_359_p2 = (6'd19 + zext_ln19_fu_354_p1);

assign and_ln414_1_fu_523_p2 = (xor_ln414_fu_517_p2 & p_Val2_1_reg_203);

assign and_ln414_2_fu_529_p2 = (select_ln414_3_fu_491_p3 & and_ln414_fu_511_p2);

assign and_ln414_fu_511_p2 = (shl_ln414_1_fu_499_p2 & lshr_ln414_fu_505_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_condition_155 = ((tmp_1_reg_596 == 1'd0) & (tmp_reg_592 == 1'd0) & (tmp_5_reg_600 == 1'd1) & (trunc_ln791_reg_588 == 1'd0));
end

always @ (*) begin
    ap_condition_159 = ((tmp_reg_592 == 1'd0) & (tmp_1_reg_596 == 1'd1) & (trunc_ln791_reg_588 == 1'd0));
end

always @ (*) begin
    ap_condition_414 = ((tmp_1_fu_260_p3 == 1'd0) & (tmp_fu_253_p3 == 1'd0) & (tmp_5_fu_267_p3 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0));
end

always @ (*) begin
    ap_condition_417 = ((tmp_fu_253_p3 == 1'd0) & (tmp_1_fu_260_p3 == 1'd1) & (trunc_ln791_fu_250_p1 == 1'd0));
end

assign dabble_V_3_fu_541_p3 = ((icmp_ln895_reg_662[0:0] === 1'b1) ? p_Result_8_reg_667 : p_Val2_1_reg_203);

assign dabble_V_fu_234_p1 = inNumber_V;

assign e_fu_244_p2 = (e_0_i_reg_192 + 5'd1);

assign grp_fu_225_p2 = ((grp_fu_225_p0 > grp_fu_225_p1) ? 1'b1 : 1'b0);

assign grp_fu_229_p2 = (6'd19 - grp_fu_229_p1);

assign i_fu_340_p2 = (i_0_i_reg_214 + 3'd1);

assign icmp_ln15_fu_238_p2 = ((e_0_i_reg_192 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln17_fu_334_p2 = ((i_0_i_reg_214 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_426_p2 = ((p_Result_7_fu_419_p3 > 36'd4) ? 1'b1 : 1'b0);

assign lshr_ln414_fu_505_p2 = 36'd68719476735 >> zext_ln414_2_fu_471_p1;

assign lshr_ln647_fu_403_p2 = select_ln647_fu_383_p3 >> zext_ln647_fu_399_p1;

assign p_Result_1_fu_304_p4 = {{p_Val2_s_reg_182[23:20]}};

assign p_Result_2_fu_289_p4 = {{p_Val2_s_reg_182[27:24]}};

assign p_Result_3_fu_274_p4 = {{p_Val2_s_reg_182[31:28]}};

assign p_Result_7_fu_419_p3 = {{32'd0}, {trunc_ln647_reg_652}};

assign p_Result_8_fu_535_p2 = (and_ln414_2_fu_529_p2 | and_ln414_1_fu_523_p2);

assign p_Result_s_fu_319_p4 = {{p_Val2_s_reg_182[19:16]}};

assign r_V_fu_413_p2 = p_Val2_1_reg_203 << 36'd1;

assign select_ln414_1_fu_444_p3 = ((grp_fu_225_p2[0:0] === 1'b1) ? add_ln19_reg_637 : add_ln19_1_reg_644);

assign select_ln414_2_fu_450_p3 = ((grp_fu_225_p2[0:0] === 1'b1) ? grp_fu_229_p2 : add_ln19_1_reg_644);

assign select_ln414_3_fu_491_p3 = ((grp_fu_225_p2[0:0] === 1'b1) ? tmp_4_fu_481_p4 : shl_ln414_fu_475_p2);

assign select_ln414_fu_438_p3 = ((grp_fu_225_p2[0:0] === 1'b1) ? add_ln19_1_reg_644 : add_ln19_reg_637);

assign select_ln647_1_fu_391_p3 = ((grp_fu_225_p2[0:0] === 1'b1) ? grp_fu_229_p2 : add_ln19_1_fu_366_p2);

assign select_ln647_fu_383_p3 = ((grp_fu_225_p2[0:0] === 1'b1) ? tmp_2_fu_373_p4 : p_Val2_1_reg_203);

assign shl_ln414_1_fu_499_p2 = 36'd68719476735 << zext_ln414_1_fu_467_p1;

assign shl_ln414_fu_475_p2 = tmp_V_fu_432_p2 << zext_ln414_fu_463_p1;

assign shl_ln_fu_346_p3 = {{i_0_i_reg_214}, {2'd0}};

assign sub_ln414_1_fu_457_p2 = ($signed(6'd35) - $signed(select_ln414_fu_438_p3));

assign tmp_1_fu_260_p3 = pushButton_V[32'd2];

integer ap_tvar_int_0;

always @ (p_Val2_1_reg_203) begin
    for (ap_tvar_int_0 = 36 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 35 - 0) begin
            tmp_2_fu_373_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_2_fu_373_p4[ap_tvar_int_0] = p_Val2_1_reg_203[35 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln414_fu_475_p2) begin
    for (ap_tvar_int_1 = 36 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 35 - 0) begin
            tmp_4_fu_481_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_4_fu_481_p4[ap_tvar_int_1] = shl_ln414_fu_475_p2[35 - ap_tvar_int_1];
        end
    end
end

assign tmp_5_fu_267_p3 = pushButton_V[32'd3];

assign tmp_V_fu_432_p2 = (36'd3 + p_Result_7_fu_419_p3);

assign tmp_fu_253_p3 = pushButton_V[32'd1];

assign trunc_ln647_fu_409_p1 = lshr_ln647_fu_403_p2[3:0];

assign trunc_ln791_fu_250_p1 = pushButton_V[0:0];

assign xor_ln414_fu_517_p2 = (36'd68719476735 ^ and_ln414_fu_511_p2);

assign zext_ln19_fu_354_p1 = shl_ln_fu_346_p3;

assign zext_ln414_1_fu_467_p1 = select_ln414_1_fu_444_p3;

assign zext_ln414_2_fu_471_p1 = sub_ln414_1_fu_457_p2;

assign zext_ln414_fu_463_p1 = select_ln414_2_fu_450_p3;

assign zext_ln43_fu_562_p1 = sevenSegmentNumbers_q0;

assign zext_ln48_fu_557_p1 = sevenSegmentNumbers_q0;

assign zext_ln54_fu_552_p1 = sevenSegmentNumbers_q0;

assign zext_ln59_fu_547_p1 = sevenSegmentNumbers_q0;

assign zext_ln647_fu_399_p1 = select_ln647_1_fu_391_p3;

assign zext_ln681_1_fu_314_p1 = p_Result_1_fu_304_p4;

assign zext_ln681_2_fu_299_p1 = p_Result_2_fu_289_p4;

assign zext_ln681_3_fu_284_p1 = p_Result_3_fu_274_p4;

assign zext_ln681_fu_329_p1 = p_Result_s_fu_319_p4;

always @ (posedge ap_clk) begin
    zext_ln19_reg_632[1:0] <= 2'b00;
    zext_ln19_reg_632[5] <= 1'b0;
    add_ln19_reg_637[1:0] <= 2'b11;
    add_ln19_1_reg_644[1:0] <= 2'b00;
end

endmodule //inOutFunction
