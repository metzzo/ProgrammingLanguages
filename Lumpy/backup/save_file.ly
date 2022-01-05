import lumpy

extern
	function cos:float(angle) = mathCos
	function print:void(text2, hah) = a
	function print:void(Text) = b
	function print:void(hallo:int) = c
	function print:void(hallo:float) = d
end

class klasse
	private var a:Hurensohn
end

class Hurensohn
	public var test1:int
	public var test2:int
	public var huren:Hurensohn
	
	public function testMethode:Hurensohn(test)
		print "test"
		this.privateMethode()
		return new Hurensohn
	end
	
	public function privateMethode:void()
		print "loL"
	end
end

function program:void()
	var hure:Hurensohn = new Hurensohn
	hure.test1 = 200
	hure.huren = new Hurensohn
	hure.huren.test2 = 42
	hure.testMethode(10).test1 = 200
	
	var test = cos(500), lol, rofl
	test = test + 0.5

	myTest()
	lolFunc

	test = 4.6


	print "abc", 20


	if true
		print "yeah"
	end
	elseif false
		print "yeah2"
	end
	else
		print "ney"
	end

	print 200
	print 200.8

	print "Hallo Welt"+String(20)

	print "test123"
	
	testParam 20,30,"lol"
	
	print getInt()
	
	aa
end

function myTest:void()
	print "in test"
end


function testParam:void(p1,p2,p3)
	p1 = 300
	p2 = 400
	p3 = " Hallo "
end


function getInt:int()
	return 800
end

function aa:void()
	Print "in aa"
	
end

