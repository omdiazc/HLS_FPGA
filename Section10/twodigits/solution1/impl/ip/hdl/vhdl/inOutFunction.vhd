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
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    inNumber_V : IN STD_LOGIC_VECTOR (15 downto 0);
    pushButton_V : IN STD_LOGIC_VECTOR (3 downto 0);
    anodes_V : OUT STD_LOGIC_VECTOR (3 downto 0);
    outputSegments_V : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of inOutFunction is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "inOutFunction,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.978000,HLS_SYN_LAT=274,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=157,HLS_SYN_LUT=1178,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_B : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_lv6_13 : STD_LOGIC_VECTOR (5 downto 0) := "010011";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_10 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv36_1 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000001";
    constant ap_const_lv36_4 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000100";
    constant ap_const_lv36_3 : STD_LOGIC_VECTOR (35 downto 0) := "000000000000000000000000000000000011";
    constant ap_const_lv6_23 : STD_LOGIC_VECTOR (5 downto 0) := "100011";
    constant ap_const_lv36_FFFFFFFFF : STD_LOGIC_VECTOR (35 downto 0) := "111111111111111111111111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal sevenSegmentNumbers_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sevenSegmentNumbers_ce0 : STD_LOGIC;
    signal sevenSegmentNumbers_q0 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal dabble_V_fu_234_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal e_fu_244_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal e_reg_583 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal trunc_ln791_fu_250_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln791_reg_588 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln15_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_253_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_592 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_260_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_596 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_267_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_reg_600 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_340_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_627 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln19_fu_354_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln19_reg_632 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln17_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln19_fu_359_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln19_reg_637 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln19_1_fu_366_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln19_1_reg_644 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln647_fu_409_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln647_reg_652 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_V_fu_413_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal icmp_ln895_fu_426_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln895_reg_662 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_Result_8_fu_535_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal p_Result_8_reg_667 : STD_LOGIC_VECTOR (35 downto 0);
    signal dabble_V_3_fu_541_p3 : STD_LOGIC_VECTOR (35 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_Val2_s_reg_182 : STD_LOGIC_VECTOR (35 downto 0);
    signal e_0_i_reg_192 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_Val2_1_reg_203 : STD_LOGIC_VECTOR (35 downto 0);
    signal i_0_i_reg_214 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln681_3_fu_284_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln681_2_fu_299_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln681_1_fu_314_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln681_fu_329_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal zext_ln59_fu_547_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln54_fu_552_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln48_fu_557_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln43_fu_562_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_225_p0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_225_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_229_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_3_fu_274_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_Result_2_fu_289_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_Result_1_fu_304_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_Result_s_fu_319_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln_fu_346_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_373_p4 : STD_LOGIC_VECTOR (35 downto 0);
    signal grp_fu_229_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln647_1_fu_391_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln647_fu_383_p3 : STD_LOGIC_VECTOR (35 downto 0);
    signal zext_ln647_fu_399_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal lshr_ln647_fu_403_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal p_Result_7_fu_419_p3 : STD_LOGIC_VECTOR (35 downto 0);
    signal select_ln414_fu_438_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln414_2_fu_450_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln414_1_fu_444_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln414_1_fu_457_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_V_fu_432_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal zext_ln414_fu_463_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal shl_ln414_fu_475_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal tmp_4_fu_481_p4 : STD_LOGIC_VECTOR (35 downto 0);
    signal zext_ln414_1_fu_467_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal zext_ln414_2_fu_471_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal shl_ln414_1_fu_499_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal lshr_ln414_fu_505_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal and_ln414_fu_511_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal xor_ln414_fu_517_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal select_ln414_3_fu_491_p3 : STD_LOGIC_VECTOR (35 downto 0);
    signal and_ln414_1_fu_523_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal and_ln414_2_fu_529_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_condition_155 : BOOLEAN;
    signal ap_condition_159 : BOOLEAN;
    signal ap_condition_414 : BOOLEAN;
    signal ap_condition_417 : BOOLEAN;

    component inOutFunction_sevbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (6 downto 0) );
    end component;



