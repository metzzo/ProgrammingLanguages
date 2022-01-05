Dim Paras$(MAXPARAM)

Type Tfunc
	Field n$
	Field pars$
	Field funchndl
End Type
Global func.Tfunc
Type Tstring
	Field content$
	Field id$
End Type
Global st.Tstring

Print(rechnen("1-6*5+4-88+(3+5*(6-8+Cos(5*3)-66+5))*5-5*8998+5(76576-4)+1+1+1+1+1+1+1+1+1+1+1-1^5+tan(1)"))
WaitKey
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
				
				If funcn="" And Float(funcn)<>funcn
					
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
	
	
	While Instr(s$,"mod")
		p=Instr(s$,"mod")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+2)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"mod"+z2$,Float(z1) Mod Float(z2))
	Wend
	
	While Instr(s$,"xor")
		p=Instr(s$,"xor")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+2)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"xor"+z2$,Float(z1) Xor Float(z2))
	Wend
	
	While Instr(s$,"and")
		p=Instr(s$,"and")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+2)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"and"+z2$,Float(z1) And Float(z2))
	Wend
	
	While Instr(s$,"or")
		p=Instr(s$,"or")
		z1$=zahll(s$,p)
		z2$=zahlr(s$,p+1)
		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
		s$=Replace(s$,z1$+"or"+z2$,Float(z1) Or Float(z2))
	Wend
	
	
	While Instr(s$,"&")
		p=Instr(s$,"&")
		z2$=zahlr(s$,p)
		If z2$="" Then Exit
		s$=Replace(s$,"&"+z2$,Not Float(z2))
	Wend
	
;	While Instr(s$,"=")
;		p=Instr(s$,"=")
;		z1$=zahll(s$,p)
;		z2$=zahlr(s$,p)
;		If z1$="" Or z2$="" Or z2="|" Or z1="|" Then Exit
;		s$=Replace(s$,z1$+"="+z2$,"")
;		If Instr(z1$,"%")
;			z%=Mid(z1,2,(Instr(z1$,"%",Instr(z1$,"%")+1)-2))
;			If z<=script\varintc Then
;				script\varint[z]=z2$
;			Else
;;				GlobalVar(z,2)=Int(z2)
;			EndIf
;		ElseIf Instr(z1$,"#")
;			z%=Mid(z1,2,(Instr(z1$,"#",Instr(z1$,"#")+1)-2))
;			If z<=script\varfloatc
;				script\varfloat[z]=z2$
;			Else
;				GlobalVar(z,2)=Float(z2$)
;			EndIf
;		ElseIf Instr(z1$,"$")
;			z%=Mid(z1,2,(Instr(z1$,"$",Instr(z1$,"$")+1)-2))
;			For st.Tstring=Each Tstring
;				z2=Replace(z2,st\id,st\content)
;			Next
;			If z<=script\varstringc
;				script\varstring[z]=z2$
;			Else
;				GlobalVar(z,2)=z2$
;			EndIf
;		Else
;			error(2)
;		EndIf
;		
;	Wend
	If funcname<>""
		s$=funcs(funcname$,s$)
	EndIf
	If Float(s$)<>Int(s$)
		Return Float(s$)
	Else
		Return Int(s$)
	EndIf
End Function

Function funcs$(fn$,s$)
	fn=Trim(fn)
	For st.Tstring=Each Tstring
		s$=Replace(s$,st\id,st\content)
	Next
	par$=s$
	apar$=par
	par=par+"|"
	For i=0 To MAXPARAM
		If Instr(par$,"|")=0 Then 
			Paras(i-1)=LSet(Paras(i-1),Len(Paras(i-1))-1)
			Exit
		EndIf
		Paras(i)=Left(par,Instr(par$,"|"))
		par=Right(par,Len(par)-Len(Paras(i)))
		i2=i2+1
	Next
	i=i-1
	par=apar
	For func=Each Tfunc
		
		If func\n=fn
;			e$=exec_func(fn$,i2,func\funchndl)
			Return e$
		EndIf
		
	Next
	Return e$
End Function

Function zahll$(s$,pos,varis=0)
	pos=pos-1
	Repeat
		If pos=0 Then Exit
		l$=Mid(s$,pos,1)
		Select l$
			Case "+","-","*","/","^","(",")","=","&"
				If pos>1
					If Mid(s$,pos-1,1)="-"
						r$="-"+r$
					EndIf
				EndIf
				If pos=1 And l$="-"
					r$="-"+r$
				EndIf
				If pos=1 And l$="+"
					r$="+"+r$
				EndIf
				Exit
			Default
				r$=l$+r$
				pos=pos-1
		End Select
	Forever
	
	Return r$
End Function

Function zahlr$(s$,pos,varis=0)
	pos=pos+1
	Repeat
		l$=Mid(s$,pos,1)
		If l$="+" And pos=1 Then Exit
		Select l$
			Case "+","-","*","/","^",")","(",")","=","&"
				Exit
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
End Function
;~IDEal Editor Parameters:
;~F#129#145
;~C#Blitz3D