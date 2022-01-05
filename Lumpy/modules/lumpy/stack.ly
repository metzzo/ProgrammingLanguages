import "checkedarray.ly"
import "linkedlist.ly"

class<Datatype> Stack
	private var data
	private var pos = -1
	
	public function new()
		data = new array<datatype>
	end
	
	public function push(obj:datatype)
		increment pos
		if obj == null 
			throw new nullpointerexception
		end
		data[pos] = obj
	end
	
	public function pop()
		var obj = data[pos]
		decrement pos
		return obj
	end
	
	public function toArray:array<datatype>()
		return data
	end
	
	public function toList:list<datatype>()
		var list = new list<datatype>
		loop var i in data
			list.add i
		end
		return list
	end
	
	public function clear()
		loop var i to data.length -1
			data[i] = null
		end
		pos = -1
	end
	
	public property top
		get
			return data[pos]
		end
	end
	
	public function iterator()
		return data.iterator
	end
end