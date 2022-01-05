Select fn
	Case "waitkey"
		e=WaitKey()
	Case "keyhit"
		e=KeyHit(Paras(0))
	Case "keydown"
		e=KeyDown(Paras(0))
	Case "mousedown"
		e=MouseDown(Paras(0))
	Case "mousehit"
		e=MouseHit(Paras(0))
	Case "showpointer"
		Select Paras(0)
			Case 0
				e=0
				ShowPointer()
			Case 1
				e=1
				HidePointer
		End Select
	Case "movemouse"
		MoveMouse(Paras(0),Paras(1))
	Case "flushkeys"
		FlushKeys()
	Case "getkey"
		e=GetKey()
	Case "mousex"
		e=MouseX()
	Case "mousey"
		e=MouseY()
	Case "mousez"
		e=MouseZ()
	Case "mousexspeed"
		e=MouseXSpeed()
	Case "mouseyspeed"
		e=MouseYSpeed()
	Case "mousezspeed"
		e=MouseZSpeed()
	Case "getmouse"
		e=GetMouse()
	Case "mousewait"
		e=MouseWait()
	Case "waitmouse"
		e=WaitMouse()
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D