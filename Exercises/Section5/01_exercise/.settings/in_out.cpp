
void in_out(unsigned short int input, unsigned short int *output){
#pragma HLS INTERFACE ap_none port=output
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE ap_none port=input


	*output=input;

}
