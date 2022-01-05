#ifndef FILE_0
#define FILE_0
#ifndef boolean
#define boolean char
#endif
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
void function_program();
void initStatic();
GCNode* allocarray_1_(int size, int param0, void(*tracefunc)(GCNode*));
void arrayTrace(GCNode* _this_);
#endif
