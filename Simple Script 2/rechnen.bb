Dim Paras$(MAXPARAM)
Type Tcat
	Field name$
	Field keyword
End Type
Global cat.Tcat
Type Tfunc
	Field n$ ;Der name der Function
	Field pars$
	Field funchndl ;das handle des scriptes, welches auf die FUnktion verweist
	Field intpars,floatpars,stringpars ;wie viele es wovon gint
	Field param$ ;Die parameter als string
	Field stream ;der stream der Funktion
	Field typ[MAXPARAM] ;Was was ist
	Field used ;Ob die Funktion im ganzen Script benutzt wurde
	Field cat$ ;Zu Welcher kategorie es gehört
	Field keyword ;Ist es ein Keyword?
End Type
Global func.Tfunc
Type Tstring
	Field content$
	Field id$
End Type
Global st.Tstring



Function rechnen#(s$)
	Delete Each Tstring
	s$=Trim(s$)
;strings
	While Instr(s$,Chr(34))
		st.Tstring=New Tstring
		p=Instr(s$,Chr(34))
		anfandsstr$=Mid(s$,p+1,(Instr(s$,Chr(34),p+1))-(p+1))
		st\content=anfandsstr
		mult$=""
		If Mid(s$,Instr(s$,Chr(34),p+1)+1,1)="*"
			z$=zahlr(s$,Instr(s$,Chr(34),p+1)+1)
			For i=1 To Int(z)-1
				st\content=st\content+anfandsstr$
			Next
			mult$="*"+z$
		EndIf
		If Mid(s$,Instr(s$,Chr(34),p+1)+1,1)="/"
			z$=zahlr(s$,Instr(s$,Chr(34),p+1)+1)
			st\content=Mid(st\content,1,Len(st\content)/Int(z))
			mult$="/"+z$
		EndIf
		If Mid(s$,Instr(s$,Chr(34),p+1)+1,1)="-"
			z$=zahlr(s$,Instr(s$,Chr(34),p+1)+1)
			st\content=Mid(st\content,1,Len(st\content)-Int(z))
			mult$="-"+z$
		EndIf
		If Mid(s$,Instr(s$,Chr(34),p+1)+1,1)="+"
			z$=zahlr(s$,Instr(s$,Chr(34),p+1))
			st\content=st\content+Replace(z,Chr(34),"")
			mult$="+"+z$
		EndIf
		st\id=CreateBank()
		s$=Replace(s$,Chr(34)+anfandsstr+Chr(34)+mult$,st\id)
	Wend
	s$=Lower(s$)
	
;Klammern
	iam=Instr(s$,"(",1)
	If iam>0
		While Instr(s$,"(",iam)
			pos=Instr(s$,"(",iam)
			If pos>0; And Instr(s$,"(",pos+1)=0
				rechenstring$=Mid(s$,pos+1,Instr(s$,")",iam)-(pos+1))
				If Instr(rechenstring,")")
					zuviel$=Right(rechenstring,Len(rechenstring)-Instr(rechenstring,")")+1)
					rechenstring=Replace(rechenstring,zuviel,"")
				EndIf
				s=Replace(s,"->","__")
				funcn$=zahll(s$,pos,0)
				
				s=Replace(s,"__","->")
				funcn=Replace(funcn,"__","->")
				If funcn="" And Float(funcn)<>funcn Or (funcn="not" Or funcn="and" Or funcn="or" Or funcn="xor" Or funcn="mod")
					s$=Replace(s$,"("+rechenstring$+")",calc(rechenstring$,funcn))
				Else
					s$=Replace(s$,funcn+"("+rechenstring$+")",calc(rechenstring$,funcn))
				EndIf
				iam=1
			Else
				iam=pos+1
			EndIf
		Wend
	EndIf
	Return calc(s$)
End Function

