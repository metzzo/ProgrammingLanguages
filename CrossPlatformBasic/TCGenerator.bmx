Import bah.libxml
Import "Util_CPB.bmx"
Import "TGenerator.bmx"
SuperStrict

Type TClass
	Field Name:String
	Field Count:Int
	Field Attributes:TList=New TList
EndType


Type TCGenerator Extends TGenerator Final
	Global AllDatatype:String[]=["int","float","byte","short","long","double","string"]
	Field Classes:TList=New TList
	Field Output:String
	Field ScopeCount:Int
	Field InStruct:Byte
	Field MaxSizeArray:Int 'Die gröste Array Dimension
	Field FuncDef:String 'Alle Funktionen (nicht die header)
	Field DebugMode:Byte=True
	Field Types:TList=New TList
	Field TypeMainConstructor:String
	Field Parameter:String[]
	Field GlobalInit:String
	Field ArrayCast:String, ShouldCast:Int
	Field AccessIteration:Int=0
	Method GetLanguage:String()
		Return "C"
	EndMethod
	Method Generate(InputPath:String, OutputPath:String)
		Local File:TxmlDoc=TxmlDoc.ParseFile(InputPath)
		
		Local Root:TxmlNode=File.GetRootElement()
		'Attribute und methoden finden
		For Local Node:TxmlNode=EachIn Root.GetChildren()
			Select Node.GetName()
				Case "deftype"
					Local Name:String=Node.GetAttribute("name")
					AllDatatype=AllDatatype[..AllDatatype.Length+1]
					AllDatatype[AllDatatype.length-1]=name
					Local Class:TClass=New TClass
					Class.Name=Name
					If Node.GetChildren()
						Local List:TList=Node.GetChildren()
						For Local Node2:TxmlNode=EachIn List
							If Node2.GetName()="field"
								Class.Attributes.AddLast(Node2.GetAttribute("name"))
							EndIf
						Next
					EndIf
					Types.AddLast(Class)
			EndSelect
		Next
		For Local Node:TxmlNode=EachIn Root.GetChildren()
			Select Node.GetName()
				Case "global"
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="defvar"
								Output:+Vardef(Node2)+"~n"
							ElseIf Node2.GetName()="defarray"
								Output:+Arraydef(Node2)+"~n"
							EndIf
							If IsType(Node2.GetAttribute("type")) Or Node2.GetName()="defarray"
								ScopeCount:+1
								GlobalInit:+GetTabs()+"stack_push(&_"+Node2.GetAttribute("name")+"_);~n"
								ScopeCount:-1
							EndIf
						Next
					EndIf
				Case "function"
					Parameter=New String[0]
					Local Name:String=Node.GetAttribute("name")
					Local Datatype:String=Node.GetAttribute("type")
					
					Local Text:String
					If IsType(Datatype) Or Int(Node.GetAttribute("dimension"))>0
						Datatype="GCStackNode*"
					Else
						Datatype=GetRealDatatype(Datatype,Int(node.getAttribute("dimension")))
					EndIf
					Local FuncDatatype:String =Datatype
					Local UserFunc:Int=Int(Node.GetAttribute("userfunc"))
					Text:+"~n"+Datatype+" "+Name+"( "
					Local DatatypesText:String
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="param"

								Local Datatype:String=GetRealDatatype(Node2.getAttribute("type"),Int(Node2.getAttribute("dimension")))
								If IsType(Node2.GetAttribute("type")) Or Int(Node2.GetAttribute("dimension"))>0
									Datatype="GCStackNode*"
								EndIf
								Text:+Datatype+" _"+Node2.getAttribute("name")+"_,"
								If IsType(Node2.GetAttribute("type")) Or Int(Node2.GetAttribute("dimension"))>0  Then Parameter :+ ["_"+Node2.getAttribute("name")+"_"]
								Local Add:String="_"+Node2.getAttribute("name")+"_"
								If Int(node.GetAttribute("stringptr")) And (IsType(Node2.GetAttribute("type")) Or Int(Node2.GetAttribute("dimension"))>0 ) Add="((CPB_STRING)"+Add+"->obj)"
								DatatypesText:+", "+Add
							EndIf
						Next
					EndIf
					Text=Text[0..Text.length-1]
					If UserFunc 
						FuncDef:+Text
						Text:+");~n"
						FuncDef:+") {~n"
						
						ScopeCount:+1
						If FuncDatatype<>"void" FuncDef:+GetTabs()+FuncDatatype+" retvalue;~n"
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="code"
								FuncDef:+Block(TxmlNode(Node2))
								Exit
							EndIf
						Next
						ScopeCount:-1
						FuncDef:+"}~n"
					Else
						Local RealName:String=Node.GetAttribute("realname")
						If Name<>RealName And RealName<>""
							Text:+") {~n"
							ScopeCount:+1
							If Datatype<>"void" Datatype="return " Else Datatype=""
							Text:+GetTabs()+Datatype+RealName+"("+DatatypesText[1..]+");~n"
							ScopeCount:-1
							Text:+GetTabs()+"}~n"
						Else
							Text:+");~n"
						EndIf
					EndIf
					
					Output:+Text
				Case "deftype"
					Local Name:String=Node.GetAttribute("name")
					Local Class:TClass
					For Local tmp:TClass=EachIn Types
						If Tmp.Name=Name
							Class=Tmp
							Exit
						EndIf
					Next
					Local Text:String
					Text="typedef struct _"+Name+" {~n"
					InStruct=True
					ScopeCount:+1
					Local FInalizer:String=""
					'struct an sich erzeugen
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							Select Node2.GetName()
								Case "method"
									If Node2.GetAttribute("name")="___"+Name+"__delete__internmethod__"
										Finalizer = "___"+Name+"__delete__internmethod___"+Name+"__dim_0_"
									EndIf
								Case "field"
									Local Data:String=GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))
									If IsType(Node2.GetAttribute("type")) Data="GCStackNode*"
									Text:+GetTabs()+Data+" _"+Node2.GetAttribute("name")+"_;~n"
							EndSelect
						Next
					EndIf
					InStruct=False
					ScopeCount:-1
					Text:+"}"+GetRealDatatype(Name)[..GetRealDatatype(Name).length-1]+";~n"
					Text:+GetTabs()+"void trace"+Name+"(GCStackNode* node) {~n"
					ScopeCount:+1
					Text:+GetTabs()+"node->mark=1;~n"
					Local Added:Byte=0
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="field"
								If IsType(Node2.GetAttribute("type")) Or Int(Node2.GetAttribute("dimension"))>0
									If Not Added
										Text:+GetTabs()+"GCStackNode* tmp;~n"
										Added=1
									EndIf
									Local Access:String="(("+Name.ToUpper()+"*)node->obj)->_"+Node2.GetAttribute("name")+"_"
									Text:+GetTabs()+"tmp="+Access+";~n"
									Text:+GetTAbs()+"if (tmp != NULL && tmp->mark==0) tmp->trace(tmp);~n"
								EndIf
							EndIf
						Next
					EndIf
					ScopeCount:-1
					Text:+GetTabs()+"}~n"
					Output=Text+Output
					
					Output:+GetTabs()+"GCStackNode* new_"+Name.ToUpper()+"(GCStackNode* node );~n"
					'Nun den Standard Konstruktor
					TypeMainConstructor:+GetTabs()+"GCStackNode* new_"+Name.ToUpper()+"(GCStackNode* node ) {~n"
					ScopeCount:+1
					TypeMainConstructor:+GetTabs()+Name.ToUpper()+"* tmp = ("+Name.ToUpper()+"*)node->obj;~n"
					If Finalizer <> ""
						TypeMainConstructor:+GetTabs()+"node->finalizer = &"+Finalizer+";~n"
					EndIf
					'Standardwerte setzen
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							Select Node2.GetName()
								Case "method"
									
								Case "field"
									TypeMainConstructor:+GetTabs()+"tmp->_"+Node2.GetAttribute("name")+"_="+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+";~n"
							EndSelect
						Next
					EndIf
					
					TypeMainConstructor:+GetTabs()+"return node;~n"
					ScopeCount:-1
					TypeMainConstructor:+GetTabs()+"}~n"
				Case "code"
					Output:+TypeMainConstructor
					Output:+GetTabs()+"int main ( int argc, char** argv ) {~n"
					ScopeCount:+1
					Output:+GetTabs()+"GC_INIT();~n"
					Parameter=New String[0]
					Output:+Block(Node)
					Output:+"return 0;~n"
					ScopeCount:-1
					Output:+GetTabs()+"}"
			EndSelect
		Next
		
		
		For Local i:Int=1 To MaxSizeArray
			Rem
			void * allocarray_dim3(int size, int param1, int param2, int param3) {
				void* mem=(void*)GC_malloc(size*param1);
				for (int var0=0;a<param1;a++) {
					mem[var0]=GC_malloc(size*param2);
					for (int var1=0 b<param2;b++) {
						mem[var0][var1]=GC_malloc(size*param2)
						for (int var2=0;c<param3;c++) {
							mem[var0][var1][var3]=GC_malloc(size*param3)
						}
					}
				}
				
				return mem;
			}
			EndRem
			Local Text:String
			Text:+GetTabs()+"void tracedDimCount"+i+"(GCStackNode* node) {~n"
			ScopeCount:+1
			Text:+GetTabs()+"node->mark=1;~n"
			For Local j:Int=1 To i
				Text:+GetTabs()+"int i"+j+";~n"
				Text:+GetTabs()+"for (i"+j+"=0; i"+j+"<node->info["+(j-1)+"]; i"+j+"++) {~n"
				ScopeCount:+1
			Next
			Local Access:String
			Local Arr:String
			For Local j:Int=0 To i
				Arr:+"*"
			Next
			Access:+"(((GCStackNode"+arr+")node->obj)"
			For Local j:Int=1 To i
				Access:+"[i"+j+"]"
			Next
			Access:+")"
			Text:+GetTabs()+"GCStackNode* tmp = "+Access+";~n"
			Text:+GetTabs()+"if (tmp != NULL && tmp->mark==0 && tmp->trace != NULL) tmp->trace(tmp);~n"
			For Local j:Int=1 To i
				ScopeCount:-1
				Text:+GetTabs()+"}~n"
				
			Next
			ScopeCount:-1
			Text:+GetTabs()+"}~n"
			Text:+GetTabs()+"GCStackNode* allocarray_dim"+i+"(int size"
			For Local j:Int=1 To i
				Text:+", int param"+j
			Next
			Text:+") {~n"
			ScopeCount:+1
			Text:+GetTabs()+"GCStackNode*"
			For Local k:Int=1 To i
				Text:+"*"
			Next
			Text:+" mem=malloc(sizeof(GCStackNode)*param1);~n"
			
			Text:+GetTabs()+"int "
			For Local k:Int= 1 To i
				Text:+" vari"+k
				If k<i Then Text:+","
			Next
			Text:+"; ~n"
			
			For Local k:Int=1 To i
				Text:+GetTabs()+"for(vari"+k+"=0;vari"+k+"<param"+k+";vari"+k+"++) {~n"
				ScopeCount:+1
				If k<i
					Text:+GetTabs()
					Local Tmp:String="mem"
					For Local j:Int=1 To k
						'Tmp="((int*)"+Tmp+"[vari"+j+"])"
						Tmp=Tmp+"[vari"+j+"]"
					Next
					Text:+Tmp
					Local MulPtr:String = ""
					For Local j:Int=k To i-1
						MulPtr:+"*"
					Next
					Text:+"=(GCStackNode*"+mulptr+")malloc(sizeof(GCStackNode)*param"+(k+1)+");~n"
				Else
					Text:+GetTabs()+"if (size == -1)~n"
					ScopeCount:+1
					Local Access:String
					Access:+GetTabs()+"mem"
					For Local j:Int=1 To i
						Access:+"[vari"+j+"]"
					Next
					Text:+Access
					Text:+" = NULL;~n"
					ScopeCount:-1
					Text:+GetTabs()+"else~n"
					ScopeCount:+1
					Text:+Access + " = GC_malloc(size, &normalTrace);~n"
					ScopeCount:-1
				EndIf
			Next
			For Local k:Int=1 To i
				ScopeCount:-1
				Text:+GetTabs()+"}~n"
			Next
			Text:+GetTabs()+"GCStackNode* node=(GCStackNode*)GC_malloc(0,&tracedDimCount"+i+");~n"
			Text:+GetTabs()+"node->obj = (void*)mem;~n"
			Text:+GetTabs()+"node->info = malloc(sizeof(int)*"+i+");~n"
			For Local k:Int=0 To i-1
				Text:+GetTabs()+"node->info["+k+"] = param"+(k+1)+";~n"
			Next
			Text:+GetTabs()+"return node;~n"
			ScopeCount:-1
			Text:+"}~n"
			Output=Text+Output
		Next
		Local Text:String
		Text:+GetTabs()+"void normalTrace(GCStackNode* node) {~n"
		ScopeCount:+1
		Text:+GetTabs()+"node->mark = 1;~n"
		ScopeCount:-1
		Text:+"}~n"
		output = Text + Output
		Output="#include "+Chr(34)+"../Language/C/libs/cpb_core.h"+Chr(34)+"~n#include <stdlib.h>~n#include "+Chr(34)+"../Language/C/libs/cpb_graphics.h"+Chr(34)+"~n"+Output
		Output:+FuncDef
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
		Output:+GetTabs()+"stack_enter();~n"
		Output:+GlobalInit
		GlobalInit=""
		'Parameter pushen
		For Local P:String=EachIn Parameter
			Output:+GetTabs()+"stack_push(&"+P+");~n"
		Next
		Parameter = New String[0]
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
		Output:+GetTabs()+"stack_leave();~n"
		Return Output
	EndMethod
	Method GetNextMathString:String(Node:TxmlNode)
		Local Text:String
		If Node=Null Then Return ""
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
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"+"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "sub"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"-"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "div"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"/"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "mul"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"*"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "and"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+" && "
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "or"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+" || "
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "greater"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+">"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "less"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"<"
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "greaterequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+">="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "lessequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"<="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "equal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"=="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "notequal"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text:+"("+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"!="
						Case "right"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+")"
					EndSelect
				Next
			Case "not"
				Text="(!("+GetNextMathString(TxmlNode(node.getfirstchild()))+"))"
			Case "int"
				Text=Int(Node.GetAttribute("value"))
			Case "string"
				Text="newString("+Chr(34)+String(Node.GetAttribute("value"))+Chr(34)+")"
			Case "float"
				Text=Float(Node.GetAttribute("value"))
			Case "var","arrayref"
				Text="_"+Node.GetAttribute("name")+"_"
			Case "cast"
				Local CastFrom:String=Node.GetAttribute("from")
				Local CastTo:String=Node.GetAttribute("to")
				If CastTO="string"
					Select CastFrom
						Case "int"
							Text="int2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "float"
							Text="float2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "double"
							Text="double2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "long"
							Text="long2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "short"
							Text="short2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "byte"
							Text="byte2string("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
					EndSelect
				ElseIf CastFrom="string"
					Select CastTo
						Case "int"
							Text="string2int("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "float"
							Text="string2float("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "double"
							Text="string2double("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "long"
							Text="string2long("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "short"
							Text="string2short("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
						Case "byte"
							Text="string2byte("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
					EndSelect
				ElseIf Not IsType(Node.GetAttribute("to"))
					Text="("+GetRealDatatype(Node.GetAttribute("to"))+")("+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
				Else'If Node.GetAttribute("to")="unknown"
					Text=GetNextMathString(TxmlNode(Node.GetFirstChild()))
				'Else
				'	Text="castto"+GetRealDatatype(Node.GetAttribute("to")).Replace("*","")+"(("+GetRealDatatype(Node.GetAttribute("from"))+")"+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
				EndIf
			Case "call"
				Text=Node.GetAttribute("name")+"( "
				Local List:TList=Node.GetChildren()
				Local Tabled:Byte=True
				If List
					For Local Node2:TxmlNode=EachIn List
						If Node2.getname()="param"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
							Text:+","
						EndIf
					Next
				EndIf
				Text=Text[0..Text.length-1]
				Text:+")"
			Case "local"
				Local Push:String
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					If Node2.GetName()="defvar"
						Text:+VarDef(Node2)
					ElseIf Node2.GetName()="defarray"
						Text:+ArrayDef(Node2)
					EndIf
					If IsType(Node2.GetAttribute("type")) Or Int(node2.GetAttribute("dimension"))>0
						Push:+"~n"
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							Push:+GetTabs()+"stack_push(&_"+Node2.GetAttribute("name")+"_)"
						Next
					EndIf
				Next
				Text:+GetNextMathString(Node.NextNode())
				Text:+Push
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
						Text:+Name
					EndIf
					If Node2.getname()="value"
						Local Tmp:String="="+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
						
						Text:+Tmp
					EndIf
				Next
				
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
				Text:+"stack_leave();~n"
				Text:+GetTabs()+"break"
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
				Text:+gettabs()+"} }"
				Text="{ "+Text
			Case "return"
				Text:+"retvalue="+GetNextMathString(TxmlNode(Node.GetFirstChild()))+";~n"
				Text:+GetTabs()+"stack_leave();~n"
				Text:+GetTabs()+"return retvalue"
			Case "null"
				Text="NULL"
			Case "array"
				
				Local Datatype:String, DatatypeReal:String=GetRealDatatype(Node.GetAttribute("type"),Int(Node.GetAttribute("dimension")))
				Datatype="GCStackNode*"
				For Local i:Int=1 To Int(Node.GetAttribute("dimension"))
					Datatype:+"*"
				Next
				Local Caster:String="((/* cast0r */"+Datatype+")"
				Text=GetNextMathString(TxmlNode(TxmlNode(Node.GetFirstChild()).GetFirstChild()))+"->obj)"
				For Local Child:TxmlNode=EachIn Node.GetChildren()
					If Child.GetName()="dimension"
						Text:+"["+GetNextMathString(TxmlNode(Child.GetFirstChild()))+"]"
					EndIf
				Next
				If Not ShouldCast 
					Text=Caster+Text
				Else
					'If AccessIteration<=1
						ArrayCast:+Caster
					'Else
					'	Text:+")"
					'	Caster="((/* mycast */"+DatatypeReal.Replace("**","*")+")"+Caster
					'	ArrayCast:+Caster
					'EndIf
					'If AccessIteration=1 AccessIteration:+1
				EndIf
				If Not IsType(Node.GetAttribute("type"))
					Text="*(("+GetRealDatatype(Node.GetAttribute("type"),0)+"*)"+Text+"->obj)"
				EndIf
			Case "type"
				Text=""+GetNextMathString(TxmlNode(Node.GetFirstChild()))+""
			Case "access"
				Local WasMe:Byte=False
				If ShouldCast=0
					ArrayCast=""
					WasMe=True
					ShouldCast=1
					AccessIteration=1
				Else
					AccessIteration:+1
				EndIf

				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							ArrayCast="(("+GetRealDatatype(Node2.GetAttribute("type"),0)+")"+ArrayCast
							Text=GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"->obj)->"
						Case "right"
							If AccessIteration>1 ArrayCast :+ "(/* fromright */"+GetRealDatatype(Node2.GetAttribute("type"),0)+")"
							Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
					EndSelect
				Next
				If WasMe
					Text=ArrayCast+Text
					ArrayCast=""
					ShouldCast=0
					AccessIteration=0
				EndIf
			Case "new"
				
				Local IsArray:Byte=False
				If Node.GetChildren()
					For Local Dim:TxmlNode=EachIn Node.GetChildren()
						If Dim.GetName()="dim" IsArray:+1
					Next
				EndIf
				Local Obj:String="GCStackNode*"
				Local RealType:String=Node.GetAttribute("type").ToUpper()
				If IsArray
					Local Count:Int
					Local SizeIdent:String="-1"
					If Not IsType(Node.GetAttribute("type")) SizeIdent="sizeof("+RealType+")"
					Text="(GCStackNode*)allocarray_dim"+IsArray+"("+SizeIdent
					For Local Dim:TxmlNode=EachIn Node.GetChildren()
						If Dim.GetName()="dim"
							Count:+1
							Text:+","+GetNextMathString(TxmlNode(Dim.GetFirstChild()))
						EndIf
					Next
					Text:+")"
					If MaxSizeArray<Count MaxSizeArray=Count
					
				Else
					Text="("+Obj+")GC_malloc(sizeof("+RealType+"),&trace"+RealType.ToLower()+")"
				EndIf
				If IsType(RealType) And Not IsArray
					Text="new_"+RealType+"("+Text+")"
				EndIf
		EndSelect

		Return Text
	EndMethod
	
	Method VarDef:String(Node:TxmlNode)
		Local Name:String, datatype:String, Dim:Int
		For Local Att:TxmlAttribute=EachIn Node.GetAttributeList()
			Select Att.GetName()
				Case "name"
					Name=Att.GetValue()
				Case "type"
					Datatype=Att.GetValue()
				Case "dimension"
					Dim=Int(Att.GetValue())
			EndSelect
		Next
		Local Def:String
		Local RealType:String=GetRealDatatype(Datatype,Dim)
		If IsType(Datatype) Or Dim>0 RealType="GCStackNode*"
		Select Datatype
			Case "int","short", "long", "byte"
				Def="=0"
			Case "float","double"
				Def="=0.0f"
			Case "string"
				Def="=newString("+Chr(34)+Chr(34)+")"
			Default
				Def="=NULL"
				'RealType:+"*"
		EndSelect
		
		Return realType+" _"+Name+"_"+Def+";"
	EndMethod
	Method ArrayDef:String(Node:TxmlNode)
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
						Datatype:+"*"
					Next
			EndSelect
		Next
		Datatype="GCStackNode*"
		Return Datatype+" _"+Name+"_=NULL;"
	EndMethod
	Method GetRealDatatype:String(Typ:String,DimCount:Int=0)
		If Typ="" Then DebugStop
		Local Text:String
		Select Typ
			Case "string"
				Text="CPB_STRING"
			Case "int"
				Text="CPB_INT"
			Case "float"
				Text="CPB_FLOAT"
			Case "double"
				Text="CPB_DOUBLE"
			Case "short"
				Text="CPB_SHORT"
			Case "long"
				Text="CPB_LONG"
			Case "byte"
				Text="CPB_BYTE"
			Case "void"
				Text="void"
			Case "unknown"
				Text="GCStackNode*"
			Default
				If InStruct
					Text="struct _"+Typ.ToLower()+"*"
				Else
					Text=Typ.ToUpper()+"*"
				EndIf
		EndSelect
		For Local i:Int=1 To DimCount
			Text:+"*"
		Next
		Return Text
	EndMethod
	Method IsType:Byte(Typ:String)
		'DebugStop
		Typ=Typ.Replace("*","").ToLower().Replace("cpb_","")
		Select Typ
			Case "int","float","void", "double","short","long","byte"
				Return False
			Default
				Return True
		EndSelect
	EndMethod
EndType
