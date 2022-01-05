;Dims

;Includes

;Types
Type TTxtbox
	Field x,y
	Field width,height
	Field hndl
	Field winhndl
	Field txthndl
	Field bgcolor[3]
	Field fontcolor[3]
	Field commandcolor[3]
	Field tokencolor[3]
	Field numcolor[3]
	Field commentcolor[3]
	Field stringcolor[3]
End Type
Global box.TTxtbox

Type tcommand
	Field name$
	Field typ ;ob es italic oder bold ist
	Field rgb[3]
End Type
Global com.tcommand
;Globale Variablen


;Gui initialisieren
Global EditWindow
Global teaTextArea0

Global OFile$=CurrentDir()+"new.sb"
Global streamfile

EditWindow=CreateWindow("Simple Basic IDE",0,0,892,695,0,7)
RestoreWindow EditWindow

;-menus-----------------------------------------------------------------
MENUITEM0 = WindowMenu( EditWindow )
CreateMenu( "Laden",1,MENUITEM0 )
CreateMenu( "Speichern",2,MENUITEM0 )
CreateMenu( "Kompilieren",3,MENUITEM0 )
CreateMenu( "Hilfe",5,MENUITEM0 )
CreateMenu( "Neu",4,MENUITEM0 )
CreateMenu( "Beenden",6,MENUITEM0 )
UpdateWindowMenu EditWindow
textarea = create_highlightbox(0,0,892,685,EditWindow)
;SetGadgetLayout box\hndl, 2,2,2,2
set_maincolor(textarea,255,255,255,20,20,245)
set_commandcolor(textarea,255,10,10)
set_tokencolor(textarea,18,56,237)
set_stringcolor(textarea,255,128,0)
set_numcolor(textarea,64,128,128)
set_commentcolor(textarea,140,140,140)
;Befehle

add_command(textarea,"print")
add_command(textarea,"keyhit")
add_command(textarea,"keydown")
add_command(textarea,"waitkey")
add_command(textarea,"import")
add_command(textarea,"importall")
add_command(textarea,"flushkeys")
add_command(textarea,"flushmouse")
add_command(textarea,"hgetkey")
add_command(textarea,"mousedown")
add_command(textarea,"mousehit")
add_command(textarea,"mousex")
add_command(textarea,"mousey")
add_command(textarea,"mousez")
add_command(textarea,"getmouse")
add_command(textarea,"setmousemode")
add_command(textarea,"waitmouse")
add_command(textarea,"mousexspeed")
add_command(textarea,"mouseyspeed")
add_command(textarea,"mousezspeed")
add_command(textarea,"movemouse")
add_command(textarea,"mousewait")
add_command(textarea,"jumptoline")
add_command(textarea,"goto")
add_command(textarea,"delfunction")
add_command(textarea,"addfunction")
add_command(textarea,"label")
add_command(textarea,"end")
add_command(textarea,"delay",0)
;add_command(textarea,"")
;Keywords
add_command(textarea,"const",0)
add_command(textarea,"return",0)
add_command(textarea,"new",0)
add_command(textarea,"delete",0)
add_command(textarea,"as",0)
add_command(textarea,"endif",0)
add_command(textarea,"if",0)
add_command(textarea,"else",0)
add_command(textarea,"elseif",0)
add_command(textarea,"then",0)
add_command(textarea,"while",0)
add_command(textarea,"wend",0)
add_command(textarea,"endif",0)
add_command(textarea,"local",0)
add_command(textarea,"global",0)
add_command(textarea,"function",0)
add_command(textarea,"end function",0)
add_command(textarea,"endfunction",0)
add_command(textarea,"repeat",0)
add_command(textarea,"forever",0)
add_command(textarea,"for",0)
add_command(textarea,"next",0)
add_command(textarea,"until",0)
add_command(textarea,"exit",0)
;Mathe
add_command(textarea,"sin")
add_command(textarea,"cos")
add_command(textarea,"tan")
add_command(textarea,"atan")
add_command(textarea,"atan2")
add_command(textarea,"rand")
add_command(textarea,"rnd")
add_command(textarea,"abs")
add_command(textarea,"acos")
add_command(textarea,"asin")
add_command(textarea,"ceil")
add_command(textarea,"exp")
add_command(textarea,"float")
add_command(textarea,"floor")
add_command(textarea,"int")
add_command(textarea,"log")
add_command(textarea,"log10")
add_command(textarea,"pi")
add_command(textarea,"sgn")
add_command(textarea,"sqr")
add_command(textarea,"true")
add_command(textarea,"false")
;klassen:
add_command(textarea,"timage",0)
add_command(textarea,"graphics",0)
add_command(textarea,"flip",0)
add_command(textarea,"setbuffer",0)
add_command(textarea,"backbuffer",0)
add_command(textarea,"cls",0)
add_command(textarea,"text",0)
add_command(textarea,"draw",0)
add_command(textarea,"load",0)
add_command(textarea,"oval",0)
add_command(textarea,"rect",0)
add_command(textarea,"fps",0)
add_command(textarea,"rectsoverlap",0)
Repeat
	;Tasten
	Select GetKey() 
		Case 27
			End
	End Select
	
	;events
	Select WaitEvent()
		Case $803
			Exit
		Case $401									; interacted with gadget
		Case $401;gadget action
			Select EventSource()
				Case textarea
					update_txtbox(textarea)
			End Select
		Case $803									; close gadget
			Exit
		Case $1001								; selected a menu
			DoMenuAction( EventData() ,textarea)
	End Select
	
	update_txtbox(textarea)
