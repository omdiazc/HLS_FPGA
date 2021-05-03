#include "opcodeSplitter-tb.h"

int fullTest();

int main(){

	int status = 0;

	status = fullTest();


	return status;
}


int fullTest(){

	int status = 0;

	for(unsigned int opcode_gold = 0; opcode_gold<=0b111111; opcode_gold++){

		std::cout << "First loop :" << opcode_gold <<" of 63" <<std::endl;

		for(unsigned int rs_gold = 0; rs_gold<=0b11111; rs_gold++){

			std::cout << "Second loop :" << rs_gold <<" of 31" <<std::endl;

			for(unsigned int rd_gold = 0; rd_gold<=0b11111;rd_gold++){

				std::cout << "Third loop :" << rd_gold <<" of 31" <<std::endl;


				for (unsigned int immediate_gold = 0; immediate_gold<=0b1111111111111111; immediate_gold++){



					ap_uint<6> opcode = opcode_gold;
					ap_uint<5> rs = rs_gold,rd = rd_gold;
					ap_uint<16> immediate = immediate_gold;

					ap_uint<32> input;// = opcode,rs,rd,immediate;
					input =(opcode,rs,rd,immediate);

					opcodeSplitter(input, &opcode,&rs,&rd, &immediate);

					if(opcode!=opcode_gold){
						status = 1;
						std::cout<<"opcode: "<<opcode.to_string()<<"!= %b\n"<<opcode_gold<<std::endl;
						break;
					}

					if(rs!=rs_gold){
						status = 1;
						std::cout<<"rs: " << rs.to_string()<<"!= %b\n"<<rs_gold<<std::endl;
						break;
					}

					if(rd!=rd_gold){
						status = 1;
						std::cout<<"rd: "<<rd.to_string()<<"!= %b\n"<<rd_gold<<std::endl;
						break;
					}

					if(immediate!=immediate_gold){
						status = 1;
						std::cout<<"immediate: "<<immediate.to_string()<<"!= %b\n"<<immediate_gold<<std::endl;
						break;
					}

				}

				if (status == 1){
					break;
				}

			}

			if (status == 1){
				break;
			}

		}

		if (status == 1){
			break;
		}

	}

	if(status==1){
							std::cout << "TEST FAILED"<<std::endl;
						}

						else{
							std::cout << "TEST SUCCESS"<<std::endl;
						}

	return status;

}

int fastTest(){

	int status = 0;


	ap_uint<32> input			=	0b11011000110100111010101010101010;
	ap_uint<6> opcode;
	ap_uint<5> rs,rd;
	ap_uint<16> immediate;

	ap_uint<6> opcode_gold 		= 	0b110110;
	ap_uint<5> rs_gold 			= 	0b00110;
	ap_uint<5> rd_gold 			= 	0b10011;
	ap_uint<16> immediate_gold = 	0b1010101010101010;

	opcodeSplitter(input, &opcode,&rs,&rd, &immediate);

	if(opcode!=opcode_gold){
		status = 1;
		std::cout<<"opcode: "<<opcode.to_string()<<"!= "<<opcode_gold.to_string()<<std::endl;
	}

	if(rs!=rs_gold){
		status = 1;
		std::cout<<"rs: " << rs.to_string()<<"!= "<<rs_gold.to_string()<<std::endl;
	}

	if(rd!=rd_gold){
		status = 1;
		std::cout<<"rd: "<<rd.to_string()<<"!= "<<rd_gold.to_string()<<std::endl;
	}

	if(immediate!=immediate_gold){
		status = 1;
		std::cout<<"immediate: "<<immediate.to_string()<<"!= "<<immediate_gold.to_string()<<std::endl;
	}



	if(status==1){
		std::cout << "TEST FAILED"<<std::endl;
	}

	else{
		std::cout << "TEST SUCCESS"<<std::endl;
	}


	return status;
}
