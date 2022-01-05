
Import "Util_CPB.bmx"
Import BaH.Libxml
SuperStrict
Include "TCompiler_Identifier.bmx"
Type TCompiler
	Global Current:TCompiler
	Global Templates:TList=New TList 'Sind überall gültig
	Field Token:TList
	Field GlobalVarIdentifier:TList=New TList
	Field FunctionIdentifier:TList=New TList
	
	Field LocalVarIdentifier:TList[1] 'Alle Lokale Variablen
	Field CurrentMode:Int =0 '0=nichts, 1=funktion, 2=schleife, 3=type
	Field CurrentType:String 'Der aktuelle Type
	Field Lines:String[]
	Method LoadFunction(FilePath:String)
		Local File:TxmlDoc=TxmlDoc.ParseFile(FilePath)
		Local Root:TxmlNode=File.getRootElement()
		For Local node:TxmlNode = EachIn Root.GetChildren()
			Local Name:String=node.GetAttribute("name").ToLower()
			Local Datatype:TDatatype=TDatatype.CreateByNode(Node)
			Local Func:TIdentifierFunction=New TIdentifierFunction
			Func.Create(Name,Datatype)
			If Node.GetChildren()
				For Local Child:TxmlNode=EachIn node.getChildren()
					Local Pre:String=""
					If Child.HasAttribute("pre")
						Pre=Child.GetAttribute("pre")
					EndIf
					Local Data:TDatatype=TDatatype.CreateByNode(Child)
					Func.AddParameter(Child.GetAttribute("name").ToLower(),Data, Pre)
				Next
			EndIf
			Func.Genname()			
			FunctionIdentifier.AddLast(func)
		Next
	EndMethod
	Method LoadHeaders(Path:String)
		
	EndMethod
	Method Tokenizer(Text:String)
		Text="~n"+Text
		Token=New TList
		Local SplitToken:String[]=["."," ",",","(",")","[","]",":","+","-","*","/","^","\","	","==","<>","<=",">=","<",">","=","%","#","$"]
		Lines=Text.Split("~n")
		Local InRem:Byte=False
		For Local Line:String=EachIn Lines
			Local LastFound:Int=0
			If Line.ToLower().Trim()="rem"
				InRem=True
			EndIf
			If InRem
				Token.AddLast("~n")
				If Line.ToLower().Trim()="endrem"
					InRem=False
				EndIf
				Continue
			EndIf
			Line:+" "
			For Local i:Int=0 To Line.Length
				If Line[i..i+1]="\" Then 
					Token.AddLast("\")
					LastFound=I+1
				EndIf
				If Line[i..i+1]="~n" Then Continue
				If Line[i..i+1]=";" Or Line[i..i+2]="//" Or Line[i..i+1]="'"
					Exit
				EndIf
				If Line[i..i+1]=Chr(34)
					Token.AddLast(Line[LastFound..i].ToLower().Trim())
					LastFound=i
					For i=i+1 To Line.Length
						If Line[i..i+1]=Chr(34)
							Token.AddLast(Line[LastFound..(i+1)].Trim())
							LastFound=i+1
							Exit
						EndIf
					Next
				EndIf
				'DebugStop
				For Local SplitTok:String=EachIn SplitToken
					If Line[i..i+SplitTok.Length]=SplitTok
						If SplitTok="." And Line[LastFound..i].ToLower().Trim()<>""
							If IsInt(Line[LastFound..i].ToLower().Trim()) Or IsFloat(Line[LastFound..i].ToLower().Trim()) Exit
						EndIf
						Token.AddLast(Line[LastFound..i].ToLower().Trim())
						If SplitTok<>" " And SplitTok<>"	"
							
							If SplitTok="#"
								Token.AddLast(":")
								SplitTok="float"
							EndIf
							If SplitTok="$"
								Token.AddLast(":")
								SplitTok="string"
							EndIf
							If SplitTok="%"
								Token.AddLast(":")
								SplitTok="int"
							EndIf
							If SplitTok="!"
								Token.AddLast(":")
								SplitTok="byte"
							EndIf
							Token.AddLast(SplitTok)
						EndIf
						
						LastFound=i+SplitTok.Length
						i:+(SplitTOk.Length-1)
						Exit
					EndIf
				Next
			Next
			Token.AddLast("~n")
		Next
		Local l:TLink=Token.FirstLink()
		While l
			If String(l.value()).Trim()="" And String(l.value())<>"~n" Then l.Remove()			
			l=l.NextLink()
		Wend
		
	EndMethod
	Method Analyser()
		Local TmpCompiler:TCompiler=Current
		Current=Self
		Templates.AddLast(TTypeTemplate.ObjectTemplate)
		Local Tmp:Object[]=TOken.ToArray()

		'Nun die Types ansich
		For Local i:Int=0 Until Tmp.Length
			Local Text:String=String(Tmp[i])
			Select Text
				Case "type"
					i:+1
					Local Template:TTypeTemplate=New TTypeTemplate
					Template.Name=String(Tmp[i])
					Local Datatype:TDatatype=New TDatatype
					Template.Datatype=Datatype
					Datatype.Name=Template.Name
					Datatype.Prio=0
					Datatype.IsNotPrimitive=1
					Datatype.CanCastTo.AddLast(TDatatype.NullDatatype)
					'Datatype.CanCastTo.AddLast(TTypeTemplate.ObjectTemplate)
					'TTypeTemplate.ObjectTemplate.Datatype.CanCastTo.AddLast(Datatype)
					TDatatype.NullDatatype.CanCastTo.AddLast(Datatype)
					
					TOperator.GetByName("==").AddDatatype(Datatype)
					TOperator.GetByName("<>").AddDatatype(Datatype)
					
					TDatatype.UserDefinedDatatypes.AddLast(Datatype)
					Templates.AddLast(Template)
			EndSelect
		Next
		
		For Local i:Int=0 Until Tmp.Length
			Local Text:String=String(Tmp[i])
			Select Text
				Case "global"
					'DebugStop
					Repeat
						i:+1
						Local name:String=String(Tmp[i])
						Local Datatype:TDatatype=TDatatype.VoidDatatype
						i:+1 '1=: 2=Datentyp
						If String(Tmp[i])=":"
							i:+1
							Datatype=TDatatype.Create(String(Tmp[i]).ToLower())
						EndIf
						i:+1
						While String(Tmp[i])="["
							I:+1 '[
							I:+1']
							Datatype.IsArray:+1
						Wend
						Local Id:TIdentifierVariable=New TIdentifierVariable
						Id.Create(name,Datatype)
						GlobalvarIdentifier.AddLast(Id)
						If String(Tmp[i])="="
							For i=i+1 Until Tmp.Length
								If String(Tmp[i])="~n" Or String(Tmp[i])=","
									i:-1
									Exit
								EndIf
							Next
						EndIf
						i:+1
					Until String(Tmp[i])<>","
				Case "type"
					i:+1
					
					Local Name:String=String(Tmp[i])
					Local Template:TTypeTemplate
					For Local Temp:TTypeTemplate=EachIn Templates
						If Temp.Name=Name
							Template=Temp
						EndIf
					Next
					i:+1
					If String(Tmp[i])="extends"
						i:+1
						Local superName:String=String(Tmp[i])
						For Local Temp:TTypeTemplate=EachIn Templates
							If Temp.Name=SuperName
								Template.SuperType=Temp
								Template.Datatype.CanCastTo.AddLast(Temp.Datatype)
								Temp.Datatype.CanCastTo.AddLast(Template.Datatype)
								
								Exit
							EndIf
						Next
					Else
						Template.SuperType=TTypeTemplate.ObjectTemplate
						Template.Datatype.CanCastTo.AddLast(TTypeTemplate.ObjectTemplate.Datatype)
						TTypeTemplate.ObjectTemplate.Datatype.CanCastTo.AddLast(Template.Datatype)
					EndIf
					While String(Tmp[i])<>"endtype"
						If String(Tmp[i])="private"
							ScopeMode=TTypeField.ISPRIVATE
							i:+1
						EndIf
						If String(Tmp[i])="public"
							ScopeMode=TTypeField.ISPUBLIC
							i:+1
						EndIf
						If String(Tmp[i])="protected"
							ScopeMode=TTypeField.ISPROTECTED
							i:+1
						EndIf
						If String(Tmp[i])="function"
							i:+1
							Select String(Tmp[i])
								Case "virtual","override","abstract","static","final","setter","getter"
									i:+1
							EndSelect
							Tmp[i]="___"+Name+"__"+String(Tmp[i])+"__internmethod__"
						EndIf
						Rem
						If String(Tmp[i])="function"
							i:+1
							Local State:Byte
							Select String(Tmp[i])
								Case "virtual"
									State=TTypeMethod.ISVIRTUAL
									i:+1
								Case "override"
									State=TTypeMethod.ISOVERRIDE
									i:+1
								Case "abstract"
									State=TTypeMethod.ISABSTRACT
									i:+1
								Case "final"
									State=TTypeMethod.ISFINAL
									i:+1
								Case "static"
									State=TTypeMethod.ISSTATIC
									i:+1
								Case "setter"
									
								Case "getter"
									
							EndSelect
							Local OldName:String=String(Tmp[i])
							Tmp[i]="___"+Name+"__"+String(Tmp[i])+"__internmethod__"
							Local old:Int=i
							i:+1 '_
							i:+1 'datatype
							Local Datatype:TDatatype=TDatatype.Create(String(Tmp[i]))
							i:+1
							While String(Tmp[i])="["
								i:+1
								i:+1
								Datatype.IsArray:+1
							Wend	
							i=old
							Template.AddMethod(String(Tmp[i]),Datatype,State,ScopeMode,OldName)
							
						EndIf
						EndRem
						If String(Tmp[i])="field"
							i:+1
							Local Name:String=String(Tmp[i])
							i:+1 ':
							i:+1 'datatype
							Local Datatype:TDatatype=TDatatype.Create(String(Tmp[i]))
							i:+1
							While String(Tmp[i])="["
								i:+1
								i:+1
								Datatype.IsArray:+1
							Wend
							Local Text:String, PreNode:TxmlNode
							If String(Tmp[i])="="
								i:+1
								While String(Tmp[i])<>"~n"
									Text:+String(Tmp[i])+" "
									i:+1
								Wend
								Local Compiler:TCompiler=New tCompiler
								Compiler.Tokenizer(Datatype.Name+Datatype.GetArrayString()+"("+Text+")")
								Compiler.Parser(False)

								For Local Node:TxmlNode=EachIn Compiler.XMLFile.GetRootElement().GetChildren()
									If Node.GetName()="code"
										For Local Node2:TxmlNode=EachIn Node.GetChildren()
											If Node2.GetName()="line"
												PreNode=TxmlNode(Node2.getFirstChild())
												Exit
											EndIf
										Next
										Exit
									EndIf
								Next
							Else
								Select Datatype.name
									Case "int","short","long","byte"
										PreNode=TxmlNode.NewNode("int")
										PreNode.AddAttribute("value","0")
										PreNode=Tdatatype.IntDatatype.CastNode(TDatatype.Create(Datatype.Name, Datatype.IsArray),PreNode)
									Case "float","double"
										PreNode=TxmlNode.NewNode("float")
										PreNode.AddAttribute("value","0.0")
										PreNode=Tdatatype.FloatDatatype.CastNode(TDatatype.Create(Datatype.Name, Datatype.IsArray),PreNode)
									Case "string"
										PreNode=TxmlNode.NewNode("string")
										PreNode.AddAttribute("value","")
									Default
										PreNode=TxmlNode.NewNode("null")
								EndSelect
							EndIf
							Template.AddField(Name, Datatype,PreNode,ScopeMode)
						EndIf
						i:+1
					Wend
					ScopeMode=TTypeField.ISPUBLIC
			EndSelect
		Next
		Local intype:String=""
		Local Template:TTypeTemplate
		For Local i:Int=0 Until Tmp.Length
			Local Text:String=String(Tmp[i])
			Select Text
				Case "type"
					i:+1
					InType=String(Tmp[i])
					
					For Local Temp:TTypeTemplate=EachIn Templates
						If Temp.Name.ToLower()=InType.ToLower()
							Template=Temp
							Exit
						EndIf
					Next
				Case "endtype"
					InType=""
					Template=Null
					ScopeMode=TTypeField.ISPUBLIC
				Case "private"
					If InType<>"" ScopeMode=TTypeField.ISPRIVATE
				Case "public"
					If InType<>"" ScopeMode=TTypeField.ISPUBLIC
				Case "protected"
					If InType<>"" ScopeMode=TTypeField.ISPROTECTED
				Case "function"
					i:+1
					Local State:Byte
					Select String(Tmp[i])
						Case "virtual"
							State=TTypeMethod.ISVIRTUAL
							i:+1
						Case "override"
							State=TTypeMethod.ISOVERRIDE
							i:+1
						Case "abstract"
							State=TTypeMethod.ISABSTRACT
							i:+1
						Case "final"
							State=TTypeMethod.ISFINAL
							i:+1
						Case "static"
							State=TTypeMethod.ISSTATIC
							i:+1
						Case "setter"
							
						Case "getter"
							
					EndSelect
					Local Name:String=String(Tmp[i])
					
					Local Datatype:TDatatype=TDatatype.VoidDatatype
					i:+1
					
							
					If String(Tmp[i])=":"
						i:+1
						Datatype=TDatatype.Create(String(Tmp[i]).ToLower())
						i:+1
					EndIf
					Local Id:TIdentifierFunction=New TIdentifierFunction
					Local Meth:TTypeMethod
					Id.Create(Name,Datatype)
					If InType<>"" 
						Meth=Template.AddMethod(Id,Name,Datatype,State,ScopeMode)
					EndIf
					
					Local IsArray2:Int
					While String(Tmp[i])="["
						i:+1 ']
						i:+1 '[
						IsArray2:+1
					Wend
					i:+1
					Datatype.IsArray=IsArray2
					Local SelTemplate:TTypeTemplate=Template
					If SelTemplate
						'DebugStop
						Id.AddParameter("this",SelTemplate.Datatype,"")
					EndIf
					While String(Tmp[i])<>")"
						Local Name:String=String(Tmp[i])
						i:+1
						Local Typ:TDatatype=TDatatype.VoidDatatype, Pre:String
						If String(Tmp[i])=":"
							i:+1
							Typ=TDatatype.Create(String(Tmp[i]).ToLower())
							i:+1
						'Else
						'	Typ="int"
						EndIf
						Local IsArray:Int
						While String(Tmp[i])="["
							i:+1 ']
							i:+1 '[
							IsArray:+1
							
						Wend
						Typ.IsArray=IsArray
						If String(Tmp[i])="="
							For i=i+1 Until Tmp.Length
								If String(Tmp[i])="~n" Or String(Tmp[i])=","
									If String(Tmp[i])="~n"
										Pre=Pre[0..Pre.length-1]
										i=i-1
									EndIf
									Exit
								Else
									Pre:+" "+String(Tmp[i])
								EndIf
							Next
						EndIf
						
						Id.AddParameter(Name, Typ,Pre.Trim())
						If  String(Tmp[i])=")" Then Exit
						i:+1
					Wend
					If Meth Meth.Name=Id.Name
					Id.UserFunc=True
					If SelTemplate'Nun den Namen mit dem überladenen Text ersetzen
						Local TmpLink:TLink=SelTemplate.GetMethods(ScopeMode).FirstLink()
						While TmpLink
							If TmpLink._value And TTypeMethod(TmpLink._value) And TTypeMethod(TmpLink._value).Name=Id.Name
								If TTypeMethod(TmpLink._value).From=SelTemplate
									Id.GenName()
								EndIf
								TTypeMethod(TmpLink._value).Func=Id
								Id.Owner=SelTemplate
								TTypeMethod(TmpLink._value).Name=String(Id.Name)
							EndIf
							TmpLink=TmpLink.NextLink()
						Wend
					Else
						Id.GenName()
					EndIf
					FunctionIdentifier.AddLast(id)
			EndSelect
		Next
		'Nun bekommen die vererbten deren eigene Implementation
		For Local Template:TTypeTemplate=EachIn Templates
			Local Typ:TTypeTemplate=Template.SuperType
			While Typ
				For Local Meth:TTypeMethod=EachIn Typ.Methods
					If Meth.Func
						Local Func:TIdentifierFunction=Meth.Func.Copy()
						'TParameter(Func.ParamList.First()).Datatype.Name=Template.Name.ToLower()
						Meth.Func.Childs.AddLast(Func)
						Func.Name=Func.Name.Replace("_"+Meth.From.Name+"_","_"+Template.Name+"_")
						Func.GenName()
						Func.Owner=Template
						FunctionIdentifier.AddLast(Func)
						'AddMethod(Name:String,Datatype:TDatatype, State:Byte,Mode:Int,OldName:String)
						
						Template.AddMethod(FUnc,Func.Name, Func.Datatype,Meth.State,Meth.Mode).Func=Func 'Nun auch in den Type einfügen (damit die VID angepasst wird)
					EndIf
				Next
				Typ=Typ.SuperType
			Wend
		Next
		Current=TmpCompiler
	EndMethod
	
	Field XMLFile:TxmlDoc
	Field CurrentRoot:TxmlNode 'Wo die Zeilen rangehängt werden
	Field CurrentLineNode:TxmlNode 'Wo die aktuelle Zeile ist
	Field CurrentToken:String
	Field CurrentLink:TLink
	Field CurrentLine:Int
	Field LastFunc:TxmlNode 'Wo die Functions dran gehngt werden
	Field FUnctionDatatype:TDatatype 'Der aktuelle Datentyp der FUnktion
	Field AnyError:Byte 'Waren Fehler?
	Field ScopeMode:Int=TTypeField.ISPUBLIC 'In Welchem Klassenmodus befindet man sich gerade?
	
	Method Parser(DoDefs:Byte=True)
		Local Tmp:TCompiler=Current
		Current=Self
		XMLFile=TxmlDoc.newDoc("1.0")
		Local RootNode:TxmlNode=TxmlNode.newNode("CPB")
		RootNode.AddAttribute("version","0.2")
		XMLFile.setRootElement(rootnode)
		If DoDefs
			For Local Template:TTypeTemplate=EachIn Templates
				AddCHild(RootNode, Template.TONode())
			Next
			Local GlobalNode:TxmlNode=RootNode.AddChild("global")
			'Nun alle Globale Variablen deklarieren
			For Local vari:TIdentifierVariable=EachIn GlobalvarIdentifier
				Local Node:TxmlNode
				If Vari.Datatype.IsArray
					Node=GlobalNode.AddChild("defarray")
				Else
					Node=GlobalNode.AddChild("defvar")
				EndIf
				Node.AddAttribute("name",Vari.Name)
				Vari.Datatype.Add2Node(Node)
			Next
		EndIf
		CurrentRoot=RootNode.AddChild("code")
		LastFunc=CurrentRoot
		CurrentLink=Token.FirstLink()
		CurrentToken=String(CurrentLink.Value())
		'DebugStop
		Block()
		
		
		'Nun alle Funktionen deklarieren
		If DoDefs
			For Local func:TIdentifierFunction=EachIn FunctionIdentifier
				'If Func.UserFunc Then Continue
				If Func.Used=False Or Func.UserFunc Then Continue ' Wenn es nicht benutzt wurde oder eine Benutzer UFnktion ist
				Local Node:TxmlNode=RootNode.AddChild("function")
				Func.Datatype.Add2Node(Node)
				Node.AddAttribute("name", Func.name)
				Node.AddAttribute("realname",Func.RealName)
				node.AddAttribute("userfunc", Func.UserFunc)
				
				For Local Par:TParameter=EachIn Func.ParamList
					Local Node2:TxmlNode=Node.AddChild("param")
					Node2.AddAttribute("name", Par.Name)
					Par.Datatype.Add2Node(Node2)
				Next
				CurrentRoot.AddPreviousSibling(Node)
				'LastFunc=Node
			Next
		EndIf
		
		DeleteFile "tmp/XMLCode.xml"
		XMLFile.SaveFormatFile("tmp/XMLCode.xml",True)
		Current=Tmp
		
		If AnyError Then
			WriteStdout "Error!"
			End
		EndIf
	EndMethod
	Method InternBlock(Node:TxmlNode)
		Local Root:TxmlNode=CurrentRoot
		Local CurLine:TxmlNode=CurrentLineNode
		CurrentRoot=Node
		
		Block()
		
		CurrentLineNode=CurLine
		CurrentRoot=Root
	EndMethod
	Method Block()
		LocalVarIdentifier=LocalVarIdentifier[..LocalVarIdentifier.length+1]
		LocalVarIdentifier[LocalVarIdentifier.length-1]=New TList
		While CurrentLink<>Token.LastLink() And Not IsToken("endif") And Not IsToken("elseif")  And Not IsToken("else")  And Not IsToken("next")  And Not IsToken("wend")  And Not IsToken("until") And Not IsToken("endfunction") And Not IsToken("case") And Not IsToken("default") And Not IsToken("endselect")
			If IsToken("~n")
				GetNext()
				Continue
			EndIf
			CurrentLineNode=CurrentRoot.AddChild("line")
			CurrentLineNode.AddAttribute("number",CurrentLine)
			AddChild(CurrentLineNode,Expression().GetNode())
			If CurrentLink<>Token.LastLink() Then match("~n")
			While IsToken("~n") And CurrentLink<>Token.LastLink()
				GetNext()
			Wend
		Wend
		LocalVarIdentifier=LocalVarIdentifier[..LocalVarIdentifier.length-1]
	EndMethod
	Method Expression:TRecursive(Prio:Int=0)
		If Prio>=TOperator.Priority.Length
			Return Factor()
		Else
			'DebugStop
			Local Rec1:Trecursive=Expression(Prio+1)
			Local Rec2:TRecursive
			Local ReturnNode:TxmlNode, Node:TxmlNode
			Local Ret:TDatatype=Rec1.Datatype
			
			While True
				Local Found:Byte=False
				Local Matches:Byte=False
				For Local Op:TOperator=EachIn TOperator.Priority[Prio]
					If Op.Operator=GetCurrent()
						Local CurrentOperator:String=GetCurrent()
						GetNext()
						Rec2=Expression(Prio+1)
						Local Sel:TOperator
						For Local Op:TOperator=EachIn TOperator.Priority[Prio]
							If Op.Operator=CurrentOperator And Op.CanMatch(Rec1.Datatype, Rec2.Datatype) And (Sel=Null Or Sel.Datatype.length>Op.Datatype.Length)
								
								Sel=Op
								Found=True
							EndIf
						Next
						If Sel
							If ReturnNode Rec1.Node=ReturnNode
								
							Node=TxmlNode.newNode(Sel.Name)
							Local LLeft:TxmlNode, RRight:TxmlNode
							Ret=Sel.ParseDatatype(Rec1,Rec2,Node)
							Rec1.Datatype=Ret
							
							
							
							ReturnNode=Node
						Else
							If Matches Error("Cannot find Operator '"+CurrentOperator+"' with datatypes ['"+Rec1.Datatype.Name+"', '"+rec2.Datatype.Name+"']")
						EndIf
					EndIf
				Next
				If Not Found Then Exit
			Wend
			If Node=Null
				Node=Rec1.Node
			EndIf
			Return New TRecursive.Create(Node, Ret)
		EndIf
	EndMethod 
	
	Method Factor:TRecursive() 
		Select True
			Case GetCurrent()="("
				GetNext()
				Local Rec:TRecursive=Expression()
				match(")")
				Return Rec
			Case GetCurrent()="true"
				Local Node:TxmlNode=TxmlNode.newNode("int")
				Node.AddAttribute("value",1)
				GetNext()
				Return New TRecursive.Create(node,TDatatype.IntDatatype)
			Case GetCurrent()="false"
				Local Node:TxmlNode=TxmlNode.newNode("int")
				Node.AddAttribute("value",0)
				GetNext()
				Return New TRecursive.Create(node,TDatatype.IntDatatype)
			Case GetCurrent()="not"
				Local Node:TxmlNode=TxmlNode.newNode("not")
				GetNext()
				Local Rec:TRecursive=Expression()
				AddChild(Node,Rec.node)
				Return New TRecursive.Create(node,Rec.Datatype)
			Case GetCurrent()="-"
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("mul")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("left")
				Local Node3:TxmlNode=TxmlNode.NewNode("int")
				Node3.AddAttribute("value","-1")
				AddChild(Node2,Rec.Datatype.CastNode(TDatatype.IntDatatype,Node3))
				AddChild(Node.AddChild("right"),Rec.Node)
				Return New TRecursive.Create(Node,Rec.Datatype)
			Case GetCurrent()="+"
				GetNext()
				Local Rec:TRecursive=Expression()
				Return New TRecursive.Create(Rec.Node,Rec.Datatype)
			Case GetCurrent()="null"
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("null")
				Return New TRecursive.Create(Node,TDatatype.NullDatatype)
			Case IsInt(GetCurrent())
				Local Node:TxmlNode=TxmlNode.newNode("int")
				Node.AddAttribute("value",Int(GetCurrent()))
				GetNext()
				Return New TRecursive.Create(node,TDatatype.IntDatatype)
			Case IsFloat(GetCurrent())
				Local Node:TxmlNode=TxmlNode.newNode("float")
				Node.AddAttribute("value",Float(GetCurrent()))
				GetNext()
				Return New TRecursive.Create(node,TDatatype.FloatDatatype)
			Case IsString(GetCurrent())
				Local Node:TxmlNode=TxmlNode.newNode("string")
				Node.AddAttribute("value",String(GetCurrent())[1..getCurrent().length-1])
				GetNext()
				Return New TRecursive.Create(node,TDatatype.StringDatatype)
			Default
				Local Rec:TRecursive
				Rec=Keyword()
				If Rec Then Return Rec
				Rec=Funk()
				If Rec Then Return Rec
				Rec=Variable()
				If Rec Then Return Rec
				error("Unknown Token")
				End
		EndSelect
	EndMethod
	Method Funk:TRecursive(PreParam:TxmlNode=Null) 'Ein zusätzlicher Parameter, den dir Funktion impliziet dazu bekommt
		If ValidDatatype(GetCurrent())
			Local Datatype:TDatatype=TDatatype.Create(GetCurrent())
			GetNext()
			Local IsArray:Int
			While GetCurrent()="["
				Match("[")
				Match("]")
				IsArray:+1
			Wend
			datatype.isarray=isarray
			match("(")
			Local Rec:TRecursive=Expression()
			Match(")")
			Local Node:TxmlNode=Datatype.CastNode(Rec.Datatype, rec.Node)
			Local Positions:TList
			If GetCurrent()="["
				Datatype.IsArray=0
				
				Positions=ParseArray(Datatype)
			EndIf
			If GetCurrent()="."
				Local Rec:TRecursive=ParseType(New TRecursive.Create(Node,Datatype),Positions)
				Datatype=Rec.Datatype
				Node=Rec.Node
			EndIf

			Return New TRecursive.Create(Node,Datatype)
		Else
			Local FuncCount:Int=0 'Wieviele Funktionen mit diesem Namen gibt es
			Local Break:Byte=True
			For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
				If Func.Realname=GetCurrent()' Or Func.Name=GetCurrent()
					FuncCount:+1
					Break=False
				EndIf
			Next
			If Break Then Return Null
			
			Local Recs:TList=New TList
			Local FunkName:String=GetCurrent()
			Local Datatypes:String
			If FunkName.Find("__internmethod__")<>-1
				Local Typ:String=FUnkName[3..FunkName.Find("__",3)]
				Datatypes:+"_"+Typ+"__dim_0_"
			EndIf
			
			GetNext()
			Local Start:Byte=True
			Local ParameterCount:Int=0
			If GetCurrent()="(" Then GetNext()
			If GetCurrent()<>")" And GetCurrent()<>"~n"
				While GetCurrent()="," Or Start
					If Start=False Then GetNext()
					Start=False
					If GetCurrent()="," Then error("MyFunction(,,) does not work, and is not going to work")
					Local Rec:TRecursive=Expression()
					Recs.AddLast(Rec)
					
					Datatypes:+"_"+Rec.Datatype.tostring()
					ParameterCount:+1
				Wend
			EndIf
			If GetCurrent()=")" Then GetNext()
			For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
				If Func.Name=(FunkName+Datatypes)
					'Schauen ob Optionale Parameter vorkommen, wenn ja, dann darf es keine überladene Funktion sein
					Break=False
					For Local Par:TParameter=EachIn Func.ParamList
						If Par.Pre<>"" Then Continue
					Next
					If Func.ParamList.Count()<>Recs.Count()
						For Local Par:TParameter=EachIn Func.ParamList
							If Par.Pre<>""
								Break=True
							EndIf
						Next
					EndIf
					If Break Then Exit
					Func.Used=True
					Local Node:TxmlNode=TxmlNode.newNode("call")
					If Func.OWner
						For Local Meth:TTypeMethod=EachIn FUnc.Owner.GetMethods(-1)
							If Meth.Name.Replace("_"+Meth.From.Name+"_","_"+Func.Owner.Name+"_")=Func.Name
								Node.AddAttribute("vtable",Meth.VirtualID)
								Exit
							EndIf
						Next
					EndIf
					Node.AddAttribute("name",Func.Name)
					Local Link:TLink=Func.ParamList.FirstLink()
					If PreParam
						AddChild(Node.AddChild("param"),PreParam)
					EndIf
					For Local Rec:TRecursive=EachIn Recs
						Local ParamNode:TxmlNode=Node.AddChild("param")
						'Kein casten notwendig \o/
						
						AddChild(ParamNode,Rec.Node)
						Link=Link.NextLink()
					Next
					Local Datatype:TDatatype=Func.Datatype.Copy(Func.Datatype.IsArray)
					Local Positions:TList
					If GetCurrent()="["
						Datatype.IsArray=0
						
						Positions=ParseArray(Func.Datatype)
						
						Local XNode:TxmlNode=Func.ToNode(Positions)
						If XNode And XNode.GetChildren()
							'End
							For Local Tmp:TxmlNode=EachIn XNode.GetChildren()
								If Tmp.GetName()="name"
									TxmlNode(Tmp.GetFirstChild()).unlinkNode()
									AddChild(Tmp, Node)
								EndIf
							Next
						EndIf
						Node=XNode
					EndIf
					If GetCurrent()="."
						Local Rec:TRecursive=ParseType(New TRecursive.Create(Node,Datatype),Positions)
						Datatype=Rec.Datatype
						Node=Rec.Node
					EndIf
					Return New TRecursive.Create(Node, Datatype)
				EndIf
			Next
			If FuncCount=1
				For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
					If Func.RealName=FunkName
						'If Func.UserFunc Then DebugStop
						Func.Used=True
						Local Node:TxmlNode=TxmlNode.newNode("call")
						If Func.OWner
							 For Local Meth:TTypeMethod=EachIn FUnc.Owner.GetMethods(-1)
								If Meth.Name=Func.Name
									Node.AddAttribute("vtable",Meth.VirtualID)
									Exit
								EndIf
							Next
						EndIf
						Node.AddAttribute("name",Func.Name)
						Local Link:TLink=Recs.FirstLink()
						Local MustBeOptional:Byte=False
						If PreParam
							AddChild(Node.AddChild("param"),PreParam)
						EndIf
						For Local Par:TParameter=EachIn Func.ParamList
							If Func.Name.Find("__internmethod__")<>-1 And Par.Name="this" 
								'DebugStop
								If Link Link=Link.NextLink()
								Continue
							EndIf
							If Link=Null And Par.Pre=""	
								'DebugStop
								If Func.Name.Find("__internmethod__")>=0
									Error("Parameter count mismatch at Function: '"+Func.RealName.Replace("__internmethod__","").Replace("___"," ").Replace("__"," ")+"' expected: '"+(Func.ParamList.Count()-1)+"' given: '"+Recs.Count()+"'")
								Else
									Error("Parameter count mismatch at Function: '"+Func.RealName+"' expected: '"+Func.ParamList.Count()+"' given: '"+Recs.Count()+"'")
								EndIf
							EndIf
							
							Local Rec:TRecursive
							If Link Then Rec=TRecursive(Link.Value())
							
							If Par.Pre<>"" And Link=Null' And (GetCurrent()=")" Or GetCurrent()="," Or GetCurrent()="~n")
								'DebugStop
								MustBeOptional=False
								Local Compiler:Tcompiler=New TCompiler
								
								Compiler.Tokenizer(Par.Datatype.Name+Par.Datatype.GetArrayString()+"("+Par.Pre+")")
								Compiler.Parser(False)
								'End
								Local PreNode:TxmlNode
								For Local Node:TxmlNode=EachIn Compiler.XMLFile.GetRootElement().GetChildren()
									If Node.GetName()="code"
										For Local Node2:TxmlNode=EachIn Node.GetChildren()
											If Node2.GetName()="line"
												PreNode=TxmlNode(Node2.getFirstChild())
												Exit
											EndIf
										Next
										Exit
									EndIf
								Next
								'If Par.IsArray Then end
								AddChild(Node.AddChild("param"),PreNode)
							Else
								If MustBeOptional Then Error("Expecting ','")
								Local ParamNode:TxmlNode=Node.AddChild("param")
								AddChild(ParamNode,Par.Datatype.CastNode(Rec.Datatype, Rec.Node))
								Link=Link.NextLink()
							EndIf
						Next
						Local Datatype:TDatatype=Func.Datatype.Copy(Func.Datatype.IsArray)
						Local Positions:TList
						If GetCurrent()="["
							Datatype.IsArray=0
							
							Positions=ParseArray(Func.Datatype)
							
							Local XNode:TxmlNode=Func.ToNode(Positions)
							If XNode And XNode.GetChildren()
								'End
								For Local Tmp:TxmlNode=EachIn XNode.GetChildren()
									If Tmp.GetName()="name"
										TxmlNode(Tmp.GetFirstChild()).unlinkNode()
										AddChild(Tmp, Node)
									EndIf
								Next
							EndIf
							Node=XNode
						EndIf
						If GetCurrent()="."
							Local Rec:TRecursive=ParseType(New TRecursive.Create(Node,Datatype),Positions)
							Datatype=Rec.Datatype
							Node=Rec.Node
						EndIf
						Return New TRecursive.Create(Node, Func.Datatype)

					EndIf
				Next
			Else
				Error("Cannot find explicit function, with this Signature and therer are more than one implementations: "+FunkName+Datatypes)
			EndIf
		EndIf
	EndMethod
	
	Method Keyword:TRecursive()
		Select GetCurrent()
			Case "if"
				'Local Mode:Int=CurrentMode
				'CurrentMode=3
				GetNext()
				Local Node:TxmlNode=TxmlNode.NewNode("if")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("condition")
				AddChild(Node2,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				If IsToken("then")
					Match("then")
					Local Rec:TRecursive= Expression()
					Local Node2:TxmlNode=TxmlNode.NewNode("line")
					Node.AddAttribute("line",CurrentLine)
					AddChild(Node2, Rec.Node)
					AddChild(Node, Node2)
				Else
					InternBlock(Node)
					If IsToken("elseif")
						Local NodeLine:TxmlNode=TxmlNode.newnode("line")
						NodeLine.AddAttribute("number",CurrentLine)
						Local NodeElse:TxmlNode=NodeLine.AddChild("else")
						While IsToken("elseif")
							match("elseif")
							Local NodeLine2:TxmlNode=NodeElse.AddChild("line")
							NodeLine2.AddAttribute("number",CurrentLine)
							Local NodeIf:TxmlNode=NodeLine2.AddChild("if")
							Local Rec:TRecursive=Expression()
							Local Node2:TxmlNode=NodeIf.AddChild("condition")
							AddChild(Node2,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
							InternBlock(NodeIf)
							If IsToken("elseif")=False And IsToken("else")
								match("else")
								Local NodeLine:TxmlNode=NodeIf.AddChild("line")
								NodeLine.AddAttribute("number",CurrentLine)
								Local NodeElse:TxmlNode=NodeLine.AddChild("else")
								InternBlock(NodeElse)
							EndIf
						Wend
						AddChild(Node,NodeLine)
					ElseIf IsToken("else")
						GetNext()
						Local ElseNode:TxmlNode=Node.AddChild("else")
						InternBlock(ElseNode)
					EndIf
					
					Match("endif")
				EndIf
				'CurrentMode=3
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case "while"
				Local Mode:Int=CurrentMode
				CurrentMode=2
				GetNext()
				Local Node:TxmlNode=TxmlNode.NewNode("while")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("condition")
				
				AddChild(Node2,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				InternBlock(Node)
				match("wend")
				CurrentMode=Mode
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case "repeat"
				Local Mode:Int=CurrentMode
				CurrentMode=2
				GetNext()
				Local Node:TxmlNode=TxmlNode.NewNode("repeat")
				InternBlock(Node)
				match("until")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("condition")
				
				AddChild(Node2,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				CurrentMode=Mode
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case "for"
				Local Mode:Int=CurrentMode
				CurrentMode=2
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("for")
				Local Rec:Trecursive=Variable(False)
				Local variable:TIdentifierVariable=TIdentifierVariable(Rec.Info)
				
				Rem
				'------------------------------------------------------------------TODO:
					Hier auch Types einbauen
				'-----------------------------------------------------------------------
				EndRem
				
				Local TmpNode:TxmlNode=Node.AddChild("forvar")
				AddChild(TmpNode.AddChild("declaration"),Rec.Node)
				AddChild(TmpNode.AddChild("var"),Variable.ToNode(Null))
				
				Match("=")
				Tmpnode=Node.AddChild("start")
				Rec=Expression()
				AddChild(TmpNode,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				'DebugStop
				
				match("to")
				TmpNode=Node.AddChild("to")
				Rec=Expression()
				AddChild(TmpNode,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				
				If IsToken("step")
					match("step")
					TmpNode=Node.AddChild("step")
					Rec=Expression()
					AddChild(TmpNode,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				Else
					TmpNode=Node.AddChild("step")
					TmpNode.AddChild("int").AddAttribute("value","1")
				EndIf
				
				InternBlock(Node)
				Localvaridentifier[localvaridentifier.length-1].remove(variable)
				
				match("next")
				CurrentMode=Mode
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case "break"
				If CurrentMode<>2 Then Error("Must be in a loop")
				GetNext()
				Return New Trecursive.Create(TxmlNode.newnode("break"),TDatatype.VoidDataType)
			Case "continue"
				If CurrentMode<>2 Then Error("Must be in a loop")
				GetNext()
				Return New Trecursive.Create(TxmlNode.newnode("continue"),TDatatype.VoidDatatype)
			Case "function"
				GetNext()
				Select GetCurrent()
					Case "virtual","override","abstract","static","final","setter","getter"
						GetNext()
				EndSelect
				Local FuncNode:TxmlNode=TxmlNode.NewNode("function")
				Local FunkName:String=GetCurrent()
				GetNext()
				match(":")
				Local DatatypeName:String=GetCurrent()
				GetNext()
				Local isArray:Int
				While GetCurrent()="["
					match("[")
					Match("]")
					IsArray:+1
				Wend
				Local Datatype:TDatatype=TDatatype.Create(DatatypeName, IsArray)
				FunctionDatatype=Datatype
				
				Match("(")
				
				Local Tmp:TList[]=LocalvarIdentifier
				LocalVarIdentifier=New TList[1]
				LocalvarIdentifier[0]=New TList
				Local Datatypes:String
				
				If CurrentMode=3 And Currenttype<>""
					Datatypes:+"_"+CurrentType+"__dim_0_"
					Local Datatype:TDatatype=TDatatype.Create(CurrentType)
					RegisterVariable("this",Datatype)
					Local Child:TxmlNode=FuncNode.AddChild("param")
					Child.addAttribute("name", "this")
					Datatype.Add2Node(Child)
				EndIf
				While GetCurrent()<>")"
					If IsValidVarName(GetCurrent())=False Then Error("Invalid variable name")
					Local Name:String=GetCurrent()
					GetNext()
					Match(":")
					Local DatatypeName:String=GetCurrent()
					
					Datatypes:+"_"+DatatypeName
					GetNext()
					
					Local Child:TxmlNode=FuncNode.AddChild("param")
					Local IsArray:Int=0
					
					While GetCurrent()="["
						Match("[")
						Match("]")
						IsArray:+1
					Wend
					Datatypes:+"__dim_"+IsArray+"_"
					Local Datatype:TDatatype=TDatatype.Create(DatatypeName, IsArray)
					RegisterVariable(Name, Datatype)
					Child.addAttribute("name", Name)
					Datatype.Add2Node(Child)
					
					If GetCurrent()="="
						match("=")
						expression()
					EndIf
					'DebugStop
					If GetCurrent()=")"
					Else
						match(",")
					EndIf
				Wend
				Match(")")
				FuncNode.AddAttribute("name",FunkName+Datatypes)
				Datatype.Add2Node(FuncNode)
				FuncNode.AddAttribute("userfunc","1")
				Local CodeNode:TxmlNode=FuncNode.AddChild("code")
				InternBlock(CodeNode)
				LocalVarIdentifier=Tmp
				Match("endfunction")
				CurrentRoot.AddPreviousSibling(FuncNode) 'LastFUnc.AddNextSibling
				FunctionDatatype=Null
				For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
					If Func.Name=FunkName+Datatypes
						For Local Child:TIdentifierFunction=EachIn Func.Childs
							Local XNode:TxmlNode=FuncNode.Copy()
							XNode.SetAttribute("name", Child.Name)
							For Local Param:TxmlNode=EachIn XNode.GetChildren()
								If Param.GetName()="param" And Param.GetAttribute("name")="this"
									Param.SetAttribute("type", Child.Owner.Name)
									'DebugStop
								EndIf
							Next
							Child.Use()
							CurrentRoot.AddPreviousSibling(XNode)
						Next
						Exit
					EndIf
				Next
				Return New TRecursive.Create(Null,TDatatype.VoidDatatype)
			Case "return"
				If FunctionDatatype=Null Then error("Return must be in a Function")
				match("return")
				Local Node:TxmlNode=TxmlNode.NewNode("return")
				Local Rec:Trecursive=Expression()
				
				AddChild(Node,FunctionDatatype.CastNode(Rec.Datatype, Rec.Node))
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case "select"
				Local Mode:Int=CurrentMode
				'CurrentMode=3
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("select")
				
				Local Node2:TxmlNode=Node.AddChild("condition")
				Local Rec:TRecursive=Expression()
				
				AddChild(Node2,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
				GetNext()
				While GetCurrent()="case"
					GetNext()
					Local Do:Byte=False
					Local Cases:TxmlNode[1]
					Repeat
						Do=False
						Local NodeLine:TxmlNode=Node.AddChild("line")
						NodeLine.AddAttribute("number",currentline)
						
						Local NodeCase:TxmlNode=NodeLine.AddChild("case")
						Local Node2:TxmlNode=NodeCase.AddChild("condition")
						Local Rec:TRecursive=Expression()
						
						
						AddChild(Node2,TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node))
						
						If GetCurrent()="," Then Do=True;match(",")
						Cases=Cases[..Cases.length+1]
						Cases[Cases.length-1]=Nodecase
					Until Not Do
					Local TmpNode:TxmlNode=TxmlNode.newnode("tmp")
					InternBlock(TmpNode)
					If Tmpnode.GetChildren()
						For Local tmp:TxmlNode=EachIn TmpNode.GetChildren()
							If Tmp.GetName()="line"
								For Local Tmp2:TxmlNode=EachIn Cases
									AddChild(Tmp2,Tmp)
								Next
							EndIf
						Next
					EndIf
					'DebugStop
					'NodeCase.AddChild("casebreak")
				Wend
				If GetCurrent()="default"
					GetNext()
					Local NodeLine:TxmlNode=node.addchild("line")
					NodeLine.AddAttribute("number",Currentline)
					Local NodeDefault:TxmlNode=NodeLine.AddChild("default")
					InternBlock(NodeDefault)
				EndIf
				match("endselect")
				CurrentMode=Mode
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case "type"
				'DebugStop
				GetNext()
				Local Name:String=GetCurrent()
				CurrentType=Name
				Local Datatype:TDatatype=New TDatatype
				
				GetNext()
				If GetCurrent()="extends"
					'DebugStop
					match("extends")
					GetNext() 'Name
					'GetNext() '
				EndIf
				
				Match("~n")
				While GetCurrent()<>"endtype"
					If GetCurrent()<>"~n"
						Select GetCurrent()
							Case "private"
								ScopeMode=TTypeField.ISPRIVATE
								GetNext()
							Case "public"
								ScopeMode=TTypeField.ISPUBLIC
								GetNext()
							Case "protected"
								ScopeMode=TTypeField.ISPROTECTED
								GetNext()
							Case "field"
								Match("field")
								Local FieldName:String=GetCurrent()
								GetNext()
								Match(":")
								Local Datatype:TDatatype=TDatatype.Create(GetCurrent())
								GetNext()
								While GetCurrent()="["
									Match("[")
									Match("]")
								Wend
								If GetCurrent()="="
									Match("=")
									Expression()
								EndIf
							Case "function"
								GetNext()
								Select GetCurrent()
									Case "virtual","override","abstract","static","final","setter","getter"
										GetNext()
								EndSelect
								CurrentLink._value="___"+Name+"__"+String(CurrentLink._value)+"__internmethod__"
								GetBefore()
								CurrentMode=3
								Local TmpMode:Int=ScopeMode
								ScopeMode=TTypeField.IsPrivate
								Keyword()
								CurrentMode=0
								ScopeMode=TmpMode
						EndSelect
					EndIf
					GetNext()
				Wend
				CurrentType=""
				match("endtype")
				ScopeMode=TTypeField.ISPUBLIC
				Return New TRecursive.Create(Null,TDatatype.VoidDatatype)
			Case "new"
				GetNext()
				Local Name:String=GetCurrent()
				GetNext()
				If ValidDatatype(Name)=False Error("Unknown Type '"+Name+"'")
				Local Node:TxmlNode=TxmlNode.NewNode("new")
				Node.AddAttribute("type", Name)
				Local Datatype:TDatatype=TDatatype.Create(Name)
				If GEtCurrent()="["
					'DebugStop
					Repeat
						match("[")
						Local Rec:TRecursive=Expression()
						Datatype.IsArray:+1
						Rec.Node=TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node)
						AddChild(Node.AddChild("dim"), Rec.Node)
						match("]")
					Until Not IsToken("[")
				EndIf
				Return New TRecursive.Create(Node, Datatype)
		EndSelect
	EndMethod
	
	Method Variable:TRecursive(DoSet:Byte=True)
		Select GetCurrent()
			Case "local"
				Local node:TxmlNode=TxmlNode.newNode("local")
				Local LastVar:TIdentifierVariable
				Repeat
					Local Name:String=GetNext()
					If IsValidVarName(Name)
						GetNext()
						Match(":")
						If ValidDatatype(GetCurrent())=False Then Error("Unknown Datatype")
						Local DatatypeName:String=GetCurrent()
						getnext()
						Local DimCount:Int
						While GetCurrent()="["
							GetNext()
							Match("]")
							DimCount:+1
						Wend
						Local Datatype:TDatatype=TDatatype.Create(DatatypeName, DimCount)
						AddChild(Node,RegisterVariable(Name, Datatype))
						
						If IsToken("=") And DoSet
							GetNext()
							Local Rec:TRecursive=Expression()
							Local Node2:TxmlNode=TxmlNode.newNode("set")
							AddChild(Node2.AddChild("name"),getVariable(Name).ToNode(Null))
							Local NodeValue:TxmlNode=Node2.AddCHild("value")
							
							AddChild(NodeValue,Datatype.CastNode(Rec.Datatype, Rec.Node))
							
							Local LineNode:TxmlNode=TxmlNode.newnode("line")
							LineNode.AddAttribute("number",currentline)
							AddChild(LineNode,Node2)
							CurrentLineNode.AddSibling(LineNode)
							'node.addsibling(node2)
						EndIf
						Lastvar=getVariable(Name)
					Else
						error("Invalid Variable name")
					EndIf
					If GetCurrent()=","
						Continue
					Else
						Exit
					EndIf
				Forever
				Return New TRecursive.Create(node,TDatatype.VoidDatatype,LastVar)
			Case "global"
				Local node:TxmlNode=TxmlNode.newNode("local") 'eh wurscht da es nicht drangehängt wird
				Local LastVar:TIdentifierVariable
				Repeat
					Local Name:String=GetNext()
					If IsValidVarName(Name)
						GetNext()
						Match(":")
						If ValidDatatype(GetCurrent())=False Then Error("Unknown Datatype")
						Local DatatypeName:String=GetCurrent()
						'AddChild(Node,RegisterVariable(Name, GetCurrent(),0))
						getnext()
						Local DimCount:Int
						While GetCurrent()="["
							GetNext()
							Match("]")
							DimCount:+1
						Wend
						Local Datatype:TDatatype=TDatatype.Create(DatatypeName, DimCount)
						If IsToken("=") And DoSet
							GetNext()
							Local Rec:TRecursive=Expression()
							Local Node2:TxmlNode=TxmlNode.newNode("set")
							AddChild(Node2.AddChild("name"),getVariable(Name).ToNode(Null))
							Local NodeValue:TxmlNode=Node2.AddCHild("value")
							
							AddChild(NodeValue,Datatype.CastNode(Rec.Datatype, Rec.Node))
							
							Local LineNode:TxmlNode=TxmlNode.newnode("line")
							LineNode.AddAttribute("number",currentline)
							AddChild(LineNode,Node2)
							CurrentLineNode.AddSibling(LineNode)
						EndIf
						Lastvar=GetVariable(Name)
					Else
						error("Invalid Variable name")
					EndIf
					If GetCurrent()=","
						Continue
					Else
						Exit
					EndIf
				Forever
				Return New TRecursive.Create(Null,TDatatype.VoidDatatype,LastVar)
		EndSelect
		
		
		For Local  Variable:TIdentifierVariable=EachIn GetVariableList()
			If GetCurrent().Trim().ToLower()=variable.Name.Trim().ToLower()
				Local Node:TxmlNode
				GetNext()
				Local Positions:TList
				While GetCurrent()="[" And DoSet And Positions=Null
					Positions=ParseArray(Variable.Datatype)
				Wend
				Local RecAccess:TRecursive=ParseType(New TRecursive.Create(Variable.ToNode(Positions),Variable.Datatype),Positions)
				
				If RecAccess
					RecAccess.Node=AddChild(TxmlNode.NewNode("type"),RecAccess.Node)
					Variable=TIdentifierVariable(RecAccess.Info)
					If Variable=Null
						Return RecAccess
					EndIf
					Positions=TList(RecAccess.Positions)
				EndIf
				
				'While GetCurrent()="[" And DoSet And Positions=Null
				'	Positions=ParseArray(Variable)
				'Wend
				If Positions=Null And RecAccess And RecAccess.Positions
					Positions=TList(RecAccess.Positions)
				EndIf
				
				If GetCurrent()="=" And DoSet
					GetNext()
					Local Rec:TRecursive=Expression()
					If Node
						Node=Node.AddChild("set")
					Else
						Node=TxmlNode.newNode("set")
					EndIf
					If RecAccess
						AddChild(Node.AddChild("name"),RecAccess.Node)
					Else
						AddChild(Node.AddChild("name"),Variable.ToNode(Positions))
					EndIf
					Local Value:TxmlNode=Node.AddChild("value")
					Local Tmp:TDatatype=Variable.Datatype.Copy(Variable.Datatype.IsArray)
					If Positions<>Null Tmp.IsArray=0
					AddChild(Value,Tmp.CastNode(Rec.Datatype, Rec.Node))
					
				Else
					If RecAccess
						If Positions
							Node=RecAccess.Node
							For Local Tmp:TxmlNode=EachIn Positions
								Node.AddSibling(TMp)
							Next
						Else
							Node=RecAccess.Node
						EndIf
					Else
						Node=Variable.ToNode(Positions)
					EndIf
				EndIf
				Local Tmp:TDatatype=Variable.Datatype.Copy(Variable.Datatype.IsArray)
				If Positions<>Null Tmp.IsArray=0
				Return New TRecursive.Create(Node, TMp,Variable, Positions)
			EndIf
		Next
	EndMethod
	
	Method ParseType:TRecursive(RecIdent:TRecursive, Pos:TList)
		If GetCurrent()="."
			Local Node:TxmlNode=TxmlNode.NewNode("access")
			AddChild(Node.AddChild("left"), RecIdent.node)
			'DebugStop
			GetNext()
			Local Template:TTypeTemplate
			For Local Temp:TTypeTemplate=EachIn Templates
				If Temp.Name=RecIdent.Datatype.Name 
					Template=Temp
					Exit
				EndIf
			Next
			
			If Template=Null 
				Error "Type does not exist: "+RecIdent.Datatype.Name
				Return New TRecursive.Create(TxmlNode.newnode("unknown"),TDatatype.IntDatatype)
			EndIf
			Node.AddAttribute("name",Template.Name)
			Local Member:String=GetCurrent()
			Local Found:Byte=False
			Local Variable:TIdentifierVariable
			Local ValNode:TxmlNode
			Local ValDatatype:TDatatype
			Local MemberName:String=GetCurrent()
			GetNext()
			
			Local Positions:TList
			If RecIdent.Datatype.IsArray And GetCurrent()="["
				Positions=ParseArray(Null)
			EndIf
			For Local Vari:TIdentifierVariable=EachIn Template.GetFields(ScopeMode)
				If Vari.Name=MemberName
					Found=True
					Variable=Vari
					ValNode=Variable.ToNode(Positions)
					Node.AddAttribute("class",Vari.Owner.Name)
					ValDatatype=Variable.Datatype
					Exit
				EndIf
			Next
			
			If Found=False
				GetBefore()
				For Local MethMeth:TTypeMethod=EachIn Template.Getmethods(ScopeMode)
					MethMeth.Func.GenName()
					Local Tmp:String=GetCurrent()
					CurrentToken="___"+Template.Name+"__"+MemberName+"__internmethod__"'"___"+MethMeth.Name+"__"+MemberName+"__internmethod__"
					Local Rec:TRecursive=Funk(RecIdent.Node)
					If Rec
						ValNode=Rec.Node
						ValDatatype=Rec.Datatype
						If GetCurrent()<>"." Then Return Rec
						Exit
					EndIf
					CurrentToken=Tmp
				Next
			EndIf
			If Not Found Error("Couldn't find member '"+GetCurrent()+"'")
			
			
			
			If GetCurrent()="."
				Local Rec:TRecursive=ParseType(New TRecursive.Create(ValNode,ValDatatype), Positions)
				If Rec.Info=Null
					AddChild(Rec.Node,Node)
					Return Rec
				Else
					AddChild(Node.AddChild("right"), Rec.Node)
					Rec.Node=Node
					Return Rec
				EndIf
			Else
				Local Tmp:TxmlNode=Node.AddChild("right")
				AddChild(TMp, ValNode)
				Return New TRecursive.Create(Node, ValDatatype, Variable, Positions)
			EndIf
		Else
			Return Null
		EndIf
	EndMethod
	
	Method ParseArray:TList(Datatype:TDatatype)
		Local Positions:TList=CreateList()
		
		Local IsArray:Int=0
		Repeat
			match("[")
			Local Rec:TRecursive=Expression()
			
			Rec.Node=TDatatype.IntDatatype.CastNode(Rec.Datatype, Rec.Node)
			Positions.AddLast(Rec.Node)
			match("]")
			IsArray:+1
		Until Not IsToken("[")
		If Datatype And IsArray<>Datatype.IsArray Error("Unallowed dimension count '"+IsArray+"', expecting '"+Datatype.IsArray+"'")
		Return Positions
	EndMethod
	
	Method RegisterVariable:TxmlNode(Name:String, Datatype:TDatatype)
		For Local  Variable:TIdentifierVariable=EachIn LocalvarIdentifier[LocalVarIdentifier.length-1]
			If Name=Variable.Name
				Error("Variable already defined: "+Variable.Name)
				Return Null
			EndIf
		Next
		Local Variable:TIdentifier=New TIdentifierVariable.Create(Name,Datatype)
		LocalvarIdentifier[LocalvarIdentifier.length-1].AddLast(Variable)
		Local Node:TxmlNode
		If Datatype.IsArray=0
			Node=TxmlNode.NewNode("defvar")
		Else
			Node=TxmlNode.NewNode("defarray")
		EndIf
		Node.AddAttribute("name",Name)
		Datatype.Add2Node(Node)
		Return Node
	EndMethod
	
	Method GetVariable:TIdentifierVariable(Name:String)
		For Local List:TList=EachIn LocalVarIdentifier
			For Local Vari:TIdentifierVariable=EachIn List
				If Vari.Name=Name Then Return Vari
			Next
		Next
		For Local Vari:TIdentifierVariable=EachIn GlobalVarIdentifier
			If Vari.Name=name Then Return Vari
		Next
	EndMethod
	Method GetVariablelist:TList()
		Local List:TList=GlobalVarIdentifier.Copy()
		For Local LList:TList=EachIn LocalVarIdentifier
			For Local Vari:TidentifierVariable=EachIn LList
				List.AddLast(Vari)
			Next
		Next
		Return List
	EndMethod
	Method IsToken:Byte(Name:String)
		Return Name=GetCurrent()
	EndMethod
	Method ValidDatatype:Byte(typ:String)
		If typ="int" Or typ="string" Or typ="float" Or typ="byte" Or Typ="long" Or Typ="short" Or Typ="double" Then Return True
		For Local Data:TDatatype=EachIn TDatatype.UserDefinedDatatypes
			If Data.Name=Typ Return True
		Next
		Return False
	EndMethod
	Method Match:String(Tok:String)
		If CurrentToken=Tok
			Return GetNext()
		Else
			Error("Unexpected Token, expecting: "+Tok.Replace("~n","NEWLINE"))
		EndIf
	EndMethod
	Method GetNext:String()
		If CurrentLink CurrentLink=CurrentLink.NextLink() Else End
		If CurrentLink=Null
			Error("Unexpected End of File")
		Else
			CurrentToken=String(CurrentLink.Value())
			If CurrentToken="~n"
				CurrentLine:+1
			EndIf
		EndIf
		Return CurrentToken
	EndMethod
	Method GetBefore:String()
		If CurrentLink CurrentLink=CurrentLink.PrevLink() Else End
		If CurrentLink=Null
			Error("Unexpected Begin of File")
		Else
			CurrentToken=String(CurrentLink.Value())
			If CurrentToken="~n"
				CurrentLine:-1
			EndIf
		EndIf
		Return CurrentToken
	EndMethod
	Method GetCurrent:String()
		Return CurrentToken
	EndMethod
	
	Method Error(Text:String)
		'DebugStop
		
		Local Err:String="--- Error: "+Text+" in line '"+CurrentLine+"', at Token '"+CurrentToken.Replace("~n","NEWLINE")+"' ---~n"
		Err:+"~t line:  "+Lines[CurrentLine+1].Replace("~t"," ").Trim()+"~n"
		SaveString(Err,"tmp/error.txt")
		WriteStdout Err
		
		AnyError=True
		While GetCurrent()<>"~n" And CurrentLink
			GetNext()
		Wend
	EndMethod
	Method Warning(Text:String)
		'DebugStop
		
		Local Err:String="--- Warning: "+Text+" in line '"+CurrentLine+"', at Token '"+CurrentToken.Replace("~n","NEWLINE")+"' ---~n"
		Err:+"~t line:  "+Lines[CurrentLine+1].Replace("~t"," ").Trim()+"~n"
		SaveString(Err,"tmp/error.txt")
		WriteStdout Err
		
		While GetCurrent()<>"~n" And CurrentLink
			GetNext()
		Wend
	EndMethod
EndType

Type TRecursive
	Field Datatype:TDatatype
	Field Node:TxmlNode
	Field Info:Object
	Field Positions:Object
	
	Method Create:TRecursive(Node:TxmlNode, Typ:TDatatype, Info:Object=Null, Positions:TList=Null)
		Self.Datatype=Typ
		Self.Info=Info
		Self.Node=Node
		Self.Positions=Positions
		Return Self
	EndMethod
	Method GetDatatype:TDatatype()
		Return Datatype
	EndMethod
	Method GetNode:TxmlNode()
		Return Node
	EndMethod
EndType


Type TDatatype
	Global IntDatatype:TDatatype
	Global FloatDatatype:TDatatype
	Global StringDatatype:TDatatype
	Global ByteDatatype:TDatatype
	Global LongDatatype:TDatatype
	Global DoubleDatatype:TDatatype
	Global ShortDatatype:TDatatype
	Global VoidDatatype:TDatatype
	Global NullDatatype:TDatatype
	Global UserDefinedDatatypes:TList=New TList
	
	Field IsNotPrimitive:Byte 'Ist es ein primitiver Datentyp?
	Field Prio:Int 'Wie wichtig dieser Datentyp ist (Der mit dem höchsten wird dann gecastet[string<>int wird nach string gecastet weil strings eine höhe priorität haben])
	Field Name:String
	Field IsArray:Int
	Field CanCastTo:TList=New TList
	
	Function Init()
		IntDatatype=New TDatatype
		IntDatatype.Name="int"
		IntDatatype.Prio=3
		
		FloatDatatype=New TDatatype
		FloatDatatype.Name="float"
		FloatDatatype.Prio=4
		
		StringDatatype=New TDatatype
		StringDatatype.Name="string"
		StringDatatype.Prio=7
		
		ByteDatatype=New TDatatype
		ByteDatatype.Name="byte"
		ByteDatatype.Prio=1
		
		LongDatatype=New TDatatype
		LongDatatype.Name="long"
		LongDatatype.Prio=5
		
		DoubleDatatype=New TDatatype
		DoubleDatatype.Name="double"
		DoubleDatatype.Prio=6
		
		ShortDatatype=New TDatatype
		ShortDatatype.Name="short"
		ShortDatatype.Prio=2
		
		VoidDatatype=New TDatatype
		VoidDatatype.Name="void"
		VoidDatatype.Prio=-1 'Kann nicht gecastet werden
		
		NullDatatype=New TDatatype
		NullDatatype.Name="null"
		NullDatatype.Prio=10 'Kann zu jedem array gecastet werden, und wird bei jedem verwenden weggecastet
		
		IntDatatype.CanCastTo.AddLast(FloatDatatype)
		IntDatatype.CanCastTo.AddLast(StringDatatype)
		IntDatatype.CanCastTo.AddLast(ByteDatatype)
		IntDatatype.CanCastTo.AddLast(LongDatatype)
		IntDatatype.CanCastTo.AddLast(DoubleDatatype)
		IntDatatype.CanCastTo.AddLast(ShortDatatype)
		IntDatatype.CanCastTo.AddLast(NullDatatype)
		
		FloatDatatype.CanCastTo.AddLast(IntDatatype)
		FloatDatatype.CanCastTo.AddLast(StringDatatype)
		FloatDatatype.CanCastTo.AddLast(ByteDatatype)
		FloatDatatype.CanCastTo.AddLast(LongDatatype)
		FloatDatatype.CanCastTo.AddLast(DoubleDatatype)
		FloatDatatype.CanCastTo.AddLast(ShortDatatype)
		
		StringDatatype.CanCastTo.AddLast(IntDatatype)
		StringDatatype.CanCastTo.AddLast(FloatDatatype)
		StringDatatype.CanCastTo.AddLast(ByteDatatype)
		StringDatatype.CanCastTo.AddLast(LongDatatype)
		StringDatatype.CanCastTo.AddLast(DoubleDatatype)
		StringDatatype.CanCastTo.AddLast(ShortDatatype)
		
		ByteDatatype.CanCastTo.AddLast(IntDatatype)
		ByteDatatype.CanCastTo.AddLast(FloatDatatype)
		ByteDatatype.CanCastTo.AddLast(StringDatatype)
		ByteDatatype.CanCastTo.AddLast(LongDatatype)
		ByteDatatype.CanCastTo.AddLast(ShortDatatype)
		ByteDatatype.CanCastTo.AddLast(DoubleDatatype)
		
		LongDatatype.CanCastTo.AddLast(IntDatatype)
		LongDatatype.CanCastTo.AddLast(FloatDatatype)
		LongDatatype.CanCastTo.AddLast(StringDatatype)
		LongDatatype.CanCastTo.AddLast(ByteDatatype)
		LongDatatype.CanCastTo.AddLast(ShortDatatype)
		LongDatatype.CanCastTo.AddLast(DoubleDatatype)
		
		DoubleDatatype.CanCastTo.AddLast(IntDatatype)
		DoubleDatatype.CanCastTo.AddLast(FloatDatatype)
		DoubleDatatype.CanCastTo.AddLast(StringDatatype)
		DoubleDatatype.CanCastTo.AddLast(ByteDatatype)
		DoubleDatatype.CanCastTo.AddLast(ShortDatatype)
		DoubleDatatype.CanCastTo.AddLast(LongDatatype)
		
		ShortDatatype.CanCastTo.AddLast(IntDatatype)
		ShortDatatype.CanCastTo.AddLast(FloatDatatype)
		ShortDatatype.CanCastTo.AddLast(StringDatatype)
		ShortDatatype.CanCastTo.AddLast(ByteDatatype)
		ShortDatatype.CanCastTo.AddLast(LongDatatype)
		ShortDatatype.CanCastTo.AddLast(DoubleDatatype)
		
		NullDatatype.CanCastTo.AddLast(IntDatatype)
	EndFunction
	
	Function Create:TDatatype(Name:String, IsArray:Int=0)
		Name=Name.ToLower()
		Select Name
			Case IntDatatype.Name.ToLower()
				Return IntDatatype.Copy(IsArray)
			Case FloatDatatype.Name.ToLower()
				Return FloatDatatype.Copy(IsArray)
			Case StringDatatype.Name.ToLower()
				Return StringDatatype.Copy(IsArray)
			Case VoidDatatype.Name.ToLower()
				Return VoidDatatype.Copy(IsArray)
			Case ByteDatatype.Name.ToLower()
				Return ByteDatatype.Copy(IsArray)
			Case LongDatatype.Name.ToLower()
				Return LongDatatype.Copy(IsArray)
			Case ShortDatatype.name.ToLower()
				Return ShortDatatype.Copy(IsArray)
			Case DoubleDatatype.Name.ToLower()
				Return DoubleDatatype.Copy(IsArray)
			Default
				For Local Data:TDatatype=EachIn UserDefinedDatatypes
					If Data.name.ToLower()=Name.ToLower() Return Data.Copy(IsArray)
				Next
				If TCompiler.Current=Null RuntimeError "Internal error"
				TCompiler.Current.Error("Cannot find Datatype '"+Name+"'")
				End
		EndSelect
	EndFunction
	Function CreateByNode:TDatatype(Node:TxmlNode)
		Local Name:String=Node.GetAttribute("type")
		Local DimCOunt:Int=Int(Node.GetAttribute("dimension"))
		Local Typ:TDatatype=TDatatype.Create(Name)
		Typ.IsArray=DimCount
		Typ.Name=Name
		Return Typ
	EndFunction
	
	Method Copy:TDatatype(IsArray:Int=0)
		Local Ret:TDatatype=New TDatatype
		Ret.name=Self.Name
		Ret.IsArray=IsArray
		Ret.Prio=Self.Prio
		ret.CanCastTo=CanCastTo
		Ret.IsNotPrimitive=Self.IsNotPrimitive
		Return Ret
	EndMethod
	Method Add2Node(Node:TxmlNode)
		Node.AddAttribute("type",Name)
		Node.AddAttribute("dimension",IsArray)
	EndMethod
	Method Cast:TxmlNode(Datatype:TDatatype)
		If Datatype.Name="null" Or Name="null"
			If Datatype.IsNotPrimitive Or IsNotPrimitive
				Return Null
			EndIf
		EndIf
		If Self.IsArray<>Datatype.IsArray And Datatype.Name<>"null" And Name<>"null" Then TCompiler.Current.Error("Dimension count mismatch '"+Datatype.IsArray+"', '"+IsArray+"'")
		Local Node:TxmlNode=TxmlNode.NewNode("cast")
		Node.AddAttribute("to",Self.Name)
		Node.AddAttribute("from",Datatype.Name)
		If Self.Name=Datatype.Name Return Null
		For Local Data:TDatatype=EachIn CanCastTo
			If Data.Name=Datatype.Name
				If Data.IsNotPrimitive Or Datatype.IsNotPrimitive
					Return Node
				Else
					Return Node
				EndIf
			EndIf
		Next
		'DebugStop
		If (IsArray And Datatype.Name="null") Or (Self.Name="null" And Datatype.IsArray)
			Return Null
		EndIf
		
		TCompiler.Current.Error("Cannot cast '"+Self.Name+"' (dimensions: '"+IsArray+"') to '"+Datatype.Name+"' (dimensions: '"+Datatype.IsArray+"')")
	EndMethod
	Method CastNode:TxmlNode(Datatype:TDatatype, Node:TxmlNode)
		Local caster:TxmlNode=Self.Cast(Datatype)
		If Caster
			AddChild(Caster, Node)
			Return Caster
		Else
			Return Node
		EndIf
	EndMethod
	Method ToString:String()
		Return Name+"__dim_"+IsArray+"_"
	EndMethod
	Method GetArrayString:String()
		Local T:String
		For Local i:Int=1 To IsArray
			T:+"[]"
		Next
		Return T
	EndMethod
EndType


Type TOperator
	Global Priority:TList[]'Enthält die Operator Prioritäten
	Field Name:String 'Der Name (add,sub,...)
	Field Operator:String 'Der Operator (+,-,...)
	Field Datatype:TDatatype[]
	Method AddDatatype(Data:TDatatype)
		Datatype=Datatype[..Datatype.Length+1]
		Datatype[Datatype.Length-1]=Data
	EndMethod
	Method CanMatch:Byte(Data1:TDatatype, Data2:TDatatype)
		For Local Data:TDatatype=EachIn Datatype
			If Data.name=Data1.Name
				For Local Data:TDatatype=EachIn Datatype
					If Data And Data2 And Data.Name=Data2.Name
						Return True
					EndIf
				Next
			EndIf
		Next
		Return False
	EndMethod
	Method ParseDatatype:TDatatype(Rec1:TRecursive, Rec2:TRecursive, Node:TxmlNode) 'Gibt den Operator zurück in den gecastet werden soll
		For Local Data:TDatatype=EachIn Datatype
			If Data.Name=Rec1.Datatype.Name
				For Local Data:TDatatype=EachIn Datatype
					If Data.Name=Rec2.Datatype.Name
						Local NodeLeft:TxmlNode=Node.AddChild("left")
						Local NodeRight:TxmlNode=Node.AddChild("right")
						
						Local Sel:TRecursive
						If Rec1.Datatype.Prio>Rec2.Datatype.Prio
							Sel=Rec1
						ElseIf Rec1.Datatype.Prio<Rec2.Datatype.Prio
							Sel=Rec2
						Else
							Sel=Rec1
						EndIf
						AddChild(NodeLeft, Sel.Datatype.CastNode(Rec1.Datatype,Rec1.Node))
						AddChild(NodeRight, Sel.Datatype.CastNode(Rec2.Datatype,Rec2.Node))
						Return Sel.Datatype
					EndIf
				Next
			EndIf
		Next
		TCompiler.Current.Error("Operator '"+Operator+"' datatypes mismatch ['"+Rec1.Datatype.Name+"', '"+rec2.Datatype.Name+"']")
	EndMethod
	
	Function Init()
		Priority=New TList[5]
		'0=And/Or
		'1=<,>,<=,>=,==,<>
		'2=+,-
		'3=*,/
		'4=^
		For Local i:Int=0 Until Priority.length
			Priority[i]=New TList
		Next
		
		NewOperator(0,"and","and",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(0,"or","or",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		
		NewOperator(1,"less","<",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(1,"greater",">",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(1,"lessequal","<=",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(1,"greaterequal",">=",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(1,"equal","==",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype,TDatatype.NullDatatype])
		NewOperator(1,"notequal","<>",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype,TDatatype.NullDatatype])
		
		NewOperator(2,"add","+",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(2,"stringadd","+",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype,TDatatype.StringDatatype])
		NewOperator(2,"sub","-",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		
		NewOperator(3,"mul","*",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		NewOperator(3,"div","/",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		
		NewOperator(4,"pow","^",[TDatatype.IntDatatype,TDatatype.FloatDatatype,TDatatype.LongDatatype,TDatatype.ShortDatatype,TDatatype.ByteDatatype,TDatatype.DoubleDatatype])
		
	EndFunction
	Function NewOperator(Prio:Int, Name:String, Operator:String, Data:TDatatype[])
		Local Op:TOperator=New TOperator
		Op.Name=Name
		Op.Operator=Operator
		Op.Datatype=Data
		Priority[Prio].AddLast(Op)
	EndFunction
	Function GetByName:TOperator(Name:String)
		For Local Ops:TList=EachIn Priority
			For Local Op:tOperator=EachIn Ops
				If Op.Operator=Name
					Return Op
				EndIf
			Next
		Next
		Return Null
	EndFunction
EndType
