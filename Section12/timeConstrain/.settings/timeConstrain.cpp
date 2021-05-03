


void inOutFunction(int a, int b, int c, int *f){
#pragma HLS INTERFACE ap_none port=a
#pragma HLS INTERFACE ap_none port=b
#pragma HLS INTERFACE ap_none port=c
#pragma HLS INTERFACE ap_none port=f
#pragma HLS INTERFACE ap_ctrl_none port=return


	*f=a*b+a*c+c*b+a*b*c;

}
