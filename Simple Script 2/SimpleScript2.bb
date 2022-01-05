
;Dims
Dim Parameter$(MAXPARAM)
Dim GlobalVar$(MAXVARS,3) ;0=name 1=typ(INT,FLOAT,STRING) 2=Inhalt
Dim paramorder(MAXPARAM,2) ;der Conteiner für die geordneten Parameter in Funktionen
Dim ifstep(MAXLINES) ;Der Conatiner mit den If Stepins (Nur fürs Compilen)
Dim mappuffer$(0) ;Der Container für die Scripte wenn eine Zeile hinzugefügt werden muss
;includes
Graphics3D 640,480,0,2
Include "rechnen.bb"
Include "Tmap.bb"
;Include "Libs\sprite candy.bb"
;Include "Libs\sprite candy gui.bb"
;Include "Libs\Draw3D.bb"
;Include "Libs\Physix.bb"
;Konstanten
Const VERSION$="0.81"

Const MAXLINES=10000   ;Die maximale Anzahl an Zeilen
Const MAXPARAM=50      ;Die maximale Anzahl an Parameter im Kommando Parser im Scriptparser
Const MAXIFS=100       ;Die maximale Anzahl an ElseIf Abfragen
Const MAXSCHLEIFE=1000 ;Die maximale Anzahl an Schleifen
Const MAXVARS=1000     ;Die maximale Anzahl an Variablen pro Typ
Const MAXMETHOD=100    ;Die maximale Anzahl an Methoden bei types
Const MAXMEMBER=100    ;Die maximale Anzahl an Subvariablen von Types
Const MAXCASE=50       ;Die maximale Anzahl an Case's bei den selects
Const MAXARRAY=20      ;Die maximale Anzahl an Dimensionen bei Arrays
Const MAXEXITS=100     ;Die maximale Anzahl an Exits bei Schleifen
Const MAXCONTINUE=100  ;Die maximale Anzahl an Continue bei Schleifen
Const MAXLEN=40        ;Die maximale Anzahl an  die ein Befehl haben darf


;Globale Variablen
Global arraymap              ;In dieser Map sind alle Arrays
Global classmap              ;In ihr sind alle öglichen KlassenNamen gespeichert
Global Globalvars=0          ;Wie viele Globale Variablen es gibt
Global funcmap               ;In dieser Map sind alle Funktionen gespeichert
Global scriptdir$="script/"  ;Der Ordner wo die Scripte sind
Global parsedir$="compiled/" ;Der Ordner wohin die geparsten Scripte hinkommen
Global selfpar               ;Das Handle des Self Parameters

;Types
Type TPreScript ;In diesem Script lässt sich noch der Inhalt verändern
	Field rows[MAXLINES]
	Field zeilen
	Field stream
	Field file$
	Field name$
End Type
Global pscript.TPreScript

Type Tscript ;Ein Script(Kann auch eine Funktion sein)
	;Variablen
	Field varint[MAXVARS] ;DER inhalt
	Field varintn$[MAXVARS] ;Der Name
	Field varintc ;Wie viele es davon gibt
	
	Field varfloat#[MAXVARS]
	Field varfloatn$[MAXVARS]
	Field varfloatc
	
	Field varstring$[MAXVARS] ;Types
	Field varstringn$[MAXVARS]
	Field varstringc
	
	;sonstiges
	Field stream ;der Stream vom zu parsenden
	Field rows$[MAXLINES] ;die gesamte Zeile
	Field ifjump[MAXLINES] ;Wenn es ein If ist, wohin es springen soll bei Unwahr
	Field loopjump[MAXLINES] ;Wenn es eine Schleife ist, wohin es springen soll
	Field rowcount ;die aktuelle Zeile
	Field zeilen ;die anzahl der Zeilen
	Field name$ ;name
	Field varmode ;0=Strikte Variablen Deklaration, 1=keine Variablen Deklaration, 2=keine Typ Unterscheidung
	Field commandmode ;0= Mit Klammern 1=Ohne Klammern (Die Befehle)
	Field prescript ;Das handle von dem PreScript, von dem geladen wird
	
	;Parsing Variablen
	Field realline
	
	
	;Return
	Field returnnow;ob es returnen soll
	Field returnw$ ;der wert den es returnen soll
	
	;parameter
	Field pars ;die Anzahl der Parameter die Aktiv sind
	
	;If abfragen
	Field Ifcount ;wie viele ifas gerade ausgeführt werden
	Field Ifs%[MAXIFS] ;welche if abfrage welchen Wert hat
End Type
Global script.Tscript

Type Tlabel ;Ein label (Nur fürs Parsen)
	Field name$
	Field row
End Type

Type Tif ;Ein If Block (Nur fürs parsen)
	Field row
	Field endrow
	Field elserow
	Field stepin
End Type
Global tif.Tif

Type Tif2 ;Ein If Block (Nur fürs parsen)
	Field row
	Field endrow
	Field elserow
	Field stepin
End Type
Global tif2.Tif2

Type Tloop ;Ein Schleifen Block (Nur fürs Parsen ;))
	Field stepin
	Field startpos
	Field endpos
	Field typ$
	Field exits[MAXEXITS]
	Field exitcount
	Field continue[MAXCONTINUE]
	Field continuecount
	;WHILE
	;FOR
	;REPEAT
End Type
Global loop.Tloop

Type Tselect ;EIn Select Block (Nur fürs Parsen ;))
	Field CasePos[MAXCASE] ;die positionen der einzelnen cases
	Field CaseBed[MAXCASE] ;Die bedingungen der einzelnen cases
	Field CaseCount ;wie viele cases es gibt
	Field defaultPos ;Die Position des Defaults
	Field endselectPos ;Die position wann das select beendet ist
	Field bed$ ;Die start Bedingung
	Field id ;Welchen Stepin es hat
End Type
Global sel.Tselect

Type Tconst ;Eine Konstante nur fürs Parsen
	Field name$
	Field content$
End Type
Global con.Tconst

;Soll demnächst gelöscht werden
Type Ttype ;Eine Klasse
	Field name$ ;der name des Types
	
	Field names$[MAXMEMBER] ;alle Namen der Member
	Field namecount ;Wie viele Namen es gibt
	
	Field indexint[MAXMEMBER]
	Field indexfloat[MAXMEMBER]
	Field indexstring[MAXMEMBER]
	Field membercount
	
	Field construct ;das Handle des Konstruktors
	Field destruct ;das hndl dees destruktors
	
	Field varint[MAXVARS] ;DER inhalt
	Field varintn$[MAXVARS] ;Der Name
	Field varintc ;Wie viele es davon gibt
	
	Field varfloat#[MAXVARS]
	Field varfloatn$[MAXVARS]
	Field varfloatc
	
	Field varstring$[MAXVARS]
	Field varstringn$[MAXVARS]
	Field varstringc
	
	Field method$[MAXMETHOD] ;das hndl einer methode
	Field methodc ;der counter der Mwethoden
End Type
Global tType.Ttype

Type tobject ;Ein Member von einer Klasse
	Field name$
	Field owner$
	Field tType
	;die Position
	Field indexint
	Field indexfloat
	Field indexstring
	
	;Zum Speichern
	Field varint[MAXVARS] ;DER inhalt
	Field varintn$[MAXVARS] ;Der Name
	Field varintc ;Wie viele es davon gibt
	
	Field varfloat#[MAXVARS]
	Field varfloatn$[MAXVARS]
	Field varfloatc
	
	Field varstring$[MAXVARS]
	Field varstringn$[MAXVARS]
	Field varstringc
End Type
Global Tobject.tobject
;Die nicht mehr

Type TArray ;Ein Array (Keine assoziativen)
	Field arraydim ;Wie viele Dimensionen
	Field dimsize[MAXARRAY] ;Die größen einzelner Dimensionen
	Field totalsize ;Die Totale Größe der Bank
	Field name$ ;Name
	Field funchndl ;Das Handle der Function
	Field bankhndl ;Das handle der Bank mit dem Inhalt
	Field typ$ ;INT=int, FLOAT=float STRING=Stritng
End Type
Global array.TArray
;Lokale Variablen
Local script1=0

;ausführen


AppTitle "Simple Script 2- ausführend "+scriptdir
Print "Simple Script2 Version: "+VERSION
Print "compiling..."
Init_SimpleScript(scriptdir,parsedir)
importall()

Local starttime=MilliSecs()
Find_OOP("script.sb")
Find_Funcs("script.sb")
script1=parse_script(create_script("script.sb"))
optimize_functions()
Local endtime=MilliSecs()-starttime
;compilen
Print "compiling Time: "+endtime+" ms."
Print "executing..."
starttime=MilliSecs()
exec_script(script1)
endtime=MilliSecs()-starttime
Print "executing Time: "+endtime+" ms."
Free_SimpleScript()
WaitKey()
End

;-------------------------------------------------------------------------
Function Free_SimpleScript()
	Delete Each Tscript
	Delete Each Tconst
	Delete Each Tfunc
	Delete Each Tstring
	Delete Each Tkey
	Delete Each Tif
	Delete Each Tif2
	Delete Each Tlabel
	Delete Each Tloop
	Delete Each TPreScript
	Delete Each TArray
	Delete Each tobject
	Delete Each Ttype
	Delete Each Tcat
	
	FreeBank funcmap
	FreeBank globalmap
	
End Function

Function Init_SimpleScript(sdir$,pdir$)
	scriptdir=sdir$
	parsedir=pdir
	killdir(parsedir)
	CreateDir(parsedir)
	InitMap()
	funcmap=CreateMap("funcmap")
	arraymap=CreateMap("arraymap")
	classmap=CreateMap("classmap")
	Globalvars=0
	add_const("NORMAL",0)
	add_const("NO_DECLARATION",1)
	add_const("NO_VAR_TYPES",2)
	add_const("NORMAL",0)
	add_const("NO_BRACKETS",1)
End Function

Function Find_Funcs(file$="script.sb",inparsedir=0)
	Local stream,stream2
	Local zeile$
	Local wholerow$
	Local i
	
	Local ffunc.Tfunc,hndl
	If inparsedir=0
		stream=ReadFile(scriptdir+file$)
	Else
		stream=ReadFile(parsedir+file$)
	EndIf
	While Eof(stream)=0
		zeile$=ReadLine(stream)
		ParseCmd(zeile$," ,")
		If Lower(Command)="function"
			Parameter(0)=Parameter(1)+".func"
			stream2=WriteFile(parsedir+Parameter(0))
			
			func.Tfunc=New Tfunc
			func\n=Parameter(1)
			func\pars=ParameterCount-1
			func\param=Mid(zeile,10+Len(func\n))
			func\param=Mid(func\param,2)
			func\param=Mid(func\param,1,Len(func\param)-1)
			For i=2 To ParameterCount
				Select Right(Parameter(i),1)
					Case "%"
						func\intpars=func\intpars+1
						func\typ[i-2]=1
					Case "#"
						func\floatpars=func\floatpars+1
						func\typ[i-2]=2
					Case "$"
						func\stringpars=func\stringpars+1
						func\typ[i-2]=3
				End Select
			Next
			
			func\n=Replace(func\n,"_class_","->")
			
			
			InsertMap(funcmap,func\n,Handle(func))
			ffunc.Tfunc=func.Tfunc
			hndl=create_script(Parameter(0))
			func.Tfunc=ffunc.Tfunc
			func\funchndl=hndl
			
			
			While Lower(wholerow$)<>"endfunction"
				wholerow$=ReadLine(stream)
				If Lower(wholerow$)="endfunction" Then Exit
				WriteLine stream2,wholerow$
			Wend
			func\stream=stream2
			wholerow=""
			CloseFile stream2
			parse_script(func\funchndl,0)
		EndIf
	Wend
	
	For func=Each Tfunc
		If Object.Tscript(func\funchndl)<>Null
			check_script(func\funchndl)
			Exit
		EndIf
	Next
	CloseFile stream
