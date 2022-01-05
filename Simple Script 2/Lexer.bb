Type TKeyChar
	Field txt$
End Type

Const MAXOPERATORLEN=10 ;Die maximale länge von den Operatoren

CreateKeyChar("+")
CreateKeyChar("-")
CreateKeyChar("*")
CreateKeyChar("/")
CreateKeyChar("=")
CreateKeyChar("&&")
CreateKeyChar("end")
CreateKeyChar("endif")
CreateKeyChar("if")

Tokenize("200+565*2")
Tokenize("if 1=1")
Tokenize("end")
Tokenize("endif")
Tokenize("1+1")

WaitKey

Function Tokenize(txt$)
	Local Lastletter=1
	Local Nowletter
	Local token$
	Local key.TKeyChar
	While Nowletter<Len(txt)
		Nowletter=Nowletter+1
		token=Mid(txt,Lastletter,Nowletter-Lastletter)
		;Schauen ob es ein Keyword ist
		For key.TKeyChar=Each TKeyChar
			If key\txt=token Then 
				Print key\txt ;Statt Print kann man hier die Token erzeugen, dafür bin ich jetzt zu faul
				Lastletter=Nowletter
			EndIf
			
			;Nun die 1 teiligen Operatoren überprüfen
			
			If Right(token,1)=key\txt
				Print Mid(token,1,Len(token)-2)
				Print key\txt
				Lastletter=Nowletter
			EndIf
			
			;nun schauen ob es am Ende der Zeile ist
		Next
	Wend
End Function

Function CreateKeyChar(txt$)
	Local key.TKeyChar=New TKeyChar
	key\txt=txt
End Function

;Mit diesen BEfehlen kannst du überprüfen ob sie Ints oder Floats sind ;)
Function isint(name$)
	For i=1 To Len(name)
		a =Asc(Mid(name,i,1))
		If a<48 Or a>57
			Return 0
		EndIf
	Next
	Return 1
End Function

Function isfloat(name$)
	For i=1 To Len(name)
		a =Asc(Mid(name,i,1))
		If(a<48 Or a>57) And a<>46
			Return 0
		EndIf
	Next
	Return 1
End Function

;~IDEal Editor Parameters:
;~C#Blitz3D