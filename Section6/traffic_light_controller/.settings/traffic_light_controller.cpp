



void inOutFunction(bool l, bool r, bool u, bool d, bool *rule1,
		bool *rule2, bool *rule3, bool *rule4, bool *rule5, bool *ew, bool *ns){
#pragma HLS INTERFACE ap_none port=rule1
#pragma HLS INTERFACE ap_none port=rule2
#pragma HLS INTERFACE ap_none port=rule3
#pragma HLS INTERFACE ap_none port=rule4
#pragma HLS INTERFACE ap_none port=rule5
#pragma HLS INTERFACE ap_none port=ns
#pragma HLS INTERFACE ap_none port=ew
#pragma HLS INTERFACE ap_none port=d
#pragma HLS INTERFACE ap_none port=u
#pragma HLS INTERFACE ap_none port=r
#pragma HLS INTERFACE ap_none port=l
#pragma HLS INTERFACE ap_ctrl_none port=return

	*rule1	= 	(l&&r);
	*rule2	=	((r ^ l) && (!(u&&d)));
	*rule3	=   (((u&&d)&&(!(l&&r))));
	*rule4	=	(((!(r&&l))&&(u^d)));
	*rule4 	=   (u^d)&&(!(l||r));
	*rule5	=	(!(r||l||u||d))	;

*ew	= (*rule1||*rule2||*rule5);

*ns = (*rule3||*rule4);

}
