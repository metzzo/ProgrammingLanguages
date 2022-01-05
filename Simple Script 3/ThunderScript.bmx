Rem

ThunderScript
 Hier sind die allgemeinen Funktionen
End Rem
Include "Classes/TClassFuncField.bmx"
Include "Classes/Util.bmx" 'In dieser Datei sind alle Hilfsfunktionen, fon IsInt bis hin zu before/After ist hier alles drinnen
Include "Classes/ExterClasses.bmx" 'Da sind die einzelnen Datentypen Klassen defineirt, also die von TClass abstammen
Include "Classes/Datentypen.bmx" 'Da sind alle Datentypen definikert als Objekte, damit sie von Object bstammen(ints,...)
Include "Classes/TScript.bmx" 'Das ist ein allgemeines Script, also hier wird Compiliert und ausgeführt
Include "Classes/TStack.bmx" 'noch nicht implementiert, später sollen hier alle Werte zwischengespeichert werden
Include "Classes/TScope.bmx" 'Hier sind die Scopes definiert, also Variablen Bereiche, also wo welche Variable gültig ist
Include "Classes/TFunction.bmx" 'Hier ist die TFunction Klasse, also alle Functions werden damit implementiert
Include "Classes/TToken.bmx" 'Da ist die Klasse der Tokens, in ihr sind alle Tokens
Include "Classes/TOperator.bmx" 'Hier sind die Operatoren untergebracht, also nach ihnen wird der Quellcode geordnet
Include "Classes/TClass.bmx" 'Hier ist die Abstrakte Klasse TClass, sie ist die Schablone für jede weitere Klasse
Include "Classes/TError.bmx" 'Hier ist die Error Klasse, wenn ein Syntax Fehler gefunden wurde wird damti die Fehlermeldung analysiert ung geschaut ob man das noch iwie beheben kann
Include "Classes/TKeyWord.bmx" 'Hier sind die KEywords gespeichert (Nur fürs Compilen)
Include "Classes/TOpCode.bmx" 'Hier ist ein Op Code gespeichert
Include "Classes/TAst.bmx" 'Hier ist die Ast Klasse gespeichert (Wird benötigt um Punkt vor Strich zu implementieren)

Const DEBUG:Byte=1 'Ist es im Debug Modus




'Die Keywords
Global KeywordCount:Int=13
Global Keyword:String[20]
Global maxprio:Byte=5 'Die maximale anzahl an Prioritäten

Function InitThunderScript()
	'Definiere die Keywords
	KeywordCount=13
	KeyWord[2]="if"
	KeyWord[3]="else"
	KeyWord[4]="elseif"
	KeyWord[5]="local"
	KeyWord[6]="global"
	KeyWord[7]="until"
	KeyWord[8]="for"
	KeyWord[9]="while"
	KeyWord[10]="inlinebytecode"
	KeyWord[11]="new"
	KeyWord[12]="function"
	keyword[13]="to"
	
	'Hier werden die Operatoren erstellt
	maxprio=5
	CreateOperator("<>",4)
	CreateOperator("&&",4)
	CreateOperator("||",4)
	CreateOperator("%",4)
	CreateOperator("==",4)
	CreateOperator("=",5)
	CreateOperator("<=",4)
	CreateOperator(">=",4)
	CreateOperator("<",4)
	CreateOperator(">",4)
	CreateOperator("!",4)
	CreateOperator("~~",4)
	CreateOperator("+",3)
	CreateOperator("-",3)
	CreateOperator("*",2)
	CreateOperator("/",2)
	CreateOperator("^",1)
'	CreateOperator("&",1)
	'-1 heißt das es nur zum parsen gut ist
	CreateOperator("(",-1)
	CreateOperator(")",-1)
	CreateOperator("{",-1)
	CreateOperator("}",-1)
	CreateOperator(":",-1)
	CreateOperator(".",-1)
	CreateOperator(Chr(34),-1)
	createOperator(",",-1)
End Function

Function DeInitThunderScript()
	OperatorList.Clear()
	For Local i:Byte=0 To KeyWordCount
		keyword[i]=""
	Next
	Keywordcount=0
End Function
