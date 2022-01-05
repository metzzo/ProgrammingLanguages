#ifndef FILE_16
#define FILE_16
#ifndef boolean
#define boolean char
#endif
#define TYP_ARRAY 1021
typedef struct __array__ {
	//Inherit from: object
	int typid;
	int superclass;
	
} array;
GCNode* cast2array(GCNode* node);
GCNode* new_array();
#define TYP_ARRAY_TEMPLATES__INT 1023
typedef struct __array_templates__int__ {
	//Inherit from: object
	int typid;
	int superclass;
	GCNode* _array_;
	boolean _dynamic_;
	
} array_templates__int;
GCNode* cast2array_templates__int(GCNode* node);
GCNode* new_array_templates__int();
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
GCNode* array_templates__int_new(GCNode* _this_);
GCNode* array_templates__int_new_int(GCNode* _this_, int size);
int array_templates__int_get_length(GCNode* _this_);
GCNode* array_templates__int_iterator(GCNode* _this_);
int array_templates__int_get_this(GCNode* _this_, int pos);
void array_templates__int_set_this(GCNode* _this_, int value, int pos);
void tracearray_templates__int(GCNode* _this_);
#endif
