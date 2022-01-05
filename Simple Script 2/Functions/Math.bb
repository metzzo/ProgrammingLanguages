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
End Select
;~IDEal Editor Parameters:
;~C#Blitz3D