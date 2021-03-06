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

const sc_logic inOutFunction::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<13> inOutFunction::ap_const_lv13_40 = "1000000";
const sc_logic inOutFunction::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<13> inOutFunction::ap_const_lv13_1040 = "1000001000000";
const sc_lv<13> inOutFunction::ap_const_lv13_1FFC = "1111111111100";
const bool inOutFunction::ap_const_boolean_1 = true;

inOutFunction::inOutFunction(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_r1_V);
    sensitive << ( ap_start );

    SC_METHOD(thread_r1_V_ap_vld);
    sensitive << ( ap_start );

    SC_METHOD(thread_r2_V);
    sensitive << ( ap_start );

    SC_METHOD(thread_r2_V_ap_vld);
    sensitive << ( ap_start );

    SC_METHOD(thread_r3_V);
    sensitive << ( ap_start );

    SC_METHOD(thread_r3_V_ap_vld);
    sensitive << ( ap_start );

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
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, r1_V, "(port)r1_V");
    sc_trace(mVcdFile, r1_V_ap_vld, "(port)r1_V_ap_vld");
    sc_trace(mVcdFile, r2_V, "(port)r2_V");
    sc_trace(mVcdFile, r2_V_ap_vld, "(port)r2_V_ap_vld");
    sc_trace(mVcdFile, r3_V, "(port)r3_V");
    sc_trace(mVcdFile, r3_V_ap_vld, "(port)r3_V_ap_vld");
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

void inOutFunction::thread_ap_done() {
    ap_done = ap_start.read();
}

void inOutFunction::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void inOutFunction::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void inOutFunction::thread_r1_V() {
    r1_V = ap_const_lv13_40;
}

void inOutFunction::thread_r1_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        r1_V_ap_vld = ap_const_logic_1;
    } else {
        r1_V_ap_vld = ap_const_logic_0;
    }
}

void inOutFunction::thread_r2_V() {
    r2_V = ap_const_lv13_1040;
}

void inOutFunction::thread_r2_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        r2_V_ap_vld = ap_const_logic_1;
    } else {
        r2_V_ap_vld = ap_const_logic_0;
    }
}

void inOutFunction::thread_r3_V() {
    r3_V = ap_const_lv13_1FFC;
}

void inOutFunction::thread_r3_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        r3_V_ap_vld = ap_const_logic_1;
    } else {
        r3_V_ap_vld = ap_const_logic_0;
    }
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
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"r1_V\" :  \"" << r1_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"r1_V_ap_vld\" :  \"" << r1_V_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"r2_V\" :  \"" << r2_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"r2_V_ap_vld\" :  \"" << r2_V_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"r3_V\" :  \"" << r3_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"r3_V_ap_vld\" :  \"" << r3_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

