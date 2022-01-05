	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_libxml_libxml
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbAppDir
	extrn	_bbNullObject
	extrn	_bbObjectNew
	extrn	_bbStringAsc
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringSlice
	extrn	_brl_filesystem_CloseFile
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_linkedlist_TList
	extrn	_brl_retro_Mid
	extrn	_brl_retro_Replace
	extrn	_brl_stream_WriteLine
	extrn	_brl_system_OpenURL
	public	___bb_crossplatformbasic_util_cpb
	public	_bb_AddChild
	public	_bb_Execute
	public	_bb_IsFLoat
	public	_bb_IsInt
	public	_bb_IsString
	public	_bb_IsValidVarName
	section	"code" code
___bb_crossplatformbasic_util_cpb:
	push	ebp
	mov	ebp,esp
	cmp	dword [_60],0
	je	_61
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_61:
	mov	dword [_60],1
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	mov	eax,0
	jmp	_39
_39:
	mov	esp,ebp
	pop	ebp
	ret
_bb_AddChild:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	cmp	edi,_bbNullObject
	jne	_62
	mov	eax,_bbNullObject
	jmp	_43
_62:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,esi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+152]
	add	esp,8
	mov	eax,esi
	jmp	_43
_43:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Execute:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	push	_25
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	_28
	push	_27
	push	_26
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	ebx,eax
	push	_29
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_27
	push	_26
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	push	_30
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	esi
	push	_31
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_25
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_32
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	ebx
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_28
	push	_27
	push	_26
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_OpenURL
	add	esp,4
	mov	eax,0
	jmp	_46
_46:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsInt:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,1
	mov	edi,dword [esi+8]
	jmp	_68
_35:
	push	1
	push	ebx
	push	esi
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_71
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_71:
	cmp	eax,0
	je	_73
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_73:
	cmp	eax,0
	je	_75
	mov	byte [ebp-8],0
	jmp	_49
_75:
_33:
	add	ebx,1
_68:
	cmp	ebx,edi
	jle	_35
_34:
	mov	byte [ebp-8],1
	jmp	_49
_49:
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsFLoat:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,1
	mov	edi,dword [esi+8]
	jmp	_77
_38:
	push	1
	push	ebx
	push	esi
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_80
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_80:
	cmp	eax,0
	je	_82
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,46
	setne	al
	movzx	eax,al
_82:
	cmp	eax,0
	je	_84
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_84:
	cmp	eax,0
	je	_86
	mov	byte [ebp-8],0
	jmp	_52
_86:
_36:
	add	ebx,1
_77:
	cmp	ebx,edi
	jle	_38
_37:
	mov	byte [ebp-8],1
	jmp	_52
_52:
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsString:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	ebx,dword [ebp+8]
	push	_87
	push	1
	push	0
	push	ebx
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_88
	push	dword [ebx+8]
	mov	eax,dword [ebx+8]
	sub	eax,1
	push	eax
	push	ebx
	call	_bbStringSlice
	add	esp,12
	mov	eax,dword [eax+8]
_88:
	cmp	eax,0
	je	_90
	mov	byte [ebp-4],1
	jmp	_55
_90:
	mov	byte [ebp-4],0
	jmp	_55
_55:
	movzx	eax,byte [ebp-4]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsValidVarName:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	byte [ebp-4],1
	jmp	_58
_58:
	movzx	eax,byte [ebp-4]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_60:
	dd	0
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	99,99,111,109,112,105,108,101,114,116,101,115,116,46,101,120
	dw	101
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	92,99,97,108,108,46,98,97,116
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	64,101,99,104,111,32,111,110
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	99,100,32
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	103,99,99,32,45,111,32,99,99,111,109,112,105,108,101,114
	dw	116,101,115,116,46,101,120,101,32
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,117,115,101
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
