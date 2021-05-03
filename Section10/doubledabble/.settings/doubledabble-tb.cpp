#include <iostream>

#include"doubledabble-tb.h"


int main(){

	ap_uint<16> testCase = 0b1111111011011100;

	std::cout << (doubledabble(testCase)).to_string()<<std::endl;

}