End Function

Function Find_Ifs(scripthndl,ch=1)
	Local i,i2,i3
	Local stepin,steps
	script.Tscript=Object.Tscript(scripthndl)
	;STepins markieren
	Dim ifstep(MAXLINES) ;0=Normaler STepin 1: Die ID eines IFS
	Dim mappuffer(MAXLINES)
	;Zuerst in Array einlesen und Elseifs umwandeln
	For i=1 To script\zeilen
		ParseCmd(script\rows[i])
		If Command="elseif"
			stepin=1
			i2=i
			Repeat
				i2=i2+1
				ParseCmd(script\rows[i2])
				If Command="if"
					stepin=stepin+1
				EndIf
				If Command="endif"
					stepin=stepin-1
				EndIf
			Until stepin=0 And Command="endif"
			;Nun das else und endif einfügen
			script\zeilen=script\zeilen+1
			For i3=script\zeilen To i+2 Step -1
				script\rows[i3]=script\rows[i3-1]
			Next
			script\rows[i+1]=Mid(script\rows[i],5)
			script\rows[i]="else()"
			script\zeilen=script\zeilen+1
			For i3=script\zeilen To i2+1 Step -1
				script\rows[i3]=script\rows[i3-1]
			Next
			script\rows[i2]=script\rows[i2+1]
			script\rows[i2+1]="endif()"
		EndIf
	Next
	stepin=0
	;Und jetzt die Stepins vergeben
	For i=0 To script\zeilen
		mappuffer(i)=script\rows[i]
		ParseCmd(mappuffer(i))
		If Command="if"
			stepin=stepin+1
		EndIf
		If Command="endif"
			stepin=stepin-1
		EndIf
		
		ifstep(i)=stepin
	Next
	
	If ch=1
		If stepin<0 Then RuntimeError "EndIf zuviel"
		If stepin>0 Then RuntimeError "EndIf zuwenig"
	EndIf
	stepin=0
	For i=0 To script\zeilen
		ParseCmd(mappuffer(i))
		If Command="if"
			tif.Tif=New Tif
			tif\row=i
			tif\stepin=ifstep(i)
		EndIf
		If Command="endif"
			tif=Last Tif
			tif\endrow=i
			tif2=New Tif2
			tif2\stepin=tif\stepin
			tif2\endrow=tif\endrow
			tif2\row=tif\row
			tif2\elserow=tif\elserow
			Delete tif
		EndIf
		If Command="else"
			tif=Last Tif
			tif\elserow=i
		EndIf
	Next
	For tif2.Tif2=Each Tif2
		If tif2\elserow=0
			script\ifjump[tif2\row]=tif2\endrow
		Else
			script\ifjump[tif2\row]=tif2\elserow
			script\ifjump[tif2\elserow]=tif2\endrow
		EndIf
	Next
	Delete Each Tif
	Delete Each Tif2
	
End Function

Function Find_Loops(scripthndl,ch=1)
	Local i
	Local stepin
	script.Tscript=Object.Tscript(scripthndl)
	
	For i=0 To script\zeilen
		ParseCmd(script\rows[i])
		Command=Lower(Trim(Command))
		;Vorderteil
		Select Command
			Case "repeat"
				loop.Tloop=New Tloop
				loop\typ="REPEAT"
				loop\startpos=i
				stepin=stepin+1
				loop\stepin=stepin
			Case "while"
				loop.Tloop=New Tloop
				loop\typ="WHILE"
				loop\startpos=i
				stepin=stepin+1
				loop\stepin=stepin
			Case "for"
				loop.Tloop=New Tloop
				loop\typ="FOR"
				loop\startpos=i
				stepin=stepin+1
				loop\stepin=stepin
			Case "exit"
				loop\exitcount=loop\exitcount+1
				loop\exits[loop\exitcount]=i
			Case "continue"
				loop\continuecount=loop\continuecount+1
				loop\continue[loop\continuecount]=i
		End Select
		
		;Hinterteil
		Select Command
			Case "until"
				loop\endpos=i
				script\loopjump[loop\endpos]=loop\startpos
				For i2=1 To loop\exitcount
					script\loopjump[loop\exits[i2]]=loop\endpos
				Next
				For i2=1 To loop\continuecount
					script\loopjump[loop\continue[i2]]=loop\startpos
				Next
				Delete loop
				stepin=stepin-1
			Case "wend"
				loop\endpos=i
				script\loopjump[loop\endpos]=loop\startpos
				script\loopjump[loop\startpos]=loop\endpos
				For i2=1 To loop\exitcount
					script\loopjump[loop\exits[i2]]=loop\startpos
				Next
				For i2=1 To loop\continuecount
					script\loopjump[loop\continue[i2]]=loop\endpos
				Next
				Delete loop
				stepin=stepin-1
			Case "next"
				loop\endpos=i
				script\loopjump[loop\endpos]=loop\startpos
				script\loopjump[loop\startpos]=loop\endpos
				For i2=1 To loop\exitcount
					script\loopjump[loop\exits[i2]]=loop\startpos
				Next
				For i2=1 To loop\continuecount
					script\loopjump[loop\continue[i2]]=loop\endpos
				Next
				Delete loop
				stepin=stepin-1
		End Select
		
	Next
End Function

Function Find_OOP(file$="script.sb")
	Local curmap
	Local zeile$
	Local stream=ReadFile(scriptdir+file$)
	Local oostream=WriteFile(parsedir+file+".oop")
	Local methstream
	Local classname$
	Local pos
	CloseFile oostream
	oostream=OpenFile(parsedir+file$+".oop")
	methstream=WriteFile(parsedir+file+".method")
	
	While Eof(stream)=0
		zeile$=ReadLine(stream)
		
		ParseCmd(zeile)
		Command=Lower(Trim(Command))
		Select Command
			Case "type"
				classname=Parameter(1)
				
				WriteLine oostream,"function "+Parameter(1)+"(name$)"
				WriteLine oostream,"local map%"
				WriteLine oostream,"map%=mapcreate(name$)"
				WriteLine oostream,"mapadd("+classmap+",map%,"+classname+")"
				
			Case "endtype","end type"
				WriteLine oostream,"return(map%)"
				WriteLine oostream,"endfunction"
				
				WriteLine methstream,"function "+classname+"_class_"+"new()"
				WriteLine methstream,"return()"
				WriteLine methstream,"endfunction"
				
				
			Case "field"
				If Parameter(2)="" Then Parameter(2)=0
				If Lower(Parameter(2))="as"
					Parameter(1)=Lower(Trim(Parameter(1)))
					varname$=Parameter(1)
					Parameter(2)=0
					add_const(varname+"->new",varname+"="+Parameter(3))
					
				EndIf
				WriteLine oostream,"mapadd(map%,"+Chr(34)+Parameter(1)+Chr(34)+","+Parameter(2)+")"
			Case "method"
				zzeile$=zeile
				zeile="function "+classname+"_class_"+Lower(Trim(Mid(Trim(zeile),8,8-Len(zeile))))
				WriteLine methstream,zeile
				zeile="local self%=self%"
				While Trim(Lower(zeile$))<>"endmethod" And Trim(Lower(zeile))<>"end method" And Eof(stream)=0
					WriteLine methstream,Trim(zeile)
					zeile=ReadLine(stream)
				Wend
				
				WriteLine methstream,"endfunction"
				
		End Select
		
	Wend
	CloseFile stream
	CloseFile oostream
	CloseFile methstream
	Find_Funcs(file$+".oop",1)
	Find_Funcs(file+".method",1)
End Function

Function create_script(file$="script.sb")
	Local stream,par$,i
	
	script.Tscript=New Tscript
	script\Ifs[0]=1
	script\commandmode=1
	
	For func.Tfunc=Each Tfunc
		If Trim(func\param)<>""
			ParseCmd(func\param," ,","()")
			For i=0 To ParameterCount
				If Instr(Parameter(i),"=")
					par$=Mid(Parameter(i),Instr(Parameter(i),"=")+1)
					Parameter(i)=Mid(Parameter(i),1,Instr(Parameter(i),"=")-1)
					WriteLine func\stream,"if ("+Parameter(i)+"==0)"
					WriteLine func\stream,Parameter(i)+"="+par$
					WriteLine func\stream,"endif"
				Else
					par=0
				EndIf
				Select Right(Parameter(i),1)
					Case "%"
						script\varintc=script\varintc+1
						script\varint[script\varintc]=par
						script\varintn[script\varintc]=Parameter(i)
					Case "#"
						script\varfloatc=script\varfloatc+1
						script\varfloat[script\varfloatc]=par
						script\varfloatn[script\varfloatc]=Parameter(i)
					Case "$"
						script\varstringc=script\varstringc+1
						script\varstring[script\varstringc]=par
						script\varstringn[script\varstringc]=Parameter(i)
				End Select
			Next
		EndIf
	Next
	If file<>""
		If FileType(scriptdir+file$)=1
			CopyFile(scriptdir+file$,parsedir+file)
		EndIf
		script\name=file$
		script\stream=OpenFile(parsedir+file$)
		If script\stream=0 Then RuntimeError "Script Datei existiert nicht!"
		
	EndIf
	Return Handle(script)
End Function

Function parse_script(handl,check=1)
	
	Local zeile$
	Local zcount
	Local i,i2
	Local label.Tlabel
	Local selectstep
	Local oldcount
	
	script.Tscript=Object.Tscript(handl)
	If script.Tscript=Null
		RuntimeError "Script existiert nicht."
	EndIf
	Repeat
		zcount=zcount+1
		script\realline=script\realline+1
		script\rows[zcount]=Trim(script\rows[zcount])
		If script\prescript<>0
			If script\realline=script\zeilen Then Exit
			;Nun lies das nächste Pre Script ein
			script\rows[zcount]=script\realline
		Else
			If Eof(script\stream) Then Exit
			script\rows[zcount]=ReadLine(script\stream)
		EndIf
		zeile=script\rows[zcount]
		If zeile="rem"
			Repeat
				remove_line(Handle(script),zcount)
				zcount=zcount+1
			Until Lower(Trim(script\rows[zcount]))="endrem" Or zcount=script\zeilen
			remove_line(Handle(script),zcount)
		EndIf
		If Left(script\rows[zcount],8)="function"
			Repeat
				remove_line(Handle(script),zcount)
				zcount=zcount+1
			Until ReadLine(script\stream)=Lower(Trim("endfunction")) Or Eof(script\stream)
			remove_line(Handle(script),zcount)
		EndIf
		If Left(script\rows[zcount],4)="type"
			Repeat
				remove_line(Handle(script),zcount)
				zcount=zcount+1
			Until ReadLine(script\stream)=Lower(Trim("endtype")) Or Eof(script\stream)
			remove_line(Handle(script),zcount)
		EndIf
		oldcount=zcount
		zcount=parse_line(Handle(script),zcount)
		If zcount<>oldcount
			script\zeilen=script\zeilen+(zcount-oldcount)
		EndIf
	Forever
	
	script\zeilen=zcount-1
	For i=1 To script\zeilen
		ParseCmd(script\rows[i])
		If Command="goto"
			For label.Tlabel=Each Tlabel
				If label\name=Parameter(1)
					script\rows[i]="jumptoline("+label\row+")"
					Command=""
				EndIf
			Next
			If Command<>""
				RuntimeError "Label nicht gefunden!"
			EndIf
		EndIf
	Next
	;Nun alle Select-case ersetzen
	For sel.Tselect=Each Tselect
		For i=1 To sel\CaseCount
			If i=1
				script\rows[sel\CasePos[i]]="if ("+sel\bed+sel\CaseBed[i]+")"
			Else
				script\rows[sel\CasePos[i]]="elseif ("+sel\bed+sel\CaseBed[i]+")"
			EndIf
			script\rows[sel\defaultPos]="else()"
			script\rows[sel\endselectPos]="endif()"
		Next
	Next
	
	Delete Each Tselect
	Delete Each Tlabel
