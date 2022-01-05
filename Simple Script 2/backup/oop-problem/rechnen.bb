Dim Paras$(MAXPARAM)

Type Tfunc
	Field n$
	Field pars$
	Field funchndl
	Field intpars,floatpars,stringpars
	Field typ[MAXPARAM] ;1=int , 2=float,3=string
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
		st\id=CreateBank()
		s$=Replace(s$,Chr(34)+anfandsstr+Chr(34)+mult$,st\id)
	Wend
	s$=Lower(s$)
;Klammern
	iam=Instr(s$,"(",1)
	If iam>0
		While Instr(s$,"(",iam)
			pos=Instr(s$,"(",iam)
			If pos>0 And Instr(s$,"(",pos+1)=0
				rechenstring$=Mid(s$,pos+1,Instr(s$,")",iam)-(pos+1))
				If Instr(rechenstring,")")
					zuviel$=Right(rechenstring,Len(rechenstring)-Instr(rechenstring,")")+1)
					rechenstring=Replace(rechenstring,zuviel,"")
				EndIf
				funcn$=zahll(s$,pos)
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
	s$=Replace(s$,"xor","xo")
;	s$=Replace(s$,"not","??")
	s$=Replace(s$,"and","&&")
	s$=Replace(s$,"||","or")
	s$=Replace(s$,"mod","%%")
	
	If Instr(s$,"="); And Mid(s$,Instr(s$,"=")+1 ,1)<>"="
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
	
	While Instr(s$,"xo")
		p=Instr(s$,"xo")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+2)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"xor"+z2$,Float(z1) Xor Float(z2))
	Wend
	
	While Instr(s$,"&&")
		p=Instr(s$,"&&")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"&&"+z2$,Float(z1) And Float(z2))
	Wend
	
	While Instr(s$,"or")
		p=Instr(s$,"or")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"or"+z2$,Float(z1) Or Float(z2))
	Wend
	
	;not Operator->ist jetzt eine Funktion
;	DebugLog s+" : "+funcname
;	While Instr(s$,"??")
;		End
;		p=Instr(s$,"??")
;		z2$=zahlr(s$,p+1)
;		If z2$="" Then Exit
;		s$=Replace(s$,"??"+z2$,Not Float(z2))
;	Wend
;	
	While s2$<>"";Instr(s$,"=") Or Left(s$,1)=""
		s$=s2$+"="+s$
		s2$=""
		p=Instr(s$,"=")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"="+z2$,"")
		If Instr(z1$,"%")
			z%=Mid(z1,2,(Instr(z1$,"%",Instr(z1$,"%")+1)-2))
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
		Else
			error(2)
		EndIf
	Wend
	
	If funcname<>"" And Float(funcname)<>funcname
		s$=funcs(funcname$,s$)
	EndIf
	If Float(s$)<>Int(s$)
		Return Float(s$)
	Else
		Return Int(s$)
;	ElseIf s$=Int(s$)
;		Return Int(s$)
;	Else
;		Return s$
	EndIf
End Function

Function funcs$(fn$,s$)
	
	fn=Trim(fn)
;	s$=Replace(s$,",","|")
	For st.Tstring=Each Tstring
		s$=Replace(s$,st\id,st\content)
	Next
	For i=0 To MAXPARAM
		Paras(i)=0
	Next
	s$=s$+"|"
	For i=0 To MAXPARAM
		currentparam$=Left(s$,Instr(s$,"|")-1)
		Paras(i)=currentparam
		paramcount=paramcount+1
		s$=Mid(s$,Instr(s$,"|")+1)
		If Instr(s$,"|")=0 Or s$="" Then Exit
	Next
	ParameterCount=paramcount
;	For i=0 To MAXPARAM
;		If Instr(par$,"|")=0 Or par="" Then 
;			For i3=0 To i-1
;				If Instr(Paras(i3),"|") Then Paras(i3)=LSet(Paras(i3),Len(Paras(i3))-1)
;			Next
;			Exit
;		Else
;			Paras(i)=Left(par,Instr(par$,"|"))
;			par=Mid(par,Len(Paras(i))+1)
;		EndIf
;		i2=i2+1
;	Next
	For func=Each Tfunc
		If func\n=fn
			e$=exec_func(fn$,paramcount,func\funchndl)
			Return e$
		EndIf
	Next
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
			Case "+","-","*","/","^",")","(",")","=","&","|","!","a","n","d","o","r","x","m"
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

Function add_func(n$,pars=10,funchndl=-1)
	func.Tfunc=New Tfunc
	func\n=n
	func\pars=pars
	func\funchndl=funchndl
	func.Tfunc=Null
End Function
;~IDEal Editor Parameters:
;~F#2#A#11#12C#154#173#18D
;~B#8#D#3E#72#12A#152#16D#171#187#18B#193
;~C#Blitz3D