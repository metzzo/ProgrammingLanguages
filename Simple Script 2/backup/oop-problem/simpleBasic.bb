
;Dims
Dim Parameter$(MAXPARAM)
Dim GlobalVar$(MAXVARS,3) ;0=name 1=typ(INT,FLOAT,STRING) 2=Inhalt
Dim paramorder(MAXPARAM,2) ;der Conteiner für die geordneten Parameter in Funktionen
;includes
;Graphics3D 640,480,0,2
Include "rechnen.bb"
;Include "Libs\sprite candy.bb"
;Include "Libs\sprite candy gui.bb"
;Include "Libs\Draw3D.bb"
;Include "Libs\Physix.bb"
;Konstanten
Const MAXLINES=10000 ;Die maximale Anzahl an Zeilen
Const MAXPARAM=50    ;Die maximale Anzahl an Parameter im Kommando Parser im Scriptparser
Const MAXIFS=100     ;Die maximale anzahl an If Abfragen
Const MAXSCHLEIFE=1000;Die maximale Anzahl an Schleifen
Const MAXGOTO=1000   ;Die maximale Anzahl an gotos
Const MAXVARS=1000    ;Die maximale Anzahl an Variablen pro Typ
Const MAXMETHOD=100    ;Die maximimale anzahl an Methoden bei types
;Globale Variablen
Global Globalvars=0
Global scriptdir$="script/"
Global parsedir$="compiled/"
;KLassen

;Types
Type Tscript
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
	Field rowcount ;die aktuelle Zeile
	Field zeilen ;die anzahl der Zeilen
	Field name$ ;name
	Field returnnow;ob es returnen soll
	Field returnw$ ;der wert den es returnen soll
	
	;parameter
	Field pars ;die Anzahl der Parameter die Aktiv sind
	
	;If abfragen
	Field Ifcount ;wie viele ifas gerade ausgeführt werden
	Field Ifs%[MAXIFS] ;welche if abfrage welchen Wert hat
	
	;Goto
	Field sprung$[MAXLINES]
	Field gotos%[MAXLINES]
End Type
Global script.Tscript

Type Tconst
	Field name$
	Field content$
End Type
Global con.Tconst

Type Ttype
	Field name$
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

Type tobject
	Field name$
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
;Lokale Variablen
Local script1=0


;Befehle
add_basic_funcs()
add_graphic_funcs()

AppTitle "Simple Basic"
Print "Simple Basic"
Print "compiling..."
init_simplebasic(scriptdir,parsedir)
Local starttime=MilliSecs()
script1=parse_script(create_script())
find_funcs()
Local endtime=MilliSecs()-starttime
;compilen
Print "compiling Time: "+endtime+" ms."
Print "executing..."
starttime=MilliSecs()
exec_script(script1)
endtime=MilliSecs()-starttime
Print "executing Time: "+endtime+" ms."
free_simplebasic()
WaitKey()

Function free_simplebasic()
	Delete Each Tscript
	Delete Each Tconst
	Delete Each Tfunc
	Delete Each Tstring
End Function

Function init_simplebasic(sdir$,pdir$)
	scriptdir=sdir$
	parsedir=pdir
	killdir(parsedir)
	CreateDir(parsedir)
End Function

Function find_funcs(file$="script.sb")
;	Dim paramorder(MAXPARAM,2) ;das ist dazu damit keine Parameter vond er vorherende Funktion genommen werden
	Local stream,stream2
	Local zeile$
	Local wholerow$
	Local i
	Local par$
	Local Intcount=-1,floatcount=-1,stringcount=-1
	Local count
	stream=ReadFile(scriptdir+file$)
	While Eof(stream)=0
		zeile$=ReadLine(stream)
		ParseCmd(zeile$," ,")
		If Lower(Command)="function"
			Parameter(0)=Parameter(1)+".func"
			stream2=WriteFile(parsedir+Parameter(1))
			
			func.Tfunc=New Tfunc
			func\n=Parameter(1)
			func\pars=ParameterCount-1
			func\funchndl=create_script(Parameter(1))
			If ParameterCount>1
				For i=2 To ParameterCount
					If Instr(Parameter(i),"=")
						par$=Mid(Parameter(i),Instr(Parameter(i),"=")+1)
						Parameter(i)=Mid(Parameter(i),1,Instr(Parameter(i),"=")-1)
						WriteLine stream2,"if ("+Parameter(i)+"==0)"
						WriteLine stream2,Parameter(i)+"="+par$
						WriteLine stream2,"endif"
					Else
						par=0
					EndIf
					Select Right(Parameter(i),1)
						Case "%"
							func\intpars=func\intpars+1
							func\typ[i-2]=1							script\varintc=script\varintc+1
							script\varint[script\varintc]=par
							script\varintn[script\varintc]=Parameter(i)						Case "#"
							func\floatpars=func\floatpars+1
							func\typ[i-2]=2
							script\varfloatc=script\varfloatc+1
							script\varfloat[script\varfloatc]=par
							script\varfloatn[script\varfloatc]=Parameter(i)
						Case "$"
							func\stringpars=func\stringpars+1
							func\typ[i-2]=3
							script\varstringc=script\varstringc+1
							script\varstring[script\varstringc]=par
							script\varstringn[script\varstringc]=Parameter(i)
					End Select
				Next
			EndIf
			
			While Lower(wholerow$)<>"endfunction"
				wholerow$=ReadLine(stream)
				If Lower(wholerow$)="endfunction" Then Exit
				WriteLine stream2,wholerow$
			Wend
			wholerow=""
			CloseFile stream2
			func\funchndl=parse_script(func\funchndl)
		EndIf
		
	Wend
	CloseFile stream
