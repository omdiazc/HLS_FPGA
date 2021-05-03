#include <iostream>

#include"quiz65-tb.h"


int main(){

	ap_uint<13> r1,r2,r3;

	inOutFunction(&r1, &r2, &r3);


	std::cout << r1.to_string() << std::endl;

	std::cout << r2.to_string() << std::endl;

	std::cout << r3.to_string() << std::endl;


	return 0;
}
