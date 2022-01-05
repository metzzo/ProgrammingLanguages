Select fn
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
	Case "seedrnd"
		e=(Paras(0))
	Case "waittimer"
		e=WaitTimer(Paras(0))
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D