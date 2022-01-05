Import bah.libxml
Import "Util_CPB.bmx"
SuperStrict

Type TCGenerator
	Field Output:String
	Field ScopeCount:Int
	Field CurrentArray:String
	Method Generate(InputPath:String, OutputPath:String)
		Local File:TxmlDoc=TxmlDoc.ParseFile(InputPath)
		Output="#include "+Chr(34)+"clib/main.c"+Chr(34)+"~n"
		
		Local Root:TxmlNode=File.GetRootElement()
		For Local Node:TxmlNode=EachIn Root.GetChildren()
			Select Node.GetName()
				Case "global"
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="defvar"
								Output:+Vardef(Node2)+"~n"
							EndIf
						Next
					EndIf
				Case "function"
					Local Name:String=Node.GetAttribute("name")
					Local Datatype:String=Node.GetAttribute("type")
					
					Datatype=GetRealDatatype(Datatype)
					If Node.HasAttribute("dim") And Int(node.getAttribute("dim")) Datatype="CPB_ARRAY "
					Local UserFunc:Int=Int(Node.GetAttribute("userfunc"))
					Output:+"~n"+Datatype+" "+Name+"( "
					Local DatatypesText:String
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="param"
								If Node2.HasAttribute("dim") 
									Output:+"CPB_ARRAY "+Node2.getAttribute("name")+","
								Else
									Local Datatype:String=GetRealDatatype(Node2.getAttribute("type"))
									Output:+Datatype+" "+Node2.getAttribute("name")+","
								EndIf
								DatatypesText:+", "+Node2.getAttribute("name")
							EndIf
						Next
					EndIf
					Output=Output[0..Output.length-1]
					If UserFunc 
						If Node.GetChildren() And Not Node.HasAttribute("realname")
							Output:+") {~n"
							ScopeCount:+1
							For Local Node2:TxmlNode=EachIn Node.GetChildren()
								If Node2.GetName()="code"
									Output:+Block(TxmlNode(Node2))
									Exit
								EndIf
							Next
							ScopeCount:-1
							Output:+"}~n"
						Else
							Output:+");~n"
						EndIf
					Else
						Local RealName:String=Node.GetAttribute("realname")
						If Name<>RealName And RealName<>""
							Output:+") {~n"
							ScopeCount:+1
							Output:+GetTabs()+RealName+"("+DatatypesText[1..]+");~n"
							ScopeCount:-1
							Output:+GetTabs()+"}~n"
						Else
							Output:+");~n"
						EndIf
					EndIf
				Case "code"
					Output:+GetTabs()+"int main() {~n"
					ScopeCount:+1
					Output:+GetTabs()+"GC_INIT();;~n"
					Output:+Block(Node)
					ScopeCount:-1
					Output:+GetTabs()+"}"
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
						If Text[Text.length-1..Text.Length]=";" Or Text[Text.length-1..Text.Length]="}"  Or Text[Text.length-1..Text.Length]="{" Or Text[Text.length-1..Text.Length]="~n"
	 						Output:+GetTabs()+Text+"~n"
						Else
							Output:+GetTabs()+Text+";~n"
						EndIf
					EndIf
				EndIf
			Next
		EndIf
		Return Output
	EndMethod
	Method GetNextMathString:String(Node:TxmlNode)
		Local Text:String
		Select Node.GetName()
			Case "stringadd"
				Text="joinstr("
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+","
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
				Text:+")"
			Case "add"
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
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+" && "
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "or"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+" || "
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
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"=="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
			Case "notequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"!="
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
			Case "var"
				Text=Node.GetAttribute("name")
			Case "arrayref"
				Text=Node.GetAttribute("name")
			Case "cast"
				Local CastFrom:String=Node.GetAttribute("from")
				Local CastTo:String=Node.GetAttribute("to")
				If CastTO="string"
					If CastFrom="int"
						Text="int2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
					Else
						Text="float2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
					EndIf
				ElseIf CastFrom="string"
					If CastTo="int"
						Text="string2int("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
					Else
						Text="string2float("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
					EndIf
				Else
					Text="("+Node.GetAttribute("to")+")("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
				EndIf
			Case "call"
				Text=Node.GetAttribute("name")+"("
				Local List:TList=Node.GetChildren()
				If List
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
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+") {~n"
						ScopeCount:+1
						Exit
					EndIf
				Next
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"}"
			Case "else"
				ScopeCount:-1
				Text="~n"+GetTabs()+"} else {~n"
				ScopeCount:+1
				Text:+Block(Node)
			Case "while"
				Text="while ("
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+") {~n"
						ScopeCount:+1
						Exit
					EndIf
				Next
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"}"
			Case "repeat"
				Text="do {~n"
				ScopeCount:+1
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"} while (!("
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"));"
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
					Text:+";~n"
					'Text:+GetTabs()+"("+Name[0..Name.length-"->mem".length]+")"
				EndIf
			Case "select"
				Text="switch ("
				ScopeCount:+1
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+") {~n"
					EndIf
				Next
				Text:+Block(Node)
				ScopeCount:-1
				Text:+GetTabs()+"}"
			Case "case"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="condition"  And Node2.GetFirstChild()
						Text:+"case "+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+":~n"
						ScopeCount:+1
						Text:+Block(Node)
						Text:+GetTabs()+"break;~n"
						ScopeCount:-1
						Exit
					EndIf
				Next
			Case "default"
				Text:+"default:~n"
				ScopeCount:+1
				Text:+Block(Node)
				ScopeCount:-1
			Case "break"
				Text="break"
			Case "continue"
				Text="continue"
			Case "for"
				Text="for ("
				Local Variable:String
				Local StepVar:String
				Local ToVar:String
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "forvar"
							For Local Node3:TxmlNode=EachIn Node2.GetChildren()
								If Node3.GetName()="declaration"
									Local Tmp:String=GetNextMathString(TxmlNode(Node3.GetFirstChild()))
									'If Tmp.Contains("=") Then Tmp=Tmp[0..Tmp.Find("=")]
									Text=Tmp+";~n"+GetTabs()+"for ("
								Else'If Node3.GetName()="var"
									Variable=GetNextMathString(TxmlNode(Node3.GetFirstChild()))
									Text:+Variable
								EndIf
							Next
						Case "start"
							Text:+"="+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+";"
						Case "to"
							ToVar=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						Case "step"
							StepVar=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						Default
							Exit
					EndSelect
				Next
				Local Tok:String
				If Stepvar>0
					Tok="<"
				Else 
					Tok=">"
				EndIf
				Text:+Variable+Tok+ToVar+";"+Variable+"+="+StepVar+") {~n"
				ScopeCount:+1
				Text:+Block(node)
				ScopeCount:-1
				Text:+gettabs()+"}"
			Case "return"
				Text:+"return "+GetNextMathString(TxmlNode(Node.GetFirstChild()))
			Case "null"
				Text="NULL"
			Case "dimarray"
				Node=TxmlNode(Node.GetFirstChild())
				Local Name:String
				Local StartVal:String
				Local InitSize:String, InitSize2:String
				Local Datatype:String=GetRealDatatype(Node.GetAttribute("type"))
				Local Count:Int
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If node2.GetName()="name"
						Name=GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					ElseIf Node2.GetName()="dim"
						Count=Int(Node2.GetAttribute("count"))
						Local i:Int=0
						For Local Node3:TxmlNode=EachIn Node2.GetChildren()
							InitSize:+GetTabs()+"int ___"+Name+"___tmp"+i+"="+GetNextMathString(TxmlNode(Node3.GetFirstChild()))+";~n"
							i:+1
						Next
						i=0
						For Local Node3:TxmlNode=EachIn Node2.GetChildren()
							InitSize2:+GetTabs()+"((int*)((int*)((int*)"+Name+")[0])["+i+"])=___"+Name+"___tmp"+i+";~n"
							i:+1
						Next
					EndIf
				Next
				For Local i:Int=1 To Count
					If i>1 Then StartVal:+"*"
					StartVal:+"___"+Name+"___tmp"+(i-1)
				Next
				Text:+"~n"+InitSize
				Text:+GetTabs()+Name+"=GC_malloc(("+StartVal+")*sizeof("+Datatype+")+1*sizeof(int));~n"
				Text:+GetTabs()+"((int*)((int*)"+Name+")[0])=GC_MALLOC("+Count+"*sizeof(int));~n"
				Text:+InitSize2
				
			Case "array"
				Local Datatype:String=GetRealDatatype(Node.GetAttribute("type"))
				Local Tmp:String=CurrentArray
				CurrentArray=GetNextMathString(TxmlNode(TxmlNode(Node.GetFirstChild()).GetFirstChild()))
				Text="(("+Datatype+"*)"+CurrentArray+")"+"["+GetNextMathString(TxmlNode(TxmlNode(Node.GetLastChild()).GetFirstChild()))+"+1]"
				CurrentArray=Tmp
			Case "getarraysize"
				Text="getsizearray("+CurrentArray+","+Node.GetAttribute("dimension")+")"
		EndSelect
		Return Text
	EndMethod
	
	Method VarDef:String(Node:TxmlNode)
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
			Case "int"
				Def="=0"
			Case "float"
				Def="=0.0f"
			Case "string"
				Def="="+Chr(34)+Chr(34)
		EndSelect
		Datatype=GetRealDatatype(Datatype)
		Return datatype+" "+Name+Def+";"
	EndMethod
	Method ArrayDef:String(Node:TxmlNode)
		Local Name:String, datatype:String, Dim:Int
		For Local Att:TxmlAttribute=EachIn Node.GetAttributeList()
			Select Att.GetName()
				Case "name"
					Name=Att.GetValue()
				Case "type"
					Datatype=Att.GetValue()
				Case "dim"
					Dim=Int(Att.GetValue())
			EndSelect
		Next
		Return "CPB_ARRAY "+Name
	EndMethod
	Method GetRealDatatype:String(Typ:String)
		If Typ="string" Then Typ="CPB_STRING"
		If Typ="int" Then Typ="CPB_INT"
		If Typ="float" Then Typ="CPB_FLOAT"
		If Typ="void" Then Typ="void"
		Return Typ
	EndMethod
EndType
