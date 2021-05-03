#include "paritybit-tb.h"
#include <iostream>
#include <math.h>



int main(){

	int status = 0;

	for(ap_uint<9> i = 0; i<256 ; i++){

		bool parityFunction;
		inOutFunction(i, &parityFunction);

		std::cout << i.to_string()  << ":"<< parityFunction << std::endl;

		if(parityFunction!=parity(i)){
			status = 1;
			break;
		}


	}

}

bool parity(unsigned char in){

	bool out =  (((in >> 0) & 1) ^ ((in >> 1) & 1) );

	for(int i = 2; i < 8; i++){
	#pragma HLS UNROLL

		out = out ^ ((in >> i) & 1);

	}

	return out;

}
