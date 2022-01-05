Select fn
	Case "print"
		Print Paras$(0)
	Case "end"
		End()
	Case "if"
		If Paras(0)=False
			script\rowcount=script\ifjump[script\rowcount]
		EndIf
	Case "endif"
		
	Case "elseif"
		script\rowcount=script\ifjump[script\rowcount]
	Case "else"
		script\rowcount=script\ifjump[script\rowcount]
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
			Case "string"
				add_string_funcs()
		End Select
	Case "importall"
		importall()
	Case "jumptoline"
		script\Ifcount=0
		script\rowcount=Paras(0)
	Case "until"
		If Paras(0)=0 Then script\rowcount=script\loopjump[script\rowcount]
	Case "while"
		If Paras(0)=0 Then
			script\rowcount=script\loopjump[script\rowcount]+1
		EndIf
	Case "wend"
		script\rowcount=script\loopjump[script\rowcount]-1
	Case "for"
		;Nun die einzelnen Werte der Variablne zwischen speichern
		var=get_var(Handle(script),"INT",Paras(0))
		max=get_var(Handle(script),"INT","formax_"+Paras(0))
		Stp=get_var(Handle(script),"INT","forstep_"+Paras(0))
		var=var+stp
		set_var(Handle(script),"INT",Paras(0),var)
		Paras(0)=1
		If stp>0 Then 
			If var>max Then Paras(0)=0
		ElseIf stp<0
			If var<max Then Paras(0)=0
		Else
			RuntimeError "Stepin darf nicht gleich Null sein!"
		EndIf
		If Paras(0)=0 Then
			script\rowcount=script\loopjump[script\rowcount]+1
		EndIf
	Case "next"
		script\rowcount=script\loopjump[script\rowcount]-1
	Case "exit","continue"
		script\rowcount=script\loopjump[script\rowcount]
	Case "not"
		If Paras(0)=0 Then e=1 Else e=0
	Case "return"
		script\returnw=Paras(0)
		script\returnnow=1
	Case "eval"
		exec_line(Paras(0))
	Case "for"
		
	Case "optimizefunctions"
		optimize_functions()
	Case "findfunc"
		find_funcs(Paras(0))
	Case "execonlinefile"
		blubb=Handle(script)
		e=exec_OnlineFile(Paras(0),Paras(1))
		If st.Tstring<>Null
			e$=st\id
		EndIf
		script.Tscript=Object.Tscript(blubb)
	Case "execfile"
		blubb=Handle(script)
		e=exec_script(parse_script(create_script(Paras(0))))
		If st.Tstring<>Null
			e$=st\id
		EndIf
		script.Tscript=Object.Tscript(blubb)
	Case "renamefunction"
		For func=Each Tfunc
			If func\n=Paras(0)
				func\n=Paras(1)
			EndIf
		Next
	Case "ref"
		blubb=get_id(Handle(script),"INT",Paras(0),0)
		If blubb<>0
			e="%"+blubb+"%"
		Else
			blubb=get_id(Handle(script),"FLOAT",Paras(0),0)
			If blubb<>0
				e="#"+blubb+"#"
			Else
				blubb=get_id(Handle(script),"STRING",Paras(0),0)
				If blubb<>0
					e="$"+blubb+"$"
				Else
					blubb=get_globalid(Paras(0))
					If blubb<>0
						If GlobalVar(blubb,1)="INT"
							e="%"+blubb+"%"
						ElseIf GlobalVar(blubb,1)="FLOAT"
							e="#"+blubb+"#"
						ElseIf GlobalVar(blubb,1)="STRING"
							e="$"+blubb+"$"
						EndIf
					EndIf
				EndIf
			EndIf
		EndIf
	Case "dim","redim"
		If fn="redim"
			array=Object.TArray(GetMap(arraymap,Paras(0)))
;			For array=Each TArray
;				If array\name=Left(Paras(0),Len(Paras(0))-1) Or array\name=Paras(0) Then
;					Exit
;				EndIf
;			Next
		EndIf
		If fn="dim"
			array.TArray=New TArray
			array\arraydim=ParameterCount-1
			array\name=Paras(0)
			array\bankhndl=CreateBank()
			InsertMap(arraymap,Parameter(1),Handle(array))
			
				;Nun den Typ herrausfinden:
			Select Right(array\name,1)
				Case "%"
					array\typ="INT"
				Case "#"
					array\typ="FLOAT"
				Case "$"
					array\typ="STRING"
				Default
					array\typ="INT"
					array\name=array\name+"%"
			End Select
			array\name=Left(array\name,Len(array\name)-1)
		EndIf
		array\totalsize=1
		For i=1 To array\arraydim
			array\dimsize[i]=Int(Paras(i))+1
			array\totalsize=array\totalsize*(Int(Paras(i))+1)
		Next
		array\totalsize=array\totalsize*4 ;4 ist die größe eines Ints
		ResizeBank(array\bankhndl,array\totalsize)
		If fn="dim"
			Select array\typ
				Case "INT"
					For i=0 To array\totalsize-1 Step 4
						PokeInt array\bankhndl,i,0
					Next
				Case "FLOAT"
					For i=0 To array\totalsize-1 Step 4
						PokeFloat array\bankhndl,i,0
					Next
				Case "STRING"
					For i=0 To array\totalsize-1 Step 4
						PokeString array\bankhndl,i,""
					Next
			End Select
		EndIf
	Case "mapcreate"
		e=CreateMap(Paras(0))
	Case "mapadd"
		InsertMap(Paras(0),Paras(1),Paras(2))
	Case "mapset"
		ChangeMap(Paras(0),Paras(1),Paras(2))
	Case "mapsize"
		MAP_SIZE=Paras(0)
	Case "mapget"
		e=GetMap(Paras(0),Paras(1))
		
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D