End Function

Function create_script(file$="script.sb")
	Local stream
	CopyFile(scriptdir+file$,parsedir+file)
	stream=OpenFile(parsedir+file$)
	If stream=0 Then RuntimeError "Script Datei exsistiert nicht!"
	script.Tscript=New Tscript
	script\stream=stream
	script\Ifs[0]=1
	script\name=file$
	Return Handle(script)
End Function

Function parse_script(handl)
	Local stream,writes,stream2
	Local zeile$
	Local zcount
	Local i
	Local comm$
	Local wholerow$,wholerow2$
	Local pos
	Local str1$,str2$
	Local var$
	Local schleifenc
	Local stepin
	Local hndl
	Local typ$
	Local zzcount,ppos
	Local name$
	Local anhang$,varname$
	script.Tscript=Object.Tscript(handl)
	If script.Tscript=Null
		RuntimeError "Script exsistiert nicht."
	EndIf
	While Eof(script\stream)=0
		zeile$=ReadLine(script\stream)
		zeile$=Trim(zeile$)
		If Instr(zeile$,"//")
			zeile$=Left(zeile$,Instr(zeile$,"//"))
		EndIf
		If Instr(zeile$,";")
			zeile$=Left(zeile$,Instr(zeile$,";")-1)
		EndIf
		If zeile<>""
			wholerow$=zeile$
			
			If Left(wholerow,8)="function"
				Repeat
					wholerow=ReadLine(script\stream)
				Until wholerow="endfunction"
				wholerow=""
				Goto dontwritein
			EndIf
			
			For con.Tconst=Each Tconst
				wholerow=Replace(wholerow,con\name,con\content)
			Next
			
			;Variablen
			If Left(wholerow,5)="local"
				wholerow=Replace(wholerow,":"," as ")
				If Instr(wholerow,"as")
					varname$=Trim(Mid(wholerow,7,Instr(wholerow,"as")-7))
					anhang=""
					name$=Lower(Mid(wholerow,Instr(wholerow,"as")+3))
					If Instr(wholerow,"(",Instr(wholerow,"as"))
						anhang$=Mid(name,Instr(name,"(")+1,Instr(name,")")-(Instr(name,"(")+1))
						name=Mid(name,1,Instr(name,"(")-1)
					EndIf
					Select name$
						Case "int"
							wholerow=Mid(wholerow,1,Instr(wholerow,"as")-2)+"%"
						Case "float"
							wholerow=Mid(wholerow,1,Instr(wholerow,"as")-2)+"#"
						Case "string"
							wholerow=Mid(wholerow,1,Instr(wholerow,"as")-2)+"$"
						Default
							For tType.Ttype=Each Ttype 
								If tType\name=name$
									;Speicher besetzen
									
									nname$=Trim(Mid(wholerow,7,Instr(wholerow,"as")-7))
									wholerow=""
									str2=create_object(Handle(tType),nname$)
									
									Tobject\indexint=script\varintc+1
									Tobject\indexfloat=script\varfloatc+1
									Tobject\indexstring=script\varstringc+1
									Tobject\varintc=tType\varintc
									Tobject\varfloatc=tType\varfloatc
									Tobject\varstringc=tType\varstringc
									For i=1 To tType\varintc
										Tobject\varintn[i]=tType\varintn[i]
									Next
									For i=1 To tType\varfloatc
										Tobject\varintn[i]=tType\varintn[i]
									Next
									For i=1 To tType\varstringc
										Tobject\varintn[i]=tType\varintn[i]
									Next
									
									script\varintc=script\varintc+tType\varintc
									script\varfloatc=script\varfloatc+tType\varfloatc
									script\varstringc=script\varstringc+tType\varstringc
									
									;Nur die Namen reservieren
									varname$=nname
									i2=0
									For i=Tobject\indexint To Tobject\indexint+tType\varintc
										i2=i2+1
										script\varintn$[i]=varname$+"."+tType\varintn[i2]
									Next
									i2=0
									For i=Tobject\indexfloat To Tobject\indexfloat+tType\varfloatc
										i2=i2+1
										script\varfloatn$[i]=varname$+"."+tType\varfloatn[i2]
									Next
									i2=0
									For i=Tobject\indexstring To Tobject\indexstring+tType\varstringc
										i2=i2+1
										script\varstringn$[i]=varname$+"."+tType\varstringn[i2]
									Next
									
									add_func(nname+".new")
									add_func(nname+".delete")
								EndIf
							Next
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
							wholerow=Replace(wholerow,script\varintn[i2],"%"+i2+"%")
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
							wholerow=Replace(wholerow,script\varfloatn[i2],"%"+i2+"%")
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
							wholerow=Replace(wholerow,script\varstringn[i2],"%"+i2+"%")
						EndIf
					Next
					If script\varstringn[i]<>""
						wholerow=Replace(wholerow,script\varstringn[i],"$"+i+"$")
					EndIf
				Next
			EndIf
			
			wholerow2=Replace(wholerow,"==","--")
			wholerow2=Replace(wholerow2,"<=","++")
			wholerow2=Replace(wholerow2,">=","[!")
			If Instr(wholerow2,"=")
				wholerow=Replace(wholerow2,"=","=(")+")"
				If Instr(wholerow2,"%")
					wholerow2=Mid(wholerow2,1,Instr(wholerow2,"=")-2)+"!%"+Mid(wholerow2,Instr(wholerow2,"="))
				ElseIf Instr(wholerow2,"#")
					wholerow2=Mid(wholerow2,1,Instr(wholerow2,"=")-2)+"!#"+Mid(wholerow2,Instr(wholerow2,"="))
				ElseIf Instr(wholerow2,"$")
					wholerow2=Mid(wholerow2,1,Instr(wholerow2,"=")-2)+"!$"+Mid(wholerow2,Instr(wholerow2,"="))
				Else
					error(2)
				EndIf
				wholerow=Replace(wholerow2,"--","==")
				wholerow=Replace(wholerow,"++","<=")
				wholerow=Replace(wholerow,"[!",">=")
			EndIf
			
			
			If Left(wholerow,5)="const"
				ParseCmd(zeile,":")
				con.Tconst=New Tconst
				con\name=Parameter(0)
				If Trim(Parameter(1))<>Float(Parameter(1))
					con\content=calco(Parameter(1))
				Else
					con\content=Parameter(1)
				EndIf
				Goto dontwritein
			EndIf
			If Left(wholerow,5)="until"
				script\rows[zcount]="if ("+Mid(wholerow,7)+")"
				zcount=zcount+1
				pos=zcount+3
				script\rows[zcount]="jumptoline("+pos+")"
				zcount=zcount+1
				script\rows[zcount]="endif()"
				zcount=zcount+1
				wholerow="forever"
			EndIf
			stepin=0
			If Left(wholerow,5)="while"
				script\rows[zcount]=wholerow
				zcount=zcount+3
				Goto dontwritein
			EndIf
			If Left(wholerow,4)="wend"
				pos=zcount
				stepin=0
				While Left(script\rows[pos],5)<>"while" And stepin=0
					pos=pos-1
					If script\rows[pos]="wend" Then stepin=stepin+1
					If script\rows[pos]="while" And stepin>0 Then stepin=stepin-1
					If (script\rows[pos]="exit" Or script\rows[pos]="exit()") And stepin=0 
						script\rows[pos]="jumptoline("+zcount+")"
					EndIf
				Wend
				ppos=pos-1
				script\rows[pos]="if (not "+Mid(script\rows[pos],7)+")"
				
				pos=pos+1
				zzcount=zcount+1
				script\rows[pos]="jumptoline("+zzcount+")"
				pos=pos+1
				script\rows[pos]="endif()"
				ppos=ppos
				script\rows[zcount]="jumptoline("+ppos+")"
				zcount=zcount+1
				Goto dontwritein
			EndIf
			
			If Left(wholerow,4)="for "
				ParseCmd(wholerow)
				script\rows[zcount]=Parameter(1)
				zcount=zcount+1
				script\rows[zcount]="for ()"
				zcount=zcount+1
				script\rows[zcount]="if ("+Parameter(2)+")"
				zcount=zcount+1
				script\rows[zcount]="exit"
				zcount=zcount+1
				script\rows[zcount]="endif()"
				If Instr(Parameter(2),"%")
					zcount=zcount+1
					z=Mid(Parameter(1),2,Instr(Parameter(1),"!"))
					wholerow="%"+z+"!%="+"%"+z+"%+"+Parameter(3)
				ElseIf Instr(Parameter(2),"#")
					zcount=zcount+1
					z=Mid(Parameter(1),2,Instr(Parameter(1),"!"))
					wholerow="#"+z+"!#="+"#"+z+"#+"+Parameter(3)					
				ElseIf Instr(Parameter(2),"$")
					zcount=zcount+1
					z=Mid(Parameter(1),2,Instr(Parameter(1),"!"))
					wholerow="$"+z+"!$="+"$"+z+"$+"+Parameter(3)		
				EndIf
			EndIf
			If wholerow="next"
				pos=zcount-1
				stepin=0
				While Left(script\rows[pos],4)<>"for " And stepin=0
					pos=pos-1
					If script\rows[pos]="next" Then stepin=stepin+1
					If Left(script\rows[pos],4)="for " And stepin>0 Then stepin=stepin-1
					If (script\rows[pos]="exit" Or script\rows[pos]="exit()") And stepin=0 
						script\rows[pos]="jumptoline("+zcount+")"
					EndIf
				Wend
				wholerow="jumptoline("+pos+")"
			EndIf
			
			stepin=0
			
			;If Abfragen und select case und Schleifen
			If wholerow="forever()" Then wholerow="forever"
			If wholerow="repeat()" Then wholerow="repeat"
