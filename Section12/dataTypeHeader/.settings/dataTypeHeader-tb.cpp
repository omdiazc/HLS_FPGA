#include "dataTypeHeader-tb.h"


int main(){

	int status = 0;

	cdt in1 = 4388608;
	cdt in2 = 1388608;
	cdt out = 0;

	inOutFunction(in1, in2, &out);

	if(out == 5777216){
		std::cout << "SUCCESSFUL TEST" <<  std::endl;
	}
	else{
		std::cout << "FAILED TEST: "<< out <<  std::endl;
		status = 1;
	}

	return status;
}
