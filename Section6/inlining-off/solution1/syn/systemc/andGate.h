// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _andGate_HH_
#define _andGate_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct andGate : public sc_module {
    // Port declarations 4
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > a;
    sc_in< sc_logic > b;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    andGate(sc_module_name name);
    SC_HAS_PROCESS(andGate);

    ~andGate();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > and_ln5_fu_18_p0;
    sc_signal< sc_lv<1> > and_ln5_fu_18_p1;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_and_ln5_fu_18_p0();
    void thread_and_ln5_fu_18_p1();
    void thread_ap_ready();
    void thread_ap_return();
};

}

using namespace ap_rtl;

#endif
