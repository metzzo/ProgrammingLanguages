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






GCNode* cast2object(GCNode* node) {
	node -> typid = TYP_OBJECT;
	return node;
	
}
GCNode* new_object() {
	GCNode* obj = gc_malloc(sizeof(object), &standardTrace);
	((object*)obj -> data) -> typid = TYP_OBJECT;
	obj -> typid = TYP_OBJECT;
	return obj;
	
}
GCNode* cast2intarrayiterator(GCNode* node) {
	node -> typid = TYP_INTARRAYITERATOR;
	return node;
	
}
GCNode* new_intarrayiterator() {
	GCNode* obj = gc_malloc(sizeof(intarrayiterator), &standardTrace);
	((intarrayiterator*)obj -> data) -> typid = TYP_INTARRAYITERATOR;
	((intarrayiterator*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_INTARRAYITERATOR;
	((intarrayiterator*)obj -> data) -> _data_ = NULL;
	((intarrayiterator*)obj -> data) -> _status_ = ((int)-1);
	return obj;
	
}
GCNode* cast2floatarrayiterator(GCNode* node) {
	node -> typid = TYP_FLOATARRAYITERATOR;
	return node;
	
}
GCNode* new_floatarrayiterator() {
	GCNode* obj = gc_malloc(sizeof(floatarrayiterator), &standardTrace);
	((floatarrayiterator*)obj -> data) -> typid = TYP_FLOATARRAYITERATOR;
	((floatarrayiterator*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_FLOATARRAYITERATOR;
	((floatarrayiterator*)obj -> data) -> _data_ = NULL;
	((floatarrayiterator*)obj -> data) -> _status_ = ((int)-1);
	return obj;
	
}
GCNode* cast2stringiterator(GCNode* node) {
	node -> typid = TYP_STRINGITERATOR;
	return node;
	
}
GCNode* new_stringiterator() {
	GCNode* obj = gc_malloc(sizeof(stringiterator), &standardTrace);
	((stringiterator*)obj -> data) -> typid = TYP_STRINGITERATOR;
	((stringiterator*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_STRINGITERATOR;
	((stringiterator*)obj -> data) -> _data_ = newString("");
	((stringiterator*)obj -> data) -> _status_ = ((int)-1);
	return obj;
	
}
GCNode* cast2booleanarrayiterator(GCNode* node) {
	node -> typid = TYP_BOOLEANARRAYITERATOR;
	return node;
	
}
GCNode* new_booleanarrayiterator() {
	GCNode* obj = gc_malloc(sizeof(booleanarrayiterator), &standardTrace);
	((booleanarrayiterator*)obj -> data) -> typid = TYP_BOOLEANARRAYITERATOR;
	((booleanarrayiterator*)obj -> data) -> superclass = TYP_OBJECT;
	obj -> typid = TYP_BOOLEANARRAYITERATOR;
	((booleanarrayiterator*)obj -> data) -> _data_ = NULL;
	((booleanarrayiterator*)obj -> data) -> _status_ = ((int)-1);
	return obj;
	
}
GCNode* intarrayiterator_new(GCNode* _this_, GCNode* _param_0_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((intarrayiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INTARRAYITERATOR: 
			{
				stack_enter(1, NULL);
				
				stack_create(&_param_0_, 0);
				//Line: 44
				(((intarrayiterator*)_this_ -> data) -> _data_) = _param_0_;
				stack_leave();
				return _this_;
				stack_leave();
				
			}
			
			break;
		default:
			{
				stack_enter(1, NULL);
				
				stack_create(&_param_0_, 0);
				//Line: 44
				(((intarrayiterator*)_this_ -> data) -> _data_) = _param_0_;
				stack_leave();
				return _this_;
				stack_leave();
				
			}
			
			
	}
	return;
	
}
void intarrayiterator_start(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((intarrayiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INTARRAYITERATOR: 
			{
				(((intarrayiterator*)_this_ -> data) -> _status_) = ((int)0);
				
			}
			
			break;
		default:
			{
				(((intarrayiterator*)_this_ -> data) -> _status_) = ((int)0);
				
			}
			
			
	}
	return;
	
}
boolean intarrayiterator_hasnext(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((intarrayiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INTARRAYITERATOR: 
			{
				return ((((intarrayiterator*)_this_ -> data) -> _status_) != ((int)-1));
				
			}
			
			break;
		default:
			{
				return ((((intarrayiterator*)_this_ -> data) -> _status_) != ((int)-1));
				
			}
			
			
	}
	return;
	
}
int intarrayiterator_invoke(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((intarrayiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_INTARRAYITERATOR: 
			{
				switch (((intarrayiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 47
					{
						((intarrayiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((intarrayiterator*)_this_ -> data) -> _i_)  < (int_dim_get_length((((intarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							if (tmp_inc__ > 0) { if ((((intarrayiterator*)_this_ -> data) -> _i_)  > (int_dim_get_length((((intarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							{
								//Line: 48
								((intarrayiterator*)_this_ -> data) -> _status_ = 1;
								return ((int*)(((intarrayiterator*)_this_ -> data) -> _data_)-> data)[(((intarrayiterator*)_this_ -> data) -> _i_)];
								case 1:
								;
								
							}
							
							(((intarrayiterator*)_this_ -> data) -> _i_)  = (((intarrayiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 50
					((intarrayiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return ((int)0);
					
				}
				((intarrayiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			break;
		default:
			{
				switch (((intarrayiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 47
					{
						((intarrayiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((intarrayiterator*)_this_ -> data) -> _i_)  < (int_dim_get_length((((intarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							if (tmp_inc__ > 0) { if ((((intarrayiterator*)_this_ -> data) -> _i_)  > (int_dim_get_length((((intarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							{
								//Line: 48
								((intarrayiterator*)_this_ -> data) -> _status_ = 1;
								return ((int*)(((intarrayiterator*)_this_ -> data) -> _data_)-> data)[(((intarrayiterator*)_this_ -> data) -> _i_)];
								case 1:
								;
								
							}
							
							(((intarrayiterator*)_this_ -> data) -> _i_)  = (((intarrayiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 50
					((intarrayiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return ((int)0);
					
				}
				((intarrayiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			
	}
	return;
	
}
float floatarrayiterator_invoke(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((floatarrayiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_FLOATARRAYITERATOR: 
			{
				switch (((floatarrayiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 60
					{
						((floatarrayiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((floatarrayiterator*)_this_ -> data) -> _i_)  < (float_dim_get_length((((floatarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							if (tmp_inc__ > 0) { if ((((floatarrayiterator*)_this_ -> data) -> _i_)  > (float_dim_get_length((((floatarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							{
								//Line: 61
								((floatarrayiterator*)_this_ -> data) -> _status_ = 1;
								return ((float*)(((floatarrayiterator*)_this_ -> data) -> _data_)-> data)[(((floatarrayiterator*)_this_ -> data) -> _i_)];
								case 1:
								;
								
							}
							
							(((floatarrayiterator*)_this_ -> data) -> _i_)  = (((floatarrayiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 63
					((floatarrayiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return ((float)0.0);
					
				}
				((floatarrayiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			break;
		default:
			{
				switch (((floatarrayiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 60
					{
						((floatarrayiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((floatarrayiterator*)_this_ -> data) -> _i_)  < (float_dim_get_length((((floatarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							if (tmp_inc__ > 0) { if ((((floatarrayiterator*)_this_ -> data) -> _i_)  > (float_dim_get_length((((floatarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							{
								//Line: 61
								((floatarrayiterator*)_this_ -> data) -> _status_ = 1;
								return ((float*)(((floatarrayiterator*)_this_ -> data) -> _data_)-> data)[(((floatarrayiterator*)_this_ -> data) -> _i_)];
								case 1:
								;
								
							}
							
							(((floatarrayiterator*)_this_ -> data) -> _i_)  = (((floatarrayiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 63
					((floatarrayiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return ((float)0.0);
					
				}
				((floatarrayiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			
	}
	return;
	
}
GCNode* stringiterator_invoke(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((stringiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_STRINGITERATOR: 
			{
				switch (((stringiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 74
					{
						((stringiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((stringiterator*)_this_ -> data) -> _i_)  < (string_get_length((((stringiterator*)_this_ -> data) -> _data_)) - ((int)2))) break; }
							if (tmp_inc__ > 0) { if ((((stringiterator*)_this_ -> data) -> _i_)  > (string_get_length((((stringiterator*)_this_ -> data) -> _data_)) - ((int)2))) break; }
							{
								//Line: 75
								((stringiterator*)_this_ -> data) -> _status_ = 1;
								return newString("a");
								case 1:
								;
								
							}
							
							(((stringiterator*)_this_ -> data) -> _i_)  = (((stringiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 77
					((stringiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return newString("");
					
				}
				((stringiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			break;
		default:
			{
				switch (((stringiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 74
					{
						((stringiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((stringiterator*)_this_ -> data) -> _i_)  < (string_get_length((((stringiterator*)_this_ -> data) -> _data_)) - ((int)2))) break; }
							if (tmp_inc__ > 0) { if ((((stringiterator*)_this_ -> data) -> _i_)  > (string_get_length((((stringiterator*)_this_ -> data) -> _data_)) - ((int)2))) break; }
							{
								//Line: 75
								((stringiterator*)_this_ -> data) -> _status_ = 1;
								return newString("a");
								case 1:
								;
								
							}
							
							(((stringiterator*)_this_ -> data) -> _i_)  = (((stringiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 77
					((stringiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return newString("");
					
				}
				((stringiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			
	}
	return;
	
}
boolean booleanarrayiterator_invoke(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	GCNode* _super_ = NULL;
	int tmpid = _this_ -> typid;
	_super_ = _this_;//((booleanarrayiterator*)_this_ -> data) -> superclass;
	_this_ -> typid = ((object*)_this_->data) -> typid; //grauslicher hack fuers casten...
	switch (tmpid) {
		case TYP_BOOLEANARRAYITERATOR: 
			{
				switch (((booleanarrayiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 88
					{
						((booleanarrayiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((booleanarrayiterator*)_this_ -> data) -> _i_)  < (boolean_dim_get_length((((booleanarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							if (tmp_inc__ > 0) { if ((((booleanarrayiterator*)_this_ -> data) -> _i_)  > (boolean_dim_get_length((((booleanarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							{
								//Line: 89
								((booleanarrayiterator*)_this_ -> data) -> _status_ = 1;
								return ((boolean*)(((booleanarrayiterator*)_this_ -> data) -> _data_)-> data)[(((booleanarrayiterator*)_this_ -> data) -> _i_)];
								case 1:
								;
								
							}
							
							(((booleanarrayiterator*)_this_ -> data) -> _i_)  = (((booleanarrayiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 91
					((booleanarrayiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return ((byte)false);
					
				}
				((booleanarrayiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			break;
		default:
			{
				switch (((booleanarrayiterator*)_this_ -> data) -> _status_) {
					case 0:
					//Line: 88
					{
						((booleanarrayiterator*)_this_ -> data) ->_i_ = ((int)0);
						;
						while(1) {
							int tmp_inc__ = ((int)1);
							if (tmp_inc__ < 0) { if ((((booleanarrayiterator*)_this_ -> data) -> _i_)  < (boolean_dim_get_length((((booleanarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							if (tmp_inc__ > 0) { if ((((booleanarrayiterator*)_this_ -> data) -> _i_)  > (boolean_dim_get_length((((booleanarrayiterator*)_this_ -> data) -> _data_)) - ((int)1))) break; }
							{
								//Line: 89
								((booleanarrayiterator*)_this_ -> data) -> _status_ = 1;
								return ((boolean*)(((booleanarrayiterator*)_this_ -> data) -> _data_)-> data)[(((booleanarrayiterator*)_this_ -> data) -> _i_)];
								case 1:
								;
								
							}
							
							(((booleanarrayiterator*)_this_ -> data) -> _i_)  = (((booleanarrayiterator*)_this_ -> data) -> _i_)  + ((int)1);
						}
					};
					//Line: 91
					((booleanarrayiterator*)_this_ -> data) -> _status_ = -1;
					return 0;
					case 2:
					;
					return ((byte)false);
					
				}
				((booleanarrayiterator*)_this_ -> data) -> _status_ = -1;
				
			}
			
			
	}
	return;
	
}
int boolean_dim_get_length(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 97
		return array_bytes_boolean( _this_ );
		return ((int)0);
		
	}
	
	
}
GCNode* boolean_dim_get_floatarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 105
		GCNode* _floatarr_ = allocarray_1_(sizeof(float*), boolean_dim_get_length(_this_), &standardTrace);
		stack_create(&_floatarr_, 0);
		;
		//Line: 106
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (boolean_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (boolean_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 107
					if (((boolean*)_this_-> data)[_i_]) {
						//Line: 108
						((float*)_floatarr_-> data)[_i_] = ((float)1.0);
						
					}
					 else {
						//Line: 111
						((float*)_floatarr_-> data)[_i_] = ((float)0.0);
						
					}
					;
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 114
		stack_leave();
		return _floatarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* boolean_dim_get_intarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 118
		GCNode* _intarr_ = allocarray_1_(sizeof(int*), boolean_dim_get_length(_this_), &standardTrace);
		stack_create(&_intarr_, 0);
		;
		//Line: 119
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (boolean_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (boolean_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 120
					if (((boolean*)_this_-> data)[_i_]) {
						//Line: 121
						((int*)_intarr_-> data)[_i_] = ((int)1);
						
					}
					 else {
						//Line: 124
						((int*)_intarr_-> data)[_i_] = ((int)0);
						
					}
					;
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 127
		stack_leave();
		return _intarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* boolean_dim_get_stringarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 131
		GCNode* _stringarr_ = allocarray_1_(sizeof(char**), boolean_dim_get_length(_this_), &arrayTrace);
		stack_create(&_stringarr_, 0);
		;
		//Line: 132
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (boolean_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (boolean_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 133
					if (((boolean*)_this_-> data)[_i_]) {
						//Line: 134
						((GCNode**)_stringarr_-> data)[_i_] = newString("true");
						
					}
					 else {
						//Line: 137
						((GCNode**)_stringarr_-> data)[_i_] = newString("false");
						
					}
					;
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 140
		stack_leave();
		return _stringarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
int int_dim_get_length(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 146
		int _i_ = array_bytes_int( _this_ );
		;
		//Line: 147
		stack_leave();
		return (_i_ / ((int)4));
		stack_leave();
		return ((int)0);
		stack_leave();
		
	}
	
	
}
GCNode* int_dim_iterator(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 151
		return intarrayiterator_new( new_intarrayiterator(), _this_ );
		return NULL;
		
	}
	
	
}
GCNode* int_dim_get_floatarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 155
		GCNode* _floatarr_ = allocarray_1_(sizeof(float*), int_dim_get_length(_this_), &standardTrace);
		stack_create(&_floatarr_, 0);
		;
		//Line: 156
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (int_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (int_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 157
					((float*)_floatarr_-> data)[_i_] = ((float)((int*)_this_-> data)[_i_]);
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 159
		stack_leave();
		return _floatarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* int_dim_get_stringarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 163
		GCNode* _stringarr_ = allocarray_1_(sizeof(char**), int_dim_get_length(_this_), &arrayTrace);
		stack_create(&_stringarr_, 0);
		;
		//Line: 164
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (int_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (int_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 165
					((GCNode**)_stringarr_-> data)[_i_] = int2string(((int*)_this_-> data)[_i_]);
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 167
		stack_leave();
		return _stringarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* int_dim_get_booleanarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 171
		GCNode* _boolarr_ = allocarray_1_(sizeof(boolean*), int_dim_get_length(_this_), &standardTrace);
		stack_create(&_boolarr_, 0);
		;
		//Line: 172
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (int_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (int_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 173
					if ((((int*)_this_-> data)[_i_] == ((int)0))) {
						//Line: 174
						((boolean*)_boolarr_-> data)[_i_] = ((byte)false);
						
					}
					 else {
						//Line: 177
						((boolean*)_boolarr_-> data)[_i_] = ((byte)true);
						
					}
					;
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 180
		stack_leave();
		return _boolarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
int float_dim_get_length(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 186
		int _i_ = array_bytes_float( _this_ );
		;
		//Line: 187
		stack_leave();
		return (_i_ / ((int)4));
		stack_leave();
		return ((int)0);
		stack_leave();
		
	}
	
	
}
GCNode* float_dim_get_intarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 195
		GCNode* _intarr_ = allocarray_1_(sizeof(int*), float_dim_get_length(_this_), &standardTrace);
		stack_create(&_intarr_, 0);
		;
		//Line: 196
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (float_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (float_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 197
					((int*)_intarr_-> data)[_i_] = ((int)((float*)_this_-> data)[_i_]);
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 199
		stack_leave();
		return _intarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* float_dim_get_stringarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 203
		GCNode* _stringarr_ = allocarray_1_(sizeof(char**), float_dim_get_length(_this_), &arrayTrace);
		stack_create(&_stringarr_, 0);
		;
		//Line: 204
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (float_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (float_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 205
					((GCNode**)_stringarr_-> data)[_i_] = float2string(((float*)_this_-> data)[_i_]);
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 207
		stack_leave();
		return _stringarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* float_dim_get_booleanarray(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 211
		GCNode* _boolarr_ = allocarray_1_(sizeof(boolean*), float_dim_get_length(_this_), &standardTrace);
		stack_create(&_boolarr_, 0);
		;
		//Line: 212
		{
			int _i_ = ((int)0);
			;
			while(1) {
				int tmp_inc__ = ((int)1);
				if (tmp_inc__ < 0) { if (_i_  < (float_dim_get_length(_this_) - ((int)1))) break; }
				if (tmp_inc__ > 0) { if (_i_  > (float_dim_get_length(_this_) - ((int)1))) break; }
				{
					//Line: 213
					if ((((float*)_this_-> data)[_i_] == ((float)0.0))) {
						//Line: 214
						((boolean*)_boolarr_-> data)[_i_] = ((byte)false);
						
					}
					 else {
						//Line: 217
						((boolean*)_boolarr_-> data)[_i_] = ((byte)true);
						
					}
					;
					
				}
				
				_i_  = _i_  + ((int)1);
			}
		};
		//Line: 220
		stack_leave();
		return _boolarr_;
		stack_leave();
		return NULL;
		stack_leave();
		
	}
	
	
}
GCNode* int_get_string(int _this_) {
	//Line: 230
	return int2string(_this_);
	return newString("");
	
}

float int_get_float(int _this_) {
	//Line: 234
	return ((float)_this_);
	return ((float)0.0);
	
}

boolean int_get_boolean(int _this_) {
	//Line: 238
	return ((boolean)_this_);
	return ((byte)false);
	
}

int string_get_int(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 244
		return string2int(_this_);
		return ((int)0);
		
	}
	
	
}
float string_get_float(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 247
		return string2float(_this_);
		return ((float)0.0);
		
	}
	
	
}
boolean string_get_boolean(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 250
		return (string2int(_this_) != ((int)0));
		return ((byte)false);
		
	}
	
	
}
int string_get_length(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 254
		return str_len( _this_ );
		return ((int)0);
		
	}
	
	
}
int string_get_hash(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		stack_enter(1, NULL);
		
		//Line: 258
		int _hash_ = str_hash( _this_ );
		;
		//Line: 259
		if ((_hash_ < ((int)0))) {
			//Line: 260
			_hash_ = (_hash_ * (((int)1) * ((int)-1)));
			
		}
		;
		//Line: 263
		stack_leave();
		return _hash_;
		stack_leave();
		return ((int)0);
		stack_leave();
		
	}
	
	
}
int string_get_asc(GCNode* _this_) {
	if (_this_ == NULL) {
		exc_holder_obj = nullpointerexception_new (new_nullpointerexception() );
		throwException(TYP_NULLPOINTEREXCEPTION);
	}
	{
		//Line: 267
		return str_asc( _this_ );
		return ((int)0);
		
	}
	
	
}
void traceintarrayiterator(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((intarrayiterator*)_this_-> data) -> _data_) != NULL) 
		if ((((intarrayiterator*)_this_-> data) -> _data_) -> mark) (((intarrayiterator*)_this_-> data) -> _data_)-> trace((((intarrayiterator*)_this_-> data) -> _data_));
	
}
void tracefloatarrayiterator(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((floatarrayiterator*)_this_-> data) -> _data_) != NULL) 
		if ((((floatarrayiterator*)_this_-> data) -> _data_) -> mark) (((floatarrayiterator*)_this_-> data) -> _data_)-> trace((((floatarrayiterator*)_this_-> data) -> _data_));
	
}
void tracestringiterator(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((stringiterator*)_this_-> data) -> _data_) != NULL) 
		if ((((stringiterator*)_this_-> data) -> _data_) -> mark) (((stringiterator*)_this_-> data) -> _data_)-> trace((((stringiterator*)_this_-> data) -> _data_));
	
}
void tracebooleanarrayiterator(GCNode* _this_){
	//traces all references of this class.
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	if ((((booleanarrayiterator*)_this_-> data) -> _data_) != NULL) 
		if ((((booleanarrayiterator*)_this_-> data) -> _data_) -> mark) (((booleanarrayiterator*)_this_-> data) -> _data_)-> trace((((booleanarrayiterator*)_this_-> data) -> _data_));
	
}

