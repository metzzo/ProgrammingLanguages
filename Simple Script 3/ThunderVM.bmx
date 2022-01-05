Rem
Const OP_PUSH:Byte=1 'setzt einen Wert auf dem Stack
Const OP_CHECK:Byte=2 'Überprüft den letzten Stack, wenn wahr, führe den nächsten OpCode aus
Const OP_EXIT:Byte=3 'Gehe aus dem aktuellen Scope
Const OP_POP:Byte=4 'Lösche den letzten Inhalt vom Stack
Const OP_SCOPE:Byte=5 'heißt dass ein neuer Scope beginnt
Const OP_ENDSCOPE:Byte=6 'Heißt das der Scope endet
Const OP_CALL:Byte=7 'Der Klassentyp vom aktuellen Stack ist der angegeben wert
Const OP_HOLD:Byte=8 'Fügt dem Scope eine Variable hinzu
Const OP_MOVE:Byte=9 'Weist der Variable den letzten Stackeintrag zu
Const OP_VAR:Byte=10 'Gibt den Inhalt der Variable aus
Const OP_REGISTERFUNC:Byte=11 'Registriert eine neue Funktion im Speicher
Const OP_PAR:Byte=12 'Fügt einen Parameter hinzu
Const OP_FILE:Byte=13 'Fügt zu einer Funktion ein File hinzu
Const OP_JUMP:Byte=14 'Springt zu den nächsten OpCodes
Const OP_INT:Byte=15 'Der Token ist ein Int
Const OP_FLOAT:Byte=16 'Der Token ist ein Float
Const OP_DOUBLE:Byte=17 'Der Token ist ein Double
Const OP_SHORT:Byte=18 'Der Token ist ein Short
Const OP_LONG:Byte=19 'Der Token ist ein Long
Const OP_BYTE:Byte=20 'Der Token ist ein Byte
Const OP_STRING:Byte=21 'Der Token ist ein String
Const OP_POINTER:Byte=22 'Heißt das es auf einen Pointer zeigt
Const OP_OPERATOR:Byte=23 'Ein Operator (+,-,*,/,...)
Const OP_RETURN:Byte=24 'Setzt den Return Wert für die gerade ausgewählte Funktion
Const OP_FUNCINDEX:Byte=25 'Setzt den Index der Funktion mit der sie aufgerufen wird
Const OP_NULL:Byte=26 'Wenn auf dieses Objekt zugegriffen wird, dann gibts nen Error
Const OP_CREATECLASS:Byte=27 'Erzeugt einen neuen Speicherbereich
Const OP_CALLFROMPOINTER:Byte=28 'Ruft eine Funktion vom ausgewählten Pointer aus
Const OP_PUSHFROMPOINTER:Byte=29 'Setzt einen Wert vom ausgewähltem Pointer
Const OP_POPFROMPOINTER:Byte=30 'Löscht einen Wert vom Stack vom gewählten Pointer
Const OP_VARFROMPOINTER:Byte=32 'Gibt den Inhalt einer Variable aus vom pointer
Const OP_REGISTERCLASS:Byte=33 'registriert eine Klasse
Const OP_REGISTERFIELD:Byte=34  'registriert ein Feld
Const OP_TYPE:Byte=35 'setzt den Typ
Const OP_INDEX:Byte=36 'setzt Index
Const OP_STATIC:Byte=37 'setzt Static
Const OP_SIZE:Byte=38 'setzt Size
End Rem

Const STACK_VARINT:Byte=1
Const STACK_VARFLOAT:Byte=2
Const STACK_VARSTRING:Byte=3
Const STACK_VARDOUBLE:Byte=4
Const STACK_VARBYTE:Byte=5
Const STACK_VARSHORT:Byte=6
Const STACK_VARLONG:Byte=7
Const STACK_FUNC:Byte=8
Const STACK_VAR:Byte=9
Const STACK_IDLE:Byte=10 'Der StackPlatz ist nur reserviert, es steht noch kein konkreter Typ an

