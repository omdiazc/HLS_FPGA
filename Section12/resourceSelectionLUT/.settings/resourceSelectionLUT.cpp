

int mul(int a, int b){
#pragma HLS INLINE off

	int t = a*b;
#pragma HLS RESOURCE variable=t core=Mul_LUT

	return t;
}

void inOutFunction(int a, int b, int c, int d,int *f){
#pragma HLS INTERFACE ap_none port=a
#pragma HLS INTERFACE ap_none port=b
#pragma HLS INTERFACE ap_none port=c
#pragma HLS INTERFACE ap_none port=f
#pragma HLS INTERFACE ap_ctrl_none port=return

	int v,w,x,y,z,p,q;

	v = mul(a,b);
	w = mul(a,c);
	x = mul(a,d);
	y = mul(v,x);

	p = v+w;
	q = x+y;

#pragma HLS RESOURCE variable=v core=Mul_LUT
#pragma HLS RESOURCE variable=w core=Mul_LUT
#pragma HLS RESOURCE variable=x core=Mul_LUT
#pragma HLS RESOURCE variable=y core=Mul_LUT
#pragma HLS RESOURCE variable=z core=Mul_LUT


	*f=p+q;

}
