#ifndef FILE_15
#define FILE_15
#ifndef boolean
#define boolean char
#endif
#define TYP_LISTVALUEITERATOR 1017
typedef struct __listvalueiterator__ {
	//Inherit from: object
	int typid;
	int superclass;
	
} listvalueiterator;
GCNode* cast2listvalueiterator(GCNode* node);
GCNode* new_listvalueiterator();
#define TYP_LISTNODEITERATOR 1018
typedef struct __listnodeiterator__ {
	//Inherit from: object
	int typid;
	int superclass;
	
} listnodeiterator;
GCNode* cast2listnodeiterator(GCNode* node);
GCNode* new_listnodeiterator();
#define TYP_LIST 1019
typedef struct __list__ {
	//Inherit from: object
	int typid;
	int superclass;
	
} list;
GCNode* cast2list(GCNode* node);
GCNode* new_list();
#define TYP_NODE 1020
typedef struct __node__ {
	//Inherit from: object
	int typid;
	int superclass;
	
} node;
GCNode* cast2node(GCNode* node);
GCNode* new_node();
int array_bytes_int(GCNode* size);
int array_bytes_float(GCNode* size);
int array_bytes_boolean(GCNode* size);
int str_len(GCNode* str);
int str_asc(GCNode* str);
int str_hash(GCNode* str);
void print_string(GCNode* text);
void print_int(int text);
#endif
