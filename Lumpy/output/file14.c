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






GCNode* cast2exception(GCNode* node) {
	node -> typid = TYP_EXCEPTION;
	return node;
	
}
GCNode* new_exception() {
	GCNode* obj = gc_malloc(sizeof(exception), &standardTrace);
	((exception*)obj -> data) -> typid = TYP_EXCEPTION;
	((exception*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_EXCEPTION;
	((exception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* cast2assertexception(GCNode* node) {
	node -> typid = TYP_ASSERTEXCEPTION;
	return node;
	
}
GCNode* new_assertexception() {
	GCNode* obj = gc_malloc(sizeof(assertexception), &standardTrace);
	((assertexception*)obj -> data) -> typid = TYP_ASSERTEXCEPTION;
	((assertexception*)obj -> data) -> superclass = TYP_EXCEPTION;
	obj -> typid = TYP_ASSERTEXCEPTION;
	((assertexception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* cast2nullpointerexception(GCNode* node) {
	node -> typid = TYP_NULLPOINTEREXCEPTION;
	return node;
	
}
GCNode* new_nullpointerexception() {
	GCNode* obj = gc_malloc(sizeof(nullpointerexception), &standardTrace);
	((nullpointerexception*)obj -> data) -> typid = TYP_NULLPOINTEREXCEPTION;
	((nullpointerexception*)obj -> data) -> superclass = TYP_EXCEPTION;
	obj -> typid = TYP_NULLPOINTEREXCEPTION;
	((nullpointerexception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* cast2invalidsliceoperationexception(GCNode* node) {
	node -> typid = TYP_INVALIDSLICEOPERATIONEXCEPTION;
	return node;
	
}
GCNode* new_invalidsliceoperationexception() {
	GCNode* obj = gc_malloc(sizeof(invalidsliceoperationexception), &standardTrace);
	((invalidsliceoperationexception*)obj -> data) -> typid = TYP_INVALIDSLICEOPERATIONEXCEPTION;
	((invalidsliceoperationexception*)obj -> data) -> superclass = TYP_EXCEPTION;
	obj -> typid = TYP_INVALIDSLICEOPERATIONEXCEPTION;
	((invalidsliceoperationexception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* cast2outofmemoryexception(GCNode* node) {
	node -> typid = TYP_OUTOFMEMORYEXCEPTION;
	return node;
	
}
GCNode* new_outofmemoryexception() {
	GCNode* obj = gc_malloc(sizeof(outofmemoryexception), &standardTrace);
	((outofmemoryexception*)obj -> data) -> typid = TYP_OUTOFMEMORYEXCEPTION;
	((outofmemoryexception*)obj -> data) -> superclass = TYP_EXCEPTION;
	obj -> typid = TYP_OUTOFMEMORYEXCEPTION;
	((outofmemoryexception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* cast2invalidrangeexception(GCNode* node) {
	node -> typid = TYP_INVALIDRANGEEXCEPTION;
	return node;
	
}
GCNode* new_invalidrangeexception() {
	GCNode* obj = gc_malloc(sizeof(invalidrangeexception), &standardTrace);
	((invalidrangeexception*)obj -> data) -> typid = TYP_INVALIDRANGEEXCEPTION;
	((invalidrangeexception*)obj -> data) -> superclass = TYP_EXCEPTION;
	obj -> typid = TYP_INVALIDRANGEEXCEPTION;
	((invalidrangeexception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* cast2indexoutofboundsexception(GCNode* node) {
	node -> typid = TYP_INDEXOUTOFBOUNDSEXCEPTION;
	return node;
	
}
GCNode* new_indexoutofboundsexception() {
	GCNode* obj = gc_malloc(sizeof(indexoutofboundsexception), &standardTrace);
	((indexoutofboundsexception*)obj -> data) -> typid = TYP_INDEXOUTOFBOUNDSEXCEPTION;
	((indexoutofboundsexception*)obj -> data) -> superclass = TYP_EXCEPTION;
	obj -> typid = TYP_INDEXOUTOFBOUNDSEXCEPTION;
	((indexoutofboundsexception*)obj -> data) -> __name_ = newString("");
	return obj;
	
}
GCNode* exception_get_name(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((exception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_EXCEPTION: 
			{
				//Line: 7
				return (((exception*)_this_ -> data) -> __name_);
				return newString("");
				
			}
			
			break;
		default:
			{
				//Line: 7
				return (((exception*)_this_ -> data) -> __name_);
				return newString("");
				
			}
			
			
	}
	return;
	
}
GCNode* exception_new(GCNode* _this_, GCNode* _param_0_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((exception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_EXCEPTION: 
			{
				stack_enter(1, NULL);
				
				stack_create(&_param_0_, 0);
				//Line: 16
				(((exception*)_this_ -> data) -> __name_) = _param_0_;
				stack_leave();
				return _this_;
				stack_leave();
				
			}
			
			break;
		default:
			{
				stack_enter(1, NULL);
				
				stack_create(&_param_0_, 0);
				//Line: 16
				(((exception*)_this_ -> data) -> __name_) = _param_0_;
				stack_leave();
				return _this_;
				stack_leave();
				
			}
			
			
	}
	return;
	
}
GCNode* nullpointerexception_new(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((nullpointerexception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_NULLPOINTEREXCEPTION: 
			{
				//Line: 39
				(((nullpointerexception*)_this_ -> data) -> __name_) = newString("Null Pointer");
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 39
				(((nullpointerexception*)_this_ -> data) -> __name_) = newString("Null Pointer");
				return _this_;
				
			}
			
			
	}
	return;
	
}
void throwNullPointer() {
	//Line: 47
	//throw: nullpointerexception_new( new_nullpointerexception() )
	exc_holder_obj = nullpointerexception_new( new_nullpointerexception() );
	throwException(TYP_NULLPOINTEREXCEPTION);
	;
	return;
	
}

GCNode* invalidsliceoperationexception_new(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((invalidsliceoperationexception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INVALIDSLICEOPERATIONEXCEPTION: 
			{
				//Line: 52
				(((invalidsliceoperationexception*)_this_ -> data) -> __name_) = newString("Invalid Slice Operation");
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 52
				(((invalidsliceoperationexception*)_this_ -> data) -> __name_) = newString("Invalid Slice Operation");
				return _this_;
				
			}
			
			
	}
	return;
	
}
void throwSliceException() {
	//Line: 61
	//throw: invalidsliceoperationexception_new( new_invalidsliceoperationexception() )
	exc_holder_obj = invalidsliceoperationexception_new( new_invalidsliceoperationexception() );
	throwException(TYP_INVALIDSLICEOPERATIONEXCEPTION);
	;
	return;
	
}

GCNode* outofmemoryexception_new(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((outofmemoryexception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_OUTOFMEMORYEXCEPTION: 
			{
				//Line: 67
				(((outofmemoryexception*)_this_ -> data) -> __name_) = newString("Out Of Memory");
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 67
				(((outofmemoryexception*)_this_ -> data) -> __name_) = newString("Out Of Memory");
				return _this_;
				
			}
			
			
	}
	return;
	
}
void throwOutOfMemory() {
	//Line: 75
	//throw: outofmemoryexception_new( new_outofmemoryexception() )
	exc_holder_obj = outofmemoryexception_new( new_outofmemoryexception() );
	throwException(TYP_OUTOFMEMORYEXCEPTION);
	;
	return;
	
}

GCNode* invalidrangeexception_new(GCNode* _this_, int _param_0_, int _param_1_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((invalidrangeexception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INVALIDRANGEEXCEPTION: 
			{
				//Line: 80
				(((invalidrangeexception*)_this_ -> data) -> __name_) = joinstr(joinstr(joinstr(newString("Invalid Range"), int2string(_param_0_)), newString(", ")), int2string(_param_1_));
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 80
				(((invalidrangeexception*)_this_ -> data) -> __name_) = joinstr(joinstr(joinstr(newString("Invalid Range"), int2string(_param_0_)), newString(", ")), int2string(_param_1_));
				return _this_;
				
			}
			
			
	}
	return;
	
}
GCNode* indexoutofboundsexception_new(GCNode* _this_, int _param_0_, int _param_1_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((indexoutofboundsexception*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INDEXOUTOFBOUNDSEXCEPTION: 
			{
				//Line: 86
				(((indexoutofboundsexception*)_this_ -> data) -> __name_) = joinstr(joinstr(joinstr(newString("Index out of bounds: "), int2string(_param_1_)), newString(" size: ")), int2string(_param_0_));
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 86
				(((indexoutofboundsexception*)_this_ -> data) -> __name_) = joinstr(joinstr(joinstr(newString("Index out of bounds: "), int2string(_param_1_)), newString(" size: ")), int2string(_param_0_));
				return _this_;
				
			}
			
			
	}
	return;
	
}
void traceexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((exception*)_this_-> data) -> __name_) != NULL) 
		if ((((exception*)_this_-> data) -> __name_) -> mark) (((exception*)_this_-> data) -> __name_)-> trace((((exception*)_this_-> data) -> __name_));
	
}
void traceassertexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((assertexception*)_this_-> data) -> __name_) != NULL) 
		if ((((assertexception*)_this_-> data) -> __name_) -> mark) (((assertexception*)_this_-> data) -> __name_)-> trace((((assertexception*)_this_-> data) -> __name_));
	
}
void tracenullpointerexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((nullpointerexception*)_this_-> data) -> __name_) != NULL) 
		if ((((nullpointerexception*)_this_-> data) -> __name_) -> mark) (((nullpointerexception*)_this_-> data) -> __name_)-> trace((((nullpointerexception*)_this_-> data) -> __name_));
	
}
void traceinvalidsliceoperationexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((invalidsliceoperationexception*)_this_-> data) -> __name_) != NULL) 
		if ((((invalidsliceoperationexception*)_this_-> data) -> __name_) -> mark) (((invalidsliceoperationexception*)_this_-> data) -> __name_)-> trace((((invalidsliceoperationexception*)_this_-> data) -> __name_));
	
}
void traceoutofmemoryexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((outofmemoryexception*)_this_-> data) -> __name_) != NULL) 
		if ((((outofmemoryexception*)_this_-> data) -> __name_) -> mark) (((outofmemoryexception*)_this_-> data) -> __name_)-> trace((((outofmemoryexception*)_this_-> data) -> __name_));
	
}
void traceinvalidrangeexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((invalidrangeexception*)_this_-> data) -> __name_) != NULL) 
		if ((((invalidrangeexception*)_this_-> data) -> __name_) -> mark) (((invalidrangeexception*)_this_-> data) -> __name_)-> trace((((invalidrangeexception*)_this_-> data) -> __name_));
	
}
void traceindexoutofboundsexception(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((indexoutofboundsexception*)_this_-> data) -> __name_) != NULL) 
		if ((((indexoutofboundsexception*)_this_-> data) -> __name_) -> mark) (((indexoutofboundsexception*)_this_-> data) -> __name_)-> trace((((indexoutofboundsexception*)_this_-> data) -> __name_));
	
}

