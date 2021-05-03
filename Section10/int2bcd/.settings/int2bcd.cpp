#include<ap_int.h>

ap_uint<20> int2bcd(ap_uint<16> number){

	ap_uint<20> out=0b11111111111111111111;

	for(int i =0; i<5; i++){

		ap_uint<4> digit=number%(10);
		number = number/10;


		out(4*i+3,4*i)=digit;

	}


	return out;
}
