
bool andGate(bool a, bool b){
#pragma HLS INLINE off

	return (a&&b);
}

bool notGate(bool a){
#pragma HLS INLINE off

	return !a;
}

bool orGate(bool a, bool b){
#pragma HLS INLINE off

	return (a||b);
}


void inout_inlineoff(bool a, bool b, bool c, bool *d){
#pragma HLS INTERFACE ap_none port=a
#pragma HLS INTERFACE ap_none port=b
#pragma HLS INTERFACE ap_none port=c
#pragma HLS INTERFACE ap_none port=d
#pragma HLS INTERFACE ap_ctrl_none port=return


	*d	= orGate((andGate(a,b)),notGate(c));

}
