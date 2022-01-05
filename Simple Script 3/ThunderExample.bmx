SuperStrict

Include "ThunderScript.bmx"
Include "ThunderVM.bmx"
'Include "ThunderVM.bmx"
InitThunderScript() '5ThunderScriopt starten

Local script:TScript=New TScript 'Erstellt ein neues Script
script.Load("Script/script.ss3") 'L�dt eine Datei

'Hier k�nnen nun Funktionen, Klassen,... hinzugef�gt werden
script.AddDataTypes() 'F�gt die Standard Datentypen hinzu (Int, Float,...)
'script.Registerclass(New TBasic)

script.Scan() 'Scant die Datei, 5also zerlegt sie in Token

script.Compile() 'Compiliert die Datei

For Local i:Int=0 To script.bytecode.length-1
	Local op:TOpCode=script.bytecode[i]
	Print op.instring'+" :"+op.id
Next
'script=Null

script.SaveBytecode(WriteFile("script.ss3"))

script.Shutdown() 'Befreit den Speicher

DeInitThunderScript() 'ThunderScript Beenden

Local vm:TVM=New tVM
vm.Load(ReadFile("script.ss3"))
vm.Execute()







