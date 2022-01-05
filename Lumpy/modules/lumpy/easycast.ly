
operator +:string(left:int, right:string)
	return string(left) + right
end

operator +:string(left:string, right:int)
	return left + string(right)
end

operator +:string(left:boolean, right:string)
	return string(left) + right
end

operator +:string(left:string, right:boolean)
	return left + string(right)
end

operator +:string(left:float, right:string)
	return string(left) + right
end

operator +:string(left:string, right:float)
	return left + string(right)
end



operator *:string(left:string, right:int)
	var str = ""
	loop var i = 0 to right-1
		str = str + left
	end
	return str
end

operator *:string(left:int, right:string)
	return right*left
end