'VM.bmx - Diese Datei f�hrt das Script aus
Const OP_PUSH:Byte=1 'setzt einen Wert auf dem Stack
Const OP_CHECK:Byte=2 '�berpr�ft den letzten Stack, wenn wahr, f�hre den n�chsten OpCode aus
Const OP_EXIT:Byte=3 'Gehe aus dem aktuellen Scope
Const OP_POP:Byte=4 'L�sche den letzten Inhalt vom Stack
Const OP_SCOPE:Byte=5 'hei�t dass ein neuer Scope beginnt
Const OP_ENDSCOPE:Byte=6 'Hei�t das der Scope endet
Const OP_CALL:Byte=7 'Der Klassentyp vom aktuellen Stack ist der angegeben wert
Const OP_HOLD:Byte=8 'F�gt dem Scope eine Variable hinzu
Const OP_MOVE:Byte=9 'Weist der Variable den letzten Stackeintrag zu
Const OP_VAR:Byte=10 'Gibt den Inhalt der Variable aus
Const OP_REGISTERFUNC:Byte=11 'Registriert eine neue Funktion im Speicher
Const OP_PAR:Byte=12 'F�gt einen Parameter hinzu
Const OP_FILE:Byte=13 'F�gt zu einer Funktion ein File hinzu
Const OP_JUMP:Byte=14 'Springt zu den n�chsten OpCodes
Const OP_INT:Byte=15 'Der Token ist ein Int
Const OP_FLOAT:Byte=16 'Der Token ist ein Float
Const OP_DOUBLE:Byte=17 'Der Token ist ein Double
Const OP_SHORT:Byte=18 'Der Token ist ein Short
Const OP_LONG:Byte=19 'Der Token ist ein Long
Const OP_BYTE:Byte=20 'Der Token ist ein Byte
Const OP_STRING:Byte=21 'Der Token ist ein String
Const OP_POINTER:Byte=22 'Hei�t das es auf einen Pointer zeigt
Const OP_OPERATOR:Byte=23 'Ein Operator (+,-,*,/,...)
Const OP_RETURN:Byte=24 'Setzt den Return Wert f�r die gerade ausgew�hlte Funktion
Const OP_FUNCINDEX:Byte=25 'Setzt den Index der Funktion mit der sie aufgerufen wird
Const OP_NULL:Byte=26 'Wenn auf dieses Objekt zugegriffen wird, dann gibts nen Error
Const OP_CREATECLASS:Byte=27 'Erzeugt einen neuen Speicherbereich
Const OP_CALLFROMPOINTER:Byte=28 'Ruft eine Funktion vom ausgew�hlten Pointer aus
Const OP_PUSHFROMPOINTER:Byte=29 'Setzt einen Wert vom ausgew�hltem Pointer
Const OP_POPFROMPOINTER:Byte=30 'L�scht einen Wert vom Stack vom gew�hlten Pointer
Const OP_VARFROMPOINTER:Byte=32 'Gibt den Inhalt einer Variable aus vom pointer
'Const OP_MOVEFROMPOINTER:Byte=33 'Setzt einen Wert vom Pointer aus einer //NIcht sicher

Type TVM
	Field Name:String
	Field Stream:TStream
	Field File:TBank 'Hier ist die Datei in Bank Form
	Field Stack:TBank 'Der STack in Bamk form
	
	Field FIleStream:TBankStream
	Field STackStream:TBankStream
	'Execute - f�hrt das Script aus
	Method Execute()
		Select Readtype
			Case OP_PUSH
				
		End Select
	End Method
	
	'Load - L�dt die Datei in den Speicher
	Method Load(File:TStream)
		Repeat
			Local ReadTyp:Byte=ReadByte(File)
			WriteByte Self.filestream,Readtyp 
		Until Eof(FIle)
	End Method
	
	'Stack Funktionen
	
	'PushStack - reserviert einen Platz am STack
	Method PushStack()
	
	End Method
	'PopStack - l�scht einen Platz am Stack
	Method PopStack()
	
	End Method
	
	'MoveStack - Weist einer Variable einen Stackinhalt zu
	Method MoveStack()
	
	End Method
End Type
