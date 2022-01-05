
;Dims
Dim Parameter$(MAXPARAM)
Dim GlobalVar$(MAXVARS,3) ;0=name 1=typ(INT,FLOAT,STRING) 2=Inhalt
;includes
Include "rechnen.bb"
;Konstanten
Const MAXLINES=10000 ;Die maximale Anzahl an Zeilen
Const MAXPARAM=100    ;Die maximale Anzahl an Parameter im Kommando Parser im Scriptparser
Const MAXIFS=100     ;Die maximale anzahl an If Abfragen
Const MAXSCHLEIFE=1000;Die maximale Anzahl an Schleifen
Const MAXGOTO=1000   ;Die maximale Anzahl an gotos
Const MAXVARS=1000    ;Die maximale Anzahl an Variablen pro Typ
;Globale Variablen
Global Globalvars=0
Global scriptdir$="script/"
Global parsedir$="compiled/"
;Types
Type Tscript
	;Variablen
	Field varref[MAXVARS] ;Welches wovon abhängig ist
	Field varint[MAXVARS] ;DER inhalt
	Field varintn$[MAXVARS] ;Der Name
	Field varintc ;Wie viele es davon gibt
	
	
	Field varfloat#[MAXVARS]
	Field varfloatn$[MAXVARS]
	Field varfloatc
	
	Field varstring$[MAXVARS]
	Field varstringn$[MAXVARS]
	Field varstringc
	
	;sonstiges
	Field stream ;der Stream vom zu parsenden
	Field pos     ;Die Position
	Field row ;Die geparsten Zeilen in ihre Token zerlegt
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
;Lokale Variablen
Local script1=0


;Befehle

;add_func("",)

AppTitle "Simple Basic"
Print "Simple Basic"
Print "compiling..."
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
WaitKey()

Function find_funcs(file$="script.sb")
	Local stream,stream2
	Local zeile$
	Local wholerow$
	Local i
	Local par$
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
						WriteLine stream2,Parameter(i)+"="+par
						WriteLine stream2,"endif"
					Else
						par=0
					EndIf
					
					Select Right(Parameter(i),1)
						Case "%"
							script\varintc=script\varintc+1
							script\varint[script\varintc]=Int(calco(par$))
							script\varintn[script\varintc]=Parameter(i)
						Case "#"
							script\varfloatc=script\varfloatc+1
							script\varfloat[script\varfloatc]=Float(calco(par$))
							script\varfloatn[script\varfloatc]=Parameter(i)
						Case "$"
							script\varstringc=script\varstringc+1
							script\varstring[script\varstringc]=par$
							script\varstringn[script\varstringc]=Parameter(i)
					End Select
				Next
				func\pars=ParameterCount-1
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
	script\row=CreateBank(MAXLINES*MAXPARAM*4)
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
			zeile$=Left(zeile$,Instr(zeile$,";"))
		EndIf
		If zeile<>""
			comm=Left(zeile$,Instr(zeile$," "))
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
				wholerow=Replace(wholerow,"=",",")
				str1$=Chr(34)+Mid(wholerow,6,Instr(wholerow,",")-6)+Chr(34)
				str2$=Mid(wholerow,Instr(wholerow,",")+1)
				wholerow="local("+str1+","+str2+")"
				wholerow=Lower(wholerow)
				wholerow=Replace(wholerow," ","")
				;Print wholerow
				wholerow=Mid(str1,3,Instr(str1,Chr(34),3)-3)+"="+rechnen(wholerow)
			EndIf
			If Left(wholerow,6)="global"
				wholerow=Replace(wholerow,"=",",")
				str1$=Chr(34)+Mid(wholerow,8,Instr(wholerow,",")-8)+Chr(34)
				str2$=Mid(wholerow,Instr(wholerow,",")+1)
				wholerow="global("+str1+","+str2+")"
				wholerow=Lower(wholerow)
				wholerow=Replace(wholerow," ","")
				wholerow=Mid(str1$,2,Instr(str1,Chr(34),2)-2)+"="+rechnen(wholerow)
			EndIf
			If Instr(wholerow,"%")
				For i=1 To Globalvars
					If GlobalVar(i,1)="INT"
						i2=i+MAXVARS
						wholerow=Replace(wholerow,GlobalVar(i,0),"%"+i2+"%")
					EndIf
				Next
				For i=1 To script\varintc
					wholerow=Replace(wholerow,script\varintn[i],"%"+i+"%")
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
					wholerow=Replace(wholerow,script\varfloatn[i],"#"+i+"#")
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
					wholerow=Replace(wholerow,script\varstringn[i],"$"+i+"$")
				Next
			EndIf
			wholerow2=Replace(wholerow,"==","--")
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
			EndIf
			
			zeile=wholerow
			zeile=Right(zeile,Len(zeile)-Instr(zeile$," "))
			ParseCmd(zeile)
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
				script\rows[zcount]="if (&"+Mid(wholerow,7)+")"
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
				script\rows[pos]="if (&"+Mid(script\rows[pos],7)+")"
				pos=pos+1
				zzcount=zcount+1
				script\rows[pos]="jumptoline("+zzcount+")"
				pos=pos+1
				script\rows[pos]="endif()"
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
				script\rows[zcount]="if (&("+Parameter(2)+"))"
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
					pos=pos-0
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
			
			
;			write_row(script\row,zcount,0,ParameterCount)
;			comm=Lower(comm):comm=Trim(comm)
;			write_row(script\row,zcount,1,comm)
;			
;			For i=0 To ParameterCount-1
;				write_row(script\row,zcount,i+2,Parameter(i))
;			Next
			
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