;			If wholerow="eachin" Then wholerow="forever"
;			If wholerow="eachin()" Then wholerow="forever"
			Select wholerow
				Case "endif","end if","end if()"
					wholerow="endif()"
				Case "else"
					wholerow="else()"
				Case "case"
					wholerow="case()"
				Case "end select","end select()","endselect"
					wholerow="endselect()"
				Case "forever"
					pos=zcount
					While script\rows[pos]<>"repeat" And stepin=0
						pos=pos-1
						If script\rows[pos]="forever" Then stepin=stepin+1
						If script\rows[pos]="repeat" And stepin>0 Then stepin=stepin-1
						If (script\rows[pos]="exit" Or script\rows[pos]="exit()") And stepin=0 
							zcount=zcount+1
							script\rows[pos]="jumptoline("+zcount+")"
						EndIf
					Wend
					wholerow="jumptoline("+pos+")"
				Case "import"
					wholerow="import()"
;				Case ""
;					wholerow=""
			End Select
			;elseif
			If Left(wholerow,7)="else if"
				wholerow=Replace(wholerow,"else if","elseif")
			EndIf
			;then Klausel
			If Instr(wholerow,"then")<>0 And Instr(wholerow,"if")<>0
				wholerow=Replace(wholerow,"then","")
			EndIf
			
			;Schleifen
			;goto
			If Command="label"
				script\sprung[zcount]=Parameter(1)
			EndIf
			If Command="goto"
				For i=0 To MAXLINES
					If script\sprung[i]=Parameter(1) Then Exit
				Next
				script\gotos[zcount]=i
			EndIf
			
			
			script\rows[zcount]=wholerow$
			zcount=zcount+1
			.dontwritein
		EndIf
	Wend
	script\zeilen=zcount-1
	;debug
	s=WriteFile(parsedir+script\name+".debug")
	For i=0 To script\zeilen
		WriteLine s,i+": "+script\rows[i]
	Next
	CloseFile(s)
	Return Handle(script)