Function calc$(s$,funcname$="")
	
	s$=Replace(s$,",","|")
	s$=Replace(s$," ","")
	s$=Replace(s$,"--","+")
	s$=Replace(s$,"++","+")
	s$=Replace(s$,"-+","-")
	s$=Replace(s$,"+-","-")
	s$=Replace(s$,"pi",Pi)
	s$=Replace(s$,"xor","??")
	s$=Replace(s$,"and","&&")
	s$=Replace(s$,"or","||")
	s$=Replace(s$,"mod","%%")
	s$=Replace(s,"->","!!")
	
	If Instr(s$,"=")
		s2$=s$
		
		s2$=Replace(s2$,"==","--")
		s2$=Replace(s2$,"<=","++")
		s2$=Replace(s2$,">=","[!")
		s3$=s2$
		If Instr(s2$,"=")
			p=Instr(s2$,"=")
			s2$=""
			s2$=Mid(s$,1,p-1)
			s$=Mid(s$,p+1)
		EndIf
		If s3$=s2$ Then s2$=""
	EndIf
	While Instr(s$,"&")
		p=Instr(s$,"&")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"&"+z2$,z1+z2)
	Wend
	While Instr(s$,"^")
		p=Instr(s$,"^")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"^"+z2$,Float(z1)^Float(z2))
	Wend
	
	While Instr(s$,"/") Or Instr(s$,"*")
		If Instr(s$,"*")=0
			p=Instr(s$,"/")
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"/"+z2$,Float(z1)/Float(z2))
		ElseIf Instr(s$,"/")=0
			p=Instr(s$,"*")
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"*"+z2$,Float(z1)*Float(z2))
		ElseIf Instr(s$,"/")<Instr(s$,"*")
			p=Instr(s$,"/")
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"/"+z2$,Float(z1)/Float(z2))
		ElseIf Instr(s$,"*")<Instr(s$,"/")
			p=Instr(s$,"*")
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"*"+z2$,Float(z1)*Float(z2))
		EndIf
	Wend
	
	While Instr(s$,"+") Or Instr(s$,"-",2)
		z1$=""
		z2$=""
		
		If Instr(s$,"-",2)=0
			p=Instr(s$,"+")
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"+"+z2$,Float(z1)+Float(z2))
		ElseIf Instr(s$,"+")=0
			p=Instr(s$,"-",2)
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"-"+z2$,Float(z1)-Float(z2))
		ElseIf Instr(s$,"+")<Instr(s$,"-",2)
			p=Instr(s$,"+")
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"+"+z2$,Float(z1)+Float(z2))
		ElseIf Instr(s$,"-",2)<Instr(s$,"+") 
			p=Instr(s$,"-",2)
			z1$=zahll(s$,p)
			z2$=zahlr(s$,p)
			If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
			s$=Replace(s$,z1$+"-"+z2$,Float(z1)-Float(z2))
		EndIf
	Wend
	
	While Instr(s$,"!!")
		
		Print s+"___"
		s=Replace(s,"(","")
		s=Replace(s,")","")
		p=Instr(s$,"!!")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		If isint(z1)
			s$=Replace(s$,z1$+"!!"+z2$,GetMap(z1,z2))
		Else
			s$=Replace(s$,z1$+"!!"+z2$,GetMap(GetMap(globalmap,z1),z2))
		EndIf
		Print s+" : "+z1+" : "+z2
;		Print z2
	Wend
	
	While Instr(s$,"==")
		p=Instr(s$,"==")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"=="+z2$,Float(z1) = Float(z2))
	Wend
	
	While Instr(s$,"<=")
		p=Instr(s$,"<=")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"<="+z2$,Float(z1) <= Float(z2))
	Wend
	
	While Instr(s$,">=")
		p=Instr(s$,">=")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+">="+z2$,Float(z1) >= Float(z2))
	Wend
	
	While Instr(s$,"<")
		p=Instr(s$,"<")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"<"+z2$,Float(z1) < Float(z2))
	Wend
	While Instr(s$,">")
		p=Instr(s$,">")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+">"+z2$,Float(z1) > Float(z2))
	Wend
	
	While Instr(s$,"%%")
		p=Instr(s$,"%%")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"%%"+z2$,Float(z1) Mod Float(z2))
	Wend
	
	While Instr(s$,"??")
		p=Instr(s$,"??")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+2)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"??"+z2$,Float(z1) Xor Float(z2))
	Wend
	
	While Instr(s$,"&&")
		p=Instr(s$,"&&")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"&&"+z2$,Float(z1) And Float(z2))
	Wend
	
	While Instr(s$,"||")
		p=Instr(s$,"||")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"||"+z2$,Float(z1) Or Float(z2))
	Wend
	If s2$<>""
		s$=s2$+"="+s$
		s2$=""
		p=Instr(s$,"=")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p)
		s$=Replace(s$,z1$+"="+z2$,"")
		If Instr(z1,"!!")
			z3$=z2
			p=Instr(z1,"!!")
			z2$=zahlr(z1$,p+1)
			z1$=zahll(z1$,p)
			If isint(z1)
				s$=Replace(s$,z1$+"!!"+z2$,ChangeMap(z1,z2,z3))
			Else
				s$=Replace(s$,z1$+"!!"+z2$,ChangeMap(GetMap(globalmap,z1),z2,z3))
			EndIf
		ElseIf Instr(z1$,"%")
			z%=Mid(z1,2,(Instr(z1$,"%",Instr(z1$,"%")+1)-2))
			DebugLog "Index: "+z+" Name: "+script\varintn[z]+" Soll in "+z2
			If z<=script\varintc Then
				script\varint[z]=z2$
			Else
				GlobalVar(z,2)=Int(z2)
			EndIf
		ElseIf Instr(z1$,"#")
			z%=Mid(z1,2,(Instr(z1$,"#",Instr(z1$,"#")+1)-2))
			If z<=script\varfloatc
				
				script\varfloat[z]=z2$
			Else
				GlobalVar(z,2)=Float(z2$)
			EndIf
		ElseIf Instr(z1$,"$")
			z%=Mid(z1,2,(Instr(z1$,"$",Instr(z1$,"$")+1)-2))
			For st.Tstring=Each Tstring
				z2=Replace(z2,st\id,st\content)
			Next
			If z<=script\varstringc
				script\varstring[z]=z2$
			Else
				GlobalVar(z,2)=z2$
			EndIf
			
		EndIf
		
	EndIf
	
	If funcname<>"" And isfloat(funcname)=0
		s$=funcs(funcname$,s$)
	EndIf
	If isint(s)
		Return Int(s$)
	ElseIf isfloat(s)
		Return Float(s$)
	Else
		Return s$
	EndIf
