#define CPB_INT int
#define CPB_FLOAT float
#define CPB_SHORT short
#define CPB_LONG long
#define CPB_BYTE unsigned char
#define CPB_DOUBLE double
#define CPB_STRING char*

#define TRUE 1
#define FALSE 0

#include "gc/gc.h"
#include "gc/tinygc.c"

inline void gccollect() {
	GC_gcollect();
}
inline int memalloced() {
	return GC_get_total_bytes();
}

int getsizearray(void* arr, int dim) {
	return ((int*)((int*)arr)[0])[dim];
}


#include "cpb_string.c"
#include "cpb_stdio.c"

