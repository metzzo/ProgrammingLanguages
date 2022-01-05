Rem
	Folgene Opertoren gibt es:
	+,-,*,/,^: Grundrechenarten
	(): Klammern, Vorrangregeln
	: Type Zuweisung
	.: Type Operator (meinevar.x=4)
	+: String Verknüpfer
	<,>,==,=>,=< Größer(gleich), kleiner(gleich), gleich
	=: Variablen Zuordnung
	|| Oder
	&& UNd
	! not
	% Modulo
	~ Xor
End Rem


'Operatoren
Global OperatorList:TList=CreateList() 'In dieser Liste sind alle Operatoren

Function CreateOperator:TOperator(name:String,prio:Int)
	Local op:TOperator=New Toperator
	op.Create(name,prio)
	Return op
End Function

Function OperatorFind:TOperator(name:String)
	For Local op:TOperator=EachIn operatorlist
		If op.name=name Then Return op
	Next
End Function

Type TOperator
	Field Priority:Byte 'Wie wichtig der Byte ist '0=Sehr wichtig 255=Am unwichtigsten
	Field name:String
	
	Method Create(name:String,prio:Byte)
		Self.Priority=prio
		Self.name=name
	End Method
	
	Method Tokenize:String()
		'Hier wird der Operator als Token zurückgegeben
		Select Self.name
			Case "("
				Return "BRACKET"
			Case ")"
				Return "ENDBRACKET"
			Case "}"
				Return "ENDSCOPE" 
			Case "{"
				Return "BEGINSCOPE"
			Case ":"
				Return "AS"
			Case "."
				Return "FROM"	
			Default
				Return "OPERATOR "+Self.name
		End Select
		Return ""
	End Method
	

	
	Method New()
		ListAddLast Operatorlist,Self
	End Method
	Method Delete()
		ListRemove Operatorlist,Self
	End Method
End Type

Function OperatorCompare:Byte (other:Object,other2:Object)
	If Not TOperator(other) Or Not TOperator(other2) Then Return 0
	
	Local o:TOperator = TOperator (other)
	Local o2:TOperator= TOperator(other2)
	If o.Priority > o2.Priority 
		Return 1
	ElseIf o.Priority  < o2.Priority 
		Return -1
	EndIf
	Return 0
End Function