End Function

Function exec_script$(hndl,row=0,count=-1)
	script.Tscript=Object.Tscript(hndl)
	Local i
	Local varint,varfloat,varstring
	Local zcount
	Local rowtemp$,rowtemp2$
	Local str1$,str2%
	;Local orgvarint=script\,orgvarfloat,orgvarstrin
	
	
	If script.Tscript<>Null
		If count=-1 Then count=script\zeilen
		If func.Tfunc<>Null
			script\varintc=script\varintc+func\pars
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
				If Float(script\returnw)=script\returnw
					Return script\returnw
				Else
					st.Tstring=New Tstring
					st\content=script\returnw
					st\id=CreateBank()
					Return script\returnw
				EndIf
			EndIf
		Next
	Else
		RuntimeError "Script existiert nicht"
	EndIf
	script\rowcount=0
	script\Ifcount=0
	script\returnnow=0
	Return
End Function

Function exec_func$(fn$,pars=0,hndl=0)
	Local e$
	Local com$
	Local varn$
	Local blubb
	Select fn$
		Case "sin"
			e=Sin(Float(Paras(0)))
		Case "cos"
			e=Cos(Float(Paras(0)))
		Case "tan"
			e=Tan(Paras(0))
		Case "log"
			e=Log(Paras(0))
		Case "asin"
			e=ASin(Paras(0))
		Case "acos"
			e=ACos(Paras(0))
		Case "atan"
			e=ATan(Paras(0))
		Case "atan2"
			e=ATan2(Paras(0),Paras(1))
		Case "sqr"
			e=Sqr(Paras(0))
		Case "abs"
			e=Abs(Float(Paras(0)))
		Case "floor"
			e=Floor(Paras(0))
		Case "ceil"
			e=Ceil(Paras(0))
		Case "int"
			e=Int(Paras(0))
		Case "float"
			e=Float(Paras(0))
		Case "rand"
			e=Rand(Paras(0),Paras(1))
		Case "exp"
			e=Exp(Paras(0))
		Case "log10"
			e=Log10(Paras(0))
		Case "abs"
			e=Abs(Float(Paras(0)))
		Case "sgn"
			e=Sgn(Float(Paras(0)))
		Case "rnd"
			e=Rnd(Paras(0),Paras(1))
		Case "print"
			Print Paras$(0)
		Case "waitkey"
			e=WaitKey()
		Case "end"
			End()
		Case "select"
			
		Case "endselect"
			
		Case "case"
			
		Case "default"
			
		Case "if"
			script\Ifcount=script\Ifcount+1
			script\Ifs[script\Ifcount]=Paras(0)
			stepin=script\Ifcount
			If Paras(0)=False Then ;die If abfrage ist false
				;Suche Solange bis zum nächsten True
				Repeat
					script\rowcount=script\rowcount+1
					If Left(script\rows[script\rowcount],2)="if" 
						script\Ifcount=script\Ifcount+1 ;erhöhe das Stepin
						script\Ifs[script\Ifcount]=False ;damit ein von vorher erstelltes If nicht in die Quere kommt
					EndIf
					If Left(script\rows[script\rowcount],6)="elseif"
						script\Ifcount=script\Ifcount+1 ;erhöhe das Stepin
						script\Ifs[script\Ifcount]=True ;damit ein von vorher erstelltes If nicht in die Quere kommt
						If stepin=script\Ifcount
							Exit
						EndIf
					EndIf
					If script\rows[script\rowcount]="endif()"
						script\Ifcount=script\Ifcount-1 ;mindere das Stepin
					EndIf
					If script\rows[script\rowcount]="else()"
						script\Ifcount=script\Ifcount-1 ;mindere das Stepin
					EndIf
				Until script\Ifs[script\Ifcount]<>False
			EndIf
		Case "endif"
			script\Ifcount=script\Ifcount-1
			If script\Ifs[script\Ifcount]=False Then  ;wenn jetzt False ist gehe zum nächsten Stepin
				Repeat
					script\rowcount=script\rowcount+1
					If Left(script\rows[script\rowcount],2)="if"
						script\Ifcount=script\Ifcount+1 ;erhöhe das Stepin
						script\Ifs[script\Ifcount]=False ;damit ein von vorher erstelltes If nicht in die Quere kommt
					EndIf
					If script\rows[script\rowcount]="endif()"
						script\Ifcount=script\Ifcount-1 ;mindere das Stepin
					EndIf
					If script\rows[script\rowcount]="else()"
						script\Ifcount=script\Ifcount-1 ;mindere das Stepin
					EndIf
				Until script\Ifs[script\Ifcount]<>False
			EndIf
		Case "else"
				;da der State gerade SICHER true ist, wird garkeine Überprüfung durchgeführt
			script\Ifcount=script\Ifcount+1
			script\Ifs[script\Ifcount]=False
			Repeat
				script\rowcount=script\rowcount+1
				If Left(script\rows[script\rowcount],2)="if"
					script\Ifcount=script\Ifcount+1 ;erhöhe das Stepin
					script\Ifs[script\Ifcount]=False ;damit ein von vorher erstelltes If nicht in die Quere kommt
				EndIf
				If script\rows[script\rowcount]="endif()"
					script\Ifcount=script\Ifcount-1 ;mindere das Stepin
				EndIf
				If script\rows[script\rowcount]="else()"
					script\Ifcount=script\Ifcount-1 ;mindere das Stepin
				EndIf
			Until script\Ifs[script\Ifcount]<>False
		Case "elseif"
			If Paras(0)=False
				script\Ifs[script\Ifcount]=False
				script\Ifcount=script\Ifcount+1
				script\Ifs[script\Ifcount]=False
				Repeat
					script\rowcount=script\rowcount+1
					If Left(script\rows[script\rowcount],2)="if"
						script\Ifcount=script\Ifcount+1 ;erhöhe das Stepin
						script\Ifs[script\Ifcount]=False ;damit ein von vorher erstelltes If nicht in die Quere kommt
					EndIf
					If script\rows[script\rowcount]="endif()"
						script\Ifcount=script\Ifcount-1 ;mindere das Stepin
					EndIf
					If script\rows[script\rowcount]="else()"
						script\Ifcount=script\Ifcount-1 ;mindere das Stepin
					EndIf
				Until script\Ifs[script\Ifcount]<>False
			EndIf
		Case "delfunction"
			For func.Tfunc=Each Tfunc
				If func\n=Paras(0)
					Delete func.Tfunc
					Exit
				EndIf
			Next
		Case "addfunction"
			func.Tfunc=New Tfunc
			func\n=Paras(0)
			func\pars=Paras(1)
		Case "import"
			Select Paras(0)
				Case "math"
					add_math_funcs()
				Case "key"
					add_key_funcs()
				Case "time"
					add_time_funcs()
				Case "system"
					add_system_funcs()
				Case "graphic"
					add_graphic_funcs()
			End Select
		Case "importall"
			add_math_funcs()
			add_key_funcs()
			add_time_funcs()
			add_system_funcs()
		Case "goto"
			script\rowcount=script\gotos[script\rowcount]
		Case "jumptoline"
			script\Ifcount=0
			script\rowcount=Paras(0)
		Case "not"
			If Paras(0)=0 Then e=1 Else e=0
		Case "keyhit"
			e=KeyHit(Paras(0))
		Case "keydown"
			e=KeyDown(Paras(0))
		Case "mousedown"
			e=MouseDown(Paras(0))
		Case "mousehit"
			e=MouseHit(Paras(0))
		Case "setmousemode"
			Select Paras(0)
				Case 0
					e=0
					ShowPointer()
				Case 1
					e=1
					HidePointer
			End Select
		Case "movemouse"
			MoveMouse(Paras(0),Paras(1))
		Case "flushkeys"
			FlushKeys()
		Case "getkey"
			e=GetKey()
		Case "mousex"
			e=MouseX()
		Case "mousey"
			e=MouseY()
		Case "mousez"
			e=MouseZ()
		Case "mousexspeed"
			e=MouseXSpeed()
		Case "mouseyspeed"
			e=MouseYSpeed()
		Case "mousezspeed"
			e=MouseZSpeed()
		Case "getmouse"
			e=GetMouse()
		Case "mousewait"
			e=MouseWait()
		Case "waitmouse"
			e=WaitMouse()
		Case "createtimer"
			e=CreateTimer(Paras(0))
		Case "currentdate"
			e=CurrentDate()
		Case "currenttime"
			e=CurrentTime()
		Case "delay"
			Delay(Paras(0))
		Case "freetimer"
			FreeTimer(Paras(0))
		Case "millisecs"
			e=MilliSecs()
		Case "rndseed"
			e=RndSeed()
		Case "seedrand"
			e=(Paras(0))
		Case "waittimer"
			e=WaitTimer(Paras(0))
		Case "apptitle"
			AppTitle Paras(0)
		Case "calldll"
			e=CallDLL(Paras(0),Paras(1),Paras(2),Paras(3))
		Case "commandline"
			e=CommandLine()
		Case "getenv"
			e=GetEnv(Paras(0))
		Case "runtimeerror"
			RuntimeError(Paras(0))
		Case "setenv"
			SetEnv(Paras(0),Paras(1))
		Case "systemproperty"
			e=SystemProperty(Paras(0))
		Case "execfile"
			ExecFile Paras(0)
		Case "return"
			script\returnw=Paras(0)
			script\returnnow=1
			;grafik funks
		Case "cls"
			Cls
		Case "flip"
			Flip Paras(0)
		Case "setbuffer"
			SetBuffer Int(Paras(0))
		Case "backbuffer"
			e=BackBuffer()
		Case "graphics"
			Graphics Paras(0),Paras(1),Paras(2),Paras(3)
		Case "text"
			Text Paras(2),Paras(1),Paras(0),Paras(3),Paras(4)
		Case "fps"
			e=fps()
		Case "rect"
			Rect Paras(0),Paras(1),Paras(2),Paras(3)
		Case "oval"
			Oval Paras(0),Paras(1),Paras(2),Paras(3)
		Case "rectsoverlap"
			e=RectsOverlap(Paras(0),Paras(1),Paras(2),Paras(3),Paras(4),Paras(5),Paras(6),Paras(7))
		Default
			If Instr(fn,".")
				fn2$=Mid(fn,Instr(fn,".")+1)
				fn3$=Mid(fn,1,Instr(fn,".")-1)
				get_object(Handle(script),fn3)
				tType.Ttype=Object.Ttype(Tobject\tType)
				
				;die Sachen die jedes Object hat
				Select fn2
					Case "delete"
						varname$=fn3
						i2=0
						For i=Tobject\indexint To Tobject\indexint+tType\varintc
							i2=i2+1
							script\varintn$[i]=""
							script\varint[i]=0
						Next
						i2=0
						For i=Tobject\indexfloat To Tobject\indexfloat+tType\varintc
							i2=i2+1
							script\varfloatn$[i]=""
							script\varfloat[i]=0
						Next
						i2=0
						For i=Tobject\indexstring To Tobject\indexstring+tType\varintc
							i2=i2+1
							script\varstringn$[i]=""
							script\varstring[i]=0
						Next
						For i=1 To tType\methodc
							For func.Tfunc=Each Tfunc
								If func\n=varname+"."+tType\method[i]
									Delete func.Tfunc
									Exit
								EndIf
							Next
						Next
					Case "new"
						DebugLog fn2+" : "+fn3
						varname$=fn3
						
						i2=0
						For i=Tobject\indexint To Tobject\indexint+tType\varintc
							i2=i2+1
							script\varintn$[i]=varname$+"."+tType\varintn[i2]
							script\varint[i]=tType\varint[i2]
						Next
						i2=0
						For i=Tobject\indexfloat To Tobject\indexfloat+tType\varintc
							i2=i2+1
							script\varfloatn$[i]=varname$+"."+tType\varfloatn[i2]
							script\varfloat[i]=tType\varfloat[i2]
						Next
						i2=0
						For i=Tobject\indexstring To Tobject\indexstring+tType\varintc
							i2=i2+1
							script\varstringn$[i]=varname$+"."+tType\varstringn[i2]
							script\varstring[i]=tType\varstring[i2]
						Next
						For i=1 To tType\methodc
							add_func(varname+"."+tType\method[i])
						Next
				End Select
				
				
				Select tType\name
					Case "timage"
						Select fn2
							Case "draw"
								DrawImage get_objectvar(Handle(script),"INT",fn3,"hndl%"),get_objectvar(Handle(script),"INT",fn3,"x%"),get_objectvar(Handle(script),"INT",fn3,"y%")
