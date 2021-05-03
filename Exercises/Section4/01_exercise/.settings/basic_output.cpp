

void basic_output(unsigned short int *o){
#pragma HLS INTERFACE ap_none port=o
#pragma HLS INTERFACE ap_ctrl_none port=return


	*o = 0b00001111000011110000;

}
