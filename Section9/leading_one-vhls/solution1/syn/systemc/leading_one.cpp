// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "leading_one.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const bool leading_one::ap_const_boolean_1 = true;
const sc_lv<32> leading_one::ap_const_lv32_8 = "1000";
const sc_lv<32> leading_one::ap_const_lv32_7 = "111";
const sc_lv<32> leading_one::ap_const_lv32_6 = "110";
const sc_lv<1> leading_one::ap_const_lv1_1 = "1";
const sc_lv<32> leading_one::ap_const_lv32_5 = "101";
const sc_lv<32> leading_one::ap_const_lv32_4 = "100";
const sc_lv<32> leading_one::ap_const_lv32_3 = "11";
const sc_lv<3> leading_one::ap_const_lv3_7 = "111";
const sc_lv<3> leading_one::ap_const_lv3_0 = "000";
const sc_lv<7> leading_one::ap_const_lv7_0 = "0000000";
const sc_lv<9> leading_one::ap_const_lv9_80 = "10000000";
const sc_lv<32> leading_one::ap_const_lv32_2 = "10";
const sc_lv<32> leading_one::ap_const_lv32_1 = "1";
const sc_lv<2> leading_one::ap_const_lv2_0 = "00";
const sc_lv<3> leading_one::ap_const_lv3_2 = "10";
const sc_lv<4> leading_one::ap_const_lv4_3 = "11";
const sc_lv<4> leading_one::ap_const_lv4_4 = "100";
const sc_lv<4> leading_one::ap_const_lv4_5 = "101";
const sc_lv<4> leading_one::ap_const_lv4_6 = "110";
const sc_lv<4> leading_one::ap_const_lv4_7 = "111";
const sc_lv<4> leading_one::ap_const_lv4_8 = "1000";
const sc_lv<5> leading_one::ap_const_lv5_1 = "1";
const sc_logic leading_one::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic leading_one::ap_const_logic_0 = sc_dt::Log_0;

