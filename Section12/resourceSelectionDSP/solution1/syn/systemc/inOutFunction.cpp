// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "inOutFunction.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const bool inOutFunction::ap_const_boolean_1 = true;
const sc_logic inOutFunction::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic inOutFunction::ap_const_logic_0 = sc_dt::Log_0;

inOutFunction::inOutFunction(sc_module_name name) : sc_module(name), mVcdFile(0) {
    inOutFunction_addbkb_U1 = new inOutFunction_addbkb<1,1,32,32,32>("inOutFunction_addbkb_U1");
    inOutFunction_addbkb_U1->din0(t_4_fu_101_p0);
    inOutFunction_addbkb_U1->din1(t_4_fu_101_p1);
    inOutFunction_addbkb_U1->dout(t_4_fu_101_p2);

    SC_METHOD(thread_add_ln15_fu_89_p0);
    sensitive << ( c );

    SC_METHOD(thread_add_ln15_fu_89_p1);
    sensitive << ( b );

    SC_METHOD(thread_add_ln15_fu_89_p2);
    sensitive << ( add_ln15_fu_89_p0 );
    sensitive << ( add_ln15_fu_89_p1 );

    SC_METHOD(thread_f);
    sensitive << ( t_4_fu_101_p2 );

    SC_METHOD(thread_t_1_fu_77_p0);
    sensitive << ( d );

    SC_METHOD(thread_t_1_fu_77_p1);
    sensitive << ( c );

    SC_METHOD(thread_t_1_fu_77_p2);
    sensitive << ( t_1_fu_77_p0 );
    sensitive << ( t_1_fu_77_p1 );

    SC_METHOD(thread_t_3_fu_95_p1);
    sensitive << ( a );

    SC_METHOD(thread_t_4_fu_101_p0);
    sensitive << ( t_1_fu_77_p2 );
    sensitive << ( t_fu_71_p2 );

    SC_METHOD(thread_t_4_fu_101_p1);
    sensitive << ( add_ln15_fu_89_p2 );
    sensitive << ( t_3_fu_95_p1 );

    SC_METHOD(thread_t_fu_71_p0);
    sensitive << ( b );

    SC_METHOD(thread_t_fu_71_p1);
    sensitive << ( a );

    SC_METHOD(thread_t_fu_71_p2);
    sensitive << ( t_fu_71_p0 );
    sensitive << ( t_fu_71_p1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "inOutFunction_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, c, "(port)c");
    sc_trace(mVcdFile, d, "(port)d");
    sc_trace(mVcdFile, f, "(port)f");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, t_4_fu_101_p2, "t_4_fu_101_p2");
    sc_trace(mVcdFile, t_fu_71_p0, "t_fu_71_p0");
    sc_trace(mVcdFile, t_fu_71_p1, "t_fu_71_p1");
    sc_trace(mVcdFile, t_1_fu_77_p0, "t_1_fu_77_p0");
    sc_trace(mVcdFile, t_1_fu_77_p1, "t_1_fu_77_p1");
    sc_trace(mVcdFile, t_1_fu_77_p2, "t_1_fu_77_p2");
    sc_trace(mVcdFile, t_fu_71_p2, "t_fu_71_p2");
    sc_trace(mVcdFile, add_ln15_fu_89_p0, "add_ln15_fu_89_p0");
    sc_trace(mVcdFile, add_ln15_fu_89_p1, "add_ln15_fu_89_p1");
    sc_trace(mVcdFile, add_ln15_fu_89_p2, "add_ln15_fu_89_p2");
    sc_trace(mVcdFile, t_3_fu_95_p1, "t_3_fu_95_p1");
    sc_trace(mVcdFile, t_4_fu_101_p0, "t_4_fu_101_p0");
    sc_trace(mVcdFile, t_4_fu_101_p1, "t_4_fu_101_p1");
#endif

    }
    mHdltvinHandle.open("inOutFunction.hdltvin.dat");
    mHdltvoutHandle.open("inOutFunction.hdltvout.dat");
}

inOutFunction::~inOutFunction() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete inOutFunction_addbkb_U1;
}

void inOutFunction::thread_add_ln15_fu_89_p0() {
    add_ln15_fu_89_p0 = c.read();
}

void inOutFunction::thread_add_ln15_fu_89_p1() {
    add_ln15_fu_89_p1 = b.read();
}

void inOutFunction::thread_add_ln15_fu_89_p2() {
    add_ln15_fu_89_p2 = (!add_ln15_fu_89_p0.read().is_01() || !add_ln15_fu_89_p1.read().is_01())? sc_lv<32>(): (sc_bigint<32>(add_ln15_fu_89_p0.read()) + sc_bigint<32>(add_ln15_fu_89_p1.read()));
}

void inOutFunction::thread_f() {
    f = t_4_fu_101_p2.read();
}

void inOutFunction::thread_t_1_fu_77_p0() {
    t_1_fu_77_p0 = d.read();
}

void inOutFunction::thread_t_1_fu_77_p1() {
    t_1_fu_77_p1 = c.read();
}

void inOutFunction::thread_t_1_fu_77_p2() {
    t_1_fu_77_p2 = (!t_1_fu_77_p0.read().is_01() || !t_1_fu_77_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(t_1_fu_77_p0.read()) * sc_bigint<32>(t_1_fu_77_p1.read());
}

void inOutFunction::thread_t_3_fu_95_p1() {
    t_3_fu_95_p1 = a.read();
}

void inOutFunction::thread_t_4_fu_101_p0() {
    t_4_fu_101_p0 = (!t_1_fu_77_p2.read().is_01() || !t_fu_71_p2.read().is_01())? sc_lv<32>(): sc_bigint<32>(t_1_fu_77_p2.read()) * sc_bigint<32>(t_fu_71_p2.read());
}

void inOutFunction::thread_t_4_fu_101_p1() {
    t_4_fu_101_p1 = (!add_ln15_fu_89_p2.read().is_01() || !t_3_fu_95_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(add_ln15_fu_89_p2.read()) * sc_bigint<32>(t_3_fu_95_p1.read());
}

void inOutFunction::thread_t_fu_71_p0() {
    t_fu_71_p0 = b.read();
}

void inOutFunction::thread_t_fu_71_p1() {
    t_fu_71_p1 = a.read();
}

void inOutFunction::thread_t_fu_71_p2() {
    t_fu_71_p2 = (!t_fu_71_p0.read().is_01() || !t_fu_71_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(t_fu_71_p0.read()) * sc_bigint<32>(t_fu_71_p1.read());
}

void inOutFunction::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"a\" :  \"" << a.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b\" :  \"" << b.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"c\" :  \"" << c.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"d\" :  \"" << d.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"f\" :  \"" << f.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

