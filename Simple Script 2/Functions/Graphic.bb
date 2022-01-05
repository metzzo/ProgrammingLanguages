Select fn
	Case "cls"
		Cls
	Case "flip"
		Flip Paras(0)
	Case "setbuffer"
		SetBuffer Int(Paras(0))
	Case "backbuffer"
		e=BackBuffer()
	Case "graphics"
		Graphics Paras(0),Paras(1),Paras(2),Paras(3)
	Case "text"
		Text Paras(2),Paras(1),Paras(0),Paras(3),Paras(4)
	Case "fps"
		e=fps()
	Case "rect"
		Rect Paras(0),Paras(1),Paras(2),Paras(3)
	Case "oval"
		Oval Paras(0),Paras(1),Paras(2),Paras(3)
	Case "rectsoverlap"
		e=RectsOverlap(Paras(0),Paras(1),Paras(2),Paras(3),Paras(4),Paras(5),Paras(6),Paras(7))
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D