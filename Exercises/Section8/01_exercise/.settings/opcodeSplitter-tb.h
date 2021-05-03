#ifndef __OPCODESPLITTER_TB_H__
#define __OPCODESPLITTER_TB_H__

#include <ap_int.h>

void opcodeSplitter(ap_uint<32> input, ap_uint<6> *opcode, ap_uint<5> *rs,
		ap_uint<5> *rd, ap_uint<16> *inmmediate);

#endif // __OPCODESPLITTER_TB_H__
