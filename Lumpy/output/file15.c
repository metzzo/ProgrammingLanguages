#include "C:\Users\Coolo\Documents\NetBeansProjects\Lumpy/modules/c/system/gc.h"
#include "C:\Users\Coolo\Documents\NetBeansProjects\Lumpy/modules/c/system/lang.h"
#include "C:\Users\Coolo\Documents\NetBeansProjects\Lumpy/modules/c/system/string.h"
#include "C:\Users\Coolo\Documents\NetBeansProjects\Lumpy/modules/c/system/exception.h"
#include "C:\Users\Coolo\Documents\NetBeansProjects\Lumpy/modules/c/system/slice.h"
#include "C:\Users\Coolo\Documents\NetBeansProjects\Lumpy/modules/c/gui/gui.h"
#include "file0.h"
#include "file1.h"
#include "file13.h"
#include "file14.h"
#include "file15.h"
#include "file16.h"
#include "file17.h"
#include "file18.h"






GCNode* cast2listvalueiterator(GCNode* node) {
	node -> typid = TYP_LISTVALUEITERATOR;
	return node;
	
}
GCNode* new_listvalueiterator() {
	GCNode* obj = gc_malloc(sizeof(listvalueiterator), &standardTrace);
	((listvalueiterator*)obj -> data) -> typid = TYP_LISTVALUEITERATOR;
	((listvalueiterator*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_LISTVALUEITERATOR;
	return obj;
	
}
GCNode* cast2listnodeiterator(GCNode* node) {
	node -> typid = TYP_LISTNODEITERATOR;
	return node;
	
}
GCNode* new_listnodeiterator() {
	GCNode* obj = gc_malloc(sizeof(listnodeiterator), &standardTrace);
	((listnodeiterator*)obj -> data) -> typid = TYP_LISTNODEITERATOR;
	((listnodeiterator*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_LISTNODEITERATOR;
	return obj;
	
}
GCNode* cast2list(GCNode* node) {
	node -> typid = TYP_LIST;
	return node;
	
}
GCNode* new_list() {
	GCNode* obj = gc_malloc(sizeof(list), &standardTrace);
	((list*)obj -> data) -> typid = TYP_LIST;
	((list*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_LIST;
	return obj;
	
}
GCNode* cast2node(GCNode* node) {
	node -> typid = TYP_NODE;
	return node;
	
}
GCNode* new_node() {
	GCNode* obj = gc_malloc(sizeof(node), &standardTrace);
	((node*)obj -> data) -> typid = TYP_NODE;
	((node*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_NODE;
	return obj;
	
}

