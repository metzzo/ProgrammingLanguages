Dim array(10)
For i=0 To 9
	array(i)=i
Next
For i=10 To 4 Step -1
	array(i)=array(i-1)
Next
;array(3)=100
For i=0 To 10
	Print array(i)
Next
WaitKey
;~IDEal Editor Parameters:
;~C#Blitz3D