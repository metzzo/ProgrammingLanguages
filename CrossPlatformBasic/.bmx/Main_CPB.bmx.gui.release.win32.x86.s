	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_tbmxgenerator
	extrn	___bb_crossplatformbasic_tcgenerator
	extrn	___bb_crossplatformbasic_tcompiler_cpb
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	_bbEnd
	extrn	_bbGCCollect
	extrn	_bbMilliSecs
	extrn	_bbObjectNew
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
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_stream_LoadString
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	cmp	dword [_52],0
	je	_53
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_53:
	mov	dword [_52],1
	call	___bb_blitz_blitz
	call	___bb_crossplatformbasic_util_cpb
	call	___bb_crossplatformbasic_tcompiler_cpb
	call	___bb_crossplatformbasic_tcgenerator
	call	___bb_crossplatformbasic_tbmxgenerator
	push	_26
	call	_brl_filesystem_DeleteFile
	add	esp,4
	call	dword [_bb_TDatatype+48]
	call	dword [_bb_TOperator+60]
	call	dword [_bb_TTypeTemplate+48]
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	mov	eax,esi
	push	_27
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	call	_bbMilliSecs
	mov	dword [ebp-4],eax
	mov	ebx,esi
	push	_28
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	call	_bbMilliSecs
	sub	eax,dword [ebp-4]
	mov	dword [ebp-4],eax
	call	_bbGCCollect
	call	_bbMilliSecs
	mov	ebx,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,ebx
	mov	ebx,eax
	call	_bbGCCollect
	call	_bbMilliSecs
	mov	edi,eax
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	call	_bbMilliSecs
	sub	eax,edi
	mov	edi,eax
	call	_bbGCCollect
	call	_bbMilliSecs
	push	_bb_TBMXGenerator
	call	_bbObjectNew
	add	esp,4
	push	_30
	push	_29
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	call	_bbMilliSecs
	call	_bbGCCollect
	call	_bbMilliSecs
	mov	esi,eax
	push	_bb_TCGenerator
	call	_bbObjectNew
	add	esp,4
	push	_31
	push	_29
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	call	_bbMilliSecs
	sub	eax,esi
	mov	esi,eax
	call	_bbGCCollect
	push	_31
	call	_bb_Execute
	add	esp,4
	mov	eax,1
	cmp	eax,0
	je	_51
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
	push	_32
	push	_30
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbWriteStdout
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
	push	_32
	push	dword [ebp-4]
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
	push	_32
	push	ebx
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
	push	_32
	push	edi
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
	push	_32
	push	esi
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
	push	_32
	mov	eax,edi
	add	eax,dword [ebp-4]
	add	eax,ebx
	add	eax,esi
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
_51:
	call	_bbEnd
	mov	eax,0
	jmp	_38
_38:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_52:
	dd	0
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	120,109,108,47,102,117,110,99,116,105,111,110,46,120,109,108
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	116,109,112,47,102,105,108,101,46,99,112,98
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
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,109,112,47,67,67,111,100,101,46,99
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	84,111,107,101,110,105,122,101,116,105,109,101,58,32
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	65,110,97,108,121,115,101,116,105,109,101,58,32
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	80,97,114,115,101,116,105,109,101,58,32
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	71,101,110,101,114,97,116,101,116,105,109,101,58,32
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	84,111,116,97,108,58,32
