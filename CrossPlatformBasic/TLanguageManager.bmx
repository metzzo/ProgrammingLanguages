Import bah.libxml
Import "TGenerator.bmx"
Import "TCompiler_CPB.bmx"
SuperStrict

Type TLanguageManager
	Global Generator:TList=New TList
	Global Languages:TList=New TList
	'Global Modules:TList=New TList
	Global CurrentPlatform:TPlatform
	
	Function Register(G:TGenerator)
		Generator.AddLast(G)
	EndFunction
	
	Function AddModules(Compiler:TCompiler)
		Compiler.SetModules(CurrentPlatform.Libs)
	EndFunction
	
	Function Generate(InputPath:String, OutputPath:String)
		CurrentPlatform.Lang.Generator.Generate(InputPath, OutputPath)
		Local Comm:String=CurrentPlatform.Compilecommand.Replace("%FILENAME%",OutputPath).Replace("%COMPILERDIR%",CurrentDir()).Replace("%PLATFORMPATH%","Language/"+CurrentPlatform.Lang.Name+"/libs").Replace("%OBJECTNAME%",OutputPath.Replace(".c",".o"))
		Print Comm
		System_(Comm)
		Comm=CurrentPlatform.Linkercommand.Replace("%FILENAME%",OutputPath).Replace("%COMPILERDIR%",CurrentDir()).Replace("%PLATFORMPATH%","Language/"+CurrentPlatform.Lang.Name+"/libs").Replace("%OBJECTNAME%",OutputPath.Replace(".c",".o"))
		Print Comm
		System_(Comm)
	EndFunction
	
	Function Execute()
		System_("compileexe.exe")
	EndFunction
	
	Function Init(Path:String)
		Local doc:TxmlDoc=TxmlDoc.ParseFile(path)
		For Local Node:TxmlNode=EachIn Doc.GetRootElement().GetChildren()
			Select Node.GetName()
				Case "lang"
					Local Lang:TLanguage=New TLanguage
					Lang.Name=Node.GetAttribute("name")
					For Local Gen:TGenerator=EachIn Generator
						If Gen.GetLanguage() = Lang.Name
							Lang.Generator = Gen
						EndIf
					Next
					For Local Node2:TxmlNode=EachIn Node.GetChildren()
						If Node2.GetName()="platform"
							Local P:TPlatform=New TPlatform
							Lang.Platforms.AddLast(P)
							P.name=Node2.GetAttribute("name")
							P.Lang=Lang
							
							For Local Node3:TxmlNode=EachIn Node2.GetChildren()
								Select Node3.GetName()
									Case "compiler"
										P.Compilecommand = Node3.GetAttribute("command")
									Case "linker"
										P.Linkercommand = Node3.GetAttribute("command")
									Case "module"
										P.Libs.AddLast("xml/module/"+Node3.GetAttribute("path"))
								EndSelect
							Next
						EndIf
					Next
					Languages.AddLast(Lang)
				Case "current"
					CurrentPlatform=Null
					For Local Lang:TLanguage=EachIn Languages
						If Lang.Name = Node.GetAttribute("language")
							For Local P:TPlatform=EachIn Lang.Platforms
								If P.Name=Node.GetAttribute("platform")
									CurrentPlatform=P
								EndIf
							Next
						EndIf
					Next
					If CurrentPlatform=Null RuntimeError "Couldnt find platform/language"
'				Case "module"
'					Modules.AddLast("xml/module/"+Node.GetAttribute("path"))
			EndSelect
		Next
	EndFunction
EndType


Type TLanguage
	Field Name:String
	Field Platforms:TList=New TList
	Field Generator:TGenerator
	
EndType

Type TPlatform
	Field Name:String
	Field Compilecommand:String, LinkerCommand:String
	Field Lang:TLanguage
	Field Libs:TList=New TList
EndType