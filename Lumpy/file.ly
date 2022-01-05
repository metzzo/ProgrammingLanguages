import lumpy


function program()
	var arr = new Array<int>
	loop var i = 0 to 20
		print "set: " + string(i)
		arr[i] = i*2
	end
	
	print arr.length
	//gccollect
	loop var i in arr
		print "Posi: " + string(i)
	end
	
	print "lol: " + 5
	print 5 + ": lol"
	
	
	var s = new stack<int>
	
	s.push 1
	s.push 4
	s.push 8
	s.push 9
	
	loop var i in s
		print "stack: " + s
	end
end

