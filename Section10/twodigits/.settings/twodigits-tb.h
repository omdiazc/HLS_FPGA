#ifndef __TWODIGITS_TB_H__
#define __TWODIGITS_TB_H__

#include <ap_int.h>

void inOutFunction(ap_uint<16> inNumber, ap_uint<4> pushButton, ap_uint<4> *anodes, ap_uint<8> *outputSegments );

ap_uint<20> doubledabble(ap_uint<16> input);

#endif // __TWODIGITS_TB_H__