Const STACKSIZE:Int=1024
Type TVM
	Field Name:String
	Field Stream:TStream
	Field File:TBank[]'Hier ist die Datei in Bank Form
	Field Size:Int
	
	Field Stack:TBank[STACKSIZE] 'Der STack in Bank form
	Field STackPos:Int
	
	Field CurSize:Int
	Field Pointer:Int
	Field LastOpCode:Byte
	
	
	'Execute - führt das Script aus
	Method Execute()
		For Local i:Int=0 To Self.Size
			i=Self.ExecOpCode(i)
		Next
	End Method
	
	Rem
		ExecNextOp: Führt diesen OpCode aus, und die benätigten Nachfolger
	End Rem
	Method ExecOpCode:Int(Pos:Int)
		Local Bank:TBank=File[Pos]
		Local OpCode:Byte=PeekByte(Bank,0)
		Self.LastOpCode=OpCode
		Select OpCode
			Case OP_PUSH
				Pos=Self.ExecOPCode(Pos+1)
				Self.PushStack(LastOpCode)
				
				
			Case OP_POP
				Self.PopStack()
			Case OP_MOVE
				Self.MOVESTACK()
			Case OP_INT
				'Print "Da"
			Case OP_FLOAT
				
			Case OP_STRING
				
			Case OP_REGISTERCLASS
				'Nun Speicher im Stack Reservieren
				Self.PushStack(STACK_VAR)
				Pos=Self.ExecOPCode(Pos+1)
			Case OP_SIZE
				'For Local i:Int=0 To PeekInt(Bank,1)-1
				'	Self.PushStack(STACK_IDLE)
				'Next
			Case OP_REGISTERFIELD
				Select PeekByte(Bank,1)
					Case IS_INT
						Self.PushStack(STACK_VARINT)
					Case IS_FLOAT
						Self.PushStack(STACK_VARFLOAT)
					Case IS_STRING
						Self.PushStack(STACK_VARSTRING)
					Rem
					Case IS_DOUBLE
						Self.PushStack(STACK_VARDOUBLE)
					Case IS_SHORT
						Self.PushStack(STACK_VARSHORT)
					Case IS_LONG
						Self.PushStack(STACK_VARLONG)
					Case iS_BYTE
						Self.PushStack(STACK_VARBYTE)
					End Rem
				End Select
				
			Case OP_INDEX
				
			Case OP_REGISTERFUNC
			
			Case OP_CALL
				
			Default
				'RuntimeError "Ungültiges Format (Unbekannter Opcode)"
			'...
		End Select
		Return Pos
	End Method
	'Load - Lädt die Datei in den Speicher
	Method Load(File:TStream)
		Local i:Int=0
		Repeat
			i:+1
			Local id:Int=i-1
			Self.File=Self.File[..i]
			Self.File[id]=CreateBank(1)
			Local ReadTyp:Byte=ReadByte(File)
			PokeByte(Self.File[id],0,Readtyp)
			Select ReadTyp
				Case OP_INT
					ResizeBank(Self.File[id],BankSize(Self.file[id])+4)
					PokeInt Self.File[id],1,ReadInt(FIle)
				Case OP_FLOAT
					ResizeBank(Self.File[id],BankSize(Self.file[id])+4)
					PokeFloat Self.File[id],1,ReadInt(FIle)
				Case OP_STRING
					Local Off:Int=ReadInt(File)
					Local Text:String=ReadString(File,Off)
					ResizeBank(Self.File[id],BankSize(Self.file[id])+Len(Text)+4) '+4 da ja die Länge nich mit gespeichert werden muss
					Pokestring Self.File[id],1,Text
				Case OP_SIZE
					ResizeBank(Self.File[id],BankSize(Self.file[id])+4)
					PokeInt Self.File[id],1,ReadInt(FIle)
				Case OP_POP,OP_PUSH,OP_MOVE,OP_STATIC,OP_FILE,OP_PAR,OP_EXIT
					'Nichts weiter reinlesen
			End Select
		Until Eof(FIle)
		Self.Size=i-1
	End Method
	
	'Stack Funktionen
	
	'PushStack - reserviert einen Platz am STack
	Method PushStack(Typ:Byte)
		If StackPos=STACKSIZE Then RuntimeError "Stack Overflow!"
		Select Typ
		
		
		End Select
	End Method
	'PopStack - löscht einen Platz am Stack
	Method PopStack()
	
	End Method
	
	'MoveStack - Weist einer Variable einen Stackinhalt zu
	Method MoveStack()
	
	End Method
	
	Method GetStack(Pos:Int)
		
	End Method
End Type

Function PokeString:Int(Bank:TBank,Off:Int,Str:String)
	PokeInt Bank,Off,Len(str)
	Off:+4
	Local Off2:Int=Off
	For Off=off To off2+Len(str)-1
		PokeByte(Bank,Off,Str[off-off2])
	Next	
	Return off
End Function

