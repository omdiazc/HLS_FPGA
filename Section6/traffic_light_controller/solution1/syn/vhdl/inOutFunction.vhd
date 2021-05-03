-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity inOutFunction is
port (
    l : IN STD_LOGIC;
    r : IN STD_LOGIC;
    u : IN STD_LOGIC;
    d : IN STD_LOGIC;
    rule1 : OUT STD_LOGIC;
    rule2 : OUT STD_LOGIC;
    rule3 : OUT STD_LOGIC;
    rule4 : OUT STD_LOGIC;
    rule5 : OUT STD_LOGIC;
    ew : OUT STD_LOGIC;
    ns : OUT STD_LOGIC );
end;


architecture behav of inOutFunction is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "inOutFunction,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.934000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=34,HLS_VERSION=2020_1}";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal and_ln20_fu_117_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln21_1_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln22_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln23_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln25_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln20_fu_117_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln20_fu_117_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_fu_124_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_fu_124_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln21_fu_130_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln21_fu_130_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln21_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_1_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln22_fu_149_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln23_fu_162_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln23_fu_162_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln24_fu_168_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln24_fu_168_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln24_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln23_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln24_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln25_fu_187_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln25_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln25_1_fu_193_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln25_1_fu_193_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln27_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);


begin



    and_ln20_fu_117_p0 <= (0=>l, others=>'-');
    and_ln20_fu_117_p1 <= (0=>r, others=>'-');
    and_ln20_fu_117_p2 <= (and_ln20_fu_117_p1 and and_ln20_fu_117_p0);
    and_ln21_1_fu_142_p2 <= (xor_ln21_fu_124_p2 and xor_ln21_1_fu_136_p2);
    and_ln21_fu_130_p0 <= (0=>u, others=>'-');
    and_ln21_fu_130_p1 <= (0=>d, others=>'-');
    and_ln21_fu_130_p2 <= (and_ln21_fu_130_p1 and and_ln21_fu_130_p0);
    and_ln22_fu_155_p2 <= (xor_ln22_fu_149_p2 and and_ln21_fu_130_p2);
    and_ln23_fu_180_p2 <= (xor_ln24_fu_174_p2 and xor_ln23_fu_162_p2);
    ew <= (or_ln27_fu_206_p2(0) or and_ln21_1_fu_142_p2(0));
    ns <= (and_ln23_fu_180_p2(0) or and_ln22_fu_155_p2(0));
    or_ln24_fu_168_p0 <= (0=>l, others=>'-');
    or_ln24_fu_168_p1 <= (0=>r, others=>'-');
    or_ln24_fu_168_p2 <= (or_ln24_fu_168_p1 or or_ln24_fu_168_p0);
    or_ln25_1_fu_193_p1 <= (0=>u, others=>'-');
    or_ln25_1_fu_193_p2 <= (or_ln25_fu_187_p2 or or_ln25_1_fu_193_p1);
    or_ln25_fu_187_p1 <= (0=>d, others=>'-');
    or_ln25_fu_187_p2 <= (or_ln25_fu_187_p1 or or_ln24_fu_168_p2);
    or_ln27_fu_206_p2 <= (xor_ln25_fu_199_p2 or and_ln20_fu_117_p2);
    rule1 <= and_ln20_fu_117_p2(0);
    rule2 <= and_ln21_1_fu_142_p2(0);
    rule3 <= and_ln22_fu_155_p2(0);
    rule4 <= and_ln23_fu_180_p2(0);
    rule5 <= xor_ln25_fu_199_p2(0);
    xor_ln21_1_fu_136_p2 <= (ap_const_lv1_1 xor and_ln21_fu_130_p2);
    xor_ln21_fu_124_p0 <= (0=>r, others=>'-');
    xor_ln21_fu_124_p1 <= (0=>l, others=>'-');
    xor_ln21_fu_124_p2 <= (xor_ln21_fu_124_p1 xor xor_ln21_fu_124_p0);
    xor_ln22_fu_149_p2 <= (ap_const_lv1_1 xor and_ln20_fu_117_p2);
    xor_ln23_fu_162_p0 <= (0=>u, others=>'-');
    xor_ln23_fu_162_p1 <= (0=>d, others=>'-');
    xor_ln23_fu_162_p2 <= (xor_ln23_fu_162_p1 xor xor_ln23_fu_162_p0);
    xor_ln24_fu_174_p2 <= (or_ln24_fu_168_p2 xor ap_const_lv1_1);
    xor_ln25_fu_199_p2 <= (or_ln25_1_fu_193_p2 xor ap_const_lv1_1);
end behav;