Forever
Function DoMenuAction( menuid ,textarea)
	box.TTxtbox=Object.TTxtbox(textarea)
	If box.TTxtbox=Null Then RuntimeError "Fehler!"
	Select menuid
		Case 6
			If Confirm("Möchten Sie wirklich beenden?") Then End
		Case 4
			If Confirm("Wikrlich ein neues Projekt erstellen?") Then SetGadgetText box\hndl,""
		Case 5
			Notify "Es gibt noch keine Befehlsreferenz..." 
		Case 3
			stream=WriteFile("script/script.sb")
			row=TextAreaLen(box\hndl,2 )
			;WriteLine stream,"execfile ("+CurrentDir()+")"
			For n=0 To row
				ln$=TextAreaText(box\hndl,n,1,2 )
				WriteLine stream,ln
			Next
			CloseFile stream
			ExecFile "simpleBasic.exe"
		Case 2
			
		Case 1
			OFile= RequestFile ("Welche Datei möchten Sie laden?")
			loadfile(OFile)
	End Select
End Function

Function loadfile(file$)
	SetGadgetText box\hndl,""
	stream=OpenFile(file$)
	Repeat
		AddTextAreaText box\hndl,ReadLine(stream)+Chr$(10)+Chr$(10)
	Until Eof(stream)
	CloseFile stream
End Function

;highlightiong
Function update_txtbox(hndl)
	box.TTxtbox=Object.TTxtbox(hndl)
	txt$=Lower(TextAreaText(box\hndl))
	SetTextAreaColor box\hndl, r2, g2, b2,0
	
	For com.tcommand=Each tcommand
		pos=0
		While Instr(txt,com\name,pos)
			find=Instr(txt,com\name,pos)
			pos=find+Len(com\name)+1
			laenge=Len(com\name)
			If find Then
				FormatTextAreaText box\hndl,com\rgb[1], com\rgb[2], com\rgb[3], com\typ, find-1, laenge
			Else
				Exit
			EndIf
		Wend
	Next
	;operatoren
	txt=hightlight(box\hndl,"==")
	txt=hightlight(box\hndl,"<")
	txt=hightlight(box\hndl,">")
	txt=hightlight(box\hndl,">=")
	txt=hightlight(box\hndl,"<=")
	txt=hightlight(box\hndl,"=")
	txt=hightlight(box\hndl,"+")
	txt=hightlight(box\hndl,"-")
	txt=hightlight(box\hndl,"*")
	txt=hightlight(box\hndl,"/")
	txt=hightlight(box\hndl,"^")
	txt=hightlight(box\hndl,"(")
	txt=hightlight(box\hndl,")")	txt=hightlight(box\hndl,"))")
	txt=hightlight(box\hndl,")))")
	txt=hightlight(box\hndl,"))))")
	txt=hightlight(box\hndl,".")
	txt=hightlight(box\hndl,":")
	txt=hightlight(box\hndl,"&")
	row=TextAreaLen(box\hndl,2 )
	For n=0 To row
			;hier dann einzelne Zeilen formatieren
		ln$=TextAreaText(box\hndl,n,1,2 )
		pos=0
		While pos<=Len(ln$)
			pos=pos+1
			zeichen$=Mid(ln$,pos,1)
			Select zeichen$
				Case Chr(34)
					FormatTextAreaText box\hndl,box\stringcolor[1],box\stringcolor[2],box\stringcolor[3],0,cpos+pos-1,1
					apos=pos
					Repeat
						pos=pos+1
						If pos>=Len(ln$) Then Exit
						zeichen$=Mid(ln$,pos,1)
						FormatTextAreaText box\hndl,box\stringcolor[1],box\stringcolor[2],box\stringcolor[3],0,cpos+pos-1,1
					Until zeichen=Chr(34)
					FormatTextAreaText box\hndl,box\stringcolor[1],box\stringcolor[2],box\stringcolor[3],0,cpos+pos-1,1
					;FormatTextAreaText box\hndl,box\stringcolor[1],box\stringcolor[2],box\stringcolor[3],0,cpos+(apos),cpos+(pos-apos)
				Case ";"
					FormatTextAreaText box\hndl,box\commentcolor[1],box\commentcolor[2],box\commentcolor[3],0,cpos+pos,Len(ln$)-pos
					Exit	
				Default
					If IsDigit(zeichen$)
						FormatTextAreaText box\hndl,box\numcolor[1],box\numcolor[2],box\numcolor[3],0,cpos+pos-1,1
