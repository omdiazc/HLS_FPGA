// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "basic_output.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<8> basic_output::ap_const_lv8_1A = "11010";
const bool basic_output::ap_const_boolean_1 = true;
const sc_logic basic_output::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic basic_output::ap_const_logic_0 = sc_dt::Log_0;

basic_output::basic_output(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_o);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "basic_output_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, o, "(port)o");
#endif

    }
    mHdltvinHandle.open("basic_output.hdltvin.dat");
    mHdltvoutHandle.open("basic_output.hdltvout.dat");
}

basic_output::~basic_output() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void basic_output::thread_o() {
    o = ap_const_lv8_1A;
}

void basic_output::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvoutHandle << mComma << "{"  <<  " \"o\" :  \"" << o.read() << "\" ";
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

