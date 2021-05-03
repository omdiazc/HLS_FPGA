#include "testbench-tb.h"

#include <iostream>

int main(){

	int status = 0;

	bool a, b, c, d[8];

	bool d_golden[8] = {1, 0, 1, 0, 1, 0, 1, 1};

	int k = 0;

	for(int ia = 0; ia < 2; ia++){
		for(int ib = 0; ib < 2; ib++){
			for(int ic = 0; ic < 2; ic++){
				a=(bool) ia;
				b=(bool) ib;
				c=(bool) ic;
				inOutFunction(a,b,c,&d[k++]);
			}

		}

	}

	for(int i = 0; i < 8; i++){
		if(d[i]!= d_golden[i]){
			std::cout << "Error at" << i << "d["<<i<<"]="
					<<d[i]<< " != d_golden["<< i << "] ="
					<< d_golden[i]<< std::endl;
			status =1;
			break;
		}

	}

	if(status == 0){
		std::cout << "Design test SUCCESSFUL!"<<std::endl;
		}
	else{
		std::cout << "design test FAILED" << std::endl;
	}




	return status;


}