Function exec_script$(hndl)
	script.Tscript=Object.Tscript(hndl)
	Local i
	Local i2=0
	Local zcount
	Local rowtemp$,rowtemp2$
	Local str1$,str2%
	;Local orgvarint=script\,orgvarfloat,orgvarstring
	
	
	If script.Tscript<>Null
		If func.Tfunc<>Null
			script\varintc=script\varintc+func\pars
			If func\pars>0
				For i=1 To func\pars
					If Right(script\varintn[i],1)="%"
						script\varint[i]=Paras(i2)
					EndIf
					If Right(script\varfloatn[i],1)="#"
						script\varfloat[i]=Paras(i2)
					EndIf
					If Right(script\varstringn[i],1)="$"
						script\varstring[i]=Paras(i2)
					EndIf
					i2=i2+1
				Next
			EndIf
		EndIf
		For script\rowcount=0 To script\zeilen
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
			e=Sin(Paras(0))
		Case "cos"
			e=Cos(Paras(0))
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
			If Paras(0)=0
				While (script\Ifs[script\Ifcount]<>0 Or script\Ifcount>0)
					If script\Ifcount=0 Then Exit
					script\rowcount=script\rowcount+1
					If script\rowcount>MAXLINES Then Exit
					If script\rows[script\rowcount]="else()"
						script\Ifcount=script\Ifcount-1
					EndIf
					If Left(script\rows[script\rowcount],2)="if"
						script\Ifcount=script\Ifcount+1
						script\Ifs[script\Ifcount]=0
					EndIf
					If script\rows[script\rowcount]="endif()"
						script\Ifcount=script\Ifcount-1
					EndIf
					If Left(script\rows[script\rowcount],6)="elseif"
						script\rowcount=script\rowcount-1
						Exit
					EndIf
				Wend
			EndIf
		Case "else"
			If script\Ifs[script\Ifcount]=0 Then
				While script\Ifs[script\Ifcount]=0 Or script\Ifcount<>0
					script\rowcount=script\rowcount+1
					
					If Left(script\rows[script\rowcount],2)="if"
						script\Ifcount=script\Ifcount+1
						script\Ifs[script\Ifcount]=0
					EndIf
					If script\rows[script\rowcount]="endif()"
						script\Ifcount=script\Ifcount-1
					EndIf
				Wend
			EndIf
		Case "endif"
			If script\Ifcount>0 Then script\Ifcount=script\Ifcount-1
		Case "elseif"
			If Paras(0)=0
				script\Ifs[script\Ifcount]=0
				If script\Ifs[script\Ifcount]=0
					While script\Ifs[script\Ifcount]<>0 Or script\Ifcount<>0 
						script\rowcount=script\rowcount+1
						If script\rowcount>MAXLINES Then error(1)
						If Left(script\rows[script\rowcount],2)="if"
							script\Ifcount=script\Ifcount+1
						EndIf
						If script\rows[script\rowcount]="endif()"
							script\Ifcount=script\Ifcount-1
						EndIf
						If Left(script\rows[script\rowcount],6)="elseif"
							script\rowcount=script\rowcount-1
							Exit
						EndIf
					Wend
				EndIf
			Else
				script\Ifs[script\Ifcount]=0
				While (script\Ifs[script\Ifcount]<>0 Or script\Ifcount>0)
					If script\Ifcount=0 Then Exit
					script\rowcount=script\rowcount+1
					
					If script\rowcount>MAXLINES Then error(1)
					
					If Left(script\rows[script\rowcount],2)="if"
						script\Ifcount=script\Ifcount+1
					EndIf
					If script\rows[script\rowcount]="endif()"
						script\Ifcount=script\Ifcount-1
					EndIf
					If Left(script\rows[script\rowcount],6)="elseif"
						script\rowcount=script\rowcount-1
						Exit
					EndIf
				Wend
			EndIf
		Case "local"
			varn$=LSet(Paras(0),Len(Paras(0))-1)
			Select Right(varn,1)
				Case "%"
					script\varintc=script\varintc+1
					script\varintn$[script\varintc]=varn$
					script\varint[script\varintc]=Int(Paras(1))
					e=Int(Paras(1))
				Case "#"
					script\varfloatc=script\varfloatc+1
					script\varfloatn$[script\varfloatc]=varn$
					script\varfloat[script\varfloatc]=Float(Paras(1))
					e=Float(Paras(1))
				Case "$"
					script\varstringc=script\varstringc+1
					script\varstringn$[script\varstringc]=varn$
					script\varstring[script\varstringc]=Paras(1)
					e=Paras(1)
			End Select
		Case "global"
			varn$=LSet(Paras(0),Len(Paras(0))-1)
			Globalvars=Globalvars+1
			GlobalVar(Globalvars,0)=varn$
			Select Right(varn,1)
				Case "%"
					GlobalVar(Globalvars,1)="INT"
					GlobalVar(Globalvars,2)=Int(Paras(1))
				Case "#"
					GlobalVar(Globalvars,1)="FLOAT"
					GlobalVar(Globalvars,2)=Float(Paras(1))
				Case "$"
					GlobalVar(Globalvars,1)="STRING"
					GlobalVar(Globalvars,2)=Paras(1)
			End Select
			e=GlobalVar(Globalvars,2)
		Case "setasref"
			Print Paras(0)
		Case "unsetasref"
			
		Case "delfunction"
			For func.Tfunc=Each Tfunc
				If func\n=Paras(0)
					Delete func.Tfunc
					Exit
				EndIf
			Next
		Case "goto"
			script\rowcount=script\gotos[script\rowcount]
		Case "jumptoline"
			script\Ifcount=0
			script\rowcount=Paras(0)
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
		Case "return"
			script\returnw=Paras(0)
			script\returnnow=1
		Default
			For func=Each Tfunc
				If func\n=fn
					blubb=Handle(script)
					e=exec_script(func\funchndl)
					If st.Tstring<>Null
						e$=st\id
					EndIf
					script.Tscript=Object.Tscript(blubb)
				EndIf
			Next
	End Select
	Return e
