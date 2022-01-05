;Dims

;Includes

;Types
Type TTxtbox
	Field x,y
	Field width,height
	Field hndl
	Field winhndl
	Field txthndl
	Field lasttxt$
	Field lastupdate
	Field bgcolor[3]
	Field fontcolor[3]
	Field commandcolor[3]
	Field tokencolor[3]
	Field numcolor[3]
	Field commentcolor[3]
	Field stringcolor[3]
End Type
Global box.TTxtbox

Type TCommand
	Field name$
	Field typ ;ob es italic oder bold ist
	Field rgb[3]
End Type
Global com.TCommand
;Globale Variablen


;Gui initialisieren
Global EditWindow
Global teaTextArea0

Global OFile$=CurrentDir()+"new.sb"
Global streamfile

EditWindow=CreateWindow("Simple Script 2 IDE",50,50,892,695,0,7-2)
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
textarea = Create_HighlightBox(0,0,880,630,EditWindow)
;SetGadgetLayout box\hndl, 2,2,2,2
set_MainColor(textarea,255,255,255,20,20,245)
Set_CommandColor(textarea,255,10,10)
Set_TokenColor(textarea,18,56,237)
Set_StringColor(textarea,255,128,0)
Set_NumColor(textarea,64,128,128)
Set_CommentColor(textarea,140,140,140)
;Befehle
;Keywords
Add_Command(textarea,"CONST",1)
Add_Command(textarea,"RETURN",1)
Add_Command(textarea,"NEW",1)
Add_Command(textarea,"DELETE",1)
Add_Command(textarea,"AS",1)
Add_Command(textarea,"ENDIF",1)
Add_Command(textarea,"IF",1)
Add_Command(textarea,"ELSE",1)
Add_Command(textarea,"ELSEIF",1)
Add_Command(textarea,"THEN",1)
Add_Command(textarea,"WHILE",1)
Add_Command(textarea,"WEND",1)
Add_Command(textarea,"LOCAL",1)
Add_Command(textarea,"GLOBAL",1)
Add_Command(textarea,"FUNCTION",1)
Add_Command(textarea,"END FUNCTION",1)
Add_Command(textarea,"ENDFUNCTION",1)
Add_Command(textarea,"REPEAT",1)
Add_Command(textarea,"FOREVER",1)
Add_Command(textarea,"FOR",1)
Add_Command(textarea,"NEXT",1)
Add_Command(textarea,"UNTIL",1)
Add_Command(textarea,"EXIT",1)
Add_Command(textarea,"TRUE",1)
Add_Command(textarea,"FALSE",1)
Add_Command(textarea,"LABEL",1)
Add_Command(textarea,"END",1)
Add_Command(textarea,"GOTO",1)


Add_Command(textarea,"Print")
Add_Command(textarea,"KeyHit")
Add_Command(textarea,"KeyDown")
Add_Command(textarea,"WaitKey")
Add_Command(textarea,"Import")
Add_Command(textarea,"ImportAll")
Add_Command(textarea,"FlushKeys")
Add_Command(textarea,"FlushMouse")
Add_Command(textarea,"GetKey")
Add_Command(textarea,"MouseDown")
Add_Command(textarea,"MouseHit")
Add_Command(textarea,"MouseX")
Add_Command(textarea,"MouseY")
Add_Command(textarea,"MouseZ")
Add_Command(textarea,"GetMouse")
Add_Command(textarea,"SetMouseMode")
Add_Command(textarea,"WaitMouse")
Add_Command(textarea,"MouseXSpeed")
Add_Command(textarea,"MouseYSpeed")
Add_Command(textarea,"MouseZSpeed")
Add_Command(textarea,"MoveMouse")
Add_Command(textarea,"MouseWait")
Add_Command(textarea,"JumpToLine",0)
Add_Command(textarea,"DelFunction")
Add_Command(textarea,"AddFunction")
Add_Command(textarea,"Delay",0)
;add_command(textarea,"")

;Mathe
Add_Command(textarea,"Sin")
Add_Command(textarea,"Cos")
Add_Command(textarea,"Tan")
Add_Command(textarea,"Atan")
Add_Command(textarea,"Atan2")
Add_Command(textarea,"Rand")
Add_Command(textarea,"Rnd")
Add_Command(textarea,"Abs")
Add_Command(textarea,"Acos")
Add_Command(textarea,"Asin")
Add_Command(textarea,"Ceil")
Add_Command(textarea,"Exp")
Add_Command(textarea,"Float")
Add_Command(textarea,"Floor")
Add_Command(textarea,"Int")
Add_Command(textarea,"Log")
Add_Command(textarea,"Log10")
Add_Command(textarea,"PI")
Add_Command(textarea,"Sgn")
Add_Command(textarea,"Sqr")

