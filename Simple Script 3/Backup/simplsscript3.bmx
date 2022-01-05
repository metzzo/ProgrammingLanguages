SuperStrict

Const DEBUG:Byte=1

Global KeyCharCount:Int=21 'So viele Operatoren gibt es
Global KeyChar:String[22]
KeyChar:String[0]="+"
KeyChar:String[1]="-"
KeyChar:String[2]="*"
KeyChar:String[3]="/"
KeyChar:String[4]="^"
KeyChar:String[5]="("
KeyChar:String[6]=")"
KeyChar:String[7]=":"
KeyChar:String[8]=Chr(34)
KeyChar:String[9]="."
KeyChar:String[10]="=="
KeyChar:String[11]="<="
KeyChar:String[12]=">="
KeyChar:String[13]="<"
KeyChar:String[14]=">"
KeyChar:String[15]="<>"
KeyChar:String[16]="="
KeyChar:String[17]="&&"
KeyChar:String[18]="||"
KeyChar:String[19]="%"
KeyChar:String[20]="!"
KeyChar:String[21]="^^"
Rem
	Folgene Opertoren gibt es:
	+,-,*,/,^: Grundrechenarten
	(): Klammern, Vorrangregeln
	: Type Zuweisung
	": String Start
	.: Type Operator (meinevar.x=4)
	+: String Verknüpfer
	<,>,==,=>,=< Größer(gleich), kleiner(gleich), gleich
	=: Variablen Zuordnung
	|| Oder
	&& UNd
	! not
	% Modulo
	^^ Xor
End Rem
Global KeywordCount:Int=12
Global Keyword:String[13]
KeyWord[0]="{"
KeyWord[1]="}"
KeyWord[2]="if"
KeyWord[3]="else"
KeyWord[4]="elseif"
KeyWord[5]="local"
KeyWord[6]="global"
KeyWord[7]="until"
KeyWord[8]="for"
KeyWord[9]="while"
KeyWord[10]="inlinebytecode"
KeyWord[11]="new"
KeyWord[12]="function"

Local func:Tfunction=createFunction("print",1)
func.func=Outputtext

Local script:TScript=New TScript
script.Load("Script/script.ss3")

script.AddFunction(func)

script.Scan()

script.Compile()

Function OutputText()
	Print "Hallo"
End Function

Type TScript
	Field Lines:Int 'Wie viele Zeilen es gibt
	Field rowlist:TList=CreateList()
	Field TokenList:TList=CreateList()
	Field Bytecodelist:TList=CreateList()
	Field functionlist:TList=CreateList()
	
	Method Load(Pfad:String)
		Local stream:TStream=ReadFile(Pfad)
		Repeat
			ListAddLast(Self.rowlist,ReadLine(stream))
		Until Eof(stream)
	End Method
	
	Method Scan()
		For Local row:String=EachIn Self.rowlist
			Self.ScanLine(row)
		Next
	End Method
	
	Method Compile()
		For Local token:TToken=EachIn Self.Tokenlist
			Local i:Int
			'Nach Keywords suchen
			For i=0 To KeywordCount
				If KeyWord[i]=token.text
					Print "Keyword gefunden: "+token.text
				EndIf
			Next
			'Nach Operatoren suchen
			For i=0 To KeyCharCount
				If Keychar[i]=token.text
					Print "Operator gefunden: "+token.text
				EndIf
			Next
			'Nach normalen Funktionen suchen
			For Local func:TFunction=EachIn Self.functionlist
				If func.name=token.text
					Print "Funktion gefunden!"
				EndIf
			Next
			'Das Bytecode hat keine Übereinstimmung
		Next
	End Method
	
	Method ScanLine(line:String)
		Local Lastfound:Int=1
		For Local i:Int=1 To Len(line)
			Local str:String=Mid(line,Lastfound,i-Lastfound)
			Local com1:String=Mid(line,i,1)
			Local com2:String=Mid(line,i,2)
			If Len(com2)<2 Then com2:+" "
			If com1=Chr(34) 'Das nimmt eine Sonderpositionein ;)
				Local oldi:Int=i+1
				Repeat
					i:+1
				Until Mid(line,i,1)=Chr(34)' Or i>Len(line)
				str=Mid(line,oldi,i-oldi)
				ListAddLast(Self.TokenList,Createtoken(Chr(34)+str+Chr(34)))
				com1=""'Chr(34)
				com2=""
				str=""
				lastfound=i
			Else
				For Local i2:Int=0 To KeyCharCount
					If com1=KeyChar[i2]
						lastfound=i+1
						'Ein Operator wurde gefunden!
						Local token:TToken=Createtoken(Lower(Trim(str)))
						If token<>Null
							ListAddLast(Self.TokenList,token)
						EndIf
						token=Createtoken(Lower(Trim(com1)))
						If token<>Null
							ListAddLast(Self.TokenList,token)
						EndIf
					EndIf
					If com2=KeyChar[i2]
						'Ein Operator wurde gefunden!
						lastfound=i+2
						Local token:TToken=Createtoken(Lower(Trim(str)))
						If token<>Null
							ListAddLast(Self.TokenList,token)
						EndIf
						token=Createtoken(Lower(Trim(com2)))
						If token<>Null
							ListAddLast(Self.TokenList,token)
						EndIf
					EndIf
				Next
			EndIf

		Next
	End Method
	
	Method AddFunction(func:Tfunction)
		ListAddLast(Self.functionlist,func)
	End Method
End Type

Function CreateToken:TToken(text:String)
	If text<>"" And text<>Chr(34)
		Local token:TToken=New TToken  
		token.text=text 
		If debug 
			Print "Token mit dem Text: "+text 
		EndIf 
		Return token
	EndIf
End Function

Type TToken
	Field text:String 'Die Parameter
End Type

Function CreateFunction:TFunction(Name:String,Parameter:Byte)
	Local func:TFunction=New TFunction
	func.name=name
	func.parameter=parameter
	
	Return func
End Function

Type TFunction
	Field name:String
	Field Parameter:Byte 'Wie viele Parameter es ibn der Funktion gibt
	Field func()
End Type

