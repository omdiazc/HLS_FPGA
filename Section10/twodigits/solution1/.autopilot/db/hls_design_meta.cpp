#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("inNumber_V", 16, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("pushButton_V", 4, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("anodes_V", 4, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("outputSegments_V", 8, hls_out, 3, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "inOutFunction";
