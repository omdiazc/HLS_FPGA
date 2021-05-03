
#include <ap_int.h>

void inOutFunction(ap_uint<13> *r1,
		ap_uint<13> *r2,ap_uint<13> *r3){

	ap_uint<7> v1 = 0x41;

	*r1 = v1<<6;
	*r2 = ap_uint<13>(v1)<<6;

	ap_int<7> v2 = -63;

	*r3 = v2 >>4;



}
