Function CreateAst:TAst(past:TAst,op:TOperator,val1:TToken,val2:TToken)':Object,val2:Object)
	Local ast:TAst=New TAst
	If val1=Null
		val1=CreateToken("astowner")
		val1.ownerast=past
	EndIf
	If val2=Null
		val2=CreateToken("astowner")
		val2.ownerast=past
	EndIf
	ast.value1=val1
	ast.value2=val2
	ast.parent=past
	ast.operator=op
	Return ast
End Function

Type TAst
	Field operator:TOperator
	
	Field value1:TToken'Object 'Kann entweder ein String sein oder ein weiterer Ast
	Field value2:TToken'Object
	Field parent:TAst
	
	Field val:Float 'Das ergebnis, welches beim ausrechnen des Termes herauskommt
	
	
	Method GetValue:TToken[]() 'Soll rekursiv durchsucht werden
		Local tok:TToken[2]
		If isint(Self.value1.text)
			tok[0]=Self.value1
		Else
			tok[0]=Self.value1.ownerast.GetValue()[0]			
		EndIf
		If isint(Self.value2.text)
			tok[1]=Self.value2
		Else
			tok[1]=Self.value2.ownerast.GetValue()[1]
		EndIf
		Return tok
	End Method
	
	Method Calculate:Float()
		Local tok:TToken[2]
		tok[0]=Self.value1
		tok[1]=Self.value2
		
		Local val:Float[2]
		val[0]=Float(tok[0].text)
		val[1]=Float(tok[1].text)
		
		If tok[0].ownerast<>Null
			tok[0].ownerast.calculate()
			val[0]=tok[0].ownerast.val
		EndIf
	
		If tok[1].ownerast<>Null
			tok[1].ownerast.calculate()
			val[1]=tok[1].ownerast.val
		EndIf
		
		Select operator.name
			Case "+"
				Self.val=val[0]+val[1]
			Case "-"
				Self.val=val[0]-val[1]
			Case "*"
				Self.val=val[0]*val[1]
			Case "/"
				Self.val=val[0]/val[1]
			Case "^"
				Self.val=val[0]^val[1]
				
		End Select
		
		Return Self.val
	End Method
End Type
