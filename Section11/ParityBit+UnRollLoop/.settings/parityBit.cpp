#include<ap_int.h>


void inOutFunction(unsigned char in, bool *out){
#pragma HLS INTERFACE ap_none port=out
#pragma HLS INTERFACE ap_none port=in
#pragma HLS INTERFACE ap_ctrl_none port=return


	*out =  (((in >> 0) & 1) ^ ((in >> 1) & 1) );

	for(ap_uint<4> i = 2; i < 8; i++){
	#pragma HLS UNROLL

		*out = *out ^ ((in >> i) & 1);

	}


}
