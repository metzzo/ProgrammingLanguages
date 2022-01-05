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





#ifndef boolean
#define boolean char
#endif

int main(int argc, char *argv[]) {
	GCInit();
	initStatic();
	
	function_program();
	
	GCDeInit();
	
	return 0;
}


void function_program() {
	stack_enter(1, NULL);
	
	//Line: 6
	GCNode* _arr_ = array_templates__int_new( new_array_templates__int() );
	stack_create(&_arr_, 0);
	;
	//Line: 7
	{
		int _i_ = ((int)0);
		;
		while(1) {
			int tmp_inc__ = ((int)1);
			if (tmp_inc__ < 0) { if (_i_  < ((int)20)) break; }
			if (tmp_inc__ > 0) { if (_i_  > ((int)20)) break; }
			{
				//Line: 8
				print_string( joinstr(newString("set: "), int2string(_i_)) );
				//Line: 9
				array_templates__int_set_this(_arr_,(_i_ * ((int)2)), _i_);
				
			}
			
			_i_  = _i_  + ((int)1);
		}
	};
	//Line: 12
	print_int( array_templates__int_get_length(_arr_) );
	//Line: 14
	{
		int _i_ = ((int)0);
		;
		GCNode* tmp_it_iterator = array_templates__int_iterator( _arr_ );
		intarrayiterator_start(tmp_it_iterator);
		_i_ = intarrayiterator_invoke(tmp_it_iterator);
		while (intarrayiterator_hasnext(tmp_it_iterator)) {
			{
				//Line: 15
				print_string( joinstr(newString("Posi: "), int2string(_i_)) );
				
			}
			
		_i_ = intarrayiterator_invoke(tmp_it_iterator);
		}
	}
	;
	//Line: 18
	print_string( operator_plus_string_int( newString("lol: "), ((int)5) ) );
	//Line: 19
	print_string( operator_plus_int_string( ((int)5), newString(": lol") ) );
	stack_leave();
	return;
	stack_leave();
	
}

void initStatic() {
	
}
GCNode* allocarray_1_(int size, int param0, void(*tracefunc)(GCNode*)) {
	void** arr = malloc(size*param0);
	int i;
	for (i = 0;i < param0; i++) arr[i] = NULL;
	GCNode* node = gc_malloc(0,tracefunc);
	node -> data = arr;
	node -> size = size*param0*1;
	node -> typid = size; //hier wird typid als groesse missbraucht, um platz zu sparen
	return node;
	
}
void arrayTrace(GCNode* _this_) {
	if (_this_ == NULL) return;
	_this_ -> mark = 1;
	int i = 0;
	for (i = 0; i < _this_ -> size/_this_ -> typid; i++) {
		if (((GCNode**)_this_ -> data)[i] != NULL)
			if (((GCNode**)_this_ -> data)[i] -> mark == 0)
				(((GCNode**)_this_ -> data)[i]) -> trace(((GCNode**)_this_ -> data)[i]);
	}
}

