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






GCNode* cast2stack(GCNode* node) {
	node -> typid = TYP_STACK;
	return node;
	
}
GCNode* new_stack() {
	GCNode* obj = gc_malloc(sizeof(stack), &standardTrace);
	((stack*)obj -> data) -> typid = TYP_STACK;
	((stack*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_STACK;
	return obj;
	
}

