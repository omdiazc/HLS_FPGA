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
const sc_lv<1> inOutFunction::ap_const_lv1_1 = "1";
const sc_logic inOutFunction::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic inOutFunction::ap_const_logic_0 = sc_dt::Log_0;

inOutFunction::inOutFunction(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_and_ln11_fu_55_p0);
    sensitive << ( a );

    SC_METHOD(thread_and_ln11_fu_55_p1);
    sensitive << ( b );

    SC_METHOD(thread_and_ln11_fu_55_p2);
    sensitive << ( and_ln11_fu_55_p0 );
    sensitive << ( and_ln11_fu_55_p1 );

    SC_METHOD(thread_d);
    sensitive << ( and_ln11_fu_55_p2 );
    sensitive << ( xor_ln11_fu_61_p2 );

    SC_METHOD(thread_xor_ln11_fu_61_p0);
    sensitive << ( c );

    SC_METHOD(thread_xor_ln11_fu_61_p2);
    sensitive << ( xor_ln11_fu_61_p0 );

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
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, and_ln11_fu_55_p0, "and_ln11_fu_55_p0");
    sc_trace(mVcdFile, and_ln11_fu_55_p1, "and_ln11_fu_55_p1");
    sc_trace(mVcdFile, xor_ln11_fu_61_p0, "xor_ln11_fu_61_p0");
    sc_trace(mVcdFile, and_ln11_fu_55_p2, "and_ln11_fu_55_p2");
    sc_trace(mVcdFile, xor_ln11_fu_61_p2, "xor_ln11_fu_61_p2");
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
}

void inOutFunction::thread_and_ln11_fu_55_p0() {
    and_ln11_fu_55_p0 =  (sc_lv<1>) (a.read());
}

void inOutFunction::thread_and_ln11_fu_55_p1() {
    and_ln11_fu_55_p1 =  (sc_lv<1>) (b.read());
}

void inOutFunction::thread_and_ln11_fu_55_p2() {
    and_ln11_fu_55_p2 = (and_ln11_fu_55_p0.read() & and_ln11_fu_55_p1.read());
}

void inOutFunction::thread_d() {
    d =  (sc_logic) ((and_ln11_fu_55_p2.read() | xor_ln11_fu_61_p2.read()))[0];
}

void inOutFunction::thread_xor_ln11_fu_61_p0() {
    xor_ln11_fu_61_p0 =  (sc_lv<1>) (c.read());
}

void inOutFunction::thread_xor_ln11_fu_61_p2() {
    xor_ln11_fu_61_p2 = (xor_ln11_fu_61_p0.read() ^ ap_const_lv1_1);
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
        mHdltvoutHandle << mComma << "{"  <<  " \"d\" :  \"" << d.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

