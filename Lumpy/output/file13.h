#ifndef FILE_13
#define FILE_13
#ifndef boolean
#define boolean char
#endif
#define TYP_OBJECT 1000
typedef struct __object__ {
	int typid;
	int superclass;
	
} object;
GCNode* cast2object(GCNode* node);
GCNode* new_object();
#define TYP_INTARRAYITERATOR 1001
typedef struct __intarrayiterator__ {
	//Inherit from: object
	int typid;
	int superclass;
	GCNode* _data_;
	int _status_;
	int _i_;
	
} intarrayiterator;
GCNode* cast2intarrayiterator(GCNode* node);
GCNode* new_intarrayiterator();
#define TYP_FLOATARRAYITERATOR 1002
typedef struct __floatarrayiterator__ {
	//Inherit from: object
	int typid;
	int superclass;
	GCNode* _data_;
	int _status_;
	int _i_;
	
} floatarrayiterator;
GCNode* cast2floatarrayiterator(GCNode* node);
GCNode* new_floatarrayiterator();
#define TYP_STRINGITERATOR 1003
typedef struct __stringiterator__ {
	//Inherit from: object
	int typid;
	int superclass;
	GCNode* _data_;
	int _status_;
	int _i_;
	
} stringiterator;
GCNode* cast2stringiterator(GCNode* node);
GCNode* new_stringiterator();
#define TYP_BOOLEANARRAYITERATOR 1004
typedef struct __booleanarrayiterator__ {
	//Inherit from: object
	int typid;
	int superclass;
	GCNode* _data_;
	int _status_;
	int _i_;
	
} booleanarrayiterator;
GCNode* cast2booleanarrayiterator(GCNode* node);
GCNode* new_booleanarrayiterator();
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
GCNode* intarrayiterator_new(GCNode* _this_, GCNode* arr);
void intarrayiterator_start(GCNode* _this_);
boolean intarrayiterator_hasnext(GCNode* _this_);
int intarrayiterator_invoke(GCNode* _this_);
float floatarrayiterator_invoke(GCNode* _this_);
GCNode* stringiterator_invoke(GCNode* _this_);
boolean booleanarrayiterator_invoke(GCNode* _this_);
int boolean_dim_get_length(GCNode* _this_);
GCNode* boolean_dim_get_floatarray(GCNode* _this_);
GCNode* boolean_dim_get_intarray(GCNode* _this_);
GCNode* boolean_dim_get_stringarray(GCNode* _this_);
int int_dim_get_length(GCNode* _this_);
GCNode* int_dim_iterator(GCNode* _this_);
GCNode* int_dim_get_floatarray(GCNode* _this_);
GCNode* int_dim_get_stringarray(GCNode* _this_);
GCNode* int_dim_get_booleanarray(GCNode* _this_);
int float_dim_get_length(GCNode* _this_);
GCNode* float_dim_get_intarray(GCNode* _this_);
GCNode* float_dim_get_stringarray(GCNode* _this_);
GCNode* float_dim_get_booleanarray(GCNode* _this_);
GCNode* int_get_string(int _this_);
float int_get_float(int _this_);
boolean int_get_boolean(int _this_);
int string_get_int(GCNode* _this_);
float string_get_float(GCNode* _this_);
boolean string_get_boolean(GCNode* _this_);
int string_get_length(GCNode* _this_);
int string_get_hash(GCNode* _this_);
int string_get_asc(GCNode* _this_);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
void traceintarrayiterator(GCNode* _this_);
void tracefloatarrayiterator(GCNode* _this_);
void tracestringiterator(GCNode* _this_);
void tracebooleanarrayiterator(GCNode* _this_);
#endif