;								Plot get_objectvar(Handle(script),"INT",fn3,"x%"),get_objectvar(Handle(script),"INT",fn3,"y%")
							Case "load"
								img=LoadImage(Paras(0))
								If img=0 Then RuntimeError "Bild nicht gefunden!"
								set_objectvar(Handle(script),"INT",fn3,"hndl%",img)
							Case "new"
								set_objectvar(Handle(script),"INT",fn3,"x%",Paras(0))
								set_objectvar(Handle(script),"INT",fn3,"y%",Paras(1))
						End Select
				End Select
			Else
				blubb=Handle(script)
				e=exec_script(hndl)
				If st.Tstring<>Null
					e$=st\id
				EndIf
				script.Tscript=Object.Tscript(blubb)
			EndIf
	End Select
	Return e
End Function

;Module
Function add_system_funcs()
	add_func("apptitle")
	add_func("calldll")
	add_func("commandline")
	add_func("getenv")
	add_func("runtimeerror")
	add_func("setenv")
	add_func("systemproperty")
End Function

Function add_time_funcs()
	add_func("createtimer")
	add_func("currentdate")
	add_func("durrenttime")
	add_func("delay")
	add_func("freetimer")
	add_func("millisecs")
	add_func("rndseed")
	add_func("seedrand")
	add_func("waittimer")
