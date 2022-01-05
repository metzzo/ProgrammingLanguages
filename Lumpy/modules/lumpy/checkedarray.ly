import "linkedlist.ly"

//in einem "Array" werden die Grenzen überprüft und es gibt noch div. Hilfsfunktionen
class<Datatype> Array
	private var array:datatype[]
	private var dynamic = false
	
	//size = größe
	//dynamic = soll es dynamisch wachsen?
	public function new()
		this.array = new Datatype[2]
		this.dynamic = true
	end
	
	//konstruktor für ein nicht dynamisches array.
	public function new(size)
		if size < 1
			throw new invalidrangeexception(size,0)
		end
		this.array = new datatype[size]
		this.dynamic = false
	end
	
	//gibt die länge zurück
	public property length
		get
			return this.array.length
		end
	end
	
	//sortiert das array
	public function sort()
		//todo quicksort
	end
	
	
	//optimize
	public function optimize()
		//wenn es bis zum 1/3 des arrays keine elemente mehr gibt, wird das array halbiert
		loop var i = array.length - 1 to array.length/3
			if array[i]
				return
			end
		end
		//halbieren \o/
		array = array[..array.length/2]
	end
	
	//wandelt das array in eine liste um 
	public function toList()
		var list = new list<datatype>
		loop var i in array
			list.add i
		end
		return list
	end
	
	//iterator
	public function iterator()
		return array.iterator()
	end
	
	
	// der indexer den es braucht um den zugriff zu definieren
	public property[pos:int] this:datatype
		get
			if (pos > -1) and (pos < array.length)
				return array[pos]
			end
			else
				throw new IndexOutOfBoundsException(array.length, pos)
			end
		end
		set
			if dynamic
				loop pos > (array.length - 1)
					array = array[.. array.length * 2]
				end
			end
			
			if (pos > -1) and (pos < array.length)
				array[pos] = value
				
				return
			end
			
			
			throw new IndexOutOfBoundsException(array.length, pos)
		end
	end
end
