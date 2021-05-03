

int mul(int a, int b){
#pragma HLS INLINE

	int t = a*b;
#pragma HLS RESOURCE variable=t core=DMul_fulldsp

	return t;
}

int sum(int a, int b){
#pragma HLS INLINE

	int t = a+b;
#pragma HLS RESOURCE variable=t core=AddSub_DSP


	return t;
}

void inOutFunction(int a, int b, int c, int d,int *f){
#pragma HLS INTERFACE ap_none port=a
#pragma HLS INTERFACE ap_none port=b
#pragma HLS INTERFACE ap_none port=c
#pragma HLS INTERFACE ap_none port=f
#pragma HLS INTERFACE ap_ctrl_none port=return


	int r,s,u,v,w,x,y,z;

	v = mul(a,b);
	w = mul(a,c);
	x = mul(a,d);
	z = mul(c,d);

	u = mul(v,z);

	r = sum(v,w);
	s = sum(r,u);

	*f = s;

	// *f = a*b+a*c+a*d+a*b*c*d

}