End Function

Function add_key_funcs()
	;tasten
	add_func("keyhit")
	add_func("keydown")
	add_func("waitkey")
	add_func("flushkeys")
	add_func("getkey")
	;maus
	add_func("mousedown")
	add_func("mousehit")
	add_func("mousex")
	add_func("mousey")
	add_func("mousez")
	add_func("flushmouse")
	add_func("getmouse")
	add_func("setmousemode")
	add_func("waitmouse")
	add_func("mousexspeed")
	add_func("mouseyspeed")
	add_func("mousezspeed")
	add_func("movemouse")
	add_func("mousewait")
End Function

Function add_basic_funcs()
	add_func("print")
	add_func("if")
	add_func("endif")
	add_func("else")
	add_func("elseif")
	add_func("select")
	add_func("case")
	add_func("endselect")
	add_func("default")
	add_func("delfunc")
	add_func("addfunc")
	add_func("import")
	add_func("importall")
	add_func("goto")
	add_func("jumptoline")
	add_func("end")
	add_func("return")
	add_func("not")
	add_func("execfile")
;	add_func("")
End Function

Function add_math_funcs()
	add_func("sin")
	add_func("cos")
	add_func("tan")
	add_func("log")
	add_func("asin")
	add_func("acos")
	add_func("atan")
	add_func("atan2")
	add_func("sqr")
	add_func("abs")
	add_func("floor")
	add_func("ceil")
	add_func("log")
	add_func("int")
	add_func("float")
	add_func("str")
	add_func("rand",2)
	add_func("exp")
	add_func("log10")
	add_func("sgn")
	add_func("abs")
	add_func("rnd")
