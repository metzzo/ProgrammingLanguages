#ifndef LANG_FILE
#define LANG_FILE
#define byte char
#define true 1
#define false 0


void print_string(GCNode* str);
void print_int(int i);

int array_bytes_int(GCNode* array);
int array_bytes_float(GCNode* array);
int array_bytes_boolean(GCNode* array);
int array_bytes_str(GCNode* array);
int array_bytes_obj(GCNode* array);

#endif
