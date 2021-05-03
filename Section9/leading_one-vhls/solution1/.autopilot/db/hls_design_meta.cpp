#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("a_V", 9, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ap_return", 5, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "leading_one";
