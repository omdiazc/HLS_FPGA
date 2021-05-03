#include"twodigits-tb.h"
#include<iostream>

int ss2int(ap_uint<8> outputSegments){

//	unsigned char sevenSegmentNumbers[10]={	0b0000001, 0b1001111, 0b0010010, 0b0000110, 0b1001100,
	//										0b0100100, 0b0100000, 0b0001111, 0b0000000, 0b0000100,};
	switch(outputSegments){

					case 0b0000001:
						return 0;

						break;
					case 0b1001111:

						return 1;

						break;

					case 0b0010010:
						return 2;
						break;

					case 0b0000110:
						return 3;
						break;

					case 0b1001100:
						return 4;
						break;

					case 0b0100100:
						return 5;
						break;

					case 0b0100000:
						return 6;
						break;

					case 0b0001111:
						return 7;
						break;

					case 0b0000000:
						return 8;
						break;

					case 0b0000100:
						return 9;
					default:
						std::cout << "ERROR: UNVALID SEVEN SEGMENT OUTPUT VALUE" << std::endl;
						return -1;
						break;

	}
}

int main(){

	int status =0;

	ap_uint<16> inNumber = 0b101000000100;

	ap_uint<4> anodes;
	ap_uint<8> outputSegments;


	std::cout << "Input: "<< inNumber <<std::endl;

	ap_uint<4> pushButton = 0b0001;
	inOutFunction(inNumber,  pushButton,  &anodes,  &outputSegments );
	std::cout << " Anodes: " <<anodes.to_string() << " outputSegments :" << ss2int(outputSegments)<< std::endl;

	if(ss2int(outputSegments)!= (inNumber%10)||anodes!=0b1110){
		status =-1;
	}

	pushButton = 0b0010;
	inOutFunction(inNumber,  pushButton,  &anodes,  &outputSegments );
	std::cout << " Anodes: " <<anodes.to_string() << " outputSegments :" << ss2int(outputSegments)<< std::endl;


	if(ss2int(outputSegments)!= ((inNumber/10)%10)||anodes!=0b1101){
		status =-1;
	}


	pushButton = 0b0100;
	inOutFunction(inNumber,  pushButton,  &anodes,  &outputSegments );
	std::cout << " Anodes: " <<anodes.to_string() << " outputSegments :" << ss2int(outputSegments)<< std::endl;

	if(ss2int(outputSegments)!= ((inNumber/100)%10)||anodes!=0b1011){
		status =-1;
	}

	pushButton = 0b1000;
	inOutFunction(inNumber,  pushButton,  &anodes,  &outputSegments );
	std::cout << " Anodes: " <<anodes.to_string() << " outputSegments :" << ss2int(outputSegments)<< std::endl;

	if(ss2int(outputSegments)!= ((inNumber/1000)%10)||anodes!=0b0111){
		status =-1;
	}


	return status;


}
