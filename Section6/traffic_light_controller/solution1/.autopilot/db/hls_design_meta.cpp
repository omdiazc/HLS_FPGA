#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("l", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("r", 1, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("u", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("d", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("rule1", 1, hls_out, 4, "ap_none", "out_data", 1),
	Port_Property("rule2", 1, hls_out, 5, "ap_none", "out_data", 1),
	Port_Property("rule3", 1, hls_out, 6, "ap_none", "out_data", 1),
	Port_Property("rule4", 1, hls_out, 7, "ap_none", "out_data", 1),
	Port_Property("rule5", 1, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("ew", 1, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("ns", 1, hls_out, 10, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "inOutFunction";
