Select fn
	Case "chr"
		e=Chr(Paras(0))
	Case "mid"
		If Paras(0)=0
			e=Mid(Paras(0),Paras(1))
		Else
			e=Mid(Paras(0),Paras(1),Paras(2))
		EndIf
	Case "len"
		e=Len(Paras(0))
	Case "right"
		e=Right(Paras(0),Paras(1))
	Case "left"
		e=Left(Paras(0),Paras(1))
	Case "replace"
		e=Replace(Paras(0),Paras(1),Paras(2))
	Case "asc"
		e=Asc(Paras(0))
	Case "instr"
		e=Instr(Paras(0),Paras(1),Paras(2))
	Case "lower"
		e=Lower(Paras(0))
	Case "upper"
		e=Upper(Paras(0))
	Case "lset"
		e=LSet(Paras(0),Paras(1))
	Case "rset"
		e=RSet(Paras(0),Paras(1))
	Case "trim"
		e=Trim(Paras(0))
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D