leading_one::leading_one(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_and_ln1054_1_fu_210_p2);
    sensitive << ( xor_ln1054_4_fu_198_p2 );
    sensitive << ( xor_ln1054_fu_102_p2 );

    SC_METHOD(thread_and_ln1054_2_fu_216_p2);
    sensitive << ( tmp_4_fu_108_p3 );
    sensitive << ( and_ln1054_1_fu_210_p2 );

    SC_METHOD(thread_and_ln1054_3_fu_222_p2);
    sensitive << ( and_ln1054_1_fu_210_p2 );
    sensitive << ( xor_ln1054_1_fu_116_p2 );

    SC_METHOD(thread_and_ln1054_4_fu_228_p2);
    sensitive << ( tmp_5_fu_122_p3 );
    sensitive << ( and_ln1054_3_fu_222_p2 );

    SC_METHOD(thread_and_ln1054_5_fu_234_p2);
    sensitive << ( and_ln1054_3_fu_222_p2 );
    sensitive << ( xor_ln1054_2_fu_130_p2 );

    SC_METHOD(thread_and_ln1054_6_fu_240_p2);
    sensitive << ( tmp_6_fu_136_p3 );
    sensitive << ( and_ln1054_5_fu_234_p2 );

    SC_METHOD(thread_and_ln1054_7_fu_246_p2);
    sensitive << ( and_ln1054_5_fu_234_p2 );
    sensitive << ( xor_ln1054_3_fu_144_p2 );

    SC_METHOD(thread_and_ln1054_8_fu_260_p2);
    sensitive << ( and_ln1054_7_fu_246_p2 );
    sensitive << ( tmp_7_fu_252_p3 );

    SC_METHOD(thread_and_ln1054_9_fu_282_p2);
    sensitive << ( and_ln1054_7_fu_246_p2 );
    sensitive << ( icmp_ln1054_1_fu_276_p2 );

    SC_METHOD(thread_and_ln1054_fu_204_p2);
    sensitive << ( tmp_3_fu_94_p3 );
    sensitive << ( xor_ln1054_4_fu_198_p2 );

    SC_METHOD(thread_and_ln_fu_178_p3);
    sensitive << ( tmp_fu_168_p4 );

    SC_METHOD(thread_ap_return);
    sensitive << ( or_ln1054_6_fu_392_p2 );
    sensitive << ( select_ln1054_6_fu_384_p3 );

    SC_METHOD(thread_icmp_ln1054_1_fu_276_p2);
    sensitive << ( tmp_8_fu_266_p4 );

    SC_METHOD(thread_icmp_ln1054_fu_186_p2);
    sensitive << ( and_ln_fu_178_p3 );

    SC_METHOD(thread_or_ln1054_1_fu_314_p2);
    sensitive << ( and_ln1054_6_fu_240_p2 );
    sensitive << ( and_ln1054_4_fu_228_p2 );

    SC_METHOD(thread_or_ln1054_2_fu_328_p2);
    sensitive << ( and_ln1054_2_fu_216_p2 );
    sensitive << ( and_ln1054_fu_204_p2 );

    SC_METHOD(thread_or_ln1054_3_fu_342_p2);
    sensitive << ( tmp_1_fu_78_p3 );
    sensitive << ( icmp_ln1054_fu_186_p2 );

    SC_METHOD(thread_or_ln1054_4_fu_360_p2);
    sensitive << ( or_ln1054_fu_300_p2 );
    sensitive << ( or_ln1054_1_fu_314_p2 );

    SC_METHOD(thread_or_ln1054_5_fu_378_p2);
    sensitive << ( or_ln1054_2_fu_328_p2 );
    sensitive << ( or_ln1054_3_fu_342_p2 );

    SC_METHOD(thread_or_ln1054_6_fu_392_p2);
    sensitive << ( or_ln1054_4_fu_360_p2 );
    sensitive << ( or_ln1054_5_fu_378_p2 );

    SC_METHOD(thread_or_ln1054_7_fu_192_p2);
    sensitive << ( tmp_2_fu_86_p3 );
    sensitive << ( tmp_1_fu_78_p3 );

    SC_METHOD(thread_or_ln1054_fu_300_p2);
    sensitive << ( and_ln1054_9_fu_282_p2 );
    sensitive << ( and_ln1054_8_fu_260_p2 );

    SC_METHOD(thread_select_ln1054_1_fu_306_p3);
    sensitive << ( and_ln1054_6_fu_240_p2 );

    SC_METHOD(thread_select_ln1054_2_fu_320_p3);
    sensitive << ( and_ln1054_2_fu_216_p2 );

    SC_METHOD(thread_select_ln1054_3_fu_334_p3);
    sensitive << ( icmp_ln1054_fu_186_p2 );

    SC_METHOD(thread_select_ln1054_4_fu_348_p3);
    sensitive << ( or_ln1054_fu_300_p2 );
    sensitive << ( sext_ln1054_fu_296_p1 );
    sensitive << ( select_ln1054_1_fu_306_p3 );

    SC_METHOD(thread_select_ln1054_5_fu_366_p3);
    sensitive << ( or_ln1054_2_fu_328_p2 );
    sensitive << ( select_ln1054_2_fu_320_p3 );
    sensitive << ( select_ln1054_3_fu_334_p3 );

    SC_METHOD(thread_select_ln1054_6_fu_384_p3);
    sensitive << ( or_ln1054_4_fu_360_p2 );
    sensitive << ( sext_ln1054_1_fu_356_p1 );
    sensitive << ( zext_ln1054_fu_374_p1 );

    SC_METHOD(thread_select_ln1054_fu_288_p3);
    sensitive << ( and_ln1054_9_fu_282_p2 );
    sensitive << ( select_ln48_fu_160_p3 );

    SC_METHOD(thread_select_ln48_fu_160_p3);
    sensitive << ( xor_ln48_fu_154_p2 );

    SC_METHOD(thread_sext_ln1054_1_fu_356_p1);
    sensitive << ( select_ln1054_4_fu_348_p3 );

    SC_METHOD(thread_sext_ln1054_fu_296_p1);
    sensitive << ( select_ln1054_fu_288_p3 );

    SC_METHOD(thread_tmp_1_fu_78_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_2_fu_86_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_3_fu_94_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_4_fu_108_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_5_fu_122_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_6_fu_136_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_7_fu_252_p3);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_8_fu_266_p4);
    sensitive << ( a_V );

    SC_METHOD(thread_tmp_fu_168_p4);
    sensitive << ( a_V );

    SC_METHOD(thread_trunc_ln48_fu_150_p1);
    sensitive << ( a_V );

    SC_METHOD(thread_xor_ln1054_1_fu_116_p2);
    sensitive << ( tmp_4_fu_108_p3 );

    SC_METHOD(thread_xor_ln1054_2_fu_130_p2);
    sensitive << ( tmp_5_fu_122_p3 );

    SC_METHOD(thread_xor_ln1054_3_fu_144_p2);
    sensitive << ( tmp_6_fu_136_p3 );

    SC_METHOD(thread_xor_ln1054_4_fu_198_p2);
    sensitive << ( or_ln1054_7_fu_192_p2 );

    SC_METHOD(thread_xor_ln1054_fu_102_p2);
    sensitive << ( tmp_3_fu_94_p3 );

    SC_METHOD(thread_xor_ln48_fu_154_p2);
    sensitive << ( trunc_ln48_fu_150_p1 );

    SC_METHOD(thread_zext_ln1054_fu_374_p1);
    sensitive << ( select_ln1054_5_fu_366_p3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "leading_one_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, a_V, "(port)a_V");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, tmp_3_fu_94_p3, "tmp_3_fu_94_p3");
    sc_trace(mVcdFile, tmp_4_fu_108_p3, "tmp_4_fu_108_p3");
    sc_trace(mVcdFile, tmp_5_fu_122_p3, "tmp_5_fu_122_p3");
    sc_trace(mVcdFile, tmp_6_fu_136_p3, "tmp_6_fu_136_p3");
    sc_trace(mVcdFile, trunc_ln48_fu_150_p1, "trunc_ln48_fu_150_p1");
    sc_trace(mVcdFile, xor_ln48_fu_154_p2, "xor_ln48_fu_154_p2");
    sc_trace(mVcdFile, tmp_fu_168_p4, "tmp_fu_168_p4");
    sc_trace(mVcdFile, and_ln_fu_178_p3, "and_ln_fu_178_p3");
    sc_trace(mVcdFile, tmp_2_fu_86_p3, "tmp_2_fu_86_p3");
    sc_trace(mVcdFile, tmp_1_fu_78_p3, "tmp_1_fu_78_p3");
    sc_trace(mVcdFile, or_ln1054_7_fu_192_p2, "or_ln1054_7_fu_192_p2");
    sc_trace(mVcdFile, xor_ln1054_4_fu_198_p2, "xor_ln1054_4_fu_198_p2");
    sc_trace(mVcdFile, xor_ln1054_fu_102_p2, "xor_ln1054_fu_102_p2");
    sc_trace(mVcdFile, and_ln1054_1_fu_210_p2, "and_ln1054_1_fu_210_p2");
    sc_trace(mVcdFile, xor_ln1054_1_fu_116_p2, "xor_ln1054_1_fu_116_p2");
    sc_trace(mVcdFile, and_ln1054_3_fu_222_p2, "and_ln1054_3_fu_222_p2");
    sc_trace(mVcdFile, xor_ln1054_2_fu_130_p2, "xor_ln1054_2_fu_130_p2");
    sc_trace(mVcdFile, and_ln1054_5_fu_234_p2, "and_ln1054_5_fu_234_p2");
    sc_trace(mVcdFile, xor_ln1054_3_fu_144_p2, "xor_ln1054_3_fu_144_p2");
    sc_trace(mVcdFile, and_ln1054_7_fu_246_p2, "and_ln1054_7_fu_246_p2");
    sc_trace(mVcdFile, tmp_7_fu_252_p3, "tmp_7_fu_252_p3");
    sc_trace(mVcdFile, tmp_8_fu_266_p4, "tmp_8_fu_266_p4");
    sc_trace(mVcdFile, icmp_ln1054_1_fu_276_p2, "icmp_ln1054_1_fu_276_p2");
    sc_trace(mVcdFile, and_ln1054_9_fu_282_p2, "and_ln1054_9_fu_282_p2");
    sc_trace(mVcdFile, select_ln48_fu_160_p3, "select_ln48_fu_160_p3");
    sc_trace(mVcdFile, select_ln1054_fu_288_p3, "select_ln1054_fu_288_p3");
    sc_trace(mVcdFile, and_ln1054_8_fu_260_p2, "and_ln1054_8_fu_260_p2");
    sc_trace(mVcdFile, and_ln1054_6_fu_240_p2, "and_ln1054_6_fu_240_p2");
    sc_trace(mVcdFile, and_ln1054_4_fu_228_p2, "and_ln1054_4_fu_228_p2");
    sc_trace(mVcdFile, and_ln1054_2_fu_216_p2, "and_ln1054_2_fu_216_p2");
    sc_trace(mVcdFile, and_ln1054_fu_204_p2, "and_ln1054_fu_204_p2");
    sc_trace(mVcdFile, icmp_ln1054_fu_186_p2, "icmp_ln1054_fu_186_p2");
    sc_trace(mVcdFile, or_ln1054_fu_300_p2, "or_ln1054_fu_300_p2");
    sc_trace(mVcdFile, sext_ln1054_fu_296_p1, "sext_ln1054_fu_296_p1");
    sc_trace(mVcdFile, select_ln1054_1_fu_306_p3, "select_ln1054_1_fu_306_p3");
    sc_trace(mVcdFile, select_ln1054_4_fu_348_p3, "select_ln1054_4_fu_348_p3");
    sc_trace(mVcdFile, or_ln1054_1_fu_314_p2, "or_ln1054_1_fu_314_p2");
    sc_trace(mVcdFile, or_ln1054_2_fu_328_p2, "or_ln1054_2_fu_328_p2");
    sc_trace(mVcdFile, select_ln1054_2_fu_320_p3, "select_ln1054_2_fu_320_p3");
    sc_trace(mVcdFile, select_ln1054_3_fu_334_p3, "select_ln1054_3_fu_334_p3");
    sc_trace(mVcdFile, select_ln1054_5_fu_366_p3, "select_ln1054_5_fu_366_p3");
    sc_trace(mVcdFile, or_ln1054_3_fu_342_p2, "or_ln1054_3_fu_342_p2");
    sc_trace(mVcdFile, or_ln1054_4_fu_360_p2, "or_ln1054_4_fu_360_p2");
    sc_trace(mVcdFile, sext_ln1054_1_fu_356_p1, "sext_ln1054_1_fu_356_p1");
    sc_trace(mVcdFile, zext_ln1054_fu_374_p1, "zext_ln1054_fu_374_p1");
    sc_trace(mVcdFile, or_ln1054_5_fu_378_p2, "or_ln1054_5_fu_378_p2");
    sc_trace(mVcdFile, or_ln1054_6_fu_392_p2, "or_ln1054_6_fu_392_p2");
    sc_trace(mVcdFile, select_ln1054_6_fu_384_p3, "select_ln1054_6_fu_384_p3");
#endif

    }
    mHdltvinHandle.open("leading_one.hdltvin.dat");
    mHdltvoutHandle.open("leading_one.hdltvout.dat");
}

