Import "Util_CPB.bmx"
Import "TCompiler_CPB.bmx"
Import "TCGenerator.bmx"
Import "TBMXGenerator.bmx"
SuperStrict
Const Version:String="0.3"
Const PublicRelease:Byte=True
DeleteFile("tmp/error.txt")

TDatatype.Init() 'Alle Sachen Initialisieren
TOperator.Init()
TTypeTemplate.Init()

Local Compiler:TCompiler=New TCompiler

'Compiler.LoadHeaders("header")
Compiler.LoadFunction("xml/function.xml")
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

Local GeneratorTime:Int=MilliSecs()
New TBMXGenerator.Generate("tmp/XMLCode.xml","tmp/BMXCode.bmx")
GeneratorTime=MilliSecs()-GeneratorTime
GCCollect()

GeneratorTime=MilliSecs()
New TCGenerator.Generate("tmp/XMLCode.xml","tmp/CCode.c")
GeneratorTime=MilliSecs()-GeneratorTime
GCCollect()

Execute("tmp/CCode.c")

If PublicRelease
	WriteStdout LoadString("tmp/XMLCode.xml")+"~n"
	'WriteStdout LoadString("tmp/BMXCode.bmx")+"~n"
	WriteStdout LoadString("tmp/CCode.c")+"~n"


	WriteStdout "Tokenizetime: "+TokenTime+"~n"
	WriteStdout "Analysetime: "+AnalyseTime+"~n"
	WriteStdout "Parsetime: "+Parsetime+"~n"
	WriteStdout "Generatetime: "+GeneratorTime+"~n"
	WriteStdout "Total: "+(ParseTime+TokenTime+AnalyseTime+GeneratorTime)+"~n"
EndIf
End