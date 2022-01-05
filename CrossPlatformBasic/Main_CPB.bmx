Import "Util_CPB.bmx"
Import "TCompiler_CPB.bmx"
Import "TCGenerator.bmx"
Import "TLanguageManager.bmx"
SuperStrict 
Const Version:String="0.4"
Const PublicRelease:Byte=True
DeleteFile("tmp/error.txt")

TLanguageManager.Register(New TCGenerator)´
TLanguageManager.Init("xml/config.xml")

TDatatype.Init() 'Alle Sachen Initialisieren
TOperator.Init()
Local Compiler:TCompiler=New TCompiler
TLanguageManager.AddModules(Compiler)
'Compiler.LoadHeaders("header")
Compiler.LoadAllFunction("/xml/function/")
Local TokenTime:Int=MilliSecs()
Compiler.tokenizer(LoadString("tmp/file.cpb"))
TokenTime=MilliSecs()-TokenTime
GCCollect()
Local AnalyseTime:Int=MilliSecs()
Compiler.Analyser()
AnalyseTime=MilliSecs()-analyseTime
GCCollect()
Local ParseTime:Int=MilliSecs()
Compiler.Parser()
ParseTime=MilliSecs()-ParseTime
GCCollect()
If PublicRelease
	WriteStdout LoadString("tmp/XMLCode.xml")+"~n"
	'WriteStdout LoadString("tmp/CCode.c")+"~n"


	WriteStdout "Tokenizetime: "+TokenTime+"~n"
	WriteStdout "Analysetime: "+AnalyseTime+"~n"
	WriteStdout "Parsetime: "+Parsetime+"~n"
	'WriteStdout "Generatetime: "+GeneratorTime+"~n"
	WriteStdout "Total: "+(ParseTime+TokenTime+AnalyseTime)+"~n"
EndIf
Local GeneratorTime:Int=MilliSecs()
TLanguageManager.Generate("tmp/XMLCode.xml","tmp/CCode.c")
GeneratorTime=MilliSecs()-GeneratorTime
GCCollect()
TLanguageManager.Execute()



End