;	 ind_OOP(Handle(script),check)
	;Nun die Leerzelenlöschen
	For i=0 To script\zeilen
		script\rows[i]=Trim(script\rows[i])
		If script\rows[i]=""
			;nun alles nach vorne schieben
			script\zeilen=script\zeilen-1
			For i2=i To script\zeilen
				script\rows[i2]=script\rows[i2+1]
			Next
		EndIf
	Next
	find_loops(Handle(script),check)
	find_ifs(Handle(script),check)
	
	If check
		check_script(Handle(script))
	EndIf
	;debug
	s=WriteFile(parsedir+script\name+".debug")
	For i=0 To script\zeilen
		WriteLine s,i+": "+script\rows[i]
	Next
	CloseFile(s)
	Return Handle(script)
End Function

Function parse_line(scripthndl,zcount)
	Local wholerow$,wholerow2$ ;Die akuelle Zeile
	Local realline ;die echte Zeile
	Local str1$,str2$ ;da werden die Strings gespeichert bei den Variablen
	Local i,i2 ;Die einzelnen Indexe
	Local varname$ ;Der Name der Variable
	Local nname$,name$ ;Container Variable
	Local anhang$ ;Welcher Typ die Variable ist
	Local pos,ppos ;Da werden die Positionen für die Schleifen gespeichert
	Local z$ ;Für die For Schleife das speichern der Variable
	Local stepin,selectstep ;die Stepin Variablen für die Schleifen
	Local label.Tlabel ;wenns ein label ist
	Local nl$ ;New Line beim Then
	Local zzcount ;Für Schleife
	
	script.Tscript=Object.Tscript(scripthndl)
	wholerow=script\rows[zcount]
	If Instr(wholerow$,";")
		wholerow$=Left(wholerow$,Instr(wholerow$,";")-1)
	EndIf
	If wholerow$<>""
			;\" enfernen
		wholerow=Replace(wholerow,"\"+Chr(34),"\'")
		
		For con.Tconst=Each Tconst
			wholerow=Replace(wholerow,con\name,con\content)
		Next
		If script\realline=1 ;Den Modus festlegen
			ParseCmd(wholerow,",()","")
			If Lower(Trim(Command))="mode"
				Select Parameter(1)
					Case 0
						script\varmode=0
					Case 1
						script\varmode=1
					Case 2
						script\varmode=2
				End Select
				Select Parameter(2)
					Case 0
						script\commandmode=0
					Case 1
						script\commandmode=1
				End Select
				wholerow=""
			EndIf
		EndIf
			;Wenn der commandmode == 1
		If script\commandmode=1
			If Instr(wholerow," ")
				str1$=Lower(Trim(Left(wholerow,Instr(wholerow," "))))
			Else
				str1=Lower(Trim(wholerow))
			EndIf
			For func=Each Tfunc
				If func\n=str1
					If Instr(wholerow," ")
						wholerow=func\n+" ("+Mid(wholerow,Instr(wholerow," ")+1)+")"
					Else
						wholerow=wholerow+" ()"
					EndIf
					Exit
				EndIf
			Next
			
		EndIf
		If script\varmode>0 ;Keine Local Deklaration
			If Instr(wholerow,"=")
				str1=Left(wholerow,Instr(wholerow,"=")-1)
				str2=" "
				For i=1 To script\varintc
					If script\varintn[i]=str1
						str2=""
					EndIf
				Next
				For i=1 To script\varfloatc
					If script\varfloatn[i]=str1
						str2=""
					EndIf
				Next
				For i=1 To script\varstringc
					If script\varstringn[i]=str1
						str2=""
					EndIf
				Next
				If str2=" "
					wholerow="local "+wholerow
				EndIf
				
			EndIf
		EndIf
		
		;For Schleife
		If Left(wholerow,4)="for " And Instr(wholerow,"forever")=0
			ParseCmd(wholerow)
			If Instr(wholerow,"step")
				add_var(scripthndl,"INT","forstep_"+Parameter(1),Parameter(5))
			EndIf
			add_var(scripthndl,"INT","formax_"+Parameter(1),Parameter(3))
			wholerow="for ("+Parameter(1)+")"
			Goto dontwritein
		EndIf
		;Variablen
		If Left(wholerow,5)="local"
			wholerow=Trim(Lower(wholerow))
			wholerow=Replace(wholerow,":"," as ")
			If Instr(Lower(wholerow)," as ")
				varname$=Trim(Mid(Lower(wholerow),7,Instr(Lower(wholerow)," as ")-7))
				anhang$=""
				name$=Trim(Lower(Mid(Lower(wholerow),Instr(Lower(wholerow)," as ")+3)))
				
				Select name
					Case "int"
						wholerow=Mid(wholerow,1,Instr(wholerow,"as")-2)+"%"
					Case "float"
						wholerow=Mid(wholerow,1,Instr(wholerow,"as")-2)+"#"
					Case "string"
						wholerow=Mid(wholerow,1,Instr(wholerow,"as")-2)+"$"
					Default
						add_var(Handle(script),"INT",varname+"%")
						add_const(varname+"->new",varname+"%="+name)
						wholerow=""
						Goto dontwritein
				End Select
			EndIf
			
			str1$=Mid(wholerow,7,Instr(wholerow,"=")-7)
			If Instr(wholerow,"=")
				str2$=Mid(wholerow,Instr(wholerow,"=")+1)
				wholerow=str1+"="+str2
			ElseIf Left(wholerow,1)=":"
				wholerow=Mid(wholerow,2)
			Else
				str2=""
				wholerow=str1+"=0"
			EndIf
			
			If checkvariablename(str1)=-1 Then error("Ungültiger Variablen Typ",realline,script\name)
			If checkvariablename(str1)=0 Then error("Variable darf nur A-Z a-z 0-9 und _ als Name haben",realline,script\name)
			Select Right(str1,1)
				Case "%"
					script\varintc=script\varintc+1
					script\varintn$[script\varintc]=str1
					script\varint[script\varintc]=Int(str2)
				Case "#"
					script\varfloatc=script\varfloatc+1
					script\varfloatn$[script\varfloatc]=str1
					script\varfloat[script\varfloatc]=Float(str2)
				Case "$"
					script\varstringc=script\varstringc+1
					script\varstringn$[script\varstringc]=str1
					script\varstring[script\varstringc]=str2
			End Select
		EndIf
		.goawaynow
		If Left(wholerow,6)="global"
			str1$=Mid(wholerow,8,Instr(wholerow,"=")-8)
			str2$=Mid(wholerow,Instr(wholerow,"=")+1)
			wholerow=Lower(wholerow)
			wholerow=str1+"="+str2
			
			Globalvars=Globalvars+1
			GlobalVar(Globalvars,0)=str1
			Select Right(str1,1)
				Case "%"
					GlobalVar(Globalvars,1)="INT"
					GlobalVar(Globalvars,2)=Int(str2)
				Case "#"
					GlobalVar(Globalvars,1)="FLOAT"
					GlobalVar(Globalvars,2)=Float(str2)
				Case "$"
					GlobalVar(Globalvars,1)="STRING"
					GlobalVar(Globalvars,2)=str2
			End Select
		EndIf
		;Nun vor jedem -> ein % machen!
;		wholerow2=wholerow
;		lastinst=1
;		While Instr(wholerow2,"->")
;			lastinst=Instr(wholerow,"->",lastinst)
;			wholerow=Mid(wholerow,1,lastinst-1)+"%"+Mid(wholerow,lastinst)
;			wholerow2=Mid(wholerow2,1,Instr(wholerow2,"->")-1)+Mid(wholerow2,Instr(wholerow2,"->")+2)
;		Wend
		wholerow=Replace(wholerow,"this->","self->")
		wholerow=Replace(wholerow,"->","%->")
		wholerow=Replace(wholerow,")%->",")->")
		;Strings beseitigen
		For i=1 To Len(wholerow)
			If Mid(wholerow,i,1)=Chr(34)
				st.Tstring=New Tstring
				st\content=Mid(wholerow,i,Instr(wholerow,Chr(34),i+1)-i+1)
				st\id=CreateBank()
				wholerow=Replace(wholerow,st\content,st\id)
			EndIf
		Next
		;Nun bereinigen (Testzwecke)
		wholerow=Lower(Trim(wholerow))
		
		If Instr(wholerow,"%")
			For i=1 To Globalvars
				If GlobalVar(i,1)="INT"
					i2=i+MAXVARS
					wholerow=Replace(wholerow,GlobalVar(i,0),"%"+i2+"%")
				EndIf
			Next
			For i=1 To script\varintc
				For i2=1 To script\varintc
					If Len(script\varintn[i2])>Len(script\varintn[i])
						If script\varintn[i2]<>""
							wholerow=Replace(wholerow,script\varintn[i2],"%"+i2+"%")
						EndIf
					EndIf
				Next
				If script\varintn[i]<>""
					wholerow=Replace(wholerow,script\varintn[i],"%"+i+"%")
				EndIf
			Next
		EndIf
		
		If Instr(wholerow,"#")
			For i=1 To Globalvars
				If GlobalVar(i,1)="FLOAT"
					i2=i+MAXVARS
					wholerow=Replace(wholerow,GlobalVar(i,0),"#"+i2+"#")
				EndIf
			Next
			
			For i=1 To script\varfloatc
				For i2=1 To script\varfloatc
					If Len(script\varfloatn[i2])>Len(script\varfloatn[i])
						wholerow=Replace(wholerow,script\varfloatn[i2],"#"+i2+"#")
					EndIf
				Next
				If script\varfloatn[i]<>""
					wholerow=Replace(wholerow,script\varfloatn[i],"#"+i+"#")
				EndIf
			Next
		EndIf
		If Instr(wholerow,"$")
			For i=1 To Globalvars
				If GlobalVar(i,1)="STRING"
					i2=i+MAXVARS
					wholerow=Replace(wholerow,GlobalVar(i,0),"$"+i2+"$")
				EndIf
			Next
			For i=1 To script\varstringc
				For i2=1 To script\varstringc
					If Len(script\varstringn[i2])>Len(script\varstringn[i])
						wholerow=Replace(wholerow,script\varstringn[i2],"$"+i2+"$")
					EndIf
				Next
				If script\varstringn[i]<>""
					wholerow=Replace(wholerow,script\varstringn[i],"$"+i+"$")
				EndIf
			Next
		EndIf
		
			;strings wieder einfügen
		For st.Tstring=Each Tstring
			wholerow=Replace(wholerow,st\id,st\content)
		Next
		Delete Each Tstring
		
		
		wholerow2=Replace(wholerow,"==","--")
		wholerow2=Replace(wholerow2,"<=","++")
		wholerow2=Replace(wholerow2,">=","[!")
		If Instr(wholerow2,"=")
;			If get_var()
			If Instr(wholerow2,"->")
;				wholerow2=Mid(wholerow2,1,Instr(wholerow2,"->")-2)+"!%"+Mid(wholerow2,Instr(wholerow2,"->"))
			Else
				If Instr(wholerow2,"%")
					wholerow2=Mid(wholerow2,1,Instr(wholerow2,"=")-2)+"!%"+Mid(wholerow2,Instr(wholerow2,"="))
				ElseIf Instr(wholerow2,"#")
					wholerow2=Mid(wholerow2,1,Instr(wholerow2,"=")-2)+"!#"+Mid(wholerow2,Instr(wholerow2,"="))
				ElseIf Instr(wholerow2,"$")
					wholerow2=Mid(wholerow2,1,Instr(wholerow2,"=")-2)+"!$"+Mid(wholerow2,Instr(wholerow2,"="))
				EndIf
			EndIf
			wholerow=Replace(wholerow2,"=","=(")+")"
			
			wholerow=Replace(wholerow2,"--","==")
			wholerow=Replace(wholerow,"++","<=")
			wholerow=Replace(wholerow,"[!",">=")
		EndIf
		
			;Nun die Arrays Registrieren
		If Left(wholerow,3)="dim"
			ParseCmd(wholerow,",()")
			
			Parameter(1)=Replace(Parameter(1),"%","")
			Parameter(1)=Replace(Parameter(1),"#","")
			Parameter(1)=Replace(Parameter(1),"$","")
			add_func(Parameter(1))
			add_func("change_"+Parameter(1))
		EndIf
		
			;Nun Alle Change Funktionen einsetzen statt den Arrays
		For func=Each Tfunc
			If Left(func\n,7)="change_"
				
				If Instr(wholerow,"=") And Instr(wholerow,Mid(func\n,8))
					If Instr(wholerow,Mid(func\n,8))<Instr(wholerow,"=")
						;Nun die !%, !# , !$ ersetzen
						
						ParseCmd(wholerow,"()","")
						ParseCmd(Parameter(1),",","")
						
						str1=""
						For i=0 To ParameterCount
							str1=str1+Trim(Parameter(i))+","
						Next
						ParseCmd(wholerow,"=","")
						
						wholerow=func\n+"("+str1+Chr(34)+Trim(Parameter(1))+Chr(34)+")"
					EndIf
				EndIf
			EndIf
		Next
		
		;Konstanten ersetzen
		If Left(wholerow,5)="const"
			ParseCmd(wholerow,":")
			con.Tconst=New Tconst
			con\name=Parameter(0)
			If Trim(Parameter(1))<>Float(Parameter(1))
				con\content=calco(Parameter(1))
			Else
				con\content=Parameter(1)
			EndIf
			wholerow=""
			Goto dontwritein
		EndIf
		
		
		;If Abfragen und select case und Schleifen
		If Instr(wholerow,"forever") Then wholerow="until (0)"
		If wholerow="repeat()" Then wholerow="repeat"
		
		Select wholerow
			Case "endif","end if","end if()"
				wholerow="endif()"
			Case "else"
				wholerow="else()"
			Case "end select","end select()","endselect"
				wholerow="endselect()"
		End Select
			;elseif
		If Left(wholerow,7)="else if"
			wholerow=Replace(wholerow,"else if","elseif")
		EndIf
			;then Klausel
		If Instr(wholerow,"then") And Instr(wholerow,"if")
			nl$=Mid(wholerow,Instr(wholerow,"then")+5)
			script\rows[zcount]=Left(wholerow,Instr(wholerow,"then")-1)
			Add_Row(Handle(script),zcount)
			script\rows[zcount+1]=nl$
			Add_Row(Handle(script),zcount+1)
			zcount=zcount+1
			wholerow="endif"
		EndIf
			;Select - Case
		If Left(wholerow,6)="select"
			ParseCmd(wholerow)
			sel.Tselect=New Tselect
			If (Right(Parameter(1),2)="==" Or Right(Parameter(1),1)="<" Or Right(Parameter(1),1)=">" Or Right(Parameter(1),2)="<=" Or Right(Parameter(1),2)="=>" Or Right(Parameter(1),2)="<>")=0
				sel\bed=sel\bed+"=="
			EndIf
			sel\bed=Parameter(1)
			selectstep=selectstep+1
			sel\id=selectstep
			wholerow=""
			Goto dontwritein
		EndIf
		If Left(wholerow,9)="endselect"
			For sel.Tselect=Each Tselect
				If sel\id=selectstep
					sel\endselectPos=zcount
				EndIf
			Next
			selectstep=selectstep-1
		EndIf
		If Left(wholerow,4)="case"
			ParseCmd(wholerow)
			For sel.Tselect=Each Tselect
				If sel\id=selectstep
					sel\CaseCount=sel\CaseCount+1
					sel\CasePos[sel\CaseCount]=zcount
					sel\CaseBed[sel\CaseCount]=Parameter(1)
				EndIf
			Next
		EndIf
		If Left(wholerow,7)="default"
			ParseCmd(wholerow)
			For sel.Tselect=Each Tselect
				If sel\id=selectstep
					sel\defaultPos=zcount
				EndIf
			Next
		EndIf
		;label
		If Left(wholerow,5)="label"
			ParseCmd(wholerow)
			label.Tlabel=New Tlabel
			label\name=Parameter(1)
			label\row=zcount
		EndIf
		
		;Nun vor jedem Befehl ein ' ' hinzufügen
		For i=1 To MAXLEN
			str1$=Mid(wholerow,1,i-1)
			For func.Tfunc=Each Tfunc
				If func\n=str1
					str2=func\n
					For func2.Tfunc=Each Tfunc
						If str1=func2\n And func2<>func
							str2=""
						EndIf
					Next
					If str2<>""
						;Function gefunden!
						wholerow=str2+" "+Mid(wholerow,i)
						Goto dontwritein
					EndIf
					
				EndIf
			Next
		Next
		
	EndIf
	.dontwritein
	script\rows[zcount]=wholerow$
	Return zcount
End Function

Function exec_script$(hndl,row=0,count=-1)
	script.Tscript=Object.Tscript(hndl)
	Local i
	Local varint,varfloat,varstring
	Local rowtemp$
	Local steps,i2
	
	
	If script.Tscript<>Null
		If count=-1 Then count=script\zeilen
		If func.Tfunc<>Null
			If func\pars>0
				For i=0 To ParameterCount
					Select func\typ[i]
						Case 1 ;int
							varint=varint+1
							script\varint[varint]=Paras(i)
						Case 2 ;float
							varfloat=varfloat+1
							script\varfloat[varfloat]=Paras(i)
						Case 3 ;string
							varstring=varstring+1
							script\varstring[varstring]=Paras(i)
					End Select
				Next
			EndIf
			
		EndIf
		script\Ifs[0]=1
		steps=row+count
		For script\rowcount=row To steps;script\zeilen
			rowtemp$=script\rows$[script\rowcount]
			If rowtemp<>""
				For i=1 To script\varintc
					rowtemp=Replace(rowtemp,"%"+i+"%",script\varint[i])
				Next
				For i=1 To script\varstringc
					rowtemp=Replace(rowtemp,"$"+i+"$",script\varstring[i])
				Next
				For i=1 To script\varfloatc
					rowtemp=Replace(rowtemp,"#"+i+"#",script\varfloat[i])
				Next
				For i=1 To Globalvars
					i2=i+MAXVARS
					Select GlobalVar(i,1)
						Case "INT"
							rowtemp=Replace(rowtemp,"%"+i2+"%",GlobalVar(i,2))
						Case "FLOAT"
							rowtemp=Replace(rowtemp,"#"+i2+"#",GlobalVar(i,2))
						Case "STRING"
							rowtemp=Replace(rowtemp,"$"+i2+"$",GlobalVar(i,2))
					End Select
				Next		
				
				rechnen(rowtemp)
				If script\returnnow<>0
					If isfloat(script\returnw)
						Return script\returnw
					Else
						st.Tstring=New Tstring
						st\content=script\returnw
						st\id=CreateBank()
						Return script\returnw
					EndIf
				EndIf
			EndIf
		Next
	Else
		RuntimeError "Script existiert nicht"
	EndIf
	script\rowcount=0
	script\Ifcount=0
	script\returnnow=0
	Delete Each tobject
	Return
End Function

Function exec_func$(fn$,pars=0,hndl=0)
	Local e$
	Local i2,i
	Local arraypos$ ;Die Position im Array
	Local steps
	Select func\cat
		Case "basic" ;Basic Syntax (If Abfragen, Schleifen...)
			Include "Functions/basic.bb"
		Case "string" ;String funktionen (mid,len,left,...)
			Include "Functions/string.bb"
		Case "time" ;Zeit Funktionen (waittimer, millisecs,..)
			Include "Functions/time.bb"
		Case "graphic" ;Grafik Funktionen/Klassen ()
			Include "Functions/graphic.bb"
		Case "math" ;Mathe Funktionen Cos,sind,..
			Include "Functions/math.bb"
		Case "key" ;Tasten Funktionen (kesdown, keyhit, waitkey,...)
			Include "Functions/key.bb"
	End Select
	
	arraypos=0
	
	
	
	For array=Each TArray
		If array\name=fn
				;Und jetzt wird umgerechnet!
			If ParameterCount>2
				arraypos="("
				steps=0
				For i=0 To ParameterCount-1
					arraypos=arraypos+"("+Paras(i)
					steps=steps+1
					For i2=steps To array\arraydim
						arraypos=arraypos+"*"+array\dimsize[i2]
					Next
					arraypos=arraypos+")+"
				Next
				arraypos=Left(arraypos,Len(arraypos)-1)+")*4"
				arraypos=calco(arraypos)
			ElseIf ParameterCount=2
				arraypos=(Int(Paras(0))*array\dimsize[1]+Int(Paras(1)))*4 
			Else
				arraypos=Int(Paras(0))*4
			EndIf
			Select array\typ
				Case "INT"
					e=Int(PeekInt (array\bankhndl,Int(arraypos)))
				Case "FLOAT"
					e=Float(PeekFloat (array\bankhndl,Int(arraypos)))
				Case "STRING"
					e=PeekString (array\bankhndl,Int(arraypos))
			End Select
			
			fn=""
			Exit
		ElseIf "change_"+array\name=fn
			
			If ParameterCount-1<>array\arraydim Then RuntimeError "Zuwenige/Zuvielse Dimensionen bei Array :"+array\name
			If ParameterCount>3
				arraypos="("
				steps=0
				For i=0 To ParameterCount-2
					arraypos=arraypos+"("+Paras(i)
					steps=steps+1
					For i2=steps To array\arraydim
						arraypos=arraypos+"*"+array\dimsize[i2]
					Next
					arraypos=arraypos+")+"
				Next
				arraypos=Left(arraypos,Len(arraypos)-1)+")*4"
				arraypos=calco(arraypos)
			ElseIf ParameterCount=3
				arraypos=(Int(Paras(0))*array\dimsize[1]+Int(Paras(1)))*4 
			Else
				arraypos=Int(Paras(0))*4
			EndIf
			Select array\typ
				Case "INT"
					PokeInt(array\bankhndl,Int(arraypos),Int(Paras(ParameterCount-1)))
				Case "FLOAT"
					PokeFloat(array\bankhndl,Int(arraypos),Float(Paras(ParameterCount-1)))
				Case "STRING"
					PokeString(array\bankhndl,Int(arraypos),Paras(ParameterCount-1))
			End Select
			fn=""
			Exit
		EndIf
	Next
	
	If fn<>"" And func\funchndl<>-1
		blubb=Handle(script)
		If selfpar<>0
			set_var(hndl,"INT","self%",selfpar)
			selfpar=0
		EndIf
		e=exec_script(hndl)
		If Instr(fn,"->new")
			set_var(Handle(script),"INT",Mid(fn,1,Instr(fn,"->")-1),e)
		EndIf
		If st.Tstring<>Null
			e$=st\id
		EndIf
		script.Tscript=Object.Tscript(blubb)
	EndIf
	
	
	If isfloat(e)=0 And isint(e)=0
		st.Tstring=New Tstring
		st\content=e
		st\id=CreateBank()
		e=st\id
	EndIf
	
	Return e
End Function

Function exec_line(row$)
	Local stream=WriteFile (parsedir+"/tmp.sb")
	WriteLine stream,row$
	CloseFile stream
	ss.Tscript=script.Tscript
	sc=create_script("tmp.sb")
	parse_script(sc)
	exec_script(sc)
	script.Tscript=ss.Tscript
End Function

Function exec_OnlineFile$(url$,host$)
	Local name$="downloadfile.sb"
	LoadWebFile(url,name,1)
	Return exec_script(parse_script(create_script(name)))
End Function

Function Add_Row(scripthndl,row)
	script.Tscript=Object.Tscript(scripthndl)
	script\zeilen=script\zeilen+1
	script\rows[row]=""
	For i=script\zeilen To row+1 Step -1
		script\rows[i+1]=script\rows[i]
	Next
End Function

Function remove_line(scripthndl,row)
	script.Tscript=Object.Tscript(scripthndl)
	script\zeilen=script\zeilen-1
	script\rows[row]=""
	For i=script\zeilen To row Step -1
		script\rows[i+1]=script\rows[i]
	Next
End Function

;-------------------------------------------------------------------------
;syntax überprüfen
Function optimize_functions()
	For func=Each Tfunc
		func\used=0
	Next
	For script=Each Tscript
		For i=0 To script\zeilen
			For func=Each Tfunc
				If Instr(script\rows[i],func\n) Then func\used=1
			Next
		Next
	Next
	For func=Each Tfunc
		If func\used=0 And func\stream=0 Then Delete func.Tfunc
	Next
End Function

Function check_script(hndl)
	script.Tscript=Object.Tscript(hndl)
	If script.Tscript=Null Then RuntimeError "Script existiert nicht !"
	For i=0 To script\zeilen
		check_string(script\rows[i],i,script\name)
	Next
End Function

Function check_string(row$,rowcount,scriptname$="")
	Local laenge=Len(row)
	Local msg$=""
	Local z$,i
	Local funcn$
	Local bracket,open
	Local lastcommand=0
	Local find
	
	row=Trim(Lower(row))
	If Instr(row,";")
		row=Left(row,Instr(row,";")-1)
	EndIf
	For i=1 To laenge+1
		z$=Mid(row$,i,1)
		If i=laenge+1 Then z=","
		Select z
			Case "+","-","*","/","(",")","=",",",Chr(34),"&"," ","<",">"
				If lastcommand<>i
					lastcommand=lastcommand+1
					funcn$=Lower(Trim(Mid(row,lastcommand,i-lastcommand)))
					find=0
					For func.Tfunc=Each Tfunc
						If Lower(Trim(func\n))=funcn
							find=1
						EndIf
					Next
					If Instr(funcn,"!")
						If isint(Mid(funcn,2,Instr(funcn,"!")-2))
							find=1
						EndIf
					EndIf
					If Right(funcn,1)="%" Or Right(funcn,1)="#" Or Right(funcn,1)="$"
						find=1 ;Soll noch geändert werden
					EndIf
					
					If isint(funcn)=1 Or isfloat(funcn)=1
						find=1
					EndIf
					If Right(funcn,1)=Chr(34) Or Left(funcn,1)=Chr(34)
						find=1
					EndIf
					For func=Each Tfunc ;Soll noch geändert werden
						If Instr(row,func\n) And func\keyword=1 Then find=1
					Next
					If Instr(row,"->") Then find=1 ; Soll auch noch geändert werden
					Select funcn
						Case "and","or","xor","mod","==","<",">","<>","<=",">=","repeat","function","endfunction","type","endtype"
							find=1
					End Select
					
					If find=0
						msg="Funktion/Variable nicht gefunden"
					EndIf
					lastcommand=i
				EndIf
		End Select
		Select z
			Case "("
				bracket=bracket+1
			Case ")"
				bracket=bracket-1
			Case Chr(34)
				Repeat
					i=i+1
				Until Mid(row,i,1)=Chr(34) Or i>laenge
				If i>laenge Then open=1:Exit
		End Select
		
	Next
	;Fehler ausgeben
	If bracket>0 Then 
		msg$="Öffnende Klammer zu viel."+Chr(13)
	EndIf
	If bracket<0 Then 
		msg$="Schließende Klammer zu viel"+Chr(13)
	EndIf
	If open
		msg$="Anführungszeichen nicht geschlossen"+Chr(13)
	EndIf
	If Instr(row,"%!%") Then msg="Ungültiger Int Variablen Name"+Chr(13)
	If Instr(row,"#!#") Then msg="Ungültiger Float Variablen Name"+Chr(13)
	If Instr(row,"$!$") Then msg="Ungültiger String Variablen Name"+Chr(13)
	If msg<>""
		msg=msg+Chr(13)+row
		error(msg,rowcount,scriptname)
	EndIf
End Function

Function isint(name$)
	For i=1 To Len(name)
		a =Asc(Mid(name,i,1))
		If a<48 Or a>57
			Return 0
		EndIf
	Next
	Return 1
End Function

Function isfloat(name$)
	For i=1 To Len(name)
		a =Asc(Mid(name,i,1))
		If(a<48 Or a>57) And a<>46
			Return 0
		EndIf
	Next
	Return 1
End Function

Function checkvariablename(name$) ;return: -1 Zeichen fehlt, 0 ungültiger Name 1=richtig
	If Right(name,1)="%" Or Right(name,1)="#" Or Right(name,1)="$" Or Instr(name,"->")
		name=Replace(name,"->","")
		For i=1 To Len(name)
			a =Asc(Mid(name,i,1))
			If a<65 And a>90 And a<>95 And a<97 And a>122
				Return 0
			EndIf
		Next
	Else
		Return -1
	EndIf
	Return 1
End Function

Function error(msg$,rowcount,scriptname$="",Li$="")
	If scriptname="" Then scriptname=scriptdir
	If Li$<>""
		Li$=Chr(13)+"Mit dem Inhalt: "+Li$
	EndIf
	msg="Fehler in Script: "+scriptname+Chr(13)+"In Zeile: "+rowcount+Chr(13)+"Fehlermeldung: "+msg$+Li$
	RuntimeError msg
End Function

;-------------------------------------------------------------------------
;Pre Scripte
Function create_prescript()
	pscript=New TPreScript
	Return Handle(pscript)
End Function

Function load_onlinefile(prescripthndl,url$)
	Local name$="downloadfile.sb"
	LoadWebFile(url,name,1)
	load_file(prescripthndl,name$)
End Function

Function load_file(prescripthndl,file$)
	pscript=Object.TPreScript(prescripthndl)
	CopyFile(scriptdir+file$,parsedir+file)
	pscript\name=file$
	pscript\stream=OpenFile(parsedir+file$)
	If pscript\stream=0 Then RuntimeError "Script Datei exsistiert nicht!"
	While Eof(pscript\stream)=0
		script\zeilen=script\zeilen+1
		script\rows[script\zeilen]=Trim(ReadLine(script\stream))
	Wend
End Function

Function add_line(prescripthndl,row$)
	pscript.TPreScript=Object.TPreScript(prescripthndl)
	pscript\zeilen=pscript\zeilen+1
	pscript\rows[pscript\zeilen]=row$
End Function

Function modify_line(prescripthndl,zeile,row$)
	pscript.TPreScript=Object.TPreScript(prescripthndl)
	pscript\rows[zeile]=row$
End Function

Function get_line$(prescripthndl,zeile)
	pscript.TPreScript=Object.TPreScript(prescripthndl)
	Return pscript\rows[zeile]
End Function

Function convert_PreScript(prescripthndl)
	Local i
	pscript=Object.TPreScript(prescripthndl)
	script=New Tscript
	script\name=pscript\name
	script\stream=pscript\stream
	script\prescript=prescripthndl
	script\zeilen=pscript\zeilen
	For i=0 To pscript\zeilen
		script\rows[i]=pscript\rows[i]
	Next
End Function

;-------------------------------------------------------------------------
;Module
Function importall()
	add_basic_funcs()
	add_math_funcs()
	add_key_funcs()
	add_time_funcs()
	add_system_funcs()
	add_graphic_funcs()
	add_string_funcs()
End Function

Function add_system_funcs()
	add_cat("system")
	add_func("apptitle",1)
	add_func("calldll",4)
	add_func("commandline",0)
	add_func("getenv",1)
	add_func("runtimeerror",1)
	add_func("setenv",2)
	add_func("systemproperty",1)
	add_func("execapp",1)
End Function

Function add_time_funcs()
	add_cat("time")
	add_func("createtimer",1)
	add_func("currentdate",0)
	add_func("durrenttime",0)
	add_func("delay",1)
	add_func("freetimer",1)
	add_func("millisecs",0)
	add_func("rndseed",0)
	add_func("seedrand",1)
	add_func("waittimer",1)
End Function

Function add_key_funcs()
	add_cat("key")
	;tasten
	add_func("keyhit",1)
	add_func("keydown",1)
	add_func("waitkey",0)
	add_func("flushkeys",0)
	add_func("getkey",0)
	;maus
	add_func("mousedown",1)
	add_func("mousehit",1)
	add_func("mousex",0)
	add_func("mousey",0)
	add_func("mousez",0)
	add_func("flushmouse",0)
	add_func("getmouse",0)
	add_func("setmousemode",1)
	add_func("waitmouse",0)
	add_func("mousexspeed",0)
	add_func("mouseyspeed",0)
	add_func("mousezspeed",0)
	add_func("movemouse",2)
	add_func("mousewait",0)
End Function

Function add_basic_funcs()
	add_cat("basic",1)
	add_func("print",1)
	add_func("if",1)
	add_func("endif",0)
	add_func("else",0)
	add_func("elseif",1)
	add_func("delfunc",1)
	add_func("addfunc",1)
	add_func("import",1)
	add_func("importall",0)
	add_func("goto",1)
	add_func("jumptoline",1)
	add_func("end",0)
	add_func("return",1)
	add_func("not",1)
	;Schleifen
	add_func("repeat",0)
	add_func("until",1)
	add_func("while",1)
	add_func("wend",0)
	add_func("for",3)
	add_func("next",0)
	add_func("exit",0)
	add_func("continue",0)
	
	;Assoziative Arrays (Maps)
	add_func("mapcreate",1)
	add_func("mapset",3)
	add_func("mapget",2)
	add_func("mapadd",3)
	add_func("mapsize",1)
	
	;OOP
	
	
	add_func("eval",1)
	add_func("label",1)
	add_func("findfunc",1)
	add_func("optimizefunctions",0)
	add_func("execonlinefile",2)
	add_func("execfile",1)
	add_func("dim")
	add_func("redim")
	add_func("ref",1)
	add_func("renamefunction",2)
	add_func("for",0)
;	add_func("")
End Function

Function add_math_funcs()
	add_cat("math")
	add_func("sin",1)
	add_func("cos",1)
	add_func("tan",1)
	add_func("log",1)
	add_func("asin",1)
	add_func("acos",1)
	add_func("atan",1)
	add_func("atan2",2)
	add_func("sqr",1)
	add_func("abs",1)
	add_func("floor",1)
	add_func("ceil",1)
	add_func("log",1)
	add_func("int",1)
	add_func("float",1)
	add_func("str",1)
	add_func("rand",2)
	add_func("exp",1)
	add_func("log10",1)
	add_func("sgn",1)
	add_func("abs",1)
	add_func("rnd",2)
End Function

Function add_graphic_funcs()
	add_cat("graphic")
	;Timage Klasse
	;image Klasse
	thndl=add_type("timage",2)
	add_typevar(thndl,"INT","x%",0)
	add_typevar(thndl,"INT","y%",0)
	add_typevar(thndl,"INT","hndl%",0)
	add_typefunc(thndl,"draw")
	add_typefunc(thndl,"load")
	add_func("cls",0)
	add_func("flip",1)
	add_func("graphics",4)
	add_func("setbuffer",1)
	add_func("backbuffer",0)
	add_func("fps",0)
	add_func("rect",4)
	add_func("oval",4)
	add_func("rectsoverlap",8)
	add_func("text",4)
End Function

Function add_string_funcs()
	add_cat("string")
	add_func("mid",3)
	add_func("len",1)
	add_func("right",2)
	add_func("left",2)
	add_func("replace",3)
	add_func("asc",1)
	add_func("chr",1)
	add_func("instr",3)
	add_func("lower",1)
	add_func("upper",1)
	add_func("lset",2)
	add_func("rset",2)
	add_func("str",1)
	add_func("trim",1)
End Function
;-------------------------------------------------------------------------
;Api Funktionen
;OOP
Function save_object(hndl,scripthndl)
	script.Tscript=Object.Tscript(scripthndl)
	Tobject.tobject=Object.tobject(hndl)
	For i=1 To script\varintc
		For q=1 To Tobject\varintc
			If script\varintn[i]=Tobject\varintn[q]
				Tobject\varint[q]=script\varint[i]
			EndIf
		Next
	Next
	For i=1 To script\varfloatc
		For q=1 To Tobject\varfloatc
			If script\varfloatn[i]=Tobject\varfloatn[q]
				Tobject\varfloat[q]=script\varfloat[i]
			EndIf
		Next
	Next
	For i=1 To script\varstringc
		For q=1 To Tobject\varstringc
			If script\varstringn[i]=Tobject\varstringn[q]
				Tobject\varstring[q]=script\varstring[i]
			EndIf
		Next
	Next
	;		fn$=Mid(script\varintn[i],Instr(script\varintn[i],".")+1)
;		fn1$=Mid(script\varintn[i],1,Instr(script\varintn[i],".")-1)
End Function

Function set_object(hndl,scripthndl)
	Local i,i2
	script.Tscript=Object.Tscript(scripthndl)
	Tobject.tobject=Object.tobject(hndl)
	For i=Tobject\indexint To Tobject\indexint+Tobject\varintc
		i2=i2+1
		script\varint[i]=tType\varint[i2]
	Next
	i2=0
	For i=Tobject\indexfloat To Tobject\indexfloat+Tobject\varfloatc
		i2=i2+1
		script\varfloat[i]=Tobject\varfloat[i2]
	Next
	i2=0
	For i=Tobject\indexstring To Tobject\indexstring+Tobject\varstringc
		i2=i2+1
		script\varstring[i]=Tobject\varstring[i2]
	Next
End Function

Function set_objectvar(scripthndl,typ$,Objectname$,varname$,wert$,strict=1)
	Local name$
	script.Tscript=Object.Tscript(scripthndl)
	name$=Objectname$+"."+varname$
	Tobject.tobject=Null
	Tobject.tobject=Object.tobject (get_object(scripthndl,Objectname))
	If Tobject.tobject=Null Then RuntimeError "Objekt nicht gefunden."
	Select typ$
		Case "INT"
			For i=Tobject\indexint+1 To Tobject\indexint+Tobject\varintc
;				DebugLog script\varintn[i] + " : " + name
				If script\varintn[i]=name$ Then 
					script\varint[i]=Int(wert)
					Return 1
				EndIf
			Next
			DebugLog "--------------------------------"
		Case "FLOAT"
			For i=Tobject\indexfloat+1 To Tobject\indexfloat+Tobject\varfloatc
				If script\varfloatn[i]=name$ Then 
					script\varfloat[i]=Float(wert)
					Return 1
				EndIf
			Next
		Case "STRING"
			For i=Tobject\indexstring+1 To Tobject\indexstring+Tobject\varstringc
				If script\varstringn[i]=name$ Then 
					script\varstring[i]=wert
					Return 1
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefundeN."
	Else
		Return 0
	EndIf
End Function

Function get_objectvar(scripthndl,typ$,objectname$,varname$,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	Local name$=objectname$+"."+varname$
	Select typ$
		Case "INT"
			For i=Tobject\indexint To Tobject\indexint+Tobject\varintc+1
				If script\varintn[i]=name$ Then 
					Return script\varint[i]
				EndIf
			Next
		Case  "FLOAT"
			For i=Tobject\indexfloat To Tobject\indexfloat+Tobject\varfloatc+1
				If script\varfloatn[i]=name$ Then 
					Return script\varfloat[i]
				EndIf
			Next
		Case "STRING"
			For i=Tobject\indexstring To Tobject\indexstring+Tobject\varstringc+1
				If script\varstringn[i]=name$ Then 
					Return script\varstring[i]
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function create_object(typhndl,name$,scripthndl)
	Local i,i2
	script.Tscript=Object.Tscript(scripthndl)
	If typhndl=0 Then RuntimeError "Type nicht gefunden."
	tType.Ttype=Object.Ttype(typhndl)
	Tobject.tobject=New tobject
	
	Tobject\tType=typhndl
	Tobject\name=name$
	Tobject\owner=tType\name
	
	
	Tobject\indexint=script\varintc-tType\varintc
	Tobject\indexfloat=script\varfloatc-tType\varfloatc
	Tobject\indexstring=script\varstringc-tType\varstringc
	
	Tobject\varintc=tType\varintc
	Tobject\varfloatc=tType\varfloatc
	Tobject\varstringc=tType\varstringc
	For i=1 To tType\varintc
		Tobject\varintn[i]=tType\varintn[i]
	Next
	For i=1 To tType\varfloatc
		Tobject\varfloat[i]=tType\varfloatn[i]
	Next
	For i=1 To tType\varstringc
		Tobject\varstringn[i]=tType\varstringn[i]
	Next
	
	;Nur die Namen reservieren
	i2=0
	For i=Tobject\indexint+1 To Tobject\indexint+tType\varintc
		i2=i2+1
		script\varintn$[i]=name$+"."+tType\varintn[i2]
		script\varint[i]=tType\varint[i2]
	Next
	i2=0
	For i=Tobject\indexfloat+1 To Tobject\indexfloat+tType\varfloatc
		i2=i2+1
		script\varfloatn$[i]=name$+"."+tType\varfloatn[i2]
		script\varfloat[i]=tType\varfloat[i2]
	Next
	i2=0
	For i=Tobject\indexstring+1 To Tobject\indexstring+tType\varstringc
		i2=i2+1
		script\varstringn$[i]=name$+"."+tType\varstringn[i2]
		script\varstring[i]=tType\varstring[i2]
	Next
	
	For i=1 To tType\methodc
		add_func(name+"."+tType\method[i])
	Next
	Return Handle(Tobject)
End Function

Function get_object(scripthndl,name$)
	For Tobject.tobject=Each tobject
		If Tobject\name=name
			Return Handle(Tobject)
		EndIf
	Next
End Function

Function get_type(name$,mode=0)
	name=Trim(name)
	If mode
		For tType.Ttype=Each Ttype
			For i=1 To tType\namecount
				If tType\names[i]=name
					Return Handle(tType)
				EndIf
			Next
		Next
	Else
		For tType.Ttype=Each Ttype
			If tType\name=name
				Return Handle(tType)
			EndIf
		Next
	EndIf
	RuntimeError "type nicht gefunden!"
End Function

Function add_typefunc(typhndl,name$)
	tType.Ttype=Object.Ttype(typhndl)
	tType\methodc=tType\methodc+1
	tType\method[tType\methodc]=name$
End Function

Function add_typevar(typhndl,typ$,name$,wert$)
	tType.Ttype=Object.Ttype(typhndl)
	Select typ$
		Case "INT"
			tType\varintc=tType\varintc+1
			tType\varint[tType\varintc]=wert
			tType\varintn[tType\varintc]=name$
		Case "FLOAT"
			tType\varfloatc=tType\varfloatc+1
			tType\varfloat[tType\varfloatc]=wert
			tType\varfloatn[tType\varfloatc]=name$
		Case "STRING"
			tType\varstringc=tType\varstringc+1
			tType\varstring[tType\varstringc]=wert
			tType\varstringn[tType\varstringc]=name$
	End Select
End Function

Function add_type(name$,pars=0)
	tType.Ttype=New Ttype
	tType\name=name$
	add_typefunc(Handle(tType),"new")
	add_typefunc(Handle(tType),"destruct")
	Return Handle(tType)
End Function

Function get_typeid(typethndl,typ$,name$,strict=1)
	tType.Ttype=Object.Ttype(typehndl)
	Select typ$
		Case "INT"
			For i=0 To tType\varintc
				If tType\varintn[i]=name$ Then 
					Return i
				EndIf
			Next
		Case "FLOAT"
			For i=0 To tType\varfloatc
				If tType\varfloatn[i]=name$ Then 
					Return i
				EndIf
			Next
		Case "STRING"
			For i=0 To tType\varintc
				If tType\varstringn[i]=name$ Then 
					Return i
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function get_typevar$(typehndl,typ$,name$,strict=1)
	tType.Ttype=Object.Ttype(typehndl)
	Select typ$
		Case "INT"
			For i=0 To tType\varintc
				If tType\varintn[i]=name$ Then 
					Return tType\varint[i]
				EndIf
			Next
		Case "FLOAT"
			For i=0 To tType\varfloatc
				If tType\varfloatn[i]=name$ Then 
					Return tType\varfloat[i]
				EndIf
			Next
		Case "STRING"
			For i=0 To tType\varintc
				If tType\varstringn[i]=name$ Then 
					Return tType\varstring[i]
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function
Function get_typevarfast(typehndl,typ$,id,wert$,strict=1)
	tType.Ttype=Object.Ttype(typehndl)
	Select typ$
		Case "INT"
			tType\varint[id]=Int(wert)
			Return 1
		Case "FLOAT"
			
			tType\varfloat[id]=Float(wert)
			Return 1
			
		Case "STRING"
			
			tType\varstring[id]=wert
			Return 1
			
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function set_typevarfast(typehndl,typ$,id,wert$,strict=1)
	tType.Ttype=Object.Ttype(typehndl)
	Select typ$
		Case "INT"
			tType\varint[id]=Int(wert)
			Return 1
		Case "FLOAT"
			tType\varfloat[id]=Float(wert)
			Return 1
		Case "STRING"
			tType\varstring[id]=wert
			Return 1
			
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function
Function set_typevar(typehndl,typ$,name$,wert$,strict=1)
	tType.Ttype=Object.Ttype(typehndl)
	Select typ$
		Case "INT"
			For i=0 To tType\varintc
				If tType\varintn[i]=name$ Then 
					tType\varint[i]=Int(wert)
					Return 1
				EndIf
			Next
		Case "FLOAT"
			For i=0 To tType\varfloatc
				If tType\varfloatn[i]=name$ Then 
					tType\varfloat[i]=Float(wert)
					Return 1
				EndIf
			Next
		Case "STRING"
			For i=0 To tType\varintc
				If tType\varstringn[i]=name$ Then 
					tType\varstring[i]=wert
					Return 1
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

;Prozentuale Programmierung
Function get_globalid(name$)
	For i=1 To Globalvars
		If GlobalVar(i,0)=name$
			Return i
		EndIf
	Next
End Function
Function get_globalvar(name$)
	For i=1 To Globalvars
		If GlobalVar(i,0)=name$
			Return GlobalVar(i,2)
		EndIf
	Next
End Function
Function get_globalvarfast(id)
	Return GlobalVar(id,2)
End Function

Function set_globalvarfast(id,wert$)
	GlobalVar(id,2)=wert$
End Function
Function set_globalvar(name$,wert$,strict=1)
	For i=1 To Globalvars
		If GlobalVar(i,0)=name$
			GlobalVar(i,2)=wert$
			Return
		EndIf
	Next
	
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function add_globalvar(typ$,name$,wert$)
	Globalvars=Globalvars+1
	GlobalVar(Globalvars,0)=name$
	Select Right(name$,1)
		Case "%"
			GlobalVar(Globalvars,1)="INT"
			GlobalVar(Globalvars,2)=Int(wert$)
		Case "#"
			GlobalVar(Globalvars,1)="FLOAT"
			GlobalVar(Globalvars,2)=Float(wert$)
		Case "$"
			GlobalVar(Globalvars,1)="STRING"
			GlobalVar(Globalvars,2)=wert$
	End Select
End Function

Function get_func(name$)
	For func=Each Tfunc
		If func\n=name
			Return Handle(func)
		EndIf
	Next
End Function
Function call_func$(name$,par0$="",par1$="",par2$="",par3$="",par4$="",par5$="",par6$="",par7$="",par8$="",par9$="",par10$="",par11$="",par12$="")
	For func.Tfunc=Each Tfunc
		If func\n=name$
			Return exec_line(name$+"("+par0+","+par1+","+par2+","+par3+","+par4+","+par5+","+par6+","+par7+","+par8+","+par9+","+par10+","+par11+","+par12+")")
		EndIf
	Next
	RuntimeError "Funktion nicht gefunden!"
End Function

Function get_id(scripthndl,typ$,name$,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	Select typ$
		Case "INT"
			For i=0 To script\varintc
				If script\varintn[i]=name$ Then 
					Return i
				EndIf
			Next
		Case "FLOAT"
			For i=0 To script\varfloatc
				If script\varfloatn[i]=name$ Then 
					Return i
				EndIf
			Next
		Case "STRING"
			For i=0 To script\varintc
				If script\varstringn[i]=name$ Then 
					Return i
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function get_var$(scripthndl,typ$,name$,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	Select typ$
		Case "INT"
			For i=0 To script\varintc
				If script\varintn[i]=name$ Then 
					Return script\varint[i]
				EndIf
			Next
		Case "FLOAT"
			For i=0 To script\varfloatc
				If script\varfloatn[i]=name$ Then 
					Return script\varfloat[i]
				EndIf
			Next
		Case "STRING"
			For i=0 To script\varintc
				If script\varstringn[i]=name$ Then 
					Return script\varstring[i]
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function
Function get_varfast$(scripthndl,typ$,id,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	Select typ$
		Case "INT"
			Return script\varint[id]
		Case "FLOAT"
			Return script\varfloat[id]=Float(wert)
		Case "STRING"
			Return script\varstring[id]
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function set_varfast(scripthndl,typ$,id,wert$,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	Select typ$
		Case "INT"
			script\varint[id]=Int(wert)
			Return 1
		Case "FLOAT"
			script\varfloat[id]=Float(wert)
			Return 1
		Case "STRING"
			script\varstring[id]=wert
			Return 1
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function
Function set_var(scripthndl,typ$,name$,wert$,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	Select typ$
		Case "INT"
			For i=0 To script\varintc
				If script\varintn[i]=name$ Then 
					script\varint[i]=Int(wert)
					Return 1
				EndIf
			Next
		Case "FLOAT"
			For i=0 To script\varfloatc
				If script\varfloatn[i]=name$ Then 
					script\varfloat[i]=Float(wert)
					Return 1
				EndIf
			Next
		Case "STRING"
			For i=0 To script\varintc
				If script\varstringn[i]=name$ Then 
					script\varstring[i]=wert
					Return 1
				EndIf
			Next
	End Select
	If strict
		RuntimeError "Variable nicht gefunden."
	Else
		Return 0
	EndIf
End Function

Function add_var(scripthndl,typ$,name$,wert$=0)
	script.Tscript=Object.Tscript(scripthndl)
	Select typ$
		Case "INT"
			script\varintc=script\varintc+1
			script\varint[script\varintc]=wert
			script\varintn[script\varintc]=name$
		Case "FLOAT"
			script\varfloatc=script\varfloatc+1
			script\varfloat[script\varfloatc]=wert
			script\varfloatn[script\varfloatc]=name$
		Case "STRING"
			script\varstringc=script\varstringc+1
			script\varstring[script\varstringc]=wert
			script\varstringn[script\varstringc]=name$
	End Select
End Function
Function add_const(name$,wert$)
	con.Tconst=New Tconst
	con\content=wert
	con\name=name
End Function
;-------------------------------------------------------------------------
;Hilfsfunktionen

Global fpsrate,loops, fpstime ;FPS
Function fps()
	loops = loops+1
	If MilliSecs() - fpstime > 1000 Then 
		fpsrate = loops
		loops = 0
		fpstime = MilliSecs()
	End If
	Return fpsrate
	
End Function
Function get_distance#(x1,y1,x2,y2)
	Return Sqr((x1-x2)^2 + (y1-y2)^2)
End Function
Function get_angle#(x1,y1,x2,y2)
	Return (450-ATan2(x1-x2,y1-y2)) Mod 360 
End Function
Function KreisIntersect(sx#,sy#,dx#,dy#,kx#,ky#,Radius#)
	
 ;MR 03.04.2004
	
	Local a#
	Local b#
	Local c#
	Local t1#
	Local t2#
	
	Local Radius2#
	
	Radius2 = Radius * Radius
	
	a = dx * dx + dy * dy 
	b = 2.0 * dx * (sx - kx) + 2.0 * dy * (sy - ky)
	c = kx * kx + ky * ky  + sx * sx + sy * sy  - 2.0 * (kx * sx + ky * sy ) - Radius2
	
	Local discriminant#
	discriminant = b * b - 4.0 * a * c
	
	If discriminant > 0.0
		Return 1 ;Intersection
	EndIf
	
	Return 0
	
End Function 
Global intersection_x#
Global intersection_y#
Global intersection_ab#
Global intersection_cd#
Function Lines_Collision(ax#, ay#, bx#, by#, cx#, cy#, dx#, dy#)
	rn# = (ay#-cy#)*(dx#-cx#) - (ax#-cx#)*(dy#-cy#)
	rd# = (bx#-ax#)*(dy#-cy#) - (by#-ay#)*(dx#-cx#)
	
    sn# = (ay#-cy#)*(bx#-ax#) - (ax#-cx#)*(by#-ay#)
    intersection_ab# = rn# / rd#
    intersection_cd# = sn# / rd#
    intersection_x#  = ax# + intersection_ab#*(bx#-ax#)
    intersection_y#  = ay# + intersection_ab#*(by#-ay#)
	
	If(rd# = False Or intersection_ab#<0 Or intersection_ab#>1 Or intersection_cd#<0 Or intersection_cd#>1)
		Return(False)
	Else
		Return(True)
	EndIf
End Function 


Function killdir(dir$)
	Local rd = ReadDir(dir$)
	NextFile(rd)
	Local nxf$ = NextFile(rd)
	While nxf$ <> ""
		nxf$ = NextFile(rd)
		If nxf$ <> "" Then
			If FileType(dir$+"\"+nxf$) = 1 Then
				DeleteFile(dir$+"\"+nxf$)
			ElseIf FileType(dir$+"\"+nxf$) = 2 Then
				killdir(dir$+"\"+nxf$)
			EndIf
		EndIf
	Wend
	DeleteDir(dir$)
End Function

Function LoadWebFile( srcFile$, dstFile$,BUFFER_SIZE )
	dstFile=parsedir+dstFile
    Local TCPStream, tmpPos, dataSize, tmpBank
    Local Host$ = "", HTTPHeader$ = ""
    Local Buffer = BUFFER_SIZE
	
    If ( Left( srcFile$, 7 ) = "http://" ) srcFile$ = Right( srcFile$, Len( srcFile$ ) - 7 )
		
		tmpPos = Instr( srcFile$, "/" )
		
		If ( tmpPos ) Then
			Host$ = Left( srcFile$, tmpPos - 1 )
			srcFile = Right( srcFile$, Len( srcFile ) - tmpPos + 1 )
		Else
			Host$ = srcFile$
			srcFile$ = "/"
		End If
		
		TCPStream = OpenTCPStream( Host$, 80 )
		
		If ( Not TCPStream ) Then
			RuntimeError( "Fehler beim verbinden zu: " + Host$ )
		End If
		
		WriteLine( TCPStream, "GET " + srcFile$ + " HTTP/1.1" )
		WriteLine( TCPStream, "Host: " + Host$ )
		WriteLine( TCPStream, "Accept: */*" )
		WriteLine( TCPStream, Chr$( 10 ) )
		
		Repeat
			HTTPHeader$ = ReadLine( TCPStream )
			
			If ( Left( HTTPHeader$, 16 ) = "Content-Length: " ) Then
				dataSize = Right( HTTPHeader$, Len( HTTPHeader$ ) - 16 )
			End If
		Until HTTPHeader$ = "" Or Eof( TCPStream )   
		
		If ( dataSize > 0 )
			file = WriteFile( dstFile$ )
			tmpBank = CreateBank( Buffer )
			
			If ( Not file ) Then
				RuntimeError( "Fehler beim erstellen der Downloaddatei" )
			End If
			
			bytesReaded = 0
			
			Repeat         
				bytesRemaind = dataSize - bytesReaded
				
				If ( bytesRemaind < BUFFER_SIZE ) Then
					Buffer = bytesRemaind
				End If
				
				s = ReadBytes( tmpBank, TCPStream, 0, Buffer )
				WriteBytes( tmpBank, file, 0, s )
				
				bytesReaded = bytesReaded  + s
			Until s <> BUFFER_SIZE
			
			CloseFile( file )
			CloseTCPStream( TCPStream )
			FreeBank( tmpBank )
		End If
End Function 

Function PokeString(bank,pos,inp$)
	If PeekInt(bank,pos)<>0 Then FreeBank PeekInt(bank,pos)
	Local bank2=CreateBank()
	Local i
	PokeInt(bank,pos,bank2)
	ResizeBank(bank2,Len(inp))
	For i=1 To Len(inp)
		PokeByte(bank2,i-1,Asc(Mid(inp,i,1)))
	Next
End Function
Function PeekString$(bank,pos)
	Local output$
	Local i
	bank=PeekInt(bank,pos)
	For i=0 To BankSize(bank)-1
		output=output+Chr(PeekByte(bank,i))
	Next
	Return output   
End Function


Function calco#(r$) ;Hauptfunktion
	r$=Lower(r$)
	r$=Trim(r$)
	r$=Replace(r$,"'","^")
	
   ;Klammern
	While Instr(r,"(") > 0
		
		kla=1
		While Mid(r,kla,1)<>"(" Or (Instr(Mid(r,kla+1),"(") < Instr(Mid(r,kla+1),")") And Instr(Mid(r,kla+1),"(") > 0)
			kla=kla+1
		Wend
		
		klz=Instr(Mid(r,kla+1),")")+kla
		
		
		If kla = 1 Then
			r=Left(r,kla-1)+calc2(Mid(r,kla+1,klz-1-kla))+Mid(r,klz+1)
		ElseIf (Mid(r,kla-1,1)="+" Or Mid(r,kla-1,1)="-" Or Mid(r,kla-1,1)="*" Or Mid(r,kla-1,1)="/" Or Mid(r,kla-1,1)="^" Or Mid(r,kla-1,1)="(") Then
			r=Left(r,kla-1)+calc2(Mid(r,kla+1,klz-1-kla))+Mid(r,klz+1)
		Else
			
			fna = kla-1
			While Mid(r,fna,1) <> "+" And Mid(r,fna,1) <> "-" And Mid(r,fna,1) <> "*" And Mid(r,fna,1) <> "/" And Mid(r,fna,1) <> "^" And Mid(r,fna,1) <> "("
				fna = fna-1
				If fna = 0 Then Exit
			Wend
			
         ;Funktionen
			If Mid(r,fna+1,3) = "sin" Then r=Left(r,fna)+Sin(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,3) = "cos" Then r=Left(r,fna)+Cos(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,3) = "tan" Then r=Left(r,fna)+Tan(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,4) = "asin" Then r=Left(r,fna)+ASin(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,4) = "acos" Then r=Left(r,fna)+ACos(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,4) = "atan" Then r=Left(r,fna)+ATan(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,3) = "sqr" Then r=Left(r,fna)+Sqr(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,3) = "abs" Then r=Left(r,fna)+Abs(Float(calc2(Mid(r,kla+1,klz-1-kla))))+Mid(r,klz+1)
			If Mid(r,fna+1,5) = "floor" Then r=Left(r,fna)+Floor(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,4) = "ceil" Then r=Left(r,fna)+Ceil(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,2) = "ln" Then r=Left(r,fna)+Log(calc2(Mid(r,kla+1,klz-1-kla)))+Mid(r,klz+1)
			If Mid(r,fna+1,3) = "log" Then r=Left(r,fna)+Log(calc2(Mid(r,kla+1,klz-1-kla)))/Log(10)+Mid(r,klz+1)
			
		EndIf
		
	Wend
	
	
	r$=calc2(r$)
	If r$="NaN" Then
		Return Sqr(-1)
	ElseIf r$="Infinity" Then
		Return 10^100
	Else
		Return Float(r$)
	EndIf
	
End Function
Function calc2$(r$) ;Operationen koordinieren
	
   ;Operationen
	While Instr(r$,"^")>0
		r$=calc3$(r$,Instr(r$,"^"),1)
	Wend
	
	
   ;Überflüssige Zeichen entfernen
	While Instr(r$,"---")>0
		r$=Replace(r$,"---","-")
	Wend
	While Instr(r$,"++")>0
		r$=Replace(r$,"++","+")
	Wend
	
	While Instr(r$,"--")>0
		r$=Replace(r$,"--","+")
	Wend
	While Instr(r$,"+-")>0
		r$=Replace(r$,"+-","-")
	Wend
	While Instr(r$,"-+")>0
		r$=Replace(r$,"-+","-")
	Wend
	
	
	
	While Instr(r$,"*")>0 Or Instr(r$,"/")>0
		If (Instr(r$,"*")>0 And Instr(r$,"*")<Instr(r$,"/")) Or Instr(r$,"/")=0 Then
			r$=calc3$(r$,Instr(r$,"*"),2)
		ElseIf Instr(r$,"/")>0 Then
			r$=calc3$(r$,Instr(r$,"/"),3)
		EndIf
	Wend
	
	
	While Instr(Replace(r$,"e+","  "),"+")>0 Or Instr(Replace(Mid(r$,2),"e-","  "),"-")>0 ;Negative, zu grosse und zu kleine Zahlen werden berücksichtigt
		If (Instr(Replace(r$,"e+","  "),"+")>0 And Instr(Replace(r$,"e+","  "),"+")<Instr(Replace(Mid(r$,2),"e-","  "),"-")) Or Instr(Replace(Mid(r$,2),"e-","  "),"-")=0 Then
			r$=calc3$(r$,Instr(Replace(r$,"e+","  "),"+"),4)
		ElseIf Instr(Replace(Mid(r$,2),"e-","  "),"-")>0 Then
			r$=calc3$(r$,Instr(Replace(Mid(r$,2),"e-","  "),"-")+1,5)
		EndIf
	Wend
	
	Return r$ ;Wert zurückgeben
End Function
Function calc3$(r$,is,o) ;Einzelne Operation ausführen
   ;Zahl1 bestimmen
	ia=is
	Repeat
		ia=ia-1
		If ia<=0 Then ia=0: Exit
	Until Mid(Replace(r$,"e+","  "),ia,1)="+" Or (Mid(Replace(Replace(Replace(Replace(Replace(r$,"e-","  "),"+-","+ "),"--","- "),"*-","* "),"/-","/ "),ia,1)="-" And ia<>1) Or Mid(r$,ia,1)="*" Or Mid(r$,ia,1)="/" Or Mid(r$,ia,1)="^"
	z1#=Mid(r$,ia+1,is-1)
	
   ;Zahl2 bestimmen
	ib=is
	Repeat
		ib=ib+1
	Until ib=Len(r$)+1 Or Mid(Replace(r$,"e+","  "),ib,1)="+" Or (Mid(Replace(r$,"e-","  "),ib,1)="-" And ib-is>1) Or Mid(r$,ib,1)="*" Or Mid(r$,ib,1)="/" Or Mid(r$,ib,1)="^"
	z2#=Mid(r$,is+1,ib-1)
	
   ;Operation ausführen und Rückgabe
	Select o
		Case 1 Return Left(r$,ia)+Str(z1^z2)+Mid(r$,ib) 
		Case 2 Return Left(r$,ia)+Str(z1*z2)+Mid(r$,ib)
		Case 3 Return Left(r$,ia)+Str(z1/z2)+Mid(r$,ib)
		Case 4 Return Left(r$,ia)+Str(z1+z2)+Mid(r$,ib)
		Case 5 Return Left(r$,ia)+Str(z1-z2)+Mid(r$,ib)
	End Select
End Function 


Global Command$,ParameterCount
Function ParseCmd(Cmd$,NextCommandMarks$=" ,",CommandBrackets$="()") ;parsen
	Cmd$ = Cmd$ + " "
	For i = 0 To MAXPARAM : Parameter$(i) = "" : Next
	Command$ = ""
	Length = Len(Cmd$)
	For i = 1 To Length
		Buffer$ = Mid$(Cmd$,i,1)
		If Instr(Left$(CommandBrackets$,Len(CommandBrackets$)/2),Buffer$) Then
			If ParamCount < 1 Then
				IsValue = 2
			EndIf
		EndIf
		If Instr(Mid$(CommandBrackets$,Len(CommandBrackets$)/2+1),Buffer$) Then
			If ParamCount < 2 Then
				IsValue = 0
			EndIf
		EndIf
		If Buffer$ = Chr$(34) Or Buffer$ = "'" Then
			IsValue = 1 - IsValue
			If (Not i = Length) Then
				If Not TempCmd$ = "" Then
					If IsValue = 1 Then TempCmd$ = TempCmd$
					Parameter$(ParamCount) = TempCmd$
					ParamCount = ParamCount + 1
					TempCmd$ = ""
				EndIf
			EndIf
		Else
			If IsValue = 1 Then
				TempCmd$ = TempCmd$ + Buffer$
			ElseIf IsValue = 2 Then
				If Not Instr(Left$(CommandBrackets$,Len(CommandBrackets$)/2),Buffer$) Then TempCmd$ = TempCmd$ + Buffer$
			Else
				If Not Instr(CommandBrackets$,Buffer$) Then
					If Instr(NextCommandMarks$,Buffer$) Then
						If Not i = 1 Then
							If Not Instr(NextCommandMarks,Mid$(Cmd$,i-1,1)) Then
								If Not TempCmd$ = "" Then
									Parameter$(ParamCount) = TempCmd$
									ParamCount = ParamCount + 1
									TempCmd$ = ""
								EndIf
							EndIf
						Else
							If Not TempCmd$ = "" Then
								Parameter$(ParamCount) = TempCmd$
								ParamCount = ParamCount + 1
								TempCmd$ = ""
							EndIf
						EndIf
					Else
						TempCmd$ = TempCmd$ + Buffer$
					EndIf
				Else
					If Not TempCmd$ = "" Then
						Parameter$(ParamCount) = TempCmd$
						ParamCount = ParamCount + 1
						TempCmd$ = ""
					EndIf
				EndIf
			EndIf
		EndIf
	Next
	If Not TempCmd$ = "" Then
		Parameter$(ParamCount) = TempCmd$
		ParamCount = ParamCount + 1
	EndIf
	ParameterCount = ParamCount - 1
	Command$ = Parameter$(0)
	Command$=Lower(Command$)
End Function
;~IDEal Editor Parameters:
;~F#2A#33#5E#63#6B#73#82#8D#94#B3#CC#F4#109#11A#160#20B#24E#27F#2EE#4A2
;~F#4EF#564#56F#575#57E#589#599#5FA#604#60E#61D#628#62D#633#63F#645#64A#64F#65E#668
;~F#674#681#6CC#6E6#6FC#710#72C#740#767#785#7BC#7C4#7D8#7DE#7F0#7F8#815#831#849#85D
;~F#87E#885#88C#890#893#8A2#8B2#8B9#8C2#8DF#8FB#90C#91F#93F#950#959#963#966#969#989
;~F#99B#9AC#9EE#9F8#A03#A3C#A6B#A87
;~C#Blitz3D