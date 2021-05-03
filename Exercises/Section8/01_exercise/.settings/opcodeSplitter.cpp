
#include<ap_int.h>

void opcodeSplitter(ap_uint<32> input, ap_uint<6> *opcode, ap_uint<5> *rs,
		ap_uint<5> *rd, ap_uint<16> *inmmediate){

	*inmmediate = input	(15, 0 );
	*rd 		= input (20, 16);
	*rs 		= input (25, 21);
	*opcode 	= input (31, 26);


}