begin
    sevenSegmentNumbers_U : component inOutFunction_sevbkb
    generic map (
        DataWidth => 7,
        AddressRange => 10,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => sevenSegmentNumbers_address0,
        ce0 => sevenSegmentNumbers_ce0,
        q0 => sevenSegmentNumbers_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    e_0_i_reg_192_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_fu_334_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                e_0_i_reg_192 <= e_reg_583;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                e_0_i_reg_192 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    i_0_i_reg_214_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln15_fu_238_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_i_reg_214 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_0_i_reg_214 <= i_reg_627;
            end if; 
        end if;
    end process;

    p_Val2_1_reg_203_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln15_fu_238_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_Val2_1_reg_203 <= p_Val2_s_reg_182;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                p_Val2_1_reg_203 <= dabble_V_3_fu_541_p3;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_182_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_fu_334_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_Val2_s_reg_182 <= r_V_fu_413_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                p_Val2_s_reg_182 <= dabble_V_fu_234_p1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_fu_334_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    add_ln19_1_reg_644(5 downto 2) <= add_ln19_1_fu_366_p2(5 downto 2);
                    add_ln19_reg_637(5 downto 2) <= add_ln19_fu_359_p2(5 downto 2);
                trunc_ln647_reg_652 <= trunc_ln647_fu_409_p1;
                    zext_ln19_reg_632(4 downto 2) <= zext_ln19_fu_354_p1(4 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                e_reg_583 <= e_fu_244_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_reg_627 <= i_fu_340_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                icmp_ln895_reg_662 <= icmp_ln895_fu_426_p2;
                p_Result_8_reg_667 <= p_Result_8_fu_535_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_253_p3 = ap_const_lv1_0) and (icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_1_reg_596 <= pushButton_V(2 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_fu_260_p3 = ap_const_lv1_0) and (tmp_fu_253_p3 = ap_const_lv1_0) and (icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_5_reg_600 <= pushButton_V(3 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_reg_592 <= pushButton_V(1 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                trunc_ln791_reg_588 <= trunc_ln791_fu_250_p1;
            end if;
        end if;
    end process;
    zext_ln19_reg_632(1 downto 0) <= "00";
    zext_ln19_reg_632(5) <= '0';
    add_ln19_reg_637(1 downto 0) <= "11";
    add_ln19_1_reg_644(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state2, icmp_ln15_fu_238_p2, ap_CS_fsm_state3, icmp_ln17_fu_334_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln17_fu_334_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln19_1_fu_366_p2 <= std_logic_vector(unsigned(ap_const_lv6_10) + unsigned(zext_ln19_fu_354_p1));
    add_ln19_fu_359_p2 <= std_logic_vector(unsigned(ap_const_lv6_13) + unsigned(zext_ln19_fu_354_p1));
    and_ln414_1_fu_523_p2 <= (xor_ln414_fu_517_p2 and p_Val2_1_reg_203);
    and_ln414_2_fu_529_p2 <= (select_ln414_3_fu_491_p3 and and_ln414_fu_511_p2);
    and_ln414_fu_511_p2 <= (shl_ln414_1_fu_499_p2 and lshr_ln414_fu_505_p2);

    anodes_V_assign_proc : process(ap_CS_fsm_state2, trunc_ln791_fu_250_p1, trunc_ln791_reg_588, icmp_ln15_fu_238_p2, tmp_fu_253_p3, tmp_reg_592, tmp_1_fu_260_p3, tmp_1_reg_596, tmp_5_fu_267_p3, tmp_5_reg_600, ap_CS_fsm_state6)
    begin
        if (((trunc_ln791_reg_588 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            anodes_V <= ap_const_lv4_E;
        elsif (((tmp_reg_592 = ap_const_lv1_1) and (trunc_ln791_reg_588 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            anodes_V <= ap_const_lv4_D;
        elsif (((tmp_reg_592 = ap_const_lv1_0) and (tmp_1_reg_596 = ap_const_lv1_1) and (trunc_ln791_reg_588 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            anodes_V <= ap_const_lv4_B;
        elsif (((tmp_1_reg_596 = ap_const_lv1_0) and (tmp_reg_592 = ap_const_lv1_0) and (tmp_5_reg_600 = ap_const_lv1_1) and (trunc_ln791_reg_588 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            anodes_V <= ap_const_lv4_7;
        elsif (((tmp_5_fu_267_p3 = ap_const_lv1_0) and (tmp_1_fu_260_p3 = ap_const_lv1_0) and (tmp_fu_253_p3 = ap_const_lv1_0) and (icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            anodes_V <= ap_const_lv4_F;
        else 
            anodes_V <= "XXXX";
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_condition_155_assign_proc : process(trunc_ln791_reg_588, tmp_reg_592, tmp_1_reg_596, tmp_5_reg_600)
    begin
                ap_condition_155 <= ((tmp_1_reg_596 = ap_const_lv1_0) and (tmp_reg_592 = ap_const_lv1_0) and (tmp_5_reg_600 = ap_const_lv1_1) and (trunc_ln791_reg_588 = ap_const_lv1_0));
    end process;


    ap_condition_159_assign_proc : process(trunc_ln791_reg_588, tmp_reg_592, tmp_1_reg_596)
    begin
                ap_condition_159 <= ((tmp_reg_592 = ap_const_lv1_0) and (tmp_1_reg_596 = ap_const_lv1_1) and (trunc_ln791_reg_588 = ap_const_lv1_0));
    end process;


    ap_condition_414_assign_proc : process(trunc_ln791_fu_250_p1, tmp_fu_253_p3, tmp_1_fu_260_p3, tmp_5_fu_267_p3)
    begin
                ap_condition_414 <= ((tmp_1_fu_260_p3 = ap_const_lv1_0) and (tmp_fu_253_p3 = ap_const_lv1_0) and (tmp_5_fu_267_p3 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0));
    end process;


    ap_condition_417_assign_proc : process(trunc_ln791_fu_250_p1, tmp_fu_253_p3, tmp_1_fu_260_p3)
    begin
                ap_condition_417 <= ((tmp_fu_253_p3 = ap_const_lv1_0) and (tmp_1_fu_260_p3 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0));
    end process;

    dabble_V_3_fu_541_p3 <= 
        p_Result_8_reg_667 when (icmp_ln895_reg_662(0) = '1') else 
        p_Val2_1_reg_203;
    dabble_V_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inNumber_V),36));
    e_fu_244_p2 <= std_logic_vector(unsigned(e_0_i_reg_192) + unsigned(ap_const_lv5_1));

    grp_fu_225_p0_assign_proc : process(ap_CS_fsm_state3, add_ln19_1_fu_366_p2, add_ln19_1_reg_644, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_225_p0 <= add_ln19_1_reg_644;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_225_p0 <= add_ln19_1_fu_366_p2;
        else 
            grp_fu_225_p0 <= "XXXXXX";
        end if; 
    end process;


    grp_fu_225_p1_assign_proc : process(ap_CS_fsm_state3, add_ln19_fu_359_p2, add_ln19_reg_637, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_225_p1 <= add_ln19_reg_637;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_225_p1 <= add_ln19_fu_359_p2;
        else 
            grp_fu_225_p1 <= "XXXXXX";
        end if; 
    end process;

    grp_fu_225_p2 <= "1" when (unsigned(grp_fu_225_p0) > unsigned(grp_fu_225_p1)) else "0";

    grp_fu_229_p1_assign_proc : process(ap_CS_fsm_state3, zext_ln19_fu_354_p1, zext_ln19_reg_632, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_229_p1 <= zext_ln19_reg_632;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_229_p1 <= zext_ln19_fu_354_p1;
        else 
            grp_fu_229_p1 <= "XXXXXX";
        end if; 
    end process;

    grp_fu_229_p2 <= std_logic_vector(unsigned(ap_const_lv6_13) - unsigned(grp_fu_229_p1));
    i_fu_340_p2 <= std_logic_vector(unsigned(i_0_i_reg_214) + unsigned(ap_const_lv3_1));
    icmp_ln15_fu_238_p2 <= "1" when (e_0_i_reg_192 = ap_const_lv5_10) else "0";
    icmp_ln17_fu_334_p2 <= "1" when (i_0_i_reg_214 = ap_const_lv3_5) else "0";
    icmp_ln895_fu_426_p2 <= "1" when (unsigned(p_Result_7_fu_419_p3) > unsigned(ap_const_lv36_4)) else "0";
    lshr_ln414_fu_505_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv36_FFFFFFFFF),to_integer(unsigned('0' & zext_ln414_2_fu_471_p1(31-1 downto 0)))));
    lshr_ln647_fu_403_p2 <= std_logic_vector(shift_right(unsigned(select_ln647_fu_383_p3),to_integer(unsigned('0' & zext_ln647_fu_399_p1(31-1 downto 0)))));

    outputSegments_V_assign_proc : process(trunc_ln791_reg_588, tmp_reg_592, ap_CS_fsm_state6, zext_ln59_fu_547_p1, zext_ln54_fu_552_p1, zext_ln48_fu_557_p1, zext_ln43_fu_562_p1, ap_condition_155, ap_condition_159)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
            if ((trunc_ln791_reg_588 = ap_const_lv1_1)) then 
                outputSegments_V <= zext_ln43_fu_562_p1;
            elsif (((tmp_reg_592 = ap_const_lv1_1) and (trunc_ln791_reg_588 = ap_const_lv1_0))) then 
                outputSegments_V <= zext_ln48_fu_557_p1;
            elsif ((ap_const_boolean_1 = ap_condition_159)) then 
                outputSegments_V <= zext_ln54_fu_552_p1;
            elsif ((ap_const_boolean_1 = ap_condition_155)) then 
                outputSegments_V <= zext_ln59_fu_547_p1;
            else 
                outputSegments_V <= "XXXXXXXX";
            end if;
        else 
            outputSegments_V <= "XXXXXXXX";
        end if; 
    end process;

    p_Result_1_fu_304_p4 <= p_Val2_s_reg_182(23 downto 20);
    p_Result_2_fu_289_p4 <= p_Val2_s_reg_182(27 downto 24);
    p_Result_3_fu_274_p4 <= p_Val2_s_reg_182(31 downto 28);
    p_Result_7_fu_419_p3 <= (ap_const_lv32_0 & trunc_ln647_reg_652);
    p_Result_8_fu_535_p2 <= (and_ln414_2_fu_529_p2 or and_ln414_1_fu_523_p2);
    p_Result_s_fu_319_p4 <= p_Val2_s_reg_182(19 downto 16);
    r_V_fu_413_p2 <= std_logic_vector(shift_left(unsigned(p_Val2_1_reg_203),to_integer(unsigned('0' & ap_const_lv36_1(31-1 downto 0)))));
    select_ln414_1_fu_444_p3 <= 
        add_ln19_reg_637 when (grp_fu_225_p2(0) = '1') else 
        add_ln19_1_reg_644;
    select_ln414_2_fu_450_p3 <= 
        grp_fu_229_p2 when (grp_fu_225_p2(0) = '1') else 
        add_ln19_1_reg_644;
    select_ln414_3_fu_491_p3 <= 
        tmp_4_fu_481_p4 when (grp_fu_225_p2(0) = '1') else 
        shl_ln414_fu_475_p2;
    select_ln414_fu_438_p3 <= 
        add_ln19_1_reg_644 when (grp_fu_225_p2(0) = '1') else 
        add_ln19_reg_637;
    select_ln647_1_fu_391_p3 <= 
        grp_fu_229_p2 when (grp_fu_225_p2(0) = '1') else 
        add_ln19_1_fu_366_p2;
    select_ln647_fu_383_p3 <= 
        tmp_2_fu_373_p4 when (grp_fu_225_p2(0) = '1') else 
        p_Val2_1_reg_203;

    sevenSegmentNumbers_address0_assign_proc : process(ap_CS_fsm_state2, trunc_ln791_fu_250_p1, icmp_ln15_fu_238_p2, tmp_fu_253_p3, zext_ln681_3_fu_284_p1, zext_ln681_2_fu_299_p1, zext_ln681_1_fu_314_p1, zext_ln681_fu_329_p1, ap_condition_414, ap_condition_417)
    begin
        if (((icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
            if ((trunc_ln791_fu_250_p1 = ap_const_lv1_1)) then 
                sevenSegmentNumbers_address0 <= zext_ln681_fu_329_p1(4 - 1 downto 0);
            elsif (((tmp_fu_253_p3 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0))) then 
                sevenSegmentNumbers_address0 <= zext_ln681_1_fu_314_p1(4 - 1 downto 0);
            elsif ((ap_const_boolean_1 = ap_condition_417)) then 
                sevenSegmentNumbers_address0 <= zext_ln681_2_fu_299_p1(4 - 1 downto 0);
            elsif ((ap_const_boolean_1 = ap_condition_414)) then 
                sevenSegmentNumbers_address0 <= zext_ln681_3_fu_284_p1(4 - 1 downto 0);
            else 
                sevenSegmentNumbers_address0 <= "XXXX";
            end if;
        else 
            sevenSegmentNumbers_address0 <= "XXXX";
        end if; 
    end process;


    sevenSegmentNumbers_ce0_assign_proc : process(ap_CS_fsm_state2, trunc_ln791_fu_250_p1, icmp_ln15_fu_238_p2, tmp_fu_253_p3, tmp_1_fu_260_p3, tmp_5_fu_267_p3)
    begin
        if ((((icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((tmp_fu_253_p3 = ap_const_lv1_1) and (icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((tmp_fu_253_p3 = ap_const_lv1_0) and (tmp_1_fu_260_p3 = ap_const_lv1_1) and (icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((tmp_1_fu_260_p3 = ap_const_lv1_0) and (tmp_fu_253_p3 = ap_const_lv1_0) and (tmp_5_fu_267_p3 = ap_const_lv1_1) and (icmp_ln15_fu_238_p2 = ap_const_lv1_1) and (trunc_ln791_fu_250_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            sevenSegmentNumbers_ce0 <= ap_const_logic_1;
        else 
            sevenSegmentNumbers_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln414_1_fu_499_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv36_FFFFFFFFF),to_integer(unsigned('0' & zext_ln414_1_fu_467_p1(31-1 downto 0)))));
    shl_ln414_fu_475_p2 <= std_logic_vector(shift_left(unsigned(tmp_V_fu_432_p2),to_integer(unsigned('0' & zext_ln414_fu_463_p1(31-1 downto 0)))));
    shl_ln_fu_346_p3 <= (i_0_i_reg_214 & ap_const_lv2_0);
    sub_ln414_1_fu_457_p2 <= std_logic_vector(signed(ap_const_lv6_23) - signed(select_ln414_fu_438_p3));
    tmp_1_fu_260_p3 <= pushButton_V(2 downto 2);
    
    tmp_2_fu_373_p4_proc : process(p_Val2_1_reg_203)
    variable vlo_cpy : STD_LOGIC_VECTOR(36+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(36+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(36 - 1 downto 0);
    variable tmp_2_fu_373_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(36 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(36 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(36 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(6 - 1 downto 0) := ap_const_lv32_23(6 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(6 - 1 downto 0) := ap_const_lv32_0(6 - 1 downto 0);
        v0_cpy := p_Val2_1_reg_203;
        if (vlo_cpy(6 - 1 downto 0) > vhi_cpy(6 - 1 downto 0)) then
            vhi_cpy(6-1 downto 0) := std_logic_vector(36-1-unsigned(ap_const_lv32_0(6-1 downto 0)));
            vlo_cpy(6-1 downto 0) := std_logic_vector(36-1-unsigned(ap_const_lv32_23(6-1 downto 0)));
            for tmp_2_fu_373_p4_i in 0 to 36-1 loop
                v0_cpy(tmp_2_fu_373_p4_i) := p_Val2_1_reg_203(36-1-tmp_2_fu_373_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(6-1 downto 0)))));

        section := (others=>'0');
        section(6-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(6-1 downto 0)) - unsigned(vlo_cpy(6-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(36-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_2_fu_373_p4 <= resvalue(36-1 downto 0);
    end process;

    
    tmp_4_fu_481_p4_proc : process(shl_ln414_fu_475_p2)
    variable vlo_cpy : STD_LOGIC_VECTOR(36+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(36+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(36 - 1 downto 0);
    variable tmp_4_fu_481_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(36 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(36 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(36 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(6 - 1 downto 0) := ap_const_lv32_23(6 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(6 - 1 downto 0) := ap_const_lv32_0(6 - 1 downto 0);
        v0_cpy := shl_ln414_fu_475_p2;
        if (vlo_cpy(6 - 1 downto 0) > vhi_cpy(6 - 1 downto 0)) then
            vhi_cpy(6-1 downto 0) := std_logic_vector(36-1-unsigned(ap_const_lv32_0(6-1 downto 0)));
            vlo_cpy(6-1 downto 0) := std_logic_vector(36-1-unsigned(ap_const_lv32_23(6-1 downto 0)));
            for tmp_4_fu_481_p4_i in 0 to 36-1 loop
                v0_cpy(tmp_4_fu_481_p4_i) := shl_ln414_fu_475_p2(36-1-tmp_4_fu_481_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(6-1 downto 0)))));

        section := (others=>'0');
        section(6-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(6-1 downto 0)) - unsigned(vlo_cpy(6-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(36-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_4_fu_481_p4 <= resvalue(36-1 downto 0);
    end process;

    tmp_5_fu_267_p3 <= pushButton_V(3 downto 3);
    tmp_V_fu_432_p2 <= std_logic_vector(unsigned(ap_const_lv36_3) + unsigned(p_Result_7_fu_419_p3));
    tmp_fu_253_p3 <= pushButton_V(1 downto 1);
    trunc_ln647_fu_409_p1 <= lshr_ln647_fu_403_p2(4 - 1 downto 0);
    trunc_ln791_fu_250_p1 <= pushButton_V(1 - 1 downto 0);
    xor_ln414_fu_517_p2 <= (ap_const_lv36_FFFFFFFFF xor and_ln414_fu_511_p2);
    zext_ln19_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_346_p3),6));
    zext_ln414_1_fu_467_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln414_1_fu_444_p3),36));
    zext_ln414_2_fu_471_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln414_1_fu_457_p2),36));
    zext_ln414_fu_463_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln414_2_fu_450_p3),36));
    zext_ln43_fu_562_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sevenSegmentNumbers_q0),8));
    zext_ln48_fu_557_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sevenSegmentNumbers_q0),8));
    zext_ln54_fu_552_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sevenSegmentNumbers_q0),8));
    zext_ln59_fu_547_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sevenSegmentNumbers_q0),8));
    zext_ln647_fu_399_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln647_1_fu_391_p3),36));
    zext_ln681_1_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_1_fu_304_p4),64));
    zext_ln681_2_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_2_fu_289_p4),64));
    zext_ln681_3_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_3_fu_274_p4),64));
    zext_ln681_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_s_fu_319_p4),64));
end behav;
