

class<datatype> listValueIterator
	private var l:list<datatype>
	
	public function new(l:list<datatype>)
		this.l = l
	end
	
	public generator:datatype()
		var tmp = this.l.firstElement
		loop tmp != null
			yield return tmp.value
			tmp = tmp.next
		end
		yield break
	end
end

class<datatype> listNodeIterator
	private var l:list<datatype>
	public function new(l:list<datatype>)
		this.l = l
	end
	
	public generator:node<datatype>()
		public generator:datatype()
			var tmp = this.l.firstElement
			loop tmp != null
				yield return tmp
				tmp = tmp.next
			end
			yield break
		end
	end
end

class<datatype> list
	private var _first:node<datatype>
	private var _last:node<datatype>
	private var _size = 0
	
	//Last element value
	public property last
		get
			return this._last.value
		end
	end
	
	//First element value
	public property first
		get
			return this._first.value
		end
	end
	
	//first element
	public property firstElement
		get 
			return this._first
		end
	end
	
	//last element
	public property lastElement
		get 
			return this._last
		end
	end
	//Size
	public property size
		get
			return this._size
		end
	end
	
	//Construct
	public function new()
		this._size = 0
	end
	
	//Adds new element
	public function add(v:datatype)		
		var tmp = new node<datatype>(this._last, v)
		
		if this._last != null
			this._last.setNext(tmp)
		end
		
		if this._first == null
			this._first = tmp
		end
		
		this._last = tmp
		
		this._size = this._size + 1
	end
	
	//Removes an element at "pos"
	public function remove(pos:int)
		var tmp = this._first
		loop var i = 1  to pos
			this._first = this._first.next
		end
		tmp.remove
	end
	
	//creates a new value iterator
	public function values()
		return new listValueIterator<datatype>(this)
	end
	
	//creates a new node iterator
	public function nodes()
		return new listNodeIterator<datatype>(this)
	end
	
	//built in iterator (wraps listIterator)
	public generator:datatype()
		var it = new listValueIterator<datatype>(this)
		loop var i in it
			yield return i
		end
		yield break
	end
end

class<datatype> node
	private var:node<datatype> _prev, _next
	private var _value:datatype
	
	//Which data does it contain?
	public property value
		get
			return this._value
		end
	end
	
	//Previous element
	public property previous
		get
			return this._prev
		end
	end
	
	//Next element
	public property next
		get
			return this._next
		end
	end
	
	//Removes this element
	public function remove()
		var tmp = this._prev
		this._prev._next = this._next
		this._next._prev = tmp
	end
	
	//The next element
	public function setNext(n:node<datatype>)
		this._next = n
	end
	
	//Previous element
	public function setPrev(n:node<datatype>)
		this._prev = n
	end
	
	//constructor
	public function new(prev:node<datatype>, _value:datatype)
		this._prev = prev
		this._value = _value
		this._next = null
	end
end