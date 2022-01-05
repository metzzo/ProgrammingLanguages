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






GCNode* operator_plus_int_string(int _param_0_, GCNode* _param_1_) {
	stack_enter(1, NULL);
	
	stack_create(&_param_1_, 0);
	//Line: 4
	stack_leave();
	return joinstr(int2string(_param_0_), _param_1_);
	stack_leave();
	return newString("");
	stack_leave();
	
}

GCNode* operator_plus_string_int(GCNode* _param_0_, int _param_1_) {
	stack_enter(1, NULL);
	
	stack_create(&_param_0_, 0);
	//Line: 8
	stack_leave();
	return joinstr(_param_0_, int2string(_param_1_));
	stack_leave();
	return newString("");
	stack_leave();
	
}

GCNode* operator_plus_boolean_string(boolean _param_0_, GCNode* _param_1_) {
	stack_enter(1, NULL);
	
	stack_create(&_param_1_, 0);
	//Line: 12
	stack_leave();
	return joinstr(boolean2string(_param_0_), _param_1_);
	stack_leave();
	return newString("");
	stack_leave();
	
}

GCNode* operator_plus_string_boolean(GCNode* _param_0_, boolean _param_1_) {
	stack_enter(1, NULL);
	
	stack_create(&_param_0_, 0);
	//Line: 16
	stack_leave();
	return joinstr(_param_0_, boolean2string(_param_1_));
	stack_leave();
	return newString("");
	stack_leave();
	
}

GCNode* operator_plus_float_string(float _param_0_, GCNode* _param_1_) {
	stack_enter(1, NULL);
	
	stack_create(&_param_1_, 0);
	//Line: 20
	stack_leave();
	return joinstr(float2string(_param_0_), _param_1_);
	stack_leave();
	return newString("");
	stack_leave();
	
}

GCNode* operator_plus_string_float(GCNode* _param_0_, float _param_1_) {
	stack_enter(1, NULL);
	
	stack_create(&_param_0_, 0);
	//Line: 24
	stack_leave();
	return joinstr(_param_0_, float2string(_param_1_));
	stack_leave();
	return newString("");
	stack_leave();
	
}