;					ElseIf IsAlpha(zeichen)
;						FormatTextAreaText box\hndl,box\stringcolor[1],box\stringcolor[2],box\stringcolor[3],0,cpos+pos-1,1
					EndIf
			End Select
		Wend
		cpos=cpos+Len(ln$)
	Next
End Function

Function hightlight(hndl,token$)
	txt$=Lower(TextAreaText(box\hndl))
	laenge=Len(token)
	While Instr(txt$,token$,pos)
		find=Instr(txt$,token$,pos)
		pos=find+laenge+1
		FormatTextAreaText box\hndl,box\tokencolor[1],box\tokencolor[2],box\tokencolor[3],0, find-1,laenge
	Wend
	Return txt
End Function

Function set_commentcolor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\commentcolor[1]=r
	box\commentcolor[2]=g
	box\commentcolor[3]=b
End Function

Function set_numcolor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\numcolor[1]=r
	box\numcolor[2]=g
	box\numcolor[3]=b
End Function

Function set_stringcolor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\stringcolor[1]=r
	box\stringcolor[2]=g
	box\stringcolor[3]=b
End Function

Function set_tokencolor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\tokencolor[1]=r
	box\tokencolor[2]=g
	box\tokencolor[3]=b
End Function

Function set_commandcolor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\commandcolor[1]=r
	box\commandcolor[2]=g
	box\commandcolor[3]=b
End Function

Function set_maincolor(hndl,r,g,b,r2,g2,b2) ;vordergrund hintergrund
	box.TTxtbox=Object.TTxtbox(hndl)
	SetTextAreaColor box\hndl, r, g, b,1
	SetTextAreaColor box\hndl, r2, g2, b2,0
	box\fontcolor[1]=r2
	box\fontcolor[2]=g2
	box\fontcolor[3]=b2
End Function

Function create_highlightbox(x,y,w,h,window,Font$="comic sans ms",fonth=25,tabulator=4)
	box.TTxtbox=New TTxtbox
	box\hndl=CreateTextArea(x,y, w,h, window)
	box\txthndl=LoadFont(Font$,fonth)
	box\winhndl=window
	SetTextAreaFont box\hndl,box\txthndl
	SetTextAreaTabs box\hndl, tabulator 
	Return Handle(box)
End Function

Function add_command(hndl,name$,typ=0,r=-1,g=-1,b=-1)
	box.TTxtbox=Object.TTxtbox(hndl)
	com.tcommand=New tcommand
	com\name=name$
	com\typ=typ
	If r=-1 And g=-1 And b=-1
		r=box\commandcolor[1]
		g=box\commandcolor[2]
		b=box\commandcolor[3]
	EndIf
	com\rgb[1]=r
	com\rgb[2]=g
	com\rgb[3]=b
End Function

Function IsDigit( i$ )
	t=Asc(i$)
	Return t>=48 And t<58
End Function


;~IDEal Editor Parameters:
;~F#AE#CA#D4#119#124#12B#132#139#140#147#150#15A#169
;~C#Blitz Plus
;~IDEal Editor Parameters:
;~C#Blitz Plus