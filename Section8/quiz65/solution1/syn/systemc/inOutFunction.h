// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _inOutFunction_HH_
#define _inOutFunction_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct inOutFunction : public sc_module {
    // Port declarations 10
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > r1_V;
    sc_out< sc_logic > r1_V_ap_vld;
    sc_out< sc_lv<13> > r2_V;
    sc_out< sc_logic > r2_V_ap_vld;
    sc_out< sc_lv<13> > r3_V;
    sc_out< sc_logic > r3_V_ap_vld;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    inOutFunction(sc_module_name name);
    SC_HAS_PROCESS(inOutFunction);

    ~inOutFunction();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<13> ap_const_lv13_40;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_const_lv13_1040;
    static const sc_lv<13> ap_const_lv13_1FFC;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_r1_V();
    void thread_r1_V_ap_vld();
    void thread_r2_V();
    void thread_r2_V_ap_vld();
    void thread_r3_V();
    void thread_r3_V_ap_vld();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
