// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __inOutFunction_sevbkb_H__
#define __inOutFunction_sevbkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct inOutFunction_sevbkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(inOutFunction_sevbkb_ram) {
        ram[0] = "0b0000001";
        ram[1] = "0b1001111";
        ram[2] = "0b0010010";
        ram[3] = "0b0000110";
        ram[4] = "0b1001100";
        ram[5] = "0b0100100";
        ram[6] = "0b0100000";
        ram[7] = "0b0001111";
        ram[8] = "0b0000000";
        ram[9] = "0b0000100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(inOutFunction_sevbkb) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


inOutFunction_sevbkb_ram* meminst;


SC_CTOR(inOutFunction_sevbkb) {
meminst = new inOutFunction_sevbkb_ram("inOutFunction_sevbkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~inOutFunction_sevbkb() {
    delete meminst;
}


};//endmodule
#endif
