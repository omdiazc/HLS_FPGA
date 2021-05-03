#include <iostream>

#include"int2bcd-tb.h"


int main(){

	ap_uint<16> testCase = 0b0001010001110100;
	ap_uint<20> out = int2bcd(testCase);

	std::cout << out.to_string() << " Hola";

	return 0;
}
