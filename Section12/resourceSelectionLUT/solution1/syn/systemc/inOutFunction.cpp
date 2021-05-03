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
    v_mul_fu_71 = new mul("v_mul_fu_71");
    v_mul_fu_71->ap_ready(v_mul_fu_71_ap_ready);
    v_mul_fu_71->a(a);
    v_mul_fu_71->b(b);
    v_mul_fu_71->ap_return(v_mul_fu_71_ap_return);
    w_mul_fu_79 = new mul("w_mul_fu_79");
    w_mul_fu_79->ap_ready(w_mul_fu_79_ap_ready);
    w_mul_fu_79->a(a);
    w_mul_fu_79->b(c);
    w_mul_fu_79->ap_return(w_mul_fu_79_ap_return);
    x_mul_fu_87 = new mul("x_mul_fu_87");
    x_mul_fu_87->ap_ready(x_mul_fu_87_ap_ready);
    x_mul_fu_87->a(a);
    x_mul_fu_87->b(d);
    x_mul_fu_87->ap_return(x_mul_fu_87_ap_return);
    y_mul_fu_95 = new mul("y_mul_fu_95");
    y_mul_fu_95->ap_ready(y_mul_fu_95_ap_ready);
    y_mul_fu_95->a(v_mul_fu_71_ap_return);
    y_mul_fu_95->b(x_mul_fu_87_ap_return);
    y_mul_fu_95->ap_return(y_mul_fu_95_ap_return);

    SC_METHOD(thread_add_ln36_1_fu_103_p2);
    sensitive << ( v_mul_fu_71_ap_return );
    sensitive << ( w_mul_fu_79_ap_return );

    SC_METHOD(thread_add_ln36_2_fu_109_p2);
    sensitive << ( x_mul_fu_87_ap_return );
    sensitive << ( y_mul_fu_95_ap_return );

    SC_METHOD(thread_f);
    sensitive << ( add_ln36_2_fu_109_p2 );
    sensitive << ( add_ln36_1_fu_103_p2 );

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
    sc_trace(mVcdFile, v_mul_fu_71_ap_ready, "v_mul_fu_71_ap_ready");
    sc_trace(mVcdFile, v_mul_fu_71_ap_return, "v_mul_fu_71_ap_return");
    sc_trace(mVcdFile, w_mul_fu_79_ap_ready, "w_mul_fu_79_ap_ready");
    sc_trace(mVcdFile, w_mul_fu_79_ap_return, "w_mul_fu_79_ap_return");
    sc_trace(mVcdFile, x_mul_fu_87_ap_ready, "x_mul_fu_87_ap_ready");
    sc_trace(mVcdFile, x_mul_fu_87_ap_return, "x_mul_fu_87_ap_return");
    sc_trace(mVcdFile, y_mul_fu_95_ap_ready, "y_mul_fu_95_ap_ready");
    sc_trace(mVcdFile, y_mul_fu_95_ap_return, "y_mul_fu_95_ap_return");
    sc_trace(mVcdFile, add_ln36_2_fu_109_p2, "add_ln36_2_fu_109_p2");
    sc_trace(mVcdFile, add_ln36_1_fu_103_p2, "add_ln36_1_fu_103_p2");
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
    delete v_mul_fu_71;
    delete w_mul_fu_79;
    delete x_mul_fu_87;
    delete y_mul_fu_95;
}

void inOutFunction::thread_add_ln36_1_fu_103_p2() {
    add_ln36_1_fu_103_p2 = (!w_mul_fu_79_ap_return.read().is_01() || !v_mul_fu_71_ap_return.read().is_01())? sc_lv<32>(): (sc_biguint<32>(w_mul_fu_79_ap_return.read()) + sc_biguint<32>(v_mul_fu_71_ap_return.read()));
}

void inOutFunction::thread_add_ln36_2_fu_109_p2() {
    add_ln36_2_fu_109_p2 = (!x_mul_fu_87_ap_return.read().is_01() || !y_mul_fu_95_ap_return.read().is_01())? sc_lv<32>(): (sc_biguint<32>(x_mul_fu_87_ap_return.read()) + sc_biguint<32>(y_mul_fu_95_ap_return.read()));
}

void inOutFunction::thread_f() {
    f = (!add_ln36_2_fu_109_p2.read().is_01() || !add_ln36_1_fu_103_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln36_2_fu_109_p2.read()) + sc_biguint<32>(add_ln36_1_fu_103_p2.read()));
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
