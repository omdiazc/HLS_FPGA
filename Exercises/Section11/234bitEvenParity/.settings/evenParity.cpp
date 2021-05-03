#include<ap_int.h>




void inOutFunction(ap_uint<223> in, ap_uint<1> *out){

	*out = in.xor_reduce();


}
