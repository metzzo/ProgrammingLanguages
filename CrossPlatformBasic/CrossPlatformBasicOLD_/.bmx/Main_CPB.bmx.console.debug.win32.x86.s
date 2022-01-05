	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_tbmxgenerator
	extrn	___bb_crossplatformbasic_tcgenerator
	extrn	___bb_crossplatformbasic_tcompiler_cpb
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
	extrn	_bb_Execute
	extrn	_bb_TBMXGenerator
	extrn	_bb_TCGenerator
	extrn	_bb_TCompiler
	extrn	_bb_TDatatype
	extrn	_bb_TOperator
	extrn	_bb_TTypeTemplate
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
	cmp	dword [_111],0
	je	_112
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_112:
	mov	dword [_111],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	push	ebp
	push	_96
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_crossplatformbasic_util_cpb
	call	___bb_crossplatformbasic_tcompiler_cpb
	call	___bb_crossplatformbasic_tcgenerator
	call	___bb_crossplatformbasic_tbmxgenerator
	push	_40
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	_42
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TDatatype+48]
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TOperator+60]
	push	_44
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TTypeTemplate+48]
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
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_49
	call	_brl_blitz_NullObjectError
_49:
	push	_27
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-8],eax
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_54
	call	_brl_blitz_NullObjectError
_54:
	push	_28
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-8]
	mov	dword [ebp-8],eax
	push	_56
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-12],eax
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_61
	call	_brl_blitz_NullObjectError
_61:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-12]
	mov	dword [ebp-12],eax
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-16],eax
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_68
	call	_brl_blitz_NullObjectError
_68:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-16]
	mov	dword [ebp-16],eax
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_73
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBMXGenerator
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_75
	call	_brl_blitz_NullObjectError
_75:
	push	_30
	push	_29
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-20]
	mov	dword [ebp-20],eax
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-20],eax
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCGenerator
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_81
	call	_brl_blitz_NullObjectError
_81:
	push	_31
	push	_29
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [ebp-20]
	mov	dword [ebp-20],eax
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	call	_bb_Execute
	add	esp,4
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,1
	cmp	eax,0
	je	_86
	push	ebp
	push	_94
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	_29
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	_31
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-8]
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
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-12]
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
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-16]
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
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_36
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	mov	eax,dword [ebp-16]
	add	eax,dword [ebp-8]
	add	eax,dword [ebp-12]
	add	eax,dword [ebp-20]
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_37
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_86:
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_38
_38:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_111:
	dd	0
_97:
	db	"Main_CPB",0
_98:
	db	"Version",0
_99:
	db	"$",0
	align	4
_100:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	48,46,51
_101:
	db	"PublicRelease",0
_102:
	db	"b",0
	align	4
_103:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_104:
	db	"Compiler",0
_105:
	db	":TCompiler",0
_106:
	db	"TokenTime",0
_107:
	db	"i",0
_108:
	db	"AnalyseTime",0
_109:
	db	"ParseTime",0
_110:
	db	"GeneratorTime",0
	align	4
_96:
	dd	1
	dd	_97
	dd	1
	dd	_98
	dd	_99
	dd	_100
	dd	1
	dd	_101
	dd	_102
	dd	_103
	dd	2
	dd	_104
	dd	_105
	dd	-4
	dd	2
	dd	_106
	dd	_107
	dd	-8
	dd	2
	dd	_108
	dd	_107
	dd	-12
	dd	2
	dd	_109
	dd	_107
	dd	-16
	dd	2
	dd	_110
	dd	_107
	dd	-20
	dd	0
_41:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/Main_CPB.bmx",0
	align	4
_40:
	dd	_41
	dd	8
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_42:
	dd	_41
	dd	10
	dd	1
	align	4
_43:
	dd	_41
	dd	11
	dd	1
	align	4
_44:
	dd	_41
	dd	12
	dd	1
	align	4
_45:
	dd	_41
	dd	14
	dd	1
	align	4
_47:
	dd	_41
	dd	17
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	120,109,108,47,102,117,110,99,116,105,111,110,46,120,109,108
	align	4
_50:
	dd	_41
	dd	18
	dd	1
	align	4
_52:
	dd	_41
	dd	19
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	116,109,112,47,102,105,108,101,46,99,112,98
	align	4
_55:
	dd	_41
	dd	20
	dd	1
	align	4
_56:
	dd	_41
	dd	21
	dd	1
	align	4
_57:
	dd	_41
	dd	22
	dd	1
	align	4
_59:
	dd	_41
	dd	23
	dd	1
	align	4
_62:
	dd	_41
	dd	24
	dd	1
	align	4
_63:
	dd	_41
	dd	25
	dd	1
	align	4
_64:
	dd	_41
	dd	26
	dd	1
	align	4
_66:
	dd	_41
	dd	27
	dd	1
	align	4
_69:
	dd	_41
	dd	28
	dd	1
	align	4
_70:
	dd	_41
	dd	29
	dd	1
	align	4
_71:
	dd	_41
	dd	31
	dd	1
	align	4
_73:
	dd	_41
	dd	32
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,66,77,88,67,111,100,101,46,98,109,120
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,88,77,76,67,111,100,101,46,120,109,108
	align	4
_76:
	dd	_41
	dd	33
	dd	1
	align	4
_77:
	dd	_41
	dd	34
	dd	1
	align	4
_78:
	dd	_41
	dd	36
	dd	1
	align	4
_79:
	dd	_41
	dd	37
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,109,112,47,67,67,111,100,101,46,99
	align	4
_82:
	dd	_41
	dd	38
	dd	1
	align	4
_83:
	dd	_41
	dd	39
	dd	1
	align	4
_84:
	dd	_41
	dd	41
	dd	1
	align	4
_85:
	dd	_41
	dd	43
	dd	1
	align	4
_94:
	dd	3
	dd	0
	dd	0
	align	4
_87:
	dd	_41
	dd	44
	dd	2
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_88:
	dd	_41
	dd	46
	dd	2
	align	4
_89:
	dd	_41
	dd	49
	dd	2
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	84,111,107,101,110,105,122,101,116,105,109,101,58,32
	align	4
_90:
	dd	_41
	dd	50
	dd	2
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	65,110,97,108,121,115,101,116,105,109,101,58,32
	align	4
_91:
	dd	_41
	dd	51
	dd	2
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	80,97,114,115,101,116,105,109,101,58,32
	align	4
_92:
	dd	_41
	dd	52
	dd	2
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	71,101,110,101,114,97,116,101,116,105,109,101,58,32
	align	4
_93:
	dd	_41
	dd	53
	dd	2
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	84,111,116,97,108,58,32
	align	4
_95:
	dd	_41
	dd	55
	dd	1
