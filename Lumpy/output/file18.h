#ifndef FILE_18
#define FILE_18
#ifndef boolean
#define boolean char
#endif
#define TYP_STACK 1022
typedef struct __stack__ {
	//Inherit from: object
	int typid;
	int superclass;
	
} stack;
GCNode* cast2stack(GCNode* node);
GCNode* new_stack();
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
#endif
