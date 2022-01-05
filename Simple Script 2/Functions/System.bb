Select fn
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
	Case "execapp"
		ExecFile Paras(0)
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D