
#ifndef __DATATYPESHEADER__TB_H__
#define __DATATYPESHEADER__TB_H__

#include <ap_int.h>
#include <iostream>

typedef ap_uint<23> cdt; //cdt: Custom Data Type

void inOutFunction(cdt in1,cdt in2, cdt *out);

#endif // __DATATYPESHEADER__TB_H__
