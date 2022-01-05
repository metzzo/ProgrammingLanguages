class abstract exception
	private var _name = ""
	
	public property name
		get
			return this._name
		end
	end
	
	public function toString()
		return "Exception thrown '" + this.name+"'"
	end
	
	public function new(name)
			this._name = name
	end
end

class final AssertException < exception
	public function new()
		this._name = "Assert Error"
	end
end

function assert(expr)
	if expr
		return true
	end
	else
		throw new AssertException
	end
	
end


class final NullPointerException < exception
	public function new()
		this._name = "Null Pointer"
	end
	
	private static var forceCreate = new NullPointerException //den "compile on demand" parser austricken :>, da dieser sonst keine Klasse von NullPointerException kompilieren würde.

end

function throwNullPointerException() = "throwNullPointer" force
	throw new NullPointerException
end

class final InvalidSliceOperationException < exception
	public function new()
		this._name = "Invalid Slice Operation"
	end
	
	
	private static var forceCreate = new InvalidSliceOperationException
		
end

function throwSliceException() = "throwSliceException" force
	throw new InvalidSliceOperationException
end


class final OutOfMemoryException < exception
	public function new()
		this._name = "Out Of Memory"
	end
	
	private static var forceCreate = new OutOfMemoryException
	
end

function throwOutOfMemoryException() = "throwOutOfMemory" force
	throw new OutOfMemoryException
end

class final InvalidRangeException < exception
	public function new(start:int, size:int)
		this._name = "Invalid Range" + string(start) +", " + string(size)
	end
end

class final IndexOutOfBoundsException < exception
	public function new(size:int, posi:int)
		this._name = "Index out of bounds: " + string(posi) + " size: " + string(size)
	end
end