End Function

Function funcs$(fn$,s$)
	
	fn=Lower(Trim(fn))
	For st.Tstring=Each Tstring
		s$=Replace(s$,st\id,st\content)
	Next
	;anführungs striche ersetzen
	
	For i=0 To ParameterCount
		Paras(i)=0
	Next
	s$=s$+"|"
	For i=0 To MAXPARAM
		currentparam$=Left(s$,Instr(s$,"|")-1)
		Paras(i)=currentparam
		Paras(i)=Replace(Paras(i),"\'",Chr(34))
		paramcount=paramcount+1
		s$=Mid(s$,Instr(s$,"|")+1)
		If Instr(s$,"|")=0 Or s$="" Then Exit
	Next
	ParameterCount=paramcount
	selfpar=0
	
	If Instr(fn,"->"); Es ist ein Methoden aufruf
		mname$=GetMap(classmap,Left(fn,Instr(fn,"->")-1))
		selfpar=Int(Left(fn,Instr(fn,"->")-1))
		fn=mname+Mid(fn,Instr(fn,"->"))
	EndIf
	
	func=Object.Tfunc(GetMap(funcmap,fn))
	If func<>Null
		e$=exec_func(fn$,paramcount,func\funchndl)
	EndIf
	Return e$
	
End Function

Function zahll$(s$,pos,varis=0)
	pos=pos-1
	Repeat
		count=count+1
		If pos=0 Then Exit
		l$=Mid(s$,pos,1)
		Select l$
			Case "+","-","*","/","^","(",")","=","&","|","?"
				If count=1 And l$="-"
					r$="-"+r$
					pos=pos-1
				Else
					If pos>1
						If Mid(s$,pos-1,1)="-"
							r$="-"+r$
						EndIf
					EndIf
					If pos=1 And l$="-"
						r$="-"+r$
					EndIf
					Exit
				EndIf
			Default
				r$=l$+r$
				pos=pos-1
		End Select
	Forever
	
	Return r
End Function

Function zahlr$(s$,pos,varis=0)
	lastl$=Mid(s$,pos,1)
	pos=pos+1
	Repeat
		count=count+1
		lastl$=l$
		l$=Mid(s$,pos,1)
		If l$="+" And pos=1 Then Exit
		Select l$
			Case "+","-","*","/","^",")","(",")","=","&","|"
				If count=1 And l$="-"
					r$="-"+r$
					pos=pos+1
				Else
					Exit
				EndIf
			Default
				pos=pos+1
				r$=r$+l$
		End Select
		If pos=Len(s$)+1 Then Exit
	Forever
	Return r$
End Function

Function add_cat(name$,keyword=0)
	cat.Tcat=New Tcat
	cat\name=name
	cat\keyword=keyword
End Function


Function add_func(n$,pars=30,funchndl=-1)
	Local ffunc
	func.Tfunc=New Tfunc
	func\n=n
	func\pars=pars
	func\funchndl=funchndl
	func\cat=cat\name
	func\keyword=cat\keyword
	InsertMap(funcmap,func\n,Handle(func))
;	Insert func Before First Tfunc
	ffunc=Handle(func)
	func.Tfunc=Null
	Return ffunc
End Function
;~IDEal Editor Parameters:
;~F#1#6#13#19E#1B7#1BE
;~B#11#16#5C#90#158#17C#17F#1B1#1B5#1CB
;~C#Blitz3D