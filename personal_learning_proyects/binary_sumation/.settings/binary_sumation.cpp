

unsigned char *anode;
unsigned char *digit;

unsigned char sevenSegmentNumbers[10]={	0b0000001, 0b1001111, 0b0010010, 0b0000110, 0b1001100,
										0b0100100, 0b0100000, 0b0001111, 0b0000000, 0b0000100,};

/*
unsigned char zero	=	0b0000001;
unsigned char one 	= 	0b1001111;
unsigned char two 	=	0b0010010;
unsigned char three =	0b0000110;
unsigned char four 	=	0b1001100;
unsigned char five 	=	0b0100100;
unsigned char six 	=	0b0100000;
unsigned char seven =	0b0001111;
unsigned char eight =	0b0000000;
unsigned char nine 	=	0b0000100;
*/


bool delay(long long int n) {
  static bool dummy = 0;
  for (long long int j = 0; j < n; j++) {
#pragma HLS pipeline
    dummy = !dummy;
  }
  return dummy;
}


void print(int number){

	*anode = 0b1000;
	*digit = sevenSegmentNumbers[number%10];


	delay(1000);

	*anode = 0b0100;
	*digit = sevenSegmentNumbers[(number%100)/10];

	delay(1000);

	*anode = 0b0010;
	*digit = sevenSegmentNumbers[(number%1000)/100];

	delay(1000);

	*anode = 0b0001;
	*digit = sevenSegmentNumbers[number/1000];

	delay(1000);


}


void inOutFunction(int firstNumber, int secondNumber){
#pragma HLS INTERFACE ap_none port=secondNumber
#pragma HLS INTERFACE ap_none port=firstNumber
#pragma HLS INTERFACE ap_ctrl_none port=digit
#pragma HLS INTERFACE ap_ctrl_none port=anode

	print((firstNumber+secondNumber));

}
