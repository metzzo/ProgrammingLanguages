	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_tcgenerator
	extrn	___bb_crossplatformbasic_tcompiler_cpb
	extrn	___bb_crossplatformbasic_tlanguagemanager
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	_bbEnd
	extrn	_bbGCCollect
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbWriteStdout
	extrn	_bb_TCGenerator
	extrn	_bb_TCompiler
	extrn	_bb_TDatatype
	extrn	_bb_TLanguageManager
	extrn	_bb_TOperator
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_stream_LoadString
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	cmp	dword [_102],0
	je	_103
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_103:
	mov	dword [_102],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	push	ebp
	push	_87
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_crossplatformbasic_util_cpb
	call	___bb_crossplatformbasic_tcompiler_cpb
	call	___bb_crossplatformbasic_tcgenerator
	call	___bb_crossplatformbasic_tlanguagemanager
	push	_39
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	_41
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCGenerator
	call	_bbObjectNew
	add	esp,4
	push	eax
	call	dword [_bb_TLanguageManager+48]
	add	esp,4
	push	_42
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	call	dword [_bb_TLanguageManager+64]
	add	esp,4
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TDatatype+48]
	push	_44
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TOperator+60]
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_47
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	dword [_bb_TLanguageManager+52]
	add	esp,4
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_50
	call	_brl_blitz_NullObjectError
_50:
	push	_28
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-8],eax
	push	_53
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_55
	call	_brl_blitz_NullObjectError
_55:
	push	_29
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	_56
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-8]
	mov	dword [ebp-8],eax
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-12],eax
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_62
	call	_brl_blitz_NullObjectError
_62:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-12]
	mov	dword [ebp-12],eax
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-16],eax
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_69
	call	_brl_blitz_NullObjectError
_69:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-16]
	mov	dword [ebp-16],eax
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,1
	cmp	eax,0
	je	_73
	push	ebp
	push	_79
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	_30
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_32
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_33
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_34
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	mov	eax,dword [ebp-16]
	add	eax,dword [ebp-8]
	add	eax,dword [ebp-12]
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_35
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_73:
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	push	_30
	call	dword [_bb_TLanguageManager+56]
	add	esp,8
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-20]
	mov	dword [ebp-20],eax
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TLanguageManager+60]
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_37
_37:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_102:
	dd	0
_88:
	db	"Main_CPB",0
_89:
	db	"Version",0
_90:
	db	"$",0
	align	4
_91:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	48,46,52
_92:
	db	"PublicRelease",0
_93:
	db	"b",0
	align	4
_94:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_95:
	db	"Compiler",0
_96:
	db	":TCompiler",0
_97:
	db	"TokenTime",0
_98:
	db	"i",0
_99:
	db	"AnalyseTime",0
_100:
	db	"ParseTime",0
_101:
	db	"GeneratorTime",0
	align	4
_87:
	dd	1
	dd	_88
	dd	1
	dd	_89
	dd	_90
	dd	_91
	dd	1
	dd	_92
	dd	_93
	dd	_94
	dd	2
	dd	_95
	dd	_96
	dd	-4
	dd	2
	dd	_97
	dd	_98
	dd	-8
	dd	2
	dd	_99
	dd	_98
	dd	-12
	dd	2
	dd	_100
	dd	_98
	dd	-16
	dd	2
	dd	_101
	dd	_98
	dd	-20
	dd	0
_40:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/Main_CPB.bmx",0
	align	4
_39:
	dd	_40
	dd	8
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_41:
	dd	_40
	dd	10
	dd	1
	align	4
_42:
	dd	_40
	dd	11
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	120,109,108,47,99,111,110,102,105,103,46,120,109,108
	align	4
_43:
	dd	_40
	dd	13
	dd	1
	align	4
_44:
	dd	_40
	dd	14
	dd	1
	align	4
_45:
	dd	_40
	dd	15
	dd	1
	align	4
_47:
	dd	_40
	dd	16
	dd	1
	align	4
_48:
	dd	_40
	dd	18
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	47,120,109,108,47,102,117,110,99,116,105,111,110,47
	align	4
_51:
	dd	_40
	dd	19
	dd	1
	align	4
_53:
	dd	_40
	dd	20
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	116,109,112,47,102,105,108,101,46,99,112,98
	align	4
_56:
	dd	_40
	dd	21
	dd	1
	align	4
_57:
	dd	_40
	dd	22
	dd	1
	align	4
_58:
	dd	_40
	dd	23
	dd	1
	align	4
_60:
	dd	_40
	dd	24
	dd	1
	align	4
_63:
	dd	_40
	dd	25
	dd	1
	align	4
_64:
	dd	_40
	dd	26
	dd	1
	align	4
_65:
	dd	_40
	dd	27
	dd	1
	align	4
_67:
	dd	_40
	dd	28
	dd	1
	align	4
_70:
	dd	_40
	dd	29
	dd	1
	align	4
_71:
	dd	_40
	dd	30
	dd	1
	align	4
_72:
	dd	_40
	dd	31
	dd	1
	align	4
_79:
	dd	3
	dd	0
	dd	0
	align	4
_74:
	dd	_40
	dd	32
	dd	2
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,88,77,76,67,111,100,101,46,120,109,108
	align	4
_75:
	dd	_40
	dd	36
	dd	2
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	84,111,107,101,110,105,122,101,116,105,109,101,58,32
	align	4
_76:
	dd	_40
	dd	37
	dd	2
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	65,110,97,108,121,115,101,116,105,109,101,58,32
	align	4
_77:
	dd	_40
	dd	38
	dd	2
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	80,97,114,115,101,116,105,109,101,58,32
	align	4
_78:
	dd	_40
	dd	40
	dd	2
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	84,111,116,97,108,58,32
	align	4
_80:
	dd	_40
	dd	42
	dd	1
	align	4
_82:
	dd	_40
	dd	43
	dd	1
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,109,112,47,67,67,111,100,101,46,99
	align	4
_83:
	dd	_40
	dd	44
	dd	1
	align	4
_84:
	dd	_40
	dd	45
	dd	1
	align	4
_85:
	dd	_40
	dd	46
	dd	1
	align	4
_86:
	dd	_40
	dd	50
	dd	1
