#include<ap_int.h>


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


