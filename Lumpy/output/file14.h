#ifndef FILE_14
#define FILE_14
#ifndef boolean
#define boolean char
#endif
#define TYP_EXCEPTION 1005
typedef struct __exception__ {
	//Inherit from: object
	int typid;
	int superclass;
	GCNode* __name_;
	
} exception;
GCNode* cast2exception(GCNode* node);
GCNode* new_exception();
#define TYP_ASSERTEXCEPTION 1006
typedef struct __assertexception__ {
	//Inherit from: exception
	int typid;
	int superclass;
	GCNode* __name_;
	
} assertexception;
GCNode* cast2assertexception(GCNode* node);
GCNode* new_assertexception();
#define TYP_NULLPOINTEREXCEPTION 1007
typedef struct __nullpointerexception__ {
	//Inherit from: exception
	int typid;
	int superclass;
	GCNode* __name_;
	
} nullpointerexception;
GCNode* __static__nullpointerexception__forcecreate_;
GCNode* cast2nullpointerexception(GCNode* node);
GCNode* new_nullpointerexception();
#define TYP_INVALIDSLICEOPERATIONEXCEPTION 1008
typedef struct __invalidsliceoperationexception__ {
	//Inherit from: exception
	int typid;
	int superclass;
	GCNode* __name_;
	
} invalidsliceoperationexception;
GCNode* __static__invalidsliceoperationexception__forcecreate_;
GCNode* cast2invalidsliceoperationexception(GCNode* node);
GCNode* new_invalidsliceoperationexception();
#define TYP_OUTOFMEMORYEXCEPTION 1009
typedef struct __outofmemoryexception__ {
	//Inherit from: exception
	int typid;
	int superclass;
	GCNode* __name_;
	
} outofmemoryexception;
GCNode* __static__outofmemoryexception__forcecreate_;
GCNode* cast2outofmemoryexception(GCNode* node);
GCNode* new_outofmemoryexception();
#define TYP_INVALIDRANGEEXCEPTION 1010
typedef struct __invalidrangeexception__ {
	//Inherit from: exception
	int typid;
	int superclass;
	GCNode* __name_;
	
} invalidrangeexception;
GCNode* cast2invalidrangeexception(GCNode* node);
GCNode* new_invalidrangeexception();
#define TYP_INDEXOUTOFBOUNDSEXCEPTION 1011
typedef struct __indexoutofboundsexception__ {
	//Inherit from: exception
	int typid;
	int superclass;
	GCNode* __name_;
	
} indexoutofboundsexception;
GCNode* cast2indexoutofboundsexception(GCNode* node);
GCNode* new_indexoutofboundsexception();
GCNode* exception_get_name(GCNode* _this_);
GCNode* exception_new(GCNode* _this_, GCNode* name);
GCNode* nullpointerexception_new(GCNode* _this_);
void throwNullPointer();
GCNode* invalidsliceoperationexception_new(GCNode* _this_);
void throwSliceException();
GCNode* outofmemoryexception_new(GCNode* _this_);
void throwOutOfMemory();
GCNode* invalidrangeexception_new(GCNode* _this_, int start, int size);
GCNode* indexoutofboundsexception_new(GCNode* _this_, int size, int posi);
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
void traceexception(GCNode* _this_);
void traceassertexception(GCNode* _this_);
void tracenullpointerexception(GCNode* _this_);
void traceinvalidsliceoperationexception(GCNode* _this_);
void traceoutofmemoryexception(GCNode* _this_);
void traceinvalidrangeexception(GCNode* _this_);
void traceindexoutofboundsexception(GCNode* _this_);
#endif
