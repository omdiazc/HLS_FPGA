-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity inout_inlineoff is
port (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : OUT STD_LOGIC );
end;


architecture behav of inout_inlineoff is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "inout_inlineoff,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.956000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=6,HLS_VERSION=2020_1}";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal tmp_andGate_fu_59_ap_ready : STD_LOGIC;
    signal tmp_andGate_fu_59_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_orGate_fu_67_ap_ready : STD_LOGIC;
    signal tmp_2_orGate_fu_67_a : STD_LOGIC;
    signal tmp_2_orGate_fu_67_b : STD_LOGIC;
    signal tmp_2_orGate_fu_67_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_notGate_fu_75_ap_ready : STD_LOGIC;
    signal tmp_1_notGate_fu_75_ap_return : STD_LOGIC_VECTOR (0 downto 0);

    component andGate IS
    port (
        ap_ready : OUT STD_LOGIC;
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component orGate IS
    port (
        ap_ready : OUT STD_LOGIC;
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component notGate IS
    port (
        ap_ready : OUT STD_LOGIC;
        a : IN STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    tmp_andGate_fu_59 : component andGate
    port map (
        ap_ready => tmp_andGate_fu_59_ap_ready,
        a => a,
        b => b,
        ap_return => tmp_andGate_fu_59_ap_return);

    tmp_2_orGate_fu_67 : component orGate
    port map (
        ap_ready => tmp_2_orGate_fu_67_ap_ready,
        a => tmp_2_orGate_fu_67_a,
        b => tmp_2_orGate_fu_67_b,
        ap_return => tmp_2_orGate_fu_67_ap_return);

    tmp_1_notGate_fu_75 : component notGate
    port map (
        ap_ready => tmp_1_notGate_fu_75_ap_ready,
        a => c,
        ap_return => tmp_1_notGate_fu_75_ap_return);




    d <= tmp_2_orGate_fu_67_ap_return(0);
    tmp_2_orGate_fu_67_a <= tmp_andGate_fu_59_ap_return(0);
    tmp_2_orGate_fu_67_b <= tmp_1_notGate_fu_75_ap_return(0);
end behav;