End Function
;Klassen:
Function add_graphic_funcs()
	;Timage Klasse
	;image Klasse
	thndl=add_type("timage",2)
	add_typevar(thndl,"INT","x%",0)
	add_typevar(thndl,"INT","y%",0)
	add_typevar(thndl,"INT","hndl%",0)
	add_typefunc(thndl,"draw")
	add_typefunc(thndl,"load")
	add_func("cls")
	add_func("flip")
	add_func("graphics")
	add_func("setbuffer")
	add_func("backbuffer")
	add_func("fps")
	add_func("rect")
	add_func("oval")
	add_func("rectsoverlap")
	add_func("text")
End Function
;Api Funktionen
;OOP
Function set_objectvar(scripthndl,typ$,Objectname$,varname$,wert$,strict=1)
	script.Tscript=Object.Tscript(scripthndl)
	name$=Objectname$+"."+varname$
	
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

Function get_objectvar(scripthndl,typ$,objectname$,varname$)
	script.Tscript=Object.Tscript(scripthndl)
	name$=objectname$+"."+varname$
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

Function create_object(typhndl,name$)
	tType.Ttype=Object.Ttype(typhndl)
	Tobject.tobject=New tobject
	Tobject\tType=typhndl
	Tobject\name=name$
	
	Return Handle(Tobject)