leading_one::~leading_one() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void leading_one::thread_and_ln1054_1_fu_210_p2() {
    and_ln1054_1_fu_210_p2 = (xor_ln1054_4_fu_198_p2.read() & xor_ln1054_fu_102_p2.read());
}

void leading_one::thread_and_ln1054_2_fu_216_p2() {
    and_ln1054_2_fu_216_p2 = (and_ln1054_1_fu_210_p2.read() & tmp_4_fu_108_p3.read());
}

void leading_one::thread_and_ln1054_3_fu_222_p2() {
    and_ln1054_3_fu_222_p2 = (and_ln1054_1_fu_210_p2.read() & xor_ln1054_1_fu_116_p2.read());
}

void leading_one::thread_and_ln1054_4_fu_228_p2() {
    and_ln1054_4_fu_228_p2 = (and_ln1054_3_fu_222_p2.read() & tmp_5_fu_122_p3.read());
}

void leading_one::thread_and_ln1054_5_fu_234_p2() {
    and_ln1054_5_fu_234_p2 = (and_ln1054_3_fu_222_p2.read() & xor_ln1054_2_fu_130_p2.read());
}

void leading_one::thread_and_ln1054_6_fu_240_p2() {
    and_ln1054_6_fu_240_p2 = (and_ln1054_5_fu_234_p2.read() & tmp_6_fu_136_p3.read());
}