End Function

Function add_varint(scripthndl,wert%,name$)
	script.Tscript=Object.Tscript(scripthndl)
	script\varintc=script\varintc+1
	script\varint[script\varintc]=wert
	script\varintn[script\varintc]=name$
End Function

Function add_varfloat(scripthndl,wert#,name$)
	script.Tscript=Object.Tscript(scripthndl)
	script\varfloatc=script\varfloatc+1
	script\varfloat[script\varfloatc]=wert
	script\varfloatn[script\varfloatc]=name$
End Function

Function add_varstring(scripthndl,wert$,name$)
	script.Tscript=Object.Tscript(scripthndl)
	script\varstringc=script\varstringc+1
	script\varstring[script\varstringc]=wert
	script\varstringn[script\varstringc]=name$
End Function

Function get_row$(bank,num,param)
	If num<MAXLINES And param<MAXPARAM
		Return PeekString(bank,((num*MAXLINES)+param)*4)
	Else
		error(0)
	EndIf
End Function

Function write_row(bank,num,param,st$)
	If num<MAXLINES And param<MAXPARAM
		PokeString(bank,((num*MAXLINES)+param)*4,st$)
	Else
		error(0)
	EndIf
End Function

Function get_pos$(num,param)
	If num<MAXLINES And param<MAXPARAM
		Return ((num*MAXLINES) +MAXPARAM)*4
	Else
		error(0)
	EndIf
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


;alte Funktionen
;[Block]
;Function add_system_funcs()
;	add_func("apptitle")
;	add_func("calldll")
;	add_func("commandline")
;	add_func("getenv")
;	add_func("runtimeerror")
;	add_func("setenv")
;	add_func("systemproperty")
;End Function
;
;Function add_time_funcs()
;	add_func("createtimer")
;	add_func("currentdate")
;	add_func("durrenttime")
;	add_func("delay")
;	add_func("freetimer")
;	add_func("millisecs")
;	add_func("rndseed")
;	add_func("seedrand")
;	add_func("waittimer")
;End Function
;
;Function add_key_funcs()
;	;tasten
;	add_func("keyhit")
;	add_func("keydown")
;	add_func("waitkey")
;	add_func("flushkeys")
;	add_func("getkey")
;	;maus
;	add_func("mousedown")
;	add_func("mousehit")
;	add_func("mousex")
;	add_func("mousey")
;	add_func("mousez")
;	add_func("flushmouse")
;	add_func("getmouse")
;	add_func("setmousemode")
;	add_func("waitmouse")
;	add_func("mousexspeed")
;	add_func("mouseyspeed")
;	add_func("mousezspeed")
;	add_func("movemouse")
;	add_func("mousewait")
;End Function
;
;Function add_basic_funcs()
;	add_func("print")
;	add_func("if")
;	add_func("endif")
;	add_func("else")
;	add_func("elseif")
;	add_func("select")
;	add_func("case")
;	add_func("endselect")
;	add_func("default")
;	add_func("local")
;	add_func("global")
;	add_func("delfunc")
;	add_func("addfunc")
;	add_func("import")
;	add_func("importall")
;	add_func("goto")
;	add_func("jumptoline")
;	add_func("end")
;	add_func("return")
;;	add_func("")
;End Function
;
;Function add_math_funcs()
;	add_func("sin")
;	add_func("cos")
;	add_func("tan")
;	add_func("log")
;	add_func("asin")
;	add_func("acos")
;	add_func("atan")
;	add_func("atan2")
;	add_func("sqr")
;	add_func("abs")
;	add_func("floor")
;	add_func("ceil")
;	add_func("log")
;	add_func("int")
;	add_func("float")
;	add_func("str")
;	add_func("rand",2)
;	add_func("exp")
;	add_func("log10")
;	add_func("sgn")
;	add_func("abs")
;	add_func("rnd")
;End Function

;[End Block]

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
;~F#58#96#A3#31F#326#32D#334#33C#344#34C#357#371#3D2#40B#43A#455
;~B#36#47#48#4E#4F#54#175#17B#18E#1BA#203#2A2#2BE#318#31C#31E#339#341#349#354
;~B#35F#36A#36C#49A
;~C#Blitz3D