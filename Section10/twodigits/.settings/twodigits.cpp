#include<ap_int.h>

unsigned char sevenSegmentNumbers[10]={	0b0000001, 0b1001111, 0b0010010, 0b0000110, 0b1001100,
										0b0100100, 0b0100000, 0b0001111, 0b0000000, 0b0000100,};




ap_uint<20> doubledabble(ap_uint<16> input){


	ap_uint<36> dabble = input;


	for(int e =0; e<16; e++){

		for(int i = 0; i<5; i++){

			if(dabble(19+4*i,16+4*i)>4){
				dabble(19+4*i,16+4*i)= dabble(19+4*i,16+4*i)+3;
			}

		}

		dabble=dabble << 1;

	}

	return dabble(35,16);
}

void inOutFunction(ap_uint<16> inNumber, ap_uint<4> pushButton, ap_uint<4> *anodes, ap_uint<8> *outputSegments ){
#pragma HLS INTERFACE ap_none port=inNumber
#pragma HLS INTERFACE ap_none port=pushButton
#pragma HLS INTERFACE ap_none port=anodes
#pragma HLS INTERFACE ap_none port=outputSegments
#pragma HLS INTERFACE ap_ctrl_none port=return

	ap_uint<20> dabble = doubledabble(inNumber);

	if(pushButton[0]==1){
		*anodes = 0b1110;
		*outputSegments = sevenSegmentNumbers[dabble(3,0)];

	}
	else if (pushButton[1]==1){
		*anodes = 0b1101;
		*outputSegments = sevenSegmentNumbers[dabble(7,4)];


	}
	else if (pushButton[2]==1){
		*anodes = 0b1011;
		*outputSegments = sevenSegmentNumbers[dabble(11,8)];

	}
	else if(pushButton[3]==1){
		*anodes = 0b0111;
		*outputSegments = sevenSegmentNumbers[dabble(15,12)];

	}
	else{
		*anodes = 0b1111;

	}




}