void leading_one::thread_and_ln1054_7_fu_246_p2() {
    and_ln1054_7_fu_246_p2 = (and_ln1054_5_fu_234_p2.read() & xor_ln1054_3_fu_144_p2.read());
}

void leading_one::thread_and_ln1054_8_fu_260_p2() {
    and_ln1054_8_fu_260_p2 = (and_ln1054_7_fu_246_p2.read() & tmp_7_fu_252_p3.read());
}

void leading_one::thread_and_ln1054_9_fu_282_p2() {
    and_ln1054_9_fu_282_p2 = (icmp_ln1054_1_fu_276_p2.read() & and_ln1054_7_fu_246_p2.read());
}

void leading_one::thread_and_ln1054_fu_204_p2() {
    and_ln1054_fu_204_p2 = (tmp_3_fu_94_p3.read() & xor_ln1054_4_fu_198_p2.read());
}

void leading_one::thread_and_ln_fu_178_p3() {
    and_ln_fu_178_p3 = esl_concat<2,7>(tmp_fu_168_p4.read(), ap_const_lv7_0);
}

void leading_one::thread_ap_return() {
    ap_return = (!or_ln1054_6_fu_392_p2.read()[0].is_01())? sc_lv<5>(): ((or_ln1054_6_fu_392_p2.read()[0].to_bool())? select_ln1054_6_fu_384_p3.read(): ap_const_lv5_1);
}

