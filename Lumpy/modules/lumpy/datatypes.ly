import "../lumpy.ly"
import "exceptions.ly"


extern
	function array_bytes:int(size:int[]) = "array_bytes_int"
	function array_bytes:int(size:float[]) = "array_bytes_float"
	function array_bytes:int(size:boolean[]) = "array_bytes_boolean"
	function array_bytes:int(size:string[]) = "array_bytes_str"
	function array_bytes:int(size:object[]) = "array_bytes_obj"
end


function range(start, size:int)
	if size - start < 0
		throw new invalidrangeexception(start, size)
	end
	
	var arr = new int[size - start]
	loop var i = 0 to arr.length - 1
		arr[i] = i
	end
	return arr.iterator()
end

function range(size = 1)
	return range(0, size)
end

class abstract object
	public function toString:string()
		return "object"
	end
	
	public function compare(Other:Object)
		return 0
	end
end

class IntArrayIterator
	private var data:int[]
	public function new(arr:int[])
		this.data = arr
	end
	public generator:int()
		loop var i = 0 to this.data.length - 1
			yield return this.data[i]
		end
		yield break
	end
end

class FloatArrayIterator
	private var data:float[]
	public function new(arr:float[])
		this.data = arr
	end
	public generator:float()
		loop var i = 0 to this.data.length - 1
			yield return this.data[i]
		end
		yield break
	end
end

class StringIterator
	private var data:string
	public function new(arr:string)
		this.data = arr
	end
	
	public generator:string()
		loop var i = 0 to this.data.length - 2
			yield return "a"
		end
		yield break
	end
end

class BooleanArrayIterator
	private var data:boolean[]
	public function new(arr:boolean[])
		this.data = arr
	end
	
	public generator:boolean()
		loop var i = 0 to this.data.length - 1
			yield return this.data[i]
		end
		yield break
	end
end

extension boolean[]
	property length
		return array_bytes(this)
	end
	
	function iterator()
		return new BooleanArrayIterator(this)
	end
	
	property floatArray
		var floatArr = new float[this.length]
		loop var i = 0 to this.length - 1
			if this[i]
				floatArr[i] = 1.0
			end
			else
				floatArr[i] = 0.0
			end
		end
		return floatArr
	end
	
	property intArray
		var intArr = new int[this.length]
		loop var i = 0 to this.length - 1
			if this[i]
				intArr[i] = 1
			end
			else
				intArr[i] = 0
			end
		end
		return intArr
	end
	
	property stringArray
		var stringArr = new string[this.length]
		loop var i = 0 to this.length - 1
			if this[i]
				stringArr[i] = "true"
			end
			else
				stringArr[i] = "false"
			end
		end
		return stringArr
	end
end

extension int[]
	property length
		var i = array_bytes(this)
		return i/4
	end
	
	function iterator()
		return new IntArrayIterator(this)
	end
	
	property floatArray
		var floatArr = new float[this.length]
		loop var i = 0 to this.length - 1
			floatArr[i] = float(this[i])
		end
		return floatArr
	end
	
	property stringArray
		var stringArr = new string[this.length]
		loop var i = 0 to this.length - 1
			stringArr[i] = string(this[i])
		end
		return stringArr
	end
	
	property booleanArray
		var boolArr = new boolean[this.length]
		loop var i = 0 to this.length - 1
			if this[i] == 0
				boolArr[i] = false
			end
			else
				boolArr[i] = true
			end
		end
		return boolarr
	end
end

extension float[]
	property length
		var i = array_bytes(this)
		return i/4
	end
	
	function iterator()
		return new FloatArrayIterator(this)
	end
	
	property intArray
		var intArr = new int[this.length]
		loop var i = 0 to this.length - 1
			intArr[i] = int(this[i])
		end
		return intArr
	end
	
	property  stringArray
		var stringArr = new string[this.length]
		loop var i = 0 to this.length - 1
			stringArr[i] = string(this[i])
		end
		return stringArr
	end
	
	property  booleanArray
		var boolArr = new boolean[this.length]
		loop var i = 0 to this.length - 1
			if this[i] == 0.0
				boolArr[i] = false
			end
			else
				boolArr[i] = true
			end
		end
		return boolarr
	end
end

extension int
	function toString()
		return string(this)
	end
	
	property string
		return string(this)
	end
	
	property float
		return float(this)
	end
	
	property boolean
		return boolean(this)
	end
end

extension string
	property int
		return int(this)
	end
	property float:float
		return float(this)
	end
	property boolean
		return int(this) != 0
	end
	
	property length
		return intern_stringlength(this)
	end
	
	property hash
		var hash = intern_stringhash(this)
		if hash < 0 
			hash = hash * -1
		end
		
		return hash
	end
	
	property asc
		return intern_stringasc(this)
	end
	
	function iterator()
		return new stringiterator(this)
	end
	
	
	function substring(startPos:int, len:int)
		return intern_stringmid(this, startPos, len)
	end
	function toString()
		return this
	end
end