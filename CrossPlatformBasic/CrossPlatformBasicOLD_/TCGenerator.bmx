Import bah.libxml
Import "Util_CPB.bmx"
SuperStrict

Type TClass
	Field Name:String
	Field Superclass:TClass
	Field SuperNameType:String
	Field VTable:TList=New TList
	Field UniqueDatatype:TList=New TList
	Field Count:Int
	Field Attributes:TList=New TList
EndType
Type TVirtualMethod
	Field Name:String
	Field ID:Int
	Field Datatype:String, Dimension:Int
EndType


Type TCGenerator
	Global AllDatatype:String[]=["int","float","string","byte","short","long","double","string"]
	Field Classes:TList=New TList
	Field Output:String
	Field ScopeCount:Int
	Field InStruct:Byte
	Field MaxSizeArray:Int 'Die gröste Array Dimension
	Field FuncDef:String 'Alle Funktionen (nicht die header)
	Field DebugMode:Byte=True
	Field Types:TList=New TList
	Field TypeMainConstructor:String
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
					Class.SuperClass=Null
					Class.SuperNameType=Node.GetAttribute("extend")
					If Node.GetChildren()
						Local List:TList=Node.GetChildren()
						For Local Node2:TxmlNode=EachIn List
							If Node2.GetName()="method"
								Class.VTable.AddLast(Node2.GetAttribute("name"))
							EndIf
							If Node2.GetName()="field"
								Class.Attributes.AddLast(Node2.GetAttribute("name"))
							EndIf
						Next
					EndIf
					Types.AddLast(Class)
			EndSelect
		Next
		'Superclassen suchen
		For Local Class:TClass=EachIn Types
			If Class.SuperNameType<>""
				For Local Class2:TClass=EachIn Types
					If Class2.Name=Class.SuperNameType
						Class.SuperClass=Class2
					EndIf
				Next
			EndIf
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
						Next
					EndIf
				Case "function"
					Local Name:String=Node.GetAttribute("name")
					If Name.Find("__internmethod__")>-1 Then Name:+"_isreal_"
					Local Datatype:String=Node.GetAttribute("type")
					Local TypeDef:String="typedef "
					
					Local Text:String
					Datatype=GetRealDatatype(Datatype,Int(node.getAttribute("dimension")))
					TypeDef:+Datatype
					Local UserFunc:Int=Int(Node.GetAttribute("userfunc"))
					Text:+"~n"+Datatype+" "+Name+"( "
					Local DatatypesText:String
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="param"

								Local Datatype:String=GetRealDatatype(Node2.getAttribute("type"),Int(Node2.getAttribute("dimension")))
								Text:+Datatype+" _"+Node2.getAttribute("name")+"_,"
								DatatypesText:+", _"+Node2.getAttribute("name")+"_"
							EndIf
						Next
					EndIf
					Text=Text[0..Text.length-1]
					If UserFunc 
						FuncDef:+Text
						Text:+");~n"
						FuncDef:+") {~n"
						ScopeCount:+1
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
							Text:+GetTabs()+RealName+"("+DatatypesText[1..]+");~n"
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
					If Node.GetAttribute("extend")<>""
						Text:+GetTabs()+GetRealDatatype(Node.GetAttribute("extend"))+" superclass;~n"
					EndIf
					'struct an sich erzeugen
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							Select Node2.GetName()
								Case "method"
									Text:+GetTabs()+"//Method name:"+Node2.GetAttribute("name")+"~n"
									Local Meth:TVirtualMethod=New TVirtualMethod
									Meth.Name=Node2.GetAttribute("name")
									meth.Datatype=Node2.GetAttribute("type")
									meth.dimension=Int(Node2.GetAttribute("dimension"))
									Class.VTable.AddLast(Meth)
									Meth.ID=Class.Count
									Class.Count:+1
								Case "field"
									Text:+GetTabs()+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+" _"+Node2.GetAttribute("name")+"_;~n"
							EndSelect
						Next
					EndIf
					'Doppelte löschen
					Local TmpList:TList=Class.VTable.Copy()
					For Local Meth:TVirtualMethod=EachIn TmpList
						For Local MethMeth:TVirtualMethod=EachIn TmpList
							If MethMeth<>Meth
								If MethMeth.Datatype=meth.Datatype And MethMeth.Dimension=Meth.Dimension
									TmpList.Remove(MethMeth)
								EndIf
							EndIf
						Next
					Next
					'Nun alle VTables einfügen
					For Local Meth:TVirtualMethod=EachIn TmpList
						Text:+GetTabs()+GetRealDatatype(Meth.Datatype,Meth.Dimension)
						InStruct=False
						Text:+" (**vptr_"+GetRealDatatype(Meth.Datatype,Meth.Dimension).Replace("*","_dim")+")();~n"
						InStruct=True
						Class.UniqueDatatype.AddLast(Meth)
					Next
					InStruct=False
					ScopeCount:-1
					Text:+"}"+GetRealDatatype(Name)[..GetRealDatatype(Name).length-1]+";~n"
					Output=Text+Output
					
					'Signatur
					If Node.GetChildren()
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							Select Node2.GetName()
								Case "method"
									Local TmpTxt:String
									TmpTxt:+GetTabs()+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+" "+Node2.GetAttribute("name")+"( "+GetRealDatatype(Name)+" _this_, int __vpos__"
									If Node2.GetChildren()
										For Local Node3:TxmlNode=EachIn Node2.GetChildren()
											If Node3.getAttribute("name")="this"
												Node3.Unlinknode()
												Continue
											EndIf
											If Node3.GetName()="param"' And Node3.getAttribute("name")<>"this"
												TmpTxt:+", "+GetRealDatatype(Node3.GetAttribute("type"),Int(Node3.GetAttribute("dimension")))+" "+Node3.GetAttribute("name")		
											EndIf
										Next
									EndIf
									TmpTxt:+") {~n"
									ScopeCount:+1
									If Node2.GetAttribute("type")<>"void" 
										TmpTxt:+GetTabs()+"return ("+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+")" 
									Else 
										TmpTxt:+GetTabs()
									EndIf
									TmpTxt:+"_this_->vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+"[__vpos__](_this_"
									If Node2.GetChildren()
										For Local Node3:TxmlNode=EachIn Node2.GetChildren()
											If Node3.GetName()="param"
												TmpTxt:+", "+Node3.GetAttribute("name")
											EndIf
										Next
									EndIf
									TmpTxt:+");~n"
									ScopeCount:-1
									TmpTxt:+GetTabs()+"}~n"
									Output:+TmpTxt
								Case "field"
									
							EndSelect
						Next
					EndIf
					Output:+GetTabs()+Name.ToUpper()+"* new_"+Name.ToUpper()+"("+Name.ToUpper()+"* tmp );~n"
					'Nun den Standard Konstruktor
					TypeMainConstructor:+GetTabs()+Name.ToUpper()+"* new_"+Name.ToUpper()+"("+Name.ToUpper()+"* tmp ) {~n"
					ScopeCount:+1
					If Node.GetAttribute("extend")<>""
						TypeMainConstructor:+GetTabs()+"tmp->superclass=new_"+Node.GetAttribute("extend").ToUpper()+"(("+Node.GetAttribute("extend").ToUpper()+"*)GC_malloc(sizeof("+Node.GetAttribute("extend").ToUpper().Replace("*","")+")));~n"
					EndIf
					'VTable und so
					For Local Meth:TVirtualMethod=EachIn Class.UniqueDatatype
						Local Count:Int=0
						For Local MethMeth:TVirtualMethod=EachIn Class.VTable
							If Meth.Datatype=MethMeth.Datatype And Meth.Dimension=MethMeth.Dimension
								Count:+1
							EndIf
						Next
						TypeMainConstructor:+GetTabs()+"tmp->vptr_"+GetRealDatatype(Meth.Datatype,Meth.Dimension).Replace("*","_dim")+"=GC_malloc(sizeof("+GetRealDatatype(Meth.Datatype,Meth.Dimension)+"())*"+count+");~n"
						For Local MethMeth:TVirtualMethod=EachIn Class.VTable
							If Meth.Datatype=MethMeth.Datatype And Meth.Dimension=MethMeth.Dimension
								TypeMainConstructor:+GetTabs()+"tmp->vptr_"+GetRealDatatype(Meth.Datatype,Meth.Dimension).Replace("*","_dim")+"["+Meth.ID+"]=& "+MethMeth.Name+"_isreal_;~n"
							EndIf
						Next
					Next
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
					
					TypeMainConstructor:+GetTabs()+"return tmp;~n"
					ScopeCount:-1
					TypeMainConstructor:+GetTabs()+"}~n"
					
					Rem
					Local Text:String, VTableDef:String
					Text="typedef struct _"+Name+" {~n"
					ScopeCount:+1
					
					Local Map:TMap=CreateMap()
					Local MapCount:TMap=CreateMap()
					If Node.GetChildren()
						Local List:TList=Node.GetChildren()
						'List.Reverse()
						For Local Node2:TxmlNode=EachIn List
							If Node2.GetName()="method"
								'Print Node2.GetAttribute("name")
								If Not Map.Contains(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))))
									InStruct=True
									Local Tmp:String=GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))
									InStruct=False
									Text:+TMp+" (**vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+")();~n"
									Map.Insert(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))),"tmp->vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+"[0] = &"+Node2.GetAttribute("name")+"_isreal_;~n")
									mapcount.Insert(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+"_id","0")
								Else
									Local Count:Int=Int(String(MapCount.ValueForKey(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+"_id" ) ))+1
									Local Text:String=String(Map.ValueForKey(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))))
									Map.Remove(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))))
									Text:+GetTabs()+"tmp->vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+"["+count+"] = &"+Node2.GetAttribute("name")+"_isreal_;~n"
									Map.Insert(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))),Text)
									MapCount.Remove(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+"_id")
									MapCount.Insert(GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+"_id",String(Count))
								EndIf
							EndIf
						Next
					EndIf
					InStruct=True
					VTableDef=""'GetTabs()+"tmp->vptr=(void*)GC_malloc(SizeOf(Int)*"+Node.GetAttribute("methodcount")+");~n"
					Local Caster:String
					Local InitFunc:String
					If Node.GetChildren()
						'VTableDef:+GetTabs()+"void (*tmptable[])() = { "
						For Local Node2:TxmlNode=EachIn Node.GetChildren()
							If Node2.GetName()="field"
								Local Array:String=GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))
								Text:+GetTabs()+Array+" _"+Node2.GetAttribute("name")+"_;~n"
								InStruct=False
								InitFunc:+GetTabs()+"tmp->_"+Node2.GetAttribute("name")+"_ = "+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+";~n"
								InStruct=True
							ElseIf Node2.GetName()="method"
								InStruct=False
								'VTableDef:+" &"+Node2.GetAttribute("name")+"_isreal_ ,"
								'VTableDef:+GetTabs()+"tmp->vptr["+Node2.GetAttribute("vtable")+"] = (&"+Node2.GetAttribute("name")+"_isreal_);~n"
								ScopeCount:-1
								TypeIniter:+GetTabs()+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+" "+Node2.GetAttribute("name")+"( "+GetRealDatatype(Name)+" _this_, int __vpos__"
								If Node2.GetChildren()
									For Local Node3:TxmlNode=EachIn Node2.GetChildren()
										If Node3.getAttribute("name")="this"
											Node3.Unlinknode()
											Continue
										EndIf
										If Node3.GetName()="param"' And Node3.getAttribute("name")<>"this"
											TypeIniter:+", "+GetRealDatatype(Node3.GetAttribute("type"),Int(Node3.GetAttribute("dimension")))+" "+Node3.GetAttribute("name")		
										EndIf
									Next
								EndIf
								TypeIniter:+") {~n"
								ScopeCount:+1
								If DebugMode TypeIniter:+GetTabs()+"if ("+"_this_->vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+"==NULL || _this_->vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+"[__vpos__]==NULL) printf("+Chr(34)+"ERROR: Null Pointer!"+Chr(34)+");~n"
								If Node2.GetAttribute("type")<>"void" 
									TypeIniter:+GetTabs()+"return ("+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension")))+")" 
								Else 
									TypeIniter:+GetTabs()
								EndIf
								TypeIniter:+"_this_->vptr_"+GetRealDatatype(Node2.GetAttribute("type"),Int(Node2.GetAttribute("dimension"))).Replace("*","_dim")+"[__vpos__](_this_"
								If Node2.GetChildren()
									For Local Node3:TxmlNode=EachIn Node2.GetChildren()
										If Node3.GetName()="param"
											TypeIniter:+", "+Node3.GetAttribute("name")
										EndIf
									Next
								EndIf
								TypeIniter:+");~n"
								ScopeCount:-1
								TypeIniter:+GetTabs()+"}~n"
								ScopeCount:+1
								InStruct=True
							EndIf
						Next
						'VTableDef=VTableDef[0..VTableDef.Length-1]+" };~n"
						'VTableDef:+GetTabs()+"tmp->vptr=tmptable;~n"
					EndIf
					
					'VTableDef:+GetTabs()+"void (*tmptable[])() = { "
					For Local Types:String=EachIn Map.Keys()
						Local count:Int=Int(String(MapCount.valueforkey(Types+"_id")))+1
						
						VTableDef:+GetTabs()+"tmp->vptr_"+Types.Replace("*","_dim")+" = GC_malloc(sizeof("+Types+"())*"+count+");~n"'{ "+String(Map.ValueForKey(Types))+" };~n"
						VTableDef:+GetTabs()+String(Map.ValueForKey(Types))
						'VTableDef:+GetTabs()+"tmp->vptr_"+Types.Replace("*","_dim")+" = NULL;~n"
						'VTableDef:+GetTabs()+"tmp->vptr_"+Types.Replace("*","_dim")+" = tmptable_"+Types.Replace("*","_dim")+";~n~n"
					Next
					InStruct=False
					ScopeCount:-1
					
					'For Local Typ:TClass=EachIn Types
						Rem
						If Not Decs.Contains("cast_from"+GetRealDatatype(Typ).Replace("*","")+"to_"+GetRealDatatype(Name).Replace("*","")+"( "+GetRealDatatype(Typ)+" tmp ) {~n")
							Caster:+GetTAbs()+GetRealDatatype(Name)+" cast_from"+GetRealDatatype(Typ).Replace("*","")+"to_"+GetRealDatatype(Name).Replace("*","")+"( "+GetRealDatatype(Typ)+" tmp ) {~n"
							ScopeCount:+1
							Caster:+VTableDef
							Caster:+GetTAbs()+"return ("+GetRealDatatype(Name)+")tmp;~n"
							ScopeCount:-1
							Caster:+GetTabs()+"}~n"
							Decs.Insert("cast_from"+GetRealDatatype(Typ).Replace("*","")+"to_"+GetRealDatatype(Name).Replace("*","")+"( "+GetRealDatatype(Typ)+" tmp ) {~n","1")
						EndIf
						'EndRem
						'Caster:+GetTAbs()+GetRealDatatype(Typ.Name)+" cast_from"+GetRealDatatype(Name).Replace("*","")+"to_"+GetRealDatatype(Typ.Name).Replace("*","")+"( "+GetRealDatatype(Name)+" tmp ) {~n"
					Caster:+GetTAbs()+GetRealDatatype(Typ.Name)+" castto"+GetRealDatatype(Typ.Name).Replace("*","")+"( "+GetRealDatatype(Name)+" tmp ) {~n"
					ScopeCount:+1
					Caster:+VTableDef
					Caster:+GetTAbs()+"return ("+GetRealDatatype(Typ.Name)+")tmp;~n"
					ScopeCount:-1
					Caster:+GetTabs()+"}~n"
					'Next
					
					
					Text:+GetTabs()+"} "+Name.ToUpper()+";~n"
					Output=Text+Output
					TypeIniter:+GetTabs()+Name.ToUpper()+"* new_"+Name.ToUpper()+"("+Name.ToUpper()+"* tmp ) {~n"
					ScopeCount:+1
					TypeIniter:+VTableDef
					TypeIniter:+InitFunc
					TypeIniter:+GetTabs()+"return tmp;~n"
					ScopeCount:-1
					TypeIniter:+GetTabs()+"}~n"
					TypeIniter:+Caster
					EndRem
				Case "code"
					Output:+TypeMainConstructor
					Output:+GetTabs()+"int main() {~n"
					ScopeCount:+1
					Output:+GetTabs()+"GC_INIT();~n"
					Output:+Block(Node)
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
			Text:+GetTabs()+"void* allocarray_dim"+i+"(int size"
			For Local j:Int=1 To i
				Text:+", int param"+j
			Next
			Text:+") {~n"
			ScopeCount:+1
			Text:+GetTabs()+"int"
			For Local k:Int=1 To i
				Text:+"*"
			Next
			Text:+" mem=(void*)GC_malloc(size*param1);~n"
			
			Text:+GetTabs()+"int "
			For Local k:Int= 1 To i
				Text:+" vari"+k
				If k<i Then Text:+","
			Next
			Text:+"; ~n"
			
			For Local k:Int=1 To i-1
				Text:+GetTabs()+"for(vari"+k+"=0;vari"+k+"<param"+k+";vari"+k+"++) {~n"
				ScopeCount:+1
				Text:+GetTabs()
				Local Tmp:String="mem"
				For Local j:Int=1 To k
					'Tmp="((int*)"+Tmp+"[vari"+j+"])"
					Tmp=Tmp+"[vari"+j+"]"
				Next
				Text:+Tmp
				Text:+"=(void*)GC_malloc(size*param"+(k+1)+");~n"
			Next
			For Local k:Int=1 To i-1
				ScopeCount:-1
				Text:+GetTabs()+"}~n"
			Next
			Text:+GetTabs()+"return (void*)mem;~n"
			ScopeCount:-1
			Text:+"}~n"
			Output=Text+Output
		Next
		Output="#include "+Chr(34)+"clib/main.c"+Chr(34)+"~n"+Output
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
			Case "int"
				Text=Int(Node.GetAttribute("value"))
			Case "string"
				Text=""+Chr(34)+String(Node.GetAttribute("value"))+Chr(34)+""
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
				Else
					Text="castto"+GetRealDatatype(Node.GetAttribute("to")).Replace("*","")+"(("+GetRealDatatype(Node.GetAttribute("from"))+")"+GetNextMathString(TxmlNode(Node.GetFirstChild()))+")"
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
						If Node.HasAttribute("vtable") And Tabled
							'end
							Tabled=False
							Text=Text+Node.GetAttribute("vtable")
							Text:+","
						EndIf
					Next
				EndIf
				Text=Text[0..Text.length-1]
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
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"="
						
					EndIf
					If Node2.getname()="value"
						Text:+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
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
				Text:+gettabs()+"} }"
				Text="{ "+Text
			Case "return"
				Text:+"return "+GetNextMathString(TxmlNode(Node.GetFirstChild()))
			Case "null"
				Text="NULL"
			Case "array"
				
				Local Datatype:String=GetRealDatatype(Node.GetAttribute("type"),Int(Node.GetAttribute("dimension")))
				
				'If IsType(Datatype) Datatype:+"*"
				'Local Tmp:String=CurrentArray
				'Local CurrentArray:String
				'Text="(("+Datatype+")("+Before+CurrentArray+"))["+GetNextMathString(TxmlNode(TxmlNode(Node.GetLastChild()).GetFirstChild()))+"+1]"
				Text=GetNextMathString(TxmlNode(TxmlNode(Node.GetFirstChild()).GetFirstChild()))'+GetNextMathString(TxmlNode(TxmlNode(Node.GetLastChild()).GetFirstChild()))+"+1]"
				For Local Child:TxmlNode=EachIn Node.GetChildren()
					If Child.GetName()="dimension"
						Text:+"["+GetNextMathString(TxmlNode(Child.GetFirstChild()))+"]"
					EndIf
				Next
				'CurrentArray=Tmp
				
				'Before=""
			Case "type"
				Text=""+GetNextMathString(TxmlNode(Node.GetFirstChild()))+""
			'Case "getarraysize"
			'	Text="getsizearray("+CurrentArray+","+Node.GetAttribute("dimension")+")"
			Case "access"
				For Local Node2:TxmlNode=EachIn Node.GetChildren()
					Select Node2.GetName()
						Case "left"
							Text=GetNextMathString(TxmlNode(Node2.GetFirstChild()))+"->"
						Case "right"
							Local Typ:TClass, Add:String, Find:Byte=False
							For Local Class:TClass=EachIn Types
								If Class.Name=Node.getAttribute("name")
									Typ=Class
								EndIf
							Next
							If Node.GetAttribute("class")<>"" And Node.GetAttribute("class")<>Typ.Name
								'DebugStop
								While Typ And Node.GetAttribute("class")<>Typ.Name' And Typ.Name<>"object" 
									Typ=Typ.Superclass
									add:+"superclass->"
								Wend
							EndIf
						
							Text:+Add+GetNextMathString(TxmlNode(Node2.GetFirstChild()))
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
					Text="("+Obj+")allocarray_dim"+IsArray+"(sizeof("+Obj.Replace("*","")+")"
					For Local Dim:TxmlNode=EachIn Node.GetChildren()
						If Dim.GetName()="dim"
							Count:+1
							Text:+","+GetNextMathString(TxmlNode(Dim.GetFirstChild()))
						EndIf
					Next
					Text:+")"
					If MaxSizeArray<Count MaxSizeArray=Count
					
				Else
					Text="("+Obj.ToUpper()+")GC_malloc(sizeof("+Obj.ToUpper().Replace("*","")+"))"
				EndIf
				If IsType(Obj.Replace("*","")) And Not IsArray
					Text="new_"+Obj.Replace("*","").ToUpper()+"("+Text+")"
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
		Select Datatype
			Case "int","short", "long", "byte"
				Def="=0"
			Case "float","double"
				Def="=0.0f"
			Case "string"
				Def="="+Chr(34)+Chr(34)
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
			Case "string","int","float","void", "double","short","long","byte"
				Return False
			Default
				Return True
		EndSelect
	EndMethod
EndType
