#ifndef FILE_17
#define FILE_17
#ifndef boolean
#define boolean char
#endif
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
GCNode* operator_plus_int_string(int left, GCNode* right);
GCNode* operator_plus_string_int(GCNode* left, int right);
GCNode* operator_plus_boolean_string(boolean left, GCNode* right);
GCNode* operator_plus_string_boolean(GCNode* left, boolean right);
GCNode* operator_plus_float_string(float left, GCNode* right);
GCNode* operator_plus_string_float(GCNode* left, float right);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
#endif