End Function

Function get_object(scripthndl,name$)
	For Tobject.tobject=Each tobject
		If Tobject\name=name
			Return Handle(Tobject)
		EndIf
	Next
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
Function get_globalvafast(name$)
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

Function call_func$(scripthndl,name$,par0$="",par1$="",par2$="",par3$="",par4$="",par5$="",par6$="",par7$="",par8$="",par9$="",par10$="",par11$="",par12$="")
	For func.Tfunc=Each Tfunc
		If func\n=name$
			Paras(0)=par0$
			Paras(1)=par1$
			Paras(2)=par2$
			Paras(3)=par3$
			Paras(4)=par4$
			Paras(5)=par5$
			Paras(6)=par6$
			Paras(7)=par7$
			Paras(8)=par8$
			Paras(9)=par9$
			Paras(10)=par10$
			Paras(11)=par11$
			Paras(12)=par12$
			Return exec_script(Handle(func))
		EndIf
	Next
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
Function get_varfast(scripthndl,typ$,id,wert$,strict=1)
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


Function error(id,row=0)
	Local em$
	Select id
		Case 0
			em$="Maximallimit erreicht"
		Case 1
			em$="IF ohne Endif"
		Case 2
			em$="Unbekannter Datentype."
	End Select
	RuntimeError em$
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
;~F#1B#3F#45#5B#8B#92#99#DE#EA#27D#439#443#44F#467#47E#497#4AD#4CF#4ED#4F6
;~F#4FE#504#516#51E#53B#557#56F#583#5A4#5AB#5B2#5B6#5B9#5C8#5D8#5ED#60A#626#63A#64D
;~F#66D#682#68C#68F#692#6B2#6C4#6D6#6E0#6EB#6F9#732#761#77D
;~B#3B#3C#42#58#6F#79#7A#81#82#86#90#97#CC#DC#E8#15D#177#18C#23E#23F
;~B#244#245#256#257#27A#27B#297#2B1#2C6#2C7#2FB#2FC#305#365#36C#389#41A#42A#42B#432
;~B#434#435#436#441#44D#465#477#47B#47C#494#495#4AA#4C7#4CD#4E5#4EB#4F4#4FC#502#513
;~B#514#51C#533#539#550#556#567#56D#57C#582#59B#5A1#5AA#5B1#5B4#5B8#5C6#5D5#5D6#5EB
;~B#602#608#61F#625#632#638#646#64C#665#66B#67C#67D#67E#688#68B#68E#691#6AD#6C1#6D3
;~B#6DE#6DF#6E7#6E8#6F3#6F4#6F5#6F6#731#760#778#779#7C2#7C3
;~C#Blitz3D