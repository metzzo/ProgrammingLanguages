#ifndef FILE_1
#define FILE_1
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
#endif
