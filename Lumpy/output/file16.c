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






GCNode* cast2array(GCNode* node) {
	node -> typid = TYP_ARRAY;
	return node;
	
}
GCNode* new_array() {
	GCNode* obj = gc_malloc(sizeof(array), &standardTrace);
	((array*)obj -> data) -> typid = TYP_ARRAY;
	((array*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_ARRAY;
	return obj;
	
}
GCNode* cast2array_templates__int(GCNode* node) {
	node -> typid = TYP_ARRAY_TEMPLATES__INT;
	return node;
	
}
GCNode* new_array_templates__int() {
	GCNode* obj = gc_malloc(sizeof(array_templates__int), &standardTrace);
	((array_templates__int*)obj -> data) -> typid = TYP_ARRAY_TEMPLATES__INT;
	((array_templates__int*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_ARRAY_TEMPLATES__INT;
	((array_templates__int*)obj -> data) -> _array_ = NULL;
	((array_templates__int*)obj -> data) -> _dynamic_ = ((byte)false);
	return obj;
	
}
GCNode* array_templates__int_new(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((array_templates__int*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_ARRAY_TEMPLATES__INT: 
			{
				//Line: 12
				(((array_templates__int*)_this_ -> data) -> _array_) = allocarray_1_(sizeof(int*), ((int)2), &standardTrace);
				//Line: 13
				(((array_templates__int*)_this_ -> data) -> _dynamic_) = ((byte)true);
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 12
				(((array_templates__int*)_this_ -> data) -> _array_) = allocarray_1_(sizeof(int*), ((int)2), &standardTrace);
				//Line: 13
				(((array_templates__int*)_this_ -> data) -> _dynamic_) = ((byte)true);
				return _this_;
				
			}
			
			
	}
	return;
	
}
GCNode* array_templates__int_new_int(GCNode* _this_, int _param_0_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((array_templates__int*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_ARRAY_TEMPLATES__INT: 
			{
				//Line: 18
				if ((_param_0_ < ((int)1))) {
					//Line: 19
					//throw: invalidrangeexception_new( new_invalidrangeexception(), _param_0_, ((int)0) )
					exc_holder_obj = invalidrangeexception_new( new_invalidrangeexception(), _param_0_, ((int)0) );
					throwException(TYP_INVALIDRANGEEXCEPTION);
					;
					
				}
				;
				//Line: 21
				(((array_templates__int*)_this_ -> data) -> _array_) = allocarray_1_(sizeof(int*), _param_0_, &standardTrace);
				//Line: 22
				(((array_templates__int*)_this_ -> data) -> _dynamic_) = ((byte)false);
				return _this_;
				
			}
			
			break;
		default:
			{
				//Line: 18
				if ((_param_0_ < ((int)1))) {
					//Line: 19
					//throw: invalidrangeexception_new( new_invalidrangeexception(), _param_0_, ((int)0) )
					exc_holder_obj = invalidrangeexception_new( new_invalidrangeexception(), _param_0_, ((int)0) );
					throwException(TYP_INVALIDRANGEEXCEPTION);
					;
					
				}
				;
				//Line: 21
				(((array_templates__int*)_this_ -> data) -> _array_) = allocarray_1_(sizeof(int*), _param_0_, &standardTrace);
				//Line: 22
				(((array_templates__int*)_this_ -> data) -> _dynamic_) = ((byte)false);
				return _this_;
				
			}
			
			
	}
	return;
	
}
int array_templates__int_get_length(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((array_templates__int*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_ARRAY_TEMPLATES__INT: 
			{
				//Line: 28
				return int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_));
				return ((int)0);
				
			}
			
			break;
		default:
			{
				//Line: 28
				return int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_));
				return ((int)0);
				
			}
			
			
	}
	return;
	
}
GCNode* array_templates__int_iterator(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((array_templates__int*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_ARRAY_TEMPLATES__INT: 
			{
				//Line: 61
				return int_dim_iterator( (((array_templates__int*)_this_ -> data) -> _array_) );
				return NULL;
				
			}
			
			break;
		default:
			{
				//Line: 61
				return int_dim_iterator( (((array_templates__int*)_this_ -> data) -> _array_) );
				return NULL;
				
			}
			
			
	}
	return;
	
}
int array_templates__int_get_this(GCNode* _this_, int _pos_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((array_templates__int*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_ARRAY_TEMPLATES__INT: 
			{
				//Line: 68
				if (((_pos_ > (((int)1) * ((int)-1))) && (_pos_ < int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_))))) {
					//Line: 69
					return ((int*)(((array_templates__int*)_this_ -> data) -> _array_)-> data)[_pos_];
					
				}
				 else {
					//Line: 72
					//throw: indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ )
					exc_holder_obj = indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ );
					throwException(TYP_INDEXOUTOFBOUNDSEXCEPTION);
					;
					
				}
				;
				return ((int)0);
				
			}
			
			break;
		default:
			{
				//Line: 68
				if (((_pos_ > (((int)1) * ((int)-1))) && (_pos_ < int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_))))) {
					//Line: 69
					return ((int*)(((array_templates__int*)_this_ -> data) -> _array_)-> data)[_pos_];
					
				}
				 else {
					//Line: 72
					//throw: indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ )
					exc_holder_obj = indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ );
					throwException(TYP_INDEXOUTOFBOUNDSEXCEPTION);
					;
					
				}
				;
				return ((int)0);
				
			}
			
			
	}
	return;
	
}
void array_templates__int_set_this(GCNode* _this_, int _param_0_, int _pos_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((array_templates__int*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_ARRAY_TEMPLATES__INT: 
			{
				//Line: 76
				if ((((array_templates__int*)_this_ -> data) -> _dynamic_)) {
					//Line: 77
					while ((_pos_ > (int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)) - ((int)1)))) {
						//Line: 78
						(((array_templates__int*)_this_ -> data) -> _array_) = sliceArray((((array_templates__int*)_this_ -> data) -> _array_),0, (int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)) * ((int)2)),sizeof(int), 0);
						
					}
					;
					
				}
				;
				//Line: 82
				if (((_pos_ > (((int)1) * ((int)-1))) && (_pos_ < int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_))))) {
					//Line: 83
					((int*)(((array_templates__int*)_this_ -> data) -> _array_)-> data)[_pos_] = _param_0_;
					//Line: 85
					return;
					
				}
				;
				//Line: 89
				//throw: indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ )
				exc_holder_obj = indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ );
				throwException(TYP_INDEXOUTOFBOUNDSEXCEPTION);
				;
				return;
				
			}
			
			break;
		default:
			{
				//Line: 76
				if ((((array_templates__int*)_this_ -> data) -> _dynamic_)) {
					//Line: 77
					while ((_pos_ > (int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)) - ((int)1)))) {
						//Line: 78
						(((array_templates__int*)_this_ -> data) -> _array_) = sliceArray((((array_templates__int*)_this_ -> data) -> _array_),0, (int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)) * ((int)2)),sizeof(int), 0);
						
					}
					;
					
				}
				;
				//Line: 82
				if (((_pos_ > (((int)1) * ((int)-1))) && (_pos_ < int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_))))) {
					//Line: 83
					((int*)(((array_templates__int*)_this_ -> data) -> _array_)-> data)[_pos_] = _param_0_;
					//Line: 85
					return;
					
				}
				;
				//Line: 89
				//throw: indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ )
				exc_holder_obj = indexoutofboundsexception_new( new_indexoutofboundsexception(), int_dim_get_length((((array_templates__int*)_this_ -> data) -> _array_)), _pos_ );
				throwException(TYP_INDEXOUTOFBOUNDSEXCEPTION);
				;
				return;
				
			}
			
			
	}
	return;
	
}
void tracearray_templates__int(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((array_templates__int*)_this_-> data) -> _array_) != NULL) 
		if ((((array_templates__int*)_this_-> data) -> _array_) -> mark) (((array_templates__int*)_this_-> data) -> _array_)-> trace((((array_templates__int*)_this_-> data) -> _array_));
	
}

