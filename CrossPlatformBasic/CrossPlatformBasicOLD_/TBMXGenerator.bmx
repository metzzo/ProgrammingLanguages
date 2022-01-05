
Import "Util_CPB.bmx"
SuperStrict

Type TBMXGenerator
	Global AllDatatype:String[]=["int","float","string","byte","short","long","double","string"]
	Field Output:String
	Field ScopeCount:Int
	Field CurrentArray:String, Dimensionen:Int
	Method Generate(InputPath:String, OutputPath:String)
		Local File:TxmlDoc=TxmlDoc.ParseFile(InputPath)
		Output="SuperStrict~n"
		
		Local Root:TxmlNode=File.GetRootElement()
		For Local Node:TxmlNode=EachIn Root.GetChildren()
			Select Node.GetName()
				Case "global"
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="defvar"
								Output:+Vardef(Node2,True)+"~n"
							ElseIf Node2.GetName()="defarray"
								Output:+Arraydef(Node2,True)+"~n"
							EndIf
						Next
					EndIf
				Case "function"
					If (Int(Node.GetAttribute("userfunc")) And Node.GetChildren() And Not Node.HasAttribute("realname")) Or (Not Int(Node.GetAttribute("userfunc")) And Node.GetAttribute("realname")<>Node.GetAttribute("name") And Node.GetAttribute("realname")<>"")
						Local Name:String=Node.GetAttribute("name")
						Local Datatype:String=Node.GetAttribute("type")
						
						Datatype=GetRealDatatype(Datatype)
						If Node.HasAttribute("dimension") And Int(node.getAttribute("dimension"))>0 Datatype:+"[]"
						Local UserFunc:Int=Int(Node.GetAttribute("userfunc"))
						Output:+"~nFunction "+Name+":"+Datatype+"( "
						Local DatatypesText:String
						If Node.GetChildren()
							For Local Node2:TxmlNode=EachIn Node.GetChildren()
								If Node2.GetName()="param"
									Local Datatype:String=GetRealDatatype(Node2.getAttribute("type"))
									If Node2.HasAttribute("dimension") And Int(node2.getAttribute("dimension"))>0 Datatype:+"[]"
									Output:+" _"+Node2.getAttribute("name")+"_:"+Datatype+","
									DatatypesText:+", _"+Node2.getAttribute("name")+"_"
								EndIf
							Next
						EndIf
						Output=Output[0..Output.length-1]
						If UserFunc 
							If Node.GetChildren() And Not Node.HasAttribute("realname")
								Output:+")~n"
								ScopeCount:+1
								For Local Node2:TxmlNode=EachIn Node.GetChildren()
									If Node2.GetName()="code"
										Output:+Block(TxmlNode(Node2))
										Exit
									EndIf
								Next
								ScopeCount:-1
								Output:+"EndFunction~n"
							EndIf
						Else
							Local RealName:String=Node.GetAttribute("realname")
							If Name<>RealName And RealName<>""
								Output:+")~n"
								ScopeCount:+1
								Output:+GetTabs()+RealName+"("+DatatypesText[1..]+")~n"
								ScopeCount:-1
								Output:+GetTabs()+"EndFunction~n"
							EndIf
						EndIf
					EndIf
				Case "deftype"
					Local Name:String=Node.GetAttribute("name")
					If Name<>"object"
						AllDatatype=AllDatatype[..AllDatatype.Length+1]
						AllDatatype[AllDatatype.length-1]=name
						Local Text:String
						Text="Type "+Name+" ~n"
						ScopeCount:+1
						
						Local InitFunc:String
						If Node.GetChildren()
							For Local Node2:TxmlNode=EachIn Node.GetChildren()
								If Node2.GetName()="field"
									Local Array:String=GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))
									Text:+GetTabs()+"Field _"+Node2.GetAttribute("name")+"_:"+Array+"~n"
									
									InitFunc:+GetTabs()+"tmp."+Node2.GetAttribute("name")+" = "+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"~n"
									
								EndIf
							Next
						EndIf
						
						ScopeCount:-1
						Text:+GetTabs()+"EndType~n"
						Output:+Text
						Output:+GetTabs()+"Function new_"+Name.ToUpper()+":"+Name.ToUpper()+"( tmp:"+Name.ToUpper()+" )~n"
						ScopeCount:+1
						Output:+InitFunc
						Output:+GetTabs()+"return tmp~n"
						ScopeCount:-1
						Output:+GetTabs()+"EndFunction~n"
					EndIf
				Case "code"
					Output:+Block(Node)
			EndSelect
		Next
		Output:+"~n" 'Damit keine Fehlermeldung kommt ;)
		
		SaveString(Output, OutputPath)
	EndMethod
	
	Method GetTabs:String()
		Local Text:String
		For Local i:Int=1 To ScopeCount
			Text:+"   "
		Next
		Return Text
	EndMethod
	Method Block:String(Node:TxmlNode)
		Local Output:String
		If  Node.GetChildren()
			For Local Node2:TxmlNode=EachIn Node.GetChildren()
				If Node2.GetName()="line" And Node2.GetFirstChild()
					Local Text:String=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					If Text.length>0
	 					Output:+GetTabs()+Text+"~n"
					EndIf
				EndIf
			Next
		EndIf
		Return Output
	EndMethod
	Method GetNextMathString:String(Node:TxmlNode)
		Local Text:String
		If Node=Null Then Return ""
		Select Node.GetName()
			Case "add","stringadd"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"+"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "sub"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"-"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "div"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"/"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "mul"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"*"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "and"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+" And "
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "or"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+" Or "
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "greater"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+">"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "less"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"<"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "greaterequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+">="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "lessequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"<="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "equal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "notequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"<>"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "pow"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"^"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "int"
				Text=Int(Node.GetAttribute("value"))
			Case "string"
				Text=""+Chr(34)+String(Node.GetAttribute("value"))+Chr(34)+""
			Case "float"
				Text=Float(Node.GetAttribute("value"))
			Case "var","arrayref"
				Text="_"+Node.GetAttribute("name")+"_"
			Case "cast"

				Text=GetRealDatatype(Node.GetAttribute("to"))+"("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
			Case "call"
				Text=Node.GetAttribute("name")+"("
				Local List:TList=Node.GetChildren()
				If List
					Local Tabled:Byte=True
					For Local Node2:TxmlNode=EachIn List
						If Node2.getname()="param"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
							If Node2<>List.last()
								Text=Text+","
							EndIf
						EndIf
						
					Next
				EndIf
				Text:+")"
			Case "local"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="defvar"
						Text:+VarDef(Node2)
					ElseIf Node2.GetName()="defarray"
						Text:+ArrayDef(Node2)
					EndIf
				Next
				Text:+GetNextMathString(Node.NextNode())
			Case "if"
				Text="if ("
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					'DebugStop
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")~n"
						ScopeCount:+1
						Exit
					EndIf
				Next
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"EndIf"
			Case "else"
				ScopeCount:-1
				Text="~n"+GetTabs()+"Else~n"
				ScopeCount:+1
				Text:+Block(Node)
			Case "while"
				Text="While ("
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")~n"
						ScopeCount:+1
						Exit
					EndIf
				Next
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"Wend"
			Case "repeat"
				Text="Repeat~n"
				ScopeCount:+1
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"Until ("
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
						Exit
					EndIf
				Next
			Case "set"
				Local Name:String
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="name"
						Name=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						Text=Name+"="
					EndIf
					If Node2.getname()="value"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndIf
				Next
				If Int(Node.GetAttribute("isarray"))
					Text:+"~n"
					'Text:+GetTabs()+"("+Name[0..Name.length-"->mem".length]+")"
				EndIf
			Case "select"
				Text="Select ("
				ScopeCount:+1
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")~n"
					EndIf
				Next
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"EndSelect"
			Case "case"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"  And Node2.GetFirstChild()
						Text:+"Case "+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"~n"
						ScopeCount:+1
						Text:+Block(Node)
						ScopeCount:-1
						Exit
					EndIf
				Next
			Case "default"
				Text:+"Default~n"
				ScopeCount:+1
				Text:+Block(Node)
				ScopeCount:-1
			Case "break"
				Text="Exit"
			Case "continue"
				Text="Continue"
			Case "for"
				Local StepVar:String
				Local ToVar:String
				Local Start:String
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "forvar"
							For Local Node3:TxmlNode=EachIn Node2.GetChildren()
								If Node3.GetName()="declaration"
									Local Tmp:String=GetNextMathString(TxmlNode(Node3.GetFirstChild()))
									If Tmp.Contains("=") Then Tmp=Tmp[0..Tmp.Find("=")]
									Text="For "+Tmp
								EndIf
							Next
						Case "start"
							Start="="+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						Case "to"
							ToVar=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						Case "step"
							StepVar=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						Default
							Exit
					EndSelect
				Next
				Text:+Start+" To "+TOVar+" Step "+StepVar+"~n"
				ScopeCount:+1
				Text:+Block(node)
				ScopeCount:-1
				Text:+gettabs()+"Next"
			Case "return"
				Text:+"Return "+GetNextMathString(TxmlNode(Node.GetFirstChild()))
			Case "null"
				Text="Null"
			Case "array"
				Local Datatype:String=GetRealDatatype(Node.GetAttribute("type"),Int(Node.GetAttribute("dimension")))
				Text=""+GetNextMathString(TxmlNode(TxmlNode(Node.GetFirstChild()).GetFirstChild()))+""'+GetNextMathString(TxmlNode(TxmlNode(Node.GetLastChild()).GetFirstChild()))+"+1]"
				For Local Child:TxmlNode=EachIn Node.GetChildren()
					If Child.GetName()="dimension"
						Text:+"["+GetNextMathString(TxmlNode(Child.GetFirstChild()))+"]"
					EndIf
				Next
			Case "type"
				Text=""+GetNextMathString(TxmlNode(Node.GetFirstChild()))+""
			Case "access"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text=GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"."
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "new"
				
				Local IsArray:Byte=False
				If Node.GetChildren()
					For Local Dim:TxmlNode=EachIn Node.GetChildren()
						If Dim.GetName()="dim" IsArray:+1
					Next
				EndIf
				Local Obj:String=GetRealDatatype(Node.GetAttribute("type"),IsArray)
				If IsArray
					Local Count:Int
					Text="new "+Obj.ToUpper()+" "
					For Local Dim:TxmlNode=EachIn Node.GetChildren()
						If Dim.GetName()="dim"
							Count:+1
							Text:+"["+GetNextMathString(TxmlNode(Dim.GetFirstChild()))+"]"
						EndIf
					Next
					
				Else
					Text="new "+Obj.ToUpper()+""
				EndIf
				If IsType(Obj) And Not IsArray
					Text="new_"+Obj.ToUpper()+"("+Text+")"
				EndIf
		EndSelect
		Return Text
	EndMethod
	
	Method VarDef:String(Node:TxmlNode, Glob:Int=False)
		Local Name:String, datatype:String
		For Local Att:TxmlAttribute=EachIn Node.GetAttributeList()
			Select Att.GetName()
				Case "name"
					Name=Att.GetValue()
				Case "type"
					Datatype=Att.GetValue()
			EndSelect
		Next
		Local Def:String
		Select Datatype
			Case "int","short", "long", "byte"
				Def="=0"
			Case "float","double"
				Def="=0.0"
			Case "string"
				Def="="+Chr(34)+Chr(34)
		EndSelect
		Datatype=GetRealDatatype(Datatype)
		If Glob
			Return "Global _"+Name+"_:"+Datatype+Def+""
		Else
			Return "Local _"+Name+"_:"+Datatype+Def+""
		EndIf
	EndMethod
	Method ArrayDef:String(Node:TxmlNode, Glob:Int=False)
		Local Name:String, datatype:String, Dim:Int
		For Local Att:TxmlAttribute=EachIn Node.GetAttributeList()
			Select Att.GetName()
				Case "name"
					Name=Att.GetValue()
				Case "type"
					Datatype=GetRealDatatype(Att.GetValue())
				Case "dimension"
					Dim=Int(Att.GetValue())
					For Local i:Int=1 To Dim	
						Datatype:+"[]"
					Next
			EndSelect
		Next
		If Glob
			Return "Global _"+Name+"_:"+Datatype+""
		Else
			Return "Local _"+Name+"_:"+Datatype+""
		EndIf
	EndMethod
	Method GetRealDatatype:String(Typ:String,DimCount:Int=0)
		Local Text:String
		Select Typ
			Case "string"
				Return "String"
			Case "int"
				Return "Int"
			Case "float"
				Return "Float"
			Case "double"
				Return "Double"
			Case "short"
				Return "Short"
			Case "long"
				Return "Long"
			Case "byte"
				Return "Byte"
			Case "void"
				Return "Int"
			Default
				Text=Typ.ToUpper()
		EndSelect
		For Local i:Int=1 To DimCount
			Text:+"[]"
		Next
		Return Text
	EndMethod
	Method IsType:Byte(Typ:String)
		'DebugStop
		Typ=Typ.Replace("*","").ToLower().Replace("cpb_","")
		Select Typ
			Case "string","int","float","void", "double","short","long","byte"
				Return False
			Default
				Return True
		EndSelect
	EndMethod
EndType


