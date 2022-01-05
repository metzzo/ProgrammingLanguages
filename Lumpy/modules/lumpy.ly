language c
	import "c/system/gc.o"
	import "c/system/string.o"
	import "c/system/lang.o"
	import "c/system/exception.o"
	import "c/system/slice.o"
	
	import "c/system/gc.h"
	import "c/system/lang.h"
	import "c/system/string.h"
	import "c/system/exception.h"
	import "c/system/slice.h"
	
	//gui
	import "c/gui/gui.h"
end

import "lumpy/datatypes.ly"
import "lumpy/exceptions.ly"
import "lumpy/linkedlist.ly"
import "lumpy/checkedarray.ly"
import "lumpy/easycast.ly"
import "lumpy/stack.ly"

extern
	function gccollect:void() = "gccollect"
	function intern_stringlength:int(str:string) = "str_len"
	function intern_stringmid:string(str:string, startPos:int, endPos:int) = "str_mid"
	function intern_stringasc:int(str:string) = "str_asc"
	function intern_stringhash:int(str:string) = "str_hash"

	
	function print:void(text:String) = "print_string"
	function print:void(text:int) = "print_int"
end

