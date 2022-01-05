Import "Util_CPB.bmx"
Import "TCompiler_CPB.bmx"
Import "TCGenerator.bmx"
SuperStrict

Const PublicRelease:Byte=True
DeleteFile("tmp/error.txt")

Local Datatype:TDatatype=New TDatatype.Create("int")

Local Compiler:TCompiler=New TCompiler

Compiler.LoadFunction("xml/function.xml")
Local TokenTime:Int=MilliSecs()
Compiler.tokenizer(LoadString("file.cpb"))
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
WriteStdout LoadString("tmp/XMLCode.xml")+"~n"
Local GeneratorTime:Int=MilliSecs()
New TCGenerator.Generate("tmp/XMLCode.xml","tmp/CCode.c")
GeneratorTime=MilliSecs()-GeneratorTime
GCCollect()
Execute("tmp/CCode.c")
If PublicRelease
	
	WriteStdout LoadString("tmp/CCode.c")+"~n"


	WriteStdout "Tokenizetime: "+TokenTime+"~n"
	WriteStdout "Analysetime: "+AnalyseTime+"~n"
	WriteStdout "Parsetime: "+Parsetime+"~n"
	WriteStdout "Generatetime: "+GeneratorTime+"~n"
	WriteStdout "Total: "+(ParseTime+TokenTime+AnalyseTime+GeneratorTime)+"~n"
EndIf