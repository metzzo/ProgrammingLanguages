
Include "syntaxengine.bb"

;Gui initialisieren
Global EditWindow

EditWindow=CreateWindow("IDE",50,50,892,695,0,7-2)
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
Add_CommandSet(textarea)


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
		Case $1001
			Select EventData()
				Case 6
					End
				Case 3
					Compile(textarea)
			End Select
	End Select
	Update_Txtbox(textarea)
Forever

Function Compile(hndl)
	file=WriteFile("script.txt")
	box.TTxtbox=Object.TTxtbox(hndl)
	For i=0 To TextAreaLen(box\hndl,2)
		WriteString file,Trim(Replace(TextAreaText(box\hndl,i,1,2),"\n",""))
	Next
	CloseFile file
	ExecFile("NDSBasic-Compiler.exe")
End Function
;~IDEal Editor Parameters:
;~C#Blitz+