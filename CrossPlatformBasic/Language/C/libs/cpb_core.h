#define CPB_INT signed int
#define CPB_FLOAT float
#define CPB_SHORT signed short
#define CPB_LONG signed long
#define CPB_BYTE unsigned char
#define CPB_DOUBLE double
#define CPB_STRING char*

#define TRUE 1
#define FALSE 0
#define NULL (void*)0


#define STACKSIZE 32768
typedef struct _StackNode {
	void* obj; //der objekt pointer an sich
	int* info; //alle informationen
	char mark; //ist es bereits markiert?
	void (*trace)(struct _StackNode*);
    void (*finalizer)(struct _StackNode*);
	struct _StackNode* next;
} GCStackNode;

typedef struct _StackEntry {
	GCStackNode* obj; //der objekt pointer
	GCStackNode** var; //die variable
	char marker; //markiert es die position?
} GCStackEntry;

GCStackEntry* stack[STACKSIZE];
GCStackNode* last;
int stackpos;
void GC_INIT();
void stack_enter();
void stack_leave();
void stack_push(GCStackNode** adress);
void gccollect();
GCStackNode* GC_malloc(int size, void(*tracefunc)(GCStackNode*));

void traceStringNode(GCStackNode* node);
GCStackNode* newString(CPB_STRING str);
CPB_INT len(GCStackNode* node);
CPB_INT asc(GCStackNode* node);
GCStackNode* chr(CPB_INT txt);
GCStackNode* int2string(CPB_INT value);
GCStackNode* float2string(CPB_FLOAT value);
GCStackNode* double2string(CPB_DOUBLE value);
GCStackNode* short2string(CPB_SHORT value);
GCStackNode* long2string(CPB_LONG value);
GCStackNode* byte2string(CPB_BYTE value);
CPB_INT string2int(GCStackNode* node);
CPB_FLOAT string2float(GCStackNode* node);
CPB_DOUBLE string2double(GCStackNode* node);
CPB_SHORT string2short(GCStackNode* node);
CPB_LONG string2long(GCStackNode* node);
CPB_BYTE string2byte(GCStackNode* node);
GCStackNode* joinstr(GCStackNode* node1, GCStackNode* node2);
CPB_INT instr(GCStackNode* node1, GCStackNode* node2, CPB_INT start);
GCStackNode* mid(GCStackNode* node, CPB_INT von, CPB_INT bis);
GCStackNode* left(GCStackNode* str, CPB_INT anzahl);
GCStackNode* right(GCStackNode* str, CPB_INT anzahl);
GCStackNode* upper(GCStackNode* node);
GCStackNode* lower(GCStackNode* node);
GCStackNode* replace(GCStackNode* str1, GCStackNode* str2, GCStackNode* str3, CPB_INT start);
GCStackNode* trim(GCStackNode* node);
void print(GCStackNode* node);