;klassen:
Add_Command(textarea,"TImage",0)
Add_Command(textarea,"Graphics",0)
Add_Command(textarea,"Flip",0)
Add_Command(textarea,"SetBuffer",0)
Add_Command(textarea,"BackBuffer",0)
Add_Command(textarea,"Cls",0)
Add_Command(textarea,"Text",0)
Add_Command(textarea,"Draw",0)
Add_Command(textarea,"Load",0)
Add_Command(textarea,"Oval",0)
Add_Command(textarea,"Rect",0)
Add_Command(textarea,"Fps",0)
Add_Command(textarea,"RectsOverlap",0)
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
		Case $401;gadget action
			Select EventSource()
				Case textarea
					Update_Txtbox(textarea)
			End Select
			
		Case $803									; close gadget
			Exit
			
		Case $1001								; selected a menu
			DoMenuAction( EventData() ,textarea)
	End Select
	
	Update_Txtbox(textarea)
Forever
Function DoMenuAction( menuid ,textarea)
	box.TTxtbox=Object.TTxtbox(textarea)
	If box.TTxtbox=Null Then RuntimeError "Fehler!"
	Select menuid
		Case 6
			If Confirm("M�chten Sie wirklich beenden?") Then End
		Case 4
			If Confirm("Wirklich ein neues Projekt erstellen?") Then SetGadgetText box\hndl,""
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
			OFile= RequestFile ("Welche Datei m�chten Sie laden?")
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
Function Init()
	Quicksort_Start()
End Function

Function Update_Txtbox(hndl)
	box.TTxtbox=Object.TTxtbox(hndl)
	
	
	If MilliSecs()-box\lastupdate>1000
		box\lastupdate=MilliSecs()
		For n=0 To TextAreaLen(box\hndl,2)
			txt$=Lower(TextAreaText(box\hndl,n,1,2))
			FormatTextAreaText box\hndl,0,0,0,0,n,1,2
			com=Last TCommand
			Repeat
				pos=0
				While Instr(Lower(txt),Lower(com\name),pos)
					find=Instr(txt,Lower(com\name),pos)
					pos=find+Len(com\name)
					laenge=Len(com\name)
					If find And (Instr(txt,";")=0 Or find<Instr(txt,";")) Then
						SetTextAreaText box\hndl,com\name, TextAreaChar(box\hndl,n)+find-1, laenge
						FormatTextAreaText box\hndl,com\rgb[1], com\rgb[2], com\rgb[3], com\typ, TextAreaChar(box\hndl,n)+find-1, laenge
					Else
						Exit
					EndIf
				Wend
				com=Before com
			Until com=Null
			Update_Highlight(box,n)
		Next
	EndIf
	
	txt$=Lower(TextAreaText(box\hndl,TextAreaCursor (box\hndl,2),1,2))
	If txt<>box\lasttxt
		FormatTextAreaText box\hndl,0,0,0,0, TextAreaCursor (box\hndl,2),1,2
		
		com=Last TCommand
		Repeat
			pos=0
			While Instr(Trim(Lower(txt)),Lower(com\name),pos)
				find=Instr(txt,Lower(com\name),pos)
				pos=find+Len(com\name)
				laenge=Len(com\name)
				If find And (Instr(txt,";")=0 Or find<Instr(txt,";")) Then
					SetTextAreaText box\hndl,com\name, TextAreaChar(box\hndl,TextAreaCursor (box\hndl,2))+find-1, laenge
					FormatTextAreaText box\hndl,com\rgb[1], com\rgb[2], com\rgb[3], com\typ, TextAreaChar(box\hndl,TextAreaCursor (box\hndl,2))+find-1, laenge
				Else
					Exit
				EndIf
			Wend
			com=Before com
		Until com=Null
		Update_Highlight(box,TextAreaCursor (box\hndl,2))
	EndIf
	
	box\lasttxt=txt
End Function