void leading_one::thread_icmp_ln1054_1_fu_276_p2() {
    icmp_ln1054_1_fu_276_p2 = (!tmp_8_fu_266_p4.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_8_fu_266_p4.read() == ap_const_lv2_0);
}

void leading_one::thread_icmp_ln1054_fu_186_p2() {
    icmp_ln1054_fu_186_p2 = (!and_ln_fu_178_p3.read().is_01() || !ap_const_lv9_80.is_01())? sc_lv<1>(): sc_lv<1>(and_ln_fu_178_p3.read() == ap_const_lv9_80);
}

void leading_one::thread_or_ln1054_1_fu_314_p2() {
    or_ln1054_1_fu_314_p2 = (and_ln1054_6_fu_240_p2.read() | and_ln1054_4_fu_228_p2.read());
}

void leading_one::thread_or_ln1054_2_fu_328_p2() {
    or_ln1054_2_fu_328_p2 = (and_ln1054_2_fu_216_p2.read() | and_ln1054_fu_204_p2.read());
}

void leading_one::thread_or_ln1054_3_fu_342_p2() {
    or_ln1054_3_fu_342_p2 = (icmp_ln1054_fu_186_p2.read() | tmp_1_fu_78_p3.read());
}

void leading_one::thread_or_ln1054_4_fu_360_p2() {
    or_ln1054_4_fu_360_p2 = (or_ln1054_fu_300_p2.read() | or_ln1054_1_fu_314_p2.read());
}

void leading_one::thread_or_ln1054_5_fu_378_p2() {
    or_ln1054_5_fu_378_p2 = (or_ln1054_2_fu_328_p2.read() | or_ln1054_3_fu_342_p2.read());
}

void leading_one::thread_or_ln1054_6_fu_392_p2() {
    or_ln1054_6_fu_392_p2 = (or_ln1054_4_fu_360_p2.read() | or_ln1054_5_fu_378_p2.read());
}

void leading_one::thread_or_ln1054_7_fu_192_p2() {
    or_ln1054_7_fu_192_p2 = (tmp_2_fu_86_p3.read() | tmp_1_fu_78_p3.read());
}

void leading_one::thread_or_ln1054_fu_300_p2() {
    or_ln1054_fu_300_p2 = (and_ln1054_9_fu_282_p2.read() | and_ln1054_8_fu_260_p2.read());
}

void leading_one::thread_select_ln1054_1_fu_306_p3() {
    select_ln1054_1_fu_306_p3 = (!and_ln1054_6_fu_240_p2.read()[0].is_01())? sc_lv<4>(): ((and_ln1054_6_fu_240_p2.read()[0].to_bool())? ap_const_lv4_3: ap_const_lv4_4);
}

void leading_one::thread_select_ln1054_2_fu_320_p3() {
    select_ln1054_2_fu_320_p3 = (!and_ln1054_2_fu_216_p2.read()[0].is_01())? sc_lv<4>(): ((and_ln1054_2_fu_216_p2.read()[0].to_bool())? ap_const_lv4_5: ap_const_lv4_6);
}

void leading_one::thread_select_ln1054_3_fu_334_p3() {
    select_ln1054_3_fu_334_p3 = (!icmp_ln1054_fu_186_p2.read()[0].is_01())? sc_lv<4>(): ((icmp_ln1054_fu_186_p2.read()[0].to_bool())? ap_const_lv4_7: ap_const_lv4_8);
}

void leading_one::thread_select_ln1054_4_fu_348_p3() {
    select_ln1054_4_fu_348_p3 = (!or_ln1054_fu_300_p2.read()[0].is_01())? sc_lv<4>(): ((or_ln1054_fu_300_p2.read()[0].to_bool())? sext_ln1054_fu_296_p1.read(): select_ln1054_1_fu_306_p3.read());
}

void leading_one::thread_select_ln1054_5_fu_366_p3() {
    select_ln1054_5_fu_366_p3 = (!or_ln1054_2_fu_328_p2.read()[0].is_01())? sc_lv<4>(): ((or_ln1054_2_fu_328_p2.read()[0].to_bool())? select_ln1054_2_fu_320_p3.read(): select_ln1054_3_fu_334_p3.read());
}