Function Update_Highlight(box.TTxtbox,n)
	;hier dann einzelne Zeilen formatieren
	cpos=TextAreaChar(box\hndl,n)
	ln$=TextAreaText(box\hndl,n,1,2)
	pos=0
	;operatoren
	txt=Hightlight(box\hndl,"<",n)
	txt=Hightlight(box\hndl,">",n)
	txt=Hightlight(box\hndl,"=",n)
	txt=Hightlight(box\hndl,"+",n)
	txt=Hightlight(box\hndl,"-",n)
	txt=Hightlight(box\hndl,"*",n)
	txt=Hightlight(box\hndl,"/",n)
	txt=Hightlight(box\hndl,"^",n)
	txt=Hightlight(box\hndl,"(",n)
	txt=Hightlight(box\hndl,")",n)
	txt=Hightlight(box\hndl,".",n)
	txt=Hightlight(box\hndl,":",n)
	txt=Hightlight(box\hndl,"&",n)
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
			Case ";"
				FormatTextAreaText box\hndl,box\commentcolor[1],box\commentcolor[2],box\commentcolor[3],0,cpos+pos,Len(ln$)-pos
				Exit	
			Default
				If IsDigit(zeichen$)
					FormatTextAreaText box\hndl,box\numcolor[1],box\numcolor[2],box\numcolor[3],0,cpos+pos-1,1
				EndIf
		End Select
	Wend
	cpos=cpos+Len(ln$)
End Function

Function Hightlight(hndl,token$,row)
	txt$=Lower(TextAreaText(box\hndl,row,1,2))
	laenge=Len(token)
	While Instr(txt$,token$,pos)
		find=Instr(txt$,token$,pos)
		pos=find+laenge
		FormatTextAreaText box\hndl,box\tokencolor[1],box\tokencolor[2],box\tokencolor[3],0,TextAreaChar (box\hndl,row)+find-1,laenge,1
	Wend
	Return txt
End Function

Function Set_CommentColor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\commentcolor[1]=r
	box\commentcolor[2]=g
	box\commentcolor[3]=b
End Function

Function Set_NumColor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\numcolor[1]=r
	box\numcolor[2]=g
	box\numcolor[3]=b
End Function

Function Set_StringColor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\stringcolor[1]=r
	box\stringcolor[2]=g
	box\stringcolor[3]=b
End Function

Function Set_TokenColor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\tokencolor[1]=r
	box\tokencolor[2]=g
	box\tokencolor[3]=b
End Function

Function Set_CommandColor(hndl,r,g,b)
	box.TTxtbox=Object.TTxtbox(hndl)
	box\commandcolor[1]=r
	box\commandcolor[2]=g
	box\commandcolor[3]=b
End Function

Function set_MainColor(hndl,r,g,b,r2,g2,b2) ;vordergrund hintergrund
	box.TTxtbox=Object.TTxtbox(hndl)
	SetTextAreaColor box\hndl, r, g, b,1
	SetTextAreaColor box\hndl, r2, g2, b2,0
	box\fontcolor[1]=r2
	box\fontcolor[2]=g2
	box\fontcolor[3]=b2
End Function

Function Create_HighlightBox(x,y,w,h,window,Font$="comic sans ms",fonth=25,tabulator=4)
	box.TTxtbox=New TTxtbox
	box\hndl=CreateTextArea(x,y, w,h, window)
	box\txthndl=LoadFont(Font$,fonth)
	box\winhndl=window
	SetTextAreaFont box\hndl,box\txthndl
	SetTextAreaTabs box\hndl, tabulator 
	Return Handle(box)
End Function

Function Add_Command(hndl,name$,typ=0,r=-1,g=-1,b=-1)
	box.TTxtbox=Object.TTxtbox(hndl)
	com.TCommand=New TCommand
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

Function Quicksort_Start()
	a.tcommand= First TCommand
	b.tcommand= Last TCommand
	If a.tcommand = Null  Return
		If a <> b Then Quicksort(a.tcommand,b.tcommand)
End Function

Function Quicksort(a.TCommand,b.TCommand)
	s2.tcommand = a.TCommand
	s3.tcommand = a.TCommand
	Repeat
		s1.tcommand=After s2.tcommand
		If Len(s1\name)< Len(a\name) Then
			If s1 = b.TCommand Then
				b.TCommand=Before s1
				GoOut = 1
			Else
				s2= Before s1
			End If
			Insert S1.tcommand Before a.TCommand
			If s3.tcommand = a.TCommand Then s3.tcommand=s1.tcommand
		Else
			If s1.tcommand= b.TCommand Then Exit
			s2.tcommand = s1
		End If
	Until goout
	If s3.tcommand <> a.tcommand
		s1 = Before a.tcommand
		If s1<> s3 Then Quicksort(s3.tcommand,s1.tcommand)
	End If
	If a.tcommand <> b.tcommand
		s1 = After a.tcommand
		If s1 <> b Then Quicksort(s1.tcommand,b.tcommand)
	End If
End Function 

;~IDEal Editor Parameters:
;~C#Blitz Plus
;~IDEal Editor Parameters:
;~C#Blitz Plus