void leading_one::thread_select_ln1054_6_fu_384_p3() {
    select_ln1054_6_fu_384_p3 = (!or_ln1054_4_fu_360_p2.read()[0].is_01())? sc_lv<5>(): ((or_ln1054_4_fu_360_p2.read()[0].to_bool())? sext_ln1054_1_fu_356_p1.read(): zext_ln1054_fu_374_p1.read());
}

void leading_one::thread_select_ln1054_fu_288_p3() {
    select_ln1054_fu_288_p3 = (!and_ln1054_9_fu_282_p2.read()[0].is_01())? sc_lv<3>(): ((and_ln1054_9_fu_282_p2.read()[0].to_bool())? select_ln48_fu_160_p3.read(): ap_const_lv3_2);
}

void leading_one::thread_select_ln48_fu_160_p3() {
    select_ln48_fu_160_p3 = (!xor_ln48_fu_154_p2.read()[0].is_01())? sc_lv<3>(): ((xor_ln48_fu_154_p2.read()[0].to_bool())? ap_const_lv3_7: ap_const_lv3_0);
}

void leading_one::thread_sext_ln1054_1_fu_356_p1() {
    sext_ln1054_1_fu_356_p1 = esl_sext<5,4>(select_ln1054_4_fu_348_p3.read());
}

void leading_one::thread_sext_ln1054_fu_296_p1() {
    sext_ln1054_fu_296_p1 = esl_sext<4,3>(select_ln1054_fu_288_p3.read());
}

void leading_one::thread_tmp_1_fu_78_p3() {
    tmp_1_fu_78_p3 = a_V.read().range(8, 8);
}

void leading_one::thread_tmp_2_fu_86_p3() {
    tmp_2_fu_86_p3 = a_V.read().range(7, 7);
}

void leading_one::thread_tmp_3_fu_94_p3() {
    tmp_3_fu_94_p3 = a_V.read().range(6, 6);
}

void leading_one::thread_tmp_4_fu_108_p3() {
    tmp_4_fu_108_p3 = a_V.read().range(5, 5);
}

void leading_one::thread_tmp_5_fu_122_p3() {
    tmp_5_fu_122_p3 = a_V.read().range(4, 4);
}

void leading_one::thread_tmp_6_fu_136_p3() {
    tmp_6_fu_136_p3 = a_V.read().range(3, 3);
}

void leading_one::thread_tmp_7_fu_252_p3() {
    tmp_7_fu_252_p3 = a_V.read().range(2, 2);
}

void leading_one::thread_tmp_8_fu_266_p4() {
    tmp_8_fu_266_p4 = a_V.read().range(2, 1);
}

void leading_one::thread_tmp_fu_168_p4() {
    tmp_fu_168_p4 = a_V.read().range(8, 7);
}

void leading_one::thread_trunc_ln48_fu_150_p1() {
    trunc_ln48_fu_150_p1 = a_V.read().range(1-1, 0);
}

void leading_one::thread_xor_ln1054_1_fu_116_p2() {
    xor_ln1054_1_fu_116_p2 = (tmp_4_fu_108_p3.read() ^ ap_const_lv1_1);
}

void leading_one::thread_xor_ln1054_2_fu_130_p2() {
    xor_ln1054_2_fu_130_p2 = (tmp_5_fu_122_p3.read() ^ ap_const_lv1_1);
}

void leading_one::thread_xor_ln1054_3_fu_144_p2() {
    xor_ln1054_3_fu_144_p2 = (tmp_6_fu_136_p3.read() ^ ap_const_lv1_1);
}

void leading_one::thread_xor_ln1054_4_fu_198_p2() {
    xor_ln1054_4_fu_198_p2 = (or_ln1054_7_fu_192_p2.read() ^ ap_const_lv1_1);
}

void leading_one::thread_xor_ln1054_fu_102_p2() {
    xor_ln1054_fu_102_p2 = (tmp_3_fu_94_p3.read() ^ ap_const_lv1_1);
}

void leading_one::thread_xor_ln48_fu_154_p2() {
    xor_ln48_fu_154_p2 = (trunc_ln48_fu_150_p1.read() ^ ap_const_lv1_1);
}

void leading_one::thread_zext_ln1054_fu_374_p1() {
    zext_ln1054_fu_374_p1 = esl_zext<5,4>(select_ln1054_5_fu_366_p3.read());
}

void leading_one::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"a_V\" :  \"" << a_V.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
