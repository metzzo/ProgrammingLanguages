if (typeof preInitFuncs == 'undefined') preInitFuncs = [];
preInitFuncs.push(function() {
	if (viewMode == 'console' && (typeof inEditorPreview == 'undefined')) {
		if (document) {
			window.onload=function( e ){
				var e = document.createElement('textarea');
				e.style.width = '100%';
				e.style.height = '480px';
				e.id = "GLBCONSOLE";
				
				document.body.appendChild(e);
				
				updateConsole();
			}
		} else {
			//egal, rufe updateconsole auf
			updateConsole();
		}
	}
});

var startTime = new Date().getTime();

/**
* @constructor
*/
function GLBException(text, file, line) {
	this.text = text;
	this.line = line;
	this.file = file;
}

/**
* @constructor
*/
function GLBExitException() {
	//exit
}

GLBExitException.prototype.toString = function() {
	return "GLB Exit";
}

GLBException.prototype.toString = function() {
	return "Unhandled exception '"+text+"' in file '"+this.file+"' in line'"+this.line+"'";
}

GLBException.prototype.getText = function() {
	return this.text;
}

GLBException.prototype.toString = function() {
	return "Uncought GLBException '"+this.text+"' stacktrace: "+STACKTRACE_Str();
}

//alert = function() {}

//------------------------------------------------------------
//Funny variables
//------------------------------------------------------------

var waitload			= 0; //auf wieviel wird gewartet (gibts auch in 2d.js) 
var exec 				= false;
var tmpPositionCache 	= -1; 
var arrargs				= new Array(64); //Die Parameter (in umgeandelter form), 64 maximal
var consoleOutput;
var consoleSize 		= 10000;
var currentDir;
var mainCall			= false;

//------------------------------------------------------------
//Output
//------------------------------------------------------------

function STDOUT(text) {
	if (consoleOutput == undefined) {
		consoleOutput = document ? document.getElementById("GLBCONSOLE") : null;
	}
	
	if (consoleOutput) {
		consoleOutput.value = consoleOutput.value + text;
		consoleOutput.scrollTop = consoleOutput.scrollHeight;
	} else {
		console.log(text);
	}
}


function STDERR(text) {
	STDOUT("Error: "+text);
}

function STDCOLOR(back, fore) {
	//ignore :)
}

function DEBUG(text) {
	console.log(text);
}

function END() {
	window.onbeforeunload();
	throw new GLBExitException();
}


//------------------------------------------------------------
//Info Stuff
//------------------------------------------------------------

function GETTIMERALL() {
	return new Date().getTime() - startTime;
}

function PLATFORMINFO_Str(info) {
	switch(info) {
		case "":
			return "HTML5";
		case "DOCUMENTS":
		case "APPDATA":
		case "TEMP":
			return "/";
		case "ID":
			return ""+uniqueId;
		case "DEVICE":
			//TODO: Andere Devices ber??cksichtigen
			return "DESKTOP";
		case "BATTERY":
			var bat = navigator.battery || window.navigator.battery || navigator.battery || navigator.mozBattery || navigator.webkitBattery;
			return bat ? bat.level*100 : 100;
		case "TIME":
			var d = new Date();
			var f = function(val) {
				val = CAST2STRING(val);
				if (val.length == 1) val = "0" + val;
				return val;
			}
			return f(d.getFullYear())+"-"+f(d.getMonth())+"-"+f(d.getDate())+" "+f(d.getHours())+":"+f(d.getMinutes())+":"+f(d.getSeconds());
		case "COMPILED":
			return rot13(compileTime);
		case "VERSION":
			return rot13(userDefVersion);
		case "HOSTID":
			return rot13(hostId);
		case "LOCALE":
			return navigator.language || window.navigator.userLanguage || window.navigator.language;
		default:
			if (info.length > "GLEXT:".length && MID_Str(info, 0, "GLEXT:".length) == "GLEXT:") {
				return "0"; //vorerst nichts
			} else {
				return "";
			}
	}
}


function GETLASTERROR_Str() {
	return "0 Successfull";
}

//wait und show wird ignoriert
function SHELLCMD(cmd, wait, show, rv) {
	try {
		rv[0] = CAST2FLOAT(eval(cmd));
	} catch(ex) {
		rv[0] = 0
		rv[0] = 0
		throwError("SHELLCMD raised ab error.");
	}
}

function SHELLEND(cmd) {
	try {
		eval(cmd);
	} catch(ex) {
		throwError("SHELLEND raised an error");
	}
	END();
}

function CALLBYNAME(name) {
	var ret = 1;
	return eval("if (window['"+name+"']) window."+name+"(); else ret = 0;");
}

//------------------------------------------------------------
//Runtime stuff
//------------------------------------------------------------

var callStack = []
/**
* @constructor
*/
function StackFrame(name, info, dbg) {
	this.name = name;
	this.info = info;
	this.dbg  = dbg;
}

function stackPush(name, info) {
	callStack.push(new StackFrame(name, info, __debugInfo));
}

function stackPop() {
	var obj = callStack.pop();
	__debugInfo = obj.dbg;
}

function stackTrace() {
	var output = "";
	for (var i = callStack.length-1; i >= 0 ; i--) {
		output += "\tin '"+callStack[i].name+"' in file '"+MID_Str(callStack[i].info, INSTR(callStack[i].info, ":")+1)+"' in line '"+MID_Str(callStack[i].info, 0, INSTR(callStack[i].info, ":"))+"'\n";
	}
	
	return output;
}

function throwError(msg) {
	throw msg;
}

function formatError(msg) {
	msg = msg.message ? msg.message : msg.toString();
	if (msg.indexOf("GLBERR") == 0) msg = msg.substring("GLBERR".length);
	if (debugMode) {
		msg = "Error:\n '"+msg+"' ";
		var info = __debugInfo;
		//debug modus
		msg += "\nAppeared in line '"+MID_Str(info, 0, INSTR(info, ":"))+"' in file '"+MID_Str(info, INSTR(info, ":")+1)+"' "
		
		msg += "\n\n"+stackTrace();
	}
	return msg;
}

function dumpArray(arr) {
	var acc = "";
	var start = false;
	for (var i = 0; i < arr.length; i++) {
		if (start) acc += ", "
		acc += "'"+arr[i]+"'";
		start = true;
	}
	return "["+acc+"]";
}

function toCheck(cur, to, step) {
	if (step > 0) {
		return cur <= to;
	} else if(step < 0) {
		return cur >= to;
	} else {
		return true;
	}
	//return (step > 0) ? (cur <= to) : ((step > 0) ? (cur >= to) : true);
}

function untilCheck(cur, to, step) {
	if (step > 0) {
		return cur < to;
	} else if(step < 0) {
		return cur > to;
	} else {
		return true;
	}
}

function isKnownException(ex) {
	return ex instanceof GLBExitException || ex instanceof GLBException;
}

//versucht zu dereferenzieren falls notwendig
function unref(v) {
	if (v instanceof Array) {
		//damn i have to unref it
		return v[0];
	} else {
		//nothing to do here bro...
		return v;
	}
}

//versucht zu referenzieren falls notwendig
function ref(v) {
	if (v instanceof Array) {
		return v;
	} else {
		return [v];
	}
}


function tryClone(o) {
	switch (typeof o) {
		case 'undefined':
		case 'function':
		case 'string':
		case 'boolean':
		case 'number':
			break;
		default:
			if (o instanceof Array) {
				return [tryClone(o[0])];
			} else {
				return o.clone();
			}
	}
	return o;
	//return (o instanceof Array) ? ([tryClone(o[0])]) : (o.clone ? o.clone() : o);
}

function updateConsole() {
	try {
		if (!mainCall) {
			main();
			mainCall = true;
		}
		
		if (!waitload && !exec) {
			exec = true;

			if (typeof(GLB_ON_INIT) == 'function') GLB_ON_INIT(); //call the GLBasic defined initialization function
		} else {
			window.requestAnimFrame(updateConsole, 100);
		}
	} catch(ex) {
		if (ex instanceof GLBExitException) alert(formatError(ex));
	}
}

function castobj(obj, target) {
	if (obj instanceof Array) {
		if (obj[0] instanceof target)
			return obj;
		else
			return [eval("new "+target+"()")];
	} else {
		if (obj instanceof target)
			return obj;
		else
			return eval("new "+target+"()");
	}
	
}


//------------------------------------------------------------
//DATA
//------------------------------------------------------------


var dataLabel, dataPosition;
function RESTORE(label) {
	dataLabel = label;
	dataPosition = 0;
}

function READ() {
	var d = dataLabel[dataPosition];
	dataPosition++;
	return d;
}



//Castet die gegebene Value in eine Ganzzahl (falls NaN kommt => 0 returnen)
function CAST2INT(value) {
	if (value instanceof Array) { //not sure about this
		return [CAST2INT(value[0])];
	} else {
		switch (typeof value) {
			case 'function':
				return 1;
			case 'undefined':
				throwError("Cannot cast 'undefined'");
			case 'number':
				return ~~value; //experimental
				//if (value < 0) return Math.ceil(value); else if (value > 0) return Math.floor(value); else return 0;
			case 'string':
				if (isNaN(value) || value == '') 
					return 0; //Falls keine Nummer => 0
				else
					return parseInt(value, 10);
			case 'boolean':
				return value ? 1 : 0;
			case 'object':
				return CAST2INT(value.toString());
			default:
				throwError("Unknown type!");
		}
	}
}

function INT2STR(value) {
	if (isNaN(value) || value == '') 
		return 0; //Falls keine Nummer => 0
	else
		return parseInt(value, 10);
}

function INTEGER(value) {
	return CAST2INT(value);
}

//Castet die gegebene Value in eine Gleitkommazahl (falls NaN kommt => 0 returnen)
function CAST2FLOAT(value) {
	if (value instanceof Array) { //not sure about this
		return [CAST2FLOAT(value[0])];
	} else {
		switch (typeof value) {
			case 'function':
				return 1.0;
			case 'undefined':
				throwError("Cannot cast 'undefined'");
			case 'number':
				return value;
			case 'string':
				if (isNaN(value) || value == '') 
					return 0.0; //Falls keine Nummer => nummer machen
				else //Ist eine Nummer
					return parseFloat(value);
			case 'boolean':
				return value ? 1.0 : 0.0;
			case 'object':
				return CAST2FLOAT(value.toString());
			default:
				throwError("Unknown type!");
		}
	}
}

function FLOAT2STR(value) {
	if (isNaN(value) || value == '') 
		return 0.0; //Falls keine Nummer => nummer machen
	else //Ist eine Nummer
		return parseFloat(value);
}

function STACKTRACE_Str() {
	return stackTrace();
}


//Castet die gegebene Value in eine Zeichenkette
function CAST2STRING(value) {
	if (value instanceof Array) { //not sure about this
		return [CAST2STRING(value[0])];
	} else {
		switch (typeof value) {
			case 'function':
				return "1";
			case 'undefined':
				throwError("Cannot cast undefined to string");
			case 'boolean':
				return value ? "1" : "0";
			case 'number':
				return ""+value;
			case 'string':
				return value;
			case 'object':
				return value.toString();
			default:
				throwError("Unknown type");
		}
	}
}



function PUTENV(name, value) {
	localStorage.setItem(("env_"+name).toLowerCase(), value);
}

function GETENV_Str(name) {
	return localStorage.getItem(("env_"+name).toLowerCase());
}


function SLEEP(time) {
	var start = GETTIMERALL();
	while ((GETTIMERALL() - start)<time) {} //??bler hack :/
}




//-----------------------------------------------------------
//LocalStorage wrapper to cookies (if there is no localStorage) Found on the MDN
//-----------------------------------------------------------

if (!window.localStorage) {
  Object.defineProperty(window, "localStorage", new (function () {
    var aKeys = [], oStorage = {};
    Object.defineProperty(oStorage, "getItem", {
      value: function (sKey) { return sKey ? this[sKey] : null; },
      writable: false,
      configurable: false,
      enumerable: false
    });
    Object.defineProperty(oStorage, "key", {
      value: function (nKeyId) { return aKeys[nKeyId]; },
      writable: false,
      configurable: false,
      enumerable: false
    });
    Object.defineProperty(oStorage, "setItem", {
      value: function (sKey, sValue) {
        if(!sKey) { return; }
        document.cookie = escape(sKey) + "=" + escape(sValue) + "; path=/";
      },
      writable: false,
      configurable: false,
      enumerable: false
    });
    Object.defineProperty(oStorage, "length", {
      get: function () { return aKeys.length; },
      configurable: false,
      enumerable: false
    });
    Object.defineProperty(oStorage, "removeItem", {
      value: function (sKey) {
        if(!sKey) { return; }
        var sExpDate = new Date();
        sExpDate.setDate(sExpDate.getDate() - 1);
        document.cookie = escape(sKey) + "=; expires=" + sExpDate.toGMTString() + "; path=/";
      },
      writable: false,
      configurable: false,
      enumerable: false
    });
    this.get = function () {
      var iThisIndx;
      for (var sKey in oStorage) {
        iThisIndx = aKeys.indexOf(sKey);
        if (iThisIndx === -1) { oStorage.setItem(sKey, oStorage[sKey]); }
        else { aKeys.splice(iThisIndx, 1); }
        delete oStorage[sKey];
      }
      for (/*aKeys*/; aKeys.length > 0; aKeys.splice(0, 1)) { 
		oStorage.removeItem(aKeys[0]);
	  }
      for (var iCouple, iKey, iCouplId = 0, aCouples = document.cookie.split(/\s*;\s*/); iCouplId < aCouples.length; iCouplId++) {
        iCouple = aCouples[iCouplId].split(/\s*=\s*/);
        if (iCouple.length > 1) {
          oStorage[iKey = unescape(iCouple[0])] = unescape(iCouple[1]);
          aKeys.push(iKey);
        }
      }
      return oStorage;
    };
    this.configurable = false;
    this.enumerable = true;
  })());
}

//-----------------------------------------------------------
//Misc
//-----------------------------------------------------------

function NETWEBEND(url) {
	window.location = url;
	END();
}


window.requestAnimFrame = (function() {
  return window.requestAnimationFrame ||
         window.webkitRequestAnimationFrame ||
         window.mozRequestAnimationFrame ||
         window.oRequestAnimationFrame ||
         window.msRequestAnimationFrame ||
         function(/* function FrameRequestCallback */ callback, /* DOMElement Element */ element) {
           window.setTimeout(callback, 1000/60);
         };
})();

function checkBrowserName(name){  
	var agent = navigator.userAgent.toLowerCase();  
	if (agent.indexOf(name.toLowerCase())>-1) {  
		return true;  
	}  
	return false;  
}  

window.onbeforeunload = function (e) {
	e = e || window.event;
	
	//rufe noch GLB_ON_QUIT auf
	CALLBYNAME("GLB_ON_QUIT");
	
	//versuche nun das filesystem zu speichern
	saveFileSystem();
};

function saveFileSystem() {
	if (localStorage) {
		localStorage.setItem("filesystem", fileSystem.save());
	}
}


//------------------------------------------------------------
//ARRAY FUN
//------------------------------------------------------------


/**
* Ein GLBArray ist ein Array, welches versucht die GLBArrays unter GLBasic so gut wie m?glich zu simulieren.
* @constructor
*/
function GLBArray() {
	this.values = [];
	this.dimensions = [0];
	this.defval = 0;
	return this;
}

//Klonen!
GLBArray.prototype.clone = function() {
	var other = new GLBArray();
	
	other.dimensions = this.dimensions.slice(0);
	other.defval = this.defval;
	
	//Klonen die drinnen sind!
	switch (typeof this.defval) {
		case 'number':
		case 'string':
		case 'boolean':
		case 'function':
			other.values = this.values.slice(0);
			break;
		default:
			//es muss geklont werden
			if (this.values != undefined && this.dimensions != undefined) {
				for (var i = 0; i < this.values.length; i++) {
					other.values[i] = tryClone(this.values[i]);
				}
			} else {
				other.values = [];
			}
	}
	
	return other;
};

//Zugriff!
GLBArray.prototype.arrAccess = function() {
	tmpPositionCache = 0;
	
	for (var i = arguments.length-1; i >= 0 ; i--) {
		if (i >= this.dimensions.length) throwError("Wrong dimension count '"+(arguments.length-1)+"' expected '"+this.dimensions.length+"'");
		
		var position = arguments[i]; //CAST2INT( normalerweise sollten access automatisch nach INT gecastet worden sein!
		
		if (position < 0)
			position = (this.dimensions[i] + position);
		
		if (position < 0 || position >= this.dimensions[i]) throwError("Array index out of bounds access, position: "+dumpArray(arguments));
		
		arrargs[i] = position;
	}
	
	
	switch (arguments.length) {
		case 1:
			tmpPositionCache = arrargs[0];
			break;
		case 2:
			tmpPositionCache = arrargs[0] + arrargs[1]*this.dimensions[0];
			break;
		case 3:
			tmpPositionCache = arrargs[0] + arrargs[1]*this.dimensions[0] + arrargs[2]*this.dimensions[0]*this.dimensions[1] 
			break;
		case 4:
			tmpPositionCache = arrargs[0] + arrargs[1]*this.dimensions[0] + arrargs[2]*this.dimensions[0]*this.dimensions[1] + arrargs[3]*this.dimensions[0]*this.dimensions[1]*this.dimensions[2];
			break;
		default:
			var mul = this.values.length/this.dimensions[arguments.length-1];
			for (var i = arguments.length-1; i >= 0 ; i--) {
				tmpPositionCache += arrargs[i]*mul;
				mul /= this.dimensions[i-1];
			}
	}
	
	return this;
}

function realArrSize(dims) {
	var realSize = 1;
	for(d in dims) {
		dims[d] = CAST2INT(dims[d]);
		realSize *= dims[d];
	}
	return realSize;
}

//Dimensioniert das gegebene Array
function DIM(vari, dims, value) {
	vari.values = new Array(realArrSize(dims)); //[];//vari.values.length = realArrSize(dims);
	vari.dimensions = dims;
	vari.defval = value;
	
	
	for(var i = 0; i < vari.values.length; i++) {
		vari.values[i] = tryClone(value);
	}
	
	
	return vari;
}
//Redimensioniert das gegebene Array.
function REDIM(vari, dims, value) {
	var oldLength = vari.values.length;
	var doDim = false, action;
	vari.dimensions = dims;
	if (vari.defval !== value) {
		doDim = true;
		if (value instanceof Array && !(vari.defval instanceof Array)) {
			//Es muss ein Array sein
			action = 1
		} else if (!(value instanceof Array) && vari.defval instanceof Array) {
			//Es darf kein Array sein
			action = 2
		} else {
			action = 0 //nichts
		}
	}
	vari.defval = value;
	
	
	//OBACHT k?nnte bei mehrdimensionalen arrys unerwartete ergebnisse liefern, wenn man elemente rausl?scht
	vari.values.length = realArrSize(dims);
	var start = oldLength;
	if (doDim) start = 0;
	for(i = start; i < vari.values.length; i++) {
		if (vari.values[i]) {
			if (action == 1) {
				//Es muss ein Array sein
				vari.values[i] = [vari.values[i]];
			} else if (action == 2) {
				//Es darf kein Array sein
				vari.values[i] = vari.values[i][0];
			}
		} else {
			//default wert geben
			vari.values[i] = tryClone(vari.defval);
		}
	}
	
	return vari;
}

function BOUNDS(array, dimension) {
	return array.dimensions[dimension];
}

function DIMPUSH(array, value) {
	//OBACHT bei Mehrdimensionalen Arrays
	REDIM(array, [array.values.length+1], array.defval);
	array.values[array.values.length-1] = tryClone(value);
}

function DIMDEL(array, position) {
	//OBACHT k?nnte bei mehrdimensionalen arrys unerwartete ergebnisse liefern, wenn man elemente rausl?scht
	array.values.splice(position, 1);
	array.dimensions[0]--;
}

function DIMDATA(array, values) {
	array.values = values;
	array.dimensions = [values.length];
}


//------------------------------------------------------------
//MATH
//------------------------------------------------------------

function SEEDRND(seed) {
	randomseed = seed;
}


function RND(range) {
    if (range == 0) return 0;
	if (range < 0) range = -range;
    //return MAX((Math.random()+.1)*range, range);
	return (range+1) * random();
}

function MIN(a,b) {
	if (a < b) return a; else return b;
}

function MAX(a, b) {
	if (a > b) return a; else return b;
}

function ABS(a) {
	return Math.abs(a);
}

function SGN(a) {
	return a > 0 ? 1 : (a < 0 ? -1 : 0);
}

function SIN(a) {
	return Math.sin(deg2rad(a));
}

function COS(a) {
	return Math.cos(deg2rad(a));
}

function TAN(a) {
	return Math.tan(deg2rad(a));
}

function ACOS(a) {
	return Math.acos(deg2rad(a));
}

function ASIN(a) {
	return Math.asin(deg2rad(a));
}

function ASL(num, shift) {
	return num << shift;
}

function ASR(num, shift) {
	return num >> shift;
}

function ATAN(dy, dx) {
	return rad2deg(Math.atan2(dy, dx));
}

function bAND(a, b) {
	return a & b;
}

function bOR(a, b) {
	return a | b;
}

function bXOR(a, b) {
	return a ^ b;
}

function bNOT(a) {
	return ~a;
}

function MOD(a, b) {
	return CAST2INT(a%b);
}

function FMOD(num, div) {
	return num%div;
}

function FINDPATH(map, result, heu, startx, starty, endx, endy) {
	alert("TODO: findpath");
}

function LOGN(a) {
	return Math.log(a);
}

function POW(a, b) {
	return Math.pow(a, b);
}

function SQR(a) {
	return Math.sqrt(a);
}

function SWAP(a, b) {
	var tmp = a;
	a[0] = b[0];
	b[0] = tmp[0];
}

function SORTARRAY(array, cmp) {
	var cmpFunc;
	if (cmp == 0) {
		cmpFunc = function(a, b) {
			a = unref(a);
			b = unref(b);
			switch (typeof o) {
				case 'undefined':
				case 'function':
				case 'string':
				case 'boolean':
				case 'number':
					return a < b ? -1 : (a > b ? 1 : 0)
				default:
					throwError("TODO: Default sortarray with types!");
					return;
			}
		}
	} else {
		cmpFunc = function(a, b) {
			return cmp([a], [b]);
		}
	}
	array.values.sort(cmpFunc);
}

function deg2rad(val) {
	return (val*(Math.PI/180));
}

function rad2deg(val) {
	return (val*(180/Math.PI));
}

var randomseed = new Date().getTime();
function random() {
	randomseed = (randomseed*9301+49297) % 233280;
	return randomseed/(233280.0);
}

//------------------------------------------------------------
//String:
//------------------------------------------------------------

function FORMAT_Str(numLetter, numKommas, Number) {
	var str = CAST2STRING(Number);
	var l = INSTR(str, ".");
	var r = REVINSTR(str, ".");
	
	//wenn l?nger als erwartet
	for(var i = l; i < numLetter; i++) {
		str = " " + str;
	}
	for(var i = r; i < numKommas; i++) {
		str = str + "0";
	}
	
	//wenn k?rzer als erwartet
	for (var i = numLetter; i < l; i++) {
		str = MID_Str(str, 1);
	}
	for (var i = numKommas; i < r; i++) {
		str = MID_Str(str, 0, str.length-1);
	}
	
	return str;
}

function ENCRYPT_Str(code, text) {
	var add = 0;
	for (i = 0; i < code.length; i++) {
		add += ASC(code, i);
	}
	add = add %  16;
	
	var newText = "";
	for (i = 0; i < text.length; i++) {
		newText = newText + CHR_Str(ASC(text, i)+add);
	}
	return newText;
}

function DECRYPT_Str(code, text) {
	var add = 0;
	for (i = 0; i < code.length; i++) {
		add += ASC(code, i);
	}
	add = add % 16;
	
	var newText = "";
	for (i = 0; i < text.length; i++) {
		newText = newText + CHR_Str(ASC(text, i)-add);
	}
	return newText;
}

function LCASE_Str(str) {
	return str.toLowerCase();
}

function UCASE_Str(str) {
	return str.toUpperCase();
}

function MID_Str(str, start, count) {
	try {
		if (count == 1) {
			return str.charAt(start);
		} else {
			if (count == -1)
				return str.substr(start);
			else
				return str.substr(start, count);
		}
	} catch (ex) {
		throwError("string error (MID$): '"+str+"' start: '"+start+"' count: '"+count+"'");
	}
}

function LEFT_Str(str, count) {
	try {
		return str.substr(0, count);
	} catch(ex) {
		throwError("string error (LEFT$): '"+str+"' count: '"+count+"'");
	}
}

function RIGHT_Str(str, count) {
	try {
		return str.substr(str.length - count, count);
	} catch (ex) {
		throwError("string error (RIGHT$): '"+str+"' count: '"+count+"'");
	}
}



function INSTR(str, text, start) {
	if (start == -1) {
		return str.indexOf(text);
	} else {
		return str.indexOf(text, start);
	}
}
function REVINSTR(str, text, start) {
	if (start == -1) {
		return str.lastIndexOf(text);
	} else {
		return str.lastIndexOf(text, start);
	}
}

function CHR_Str(character) {
	return String.fromCharCode(character);
}

function REPLACE_Str(text, from, to) {
	var i=0;
	for(;;){
		i=text.indexOf( from,i );
		if( i==-1 ) return text;
		text=text.substring( 0,i )+to+text.substring( i+from.length );
		i+=to.length;
	}
	return text;
	//return text.replace(from, to);
}

function TRIM_Str(text, repl) {
	return LTRIM_Str(RTRIM_Str(text, repl), repl);
}

function LTRIM_Str(text, repl) {
	for (i =0; i < text.length; i++) {
		var c = text.charAt(i);
		if (repl.indexOf(c) == -1) {
			return text.substr(i);
		}
	}
	return "";
}

function RTRIM_Str(text, repl) {
	for (i =text.length-1; i >= 0 ; i--) {
		var c = text.charAt(i);
		if (repl.indexOf(c) == -1) {
			return text.substr(0,i+1);
		}
	}
	return "";
}

function ASC(text, index) {
	try {
		return text.charCodeAt(index);
	} catch(ex) {
		throwError("string error (ASC): '"+text+"' index: '"+index+"'");
	}
}


function SPLITSTR(text, array, split, dropEmpty) {
	try {
		var last = 0;
		REDIM(array, [0], array.defval);
		for (var i = 0; i <=text.length; i++) {
			var c = text.charAt(i);
			if (split.indexOf(c) != -1 || i == (text.length)) {
				var t = MID_Str(text, last, i - last);
				if (t != "" || !dropEmpty) {
					if (array.defval instanceof Array) {
						DIMPUSH(array, [t]); //wenns ein ref dings ist, in ref packen!
					} else {
						DIMPUSH(array, t);
					}
				}
				last = i+1;
			}
		}
		
		return split.length;
	} catch(ex) {
		throwError("string error (SPLITSTR): '"+str+"' split: '"+split+"' dropEmpty: "+dropEmpty);
	}
}

function URLENCODE_Str(url) {
	return encodeURI(url);
}

function URLDECODE_Str(url) {
	return decodeURI(url);
}
//------------------------------------------------------------
//FILE:
//------------------------------------------------------------
function createXMLHttpRequest() {
	try { return new XMLHttpRequest(); } catch(e) {}
	try { return new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) {}
	throwError("XMLHttpRequest not supported");
	return null;
}

function loadText(text) {
	var load = createXMLHttpRequest();
	if (text.charAt(0) == '/') text = text.substring(1); // slash am ans
	load.open("get", text, false);
	load.requestType = 'text';
	load.send(null);
	
	return load.responseText;
}
//FileSystem und variablen laden!
var fileSystem = new VirtualFileSystem(localStorage ? localStorage.getItem("filesystem") : "");; //dynamisch (= kann ver?ndert werden)
var staticFileSystem = new VirtualFileSystem(); //statisch (= tempor?r)

var text = loadText("DIR_STRUCTURE");
if (text == null) {
	throwError("Cannot load dir structure!");
} else {
	var lines = text.split("\n");
	for (var pos = 0; pos < lines.length; pos++) {
		var line = lines[pos];
		if (line.indexOf(":") != -1) {
			// es gibt ein .
			var command = line.substring(0, line.indexOf(":"));
			var param = line.substring(line.indexOf(":")+1);
			
			switch(command) {
				case 'var':
					if (param.indexOf("=") != -1) {
						var name = param.substring(0, param.indexOf("="));
						var value = param.substring(param.indexOf("=")+1);
						if (typeof isInWebWorker == 'undefined') {
							window[name] = value; //setzen \o/
						} else {
							eval(name+" = '"+value+"'");
						}
						
					} else {
						throwError("Expecting '='");
					}
					break;
				case 'folder':
					fileSystem.createDir(param);
					staticFileSystem.createDir(param);
					break;
				case 'static':
					staticFileSystem.createFile(param, []); //unlesbar aber da!
					break;
				case 'editable':
					//TODO!
					staticFileSystem.createFile(param, function(file) {
						var text = loadText(file.path+".GLBSCRIPT_DATA");
						file.data = text.split(",");
						return file.data;
					});
					break;
				default:
					throwError("Unknown command '"+command+"'");
			}
		}
	}
}



var channels 	= []
function GENFILE() {
	for (var i = 0; i < channels.length; i++) {
		if (!channels[i]) return i;
	}
	return channels.length;
}

//converts the given path "/lol/hallo/wtf.txt" to the result dir and filename
function rawpath(path, dir) {
	path = (TRIM_Str(dir.getFileSystem().getCurrentDir()," ") + TRIM_Str(path," ")).toLowerCase();
	var last = 0;
	var curDir = dir;
	
	for (var i = 0; i < path.length; i++) {
		switch(path.charAt(i)) {
			case '/':
				if (i > 0) {
					//oha ein / also einen tab h?her
					var name = path.substr(last, i - last);
					curDir = curDir.getSubDir(name);
					last = i+1;
				} else {
					last = 1;
				}
				break;
			case '.':
				//schauen was danach kommt
				var nextSymbol = function() {
					i++;
					return i < path.length;
				}
				if (!nextSymbol()) break;
				if (path.charAt(i) == '.') {
					curDir = curDir.getParent();
					if (!nextSymbol()) break; //nun muss ein / sein
					if (path.charAt(i) != '/') throwError("Expecting '/'");
					last = i+1;
				} else if (path.charAt(i) == '/') {
					//wenn ein / ist, ignorieren
					last = i+1;
				}
				
				break;
		}
	}
	
	return new FilePointer(path.substr(last, path.length - last), curDir);
}

/**
* @constructor
*/
function FilePointer(name, dir) {
	this.name = name;
	this.dir = dir;
}

/**
* @constructor
*/
function VirtualFileSystem(text) {
	this.mainDir = new VirtualDirectory("", null, this);
	this.curDir = "";
	
	
	this.copyFile = function(from, to) {
		if (this.doesFileExist(form)) {
			var data = this.getFile(from).getData();
			this.createFile(to, data);
		}
	}
	
	this.getCurrentDir = function() {
		return this.curDir;
	}	
	
	this.setCurrentDir = function(dir) {
		if (RIGHT_Str(dir, 1) != "/") dir += "/" //muss mit / enden!
		this.curDir = dir;
	}
	
	this.getFile = function(file) {
		var d = rawpath(file, this.mainDir);
		return d.dir.getFile(d.name);
	}
	
	this.getDir = function(dir) {
		var d = rawpath(dir, this.mainDir);
		return d.dir;
		//return d.dir.getDir(d.name);
	}
	
	this.doesFileExist = function(file) {
		try {
			var d = rawpath(file, this.mainDir);
			return d.dir.doesFileExist(d.name);
		} catch (ex) {}
		return false;
	}
	
	this.doesDirExist = function(dir) {
		try {
			var d = rawpath(dir, this.mainDir);
			return d.dir.doesDirExist(d.name);
		} catch (ex) {}
		return false;
	}
	
	this.removeFile = function(file) {
		var d= rawpath(file, this.mainDir);
		d.dir.removeFile(d.name);
	}
	
	this.removeDir = function(path) {
		var d = rawpath(path, this.mainDir);
		d.dir.removePath(d.name);
	}
	
	this.createFile = function(file, data) {
		//if (!file || !file.name || file.name.length == 0) return;
		if (!this.doesFileExist(file)) {
			var d = rawpath(file, this.mainDir);
			return d.dir.createFile(file, d.name, data);
		} else {
			var f = this.getFile(file);
			f.data = data;
			return f;
		}
	}
	
	this.createDir = function(dir) {
		//if (!dir || !dir.name || dir.name.length == 0) return;
		if (!this.doesDirExist(dir)) {
			var d = rawpath(dir, this.mainDir);
			return d.dir.createDir(d.name);
		} else return this.getDir(dir);
	}
	
	this["cD"] = this.createDir;
	this["cF"] = this.createFile;
	
	this.getMainDir = function() {
		return this.mainDir; //this.mainDir.charAt(this.mainDir.length - 1) != '/' : this.mainDir+"/" : this.mainDir;
	}
	
	this.save = function() {
		return this.mainDir.save();
	}
	
	if (text != undefined) {
		//tempor?r die k?rzel erstellen
		window["filesystem"] = this;
		eval(REPLACE_Str(text, "t.", "window.filesystem."));
	}
}


/**
* @constructor
*/
function VirtualDirectory(name, parent, system) {
	this.name = name;
	this.parent = parent;
	this.subDirs = [];
	this.files = [];
	this.fileSystem = system;
	
	this.getList = function() {
		return this.subDirs.concat(this.files);
	}
	
	this.getFileSystem = function() {
		return this.fileSystem;
	}
	
	this.doesDirExist = function(dir) {
		for (var i = 0; i < this.subDirs.length; i++) {
			if (this.subDirs[i].name == dir) {
				return true;
			}
		}
		return false;
	}
	
	this.doesFileExist = function(file) {
		for (var i = 0; i < this.files.length; i++) {
			if (this.files[i].name == file) {
				return true;
			}
		}
		return false;
	}
	
	this.removeFile = function(file) {
		for (var i = 0; i < this.files.length; i++) {
			if (this.files[i].name == file) {
				this.files.splice(i, 1);
				return;
			}
		}
		throwError("FileNotFound "+file);
	}
	
	this.removeDir = function(file) {
		for (var i = 0; i < this.subDirs.length; i++) {
			if (this.subDirs[i].name == file) {
				this.subDirs.splice(i, 1);
				return;
			}
		}
		throwError("DirNotFound "+file);
	}
	
	this.createDir = function(name) {
		var d = new VirtualDirectory(name, this,this.fileSystem);
		this.subDirs.push(d);
		return d;
	}
	
	this.createFile = function(path, name, data) {
		var f = new VirtualFile(this, name, data, path);
		this.files.push(f);
		
		return f;
	}
	
	this.getFile = function(name) {
		for (var i = 0; i < this.files.length; i++) {
			if (this.files[i].name == name) {
				return this.files[i];
			}
		}
		throwError("file not found");
	}
	
	this.getDir = function(name) {
		for (var i = 0; i < this.subDirs.length; i++) {
			if (this.subDirs[i].name == name) {
				return this.subDirs[i];
			}
		}
		throwError("Dir not found");
	}
	
	this.getSubDir = function(name) {
		for (var i = 0; i < this.subDirs.length; i++) {
			if (this.subDirs[i].name == name) {
				return this.subDirs[i];
			}
		}
		throwError("Dir not found: "+name);
	}
	
	this.getParent = function() {
		return this.parent;
	}
	
	this.getPath = function() {
		return ((!!this.getParent()) ? this.getParent().getPath()+"/" : "")+this.name;
	}
	
	this.save = function() {
		var text = "";
		if (this.getParent() != null ) text = "t.cD(\""+this.getPath()+"\");\n";
		for (var i = 0; i < this.files.length; i++) {
			text += this.files[i].save();
		}
		for (var i = 0; i < this.subDirs.length; i++) {
			text += this.subDirs[i].save();
		}
		return text;
	}
}

/**
* @constructor
*/
function VirtualFile(dir, name, data, path) {
	this.name = name;
	this.data = data;
	this.dir = dir;
	this.path = path;
	
	this.getName = function() {
		return this.name;
	}
	
	this.getData = function() {
		if (typeof this.data == 'function') {
			return this.data(this);
		} else {
			return this.data;
		}
	}
	
	this.save = function() {
		return "t.cF(\""+this.dir.getPath()+"/"+this.name+"\", "+JSON.stringify(this.getData())+");\n";
	}
}

/**
* @constructor
*/
function Channel(channel, file, mode) {
	this.channel = channel;
	this.mode = mode;
	this.ptr = 0;
	file = file.toLowerCase();
	
	//existiert das file auf der platte?
	if (fileSystem.doesFileExist(file)) {
		//yep ist schon da!
		this.file = fileSystem.getFile(file);
	} else {
		//schauen obs im statischen filesystem liegt
		if (staticFileSystem.doesFileExist(file)) {
			//yey!
			if (mode == 1) { //ist nur lesen, da muss das file nicht ins andere filesystem kopiert werden
				this.file = staticFileSystem.getFile(file);
			} else { //muss ins dynamische hinkopiert werden
				var tmp = staticFileSystem.getFile(file);
				this.file = fileSystem.createFile(file, tmp.getData());
			}
		} else {
			// :( nope... erstelle es im normalen, sofern es gerade nicht im lesemodus ist
			if (mode != 1) {
				try {
					this.file = fileSystem.createFile(file, []);
				} catch (ex) {
					throwError("cannot create file: "+file);
				}
			} else {
				throwError("file not found: "+file);
			}
		}
	}
	
	if (mode == -1) {
		//ptr
		this.ptr = this.file.getData().length;
	}
	
	this.updateSize = function() {
		if (this.ptr > this.file.getData().length) this.file.getData().length = this.ptr;
	}
	
	this.checkPosition = function() {
		if (this.ptr > this.file.getData().length) throwError("Reached end of file: '"+this.ptr+"' filesize: '"+this.file.getData().length+"'");
	}
	
	this.ENDOFFILE = function() {
		return this.ptr >= this.file.getData().length || this.ptr < 0; //TODO: not sure about >= !!111
	}
	this.FILESEEK = function(bytes, dir) {
		var old = this.ptr;
		switch(dir) {
			case -1:
				this.ptr = this.file.getData().length - bytes;
				break;
			case 0:
				this.ptr = bytes;
				break;
			case 1:
				this.ptr += bytes;
				break;
		}
		if (this.ENDOFFILE()) this.ptr = this.file.getData().length; //throwError("Seeked out of file..."); //wenn au?erhalb, dann zur?cksetzen
	}
	
	//reads:
	this.READLINE = function() {
		var line = ""
		var character = "";
		while((character = String.fromCharCode(this.file.getData()[this.ptr])) != "\n" && (this.ptr < this.file.getData().length)) {
			line = line + character;
			this.ptr++;
		}
		this.checkPosition();
		this.ptr++;
		//das \r am ende weg
		if (line.substr(line.length-1,1)=="\r") {
			line = line.substr(0, line.length-1);
		}
		
		return line;
	}
	this.READBYTE = function() {
		this.ptr++;
		var tmp = new Int8Array(1);
		tmp[0] = this.file.getData()[this.ptr-1]; //in ein byte converten
		this.checkPosition();
		return tmp[0];
	}
	this.READUBYTE = function() {
		this.ptr++;
		var tmp = new Uint8Array(1);
		tmp[0] = this.file.getData()[this.ptr-1]; //in ein ubyte casten
		this.checkPosition();
		return tmp[0];
	}
	this.READWORD = function() {
		this.ptr+=2;
		var buf = new ArrayBuffer(2);
		var view8 = new Uint8Array(buf);
		view8[0] = this.file.getData()[this.ptr-2];
		view8[1] = this.file.getData()[this.ptr-1];
		var tmp = new Int16Array(buf);
		this.checkPosition();
		return tmp[0];
	}
	this.READUWORD = function() {
		this.ptr+=2;
		var buf = new ArrayBuffer(2);
		var view8 = new Uint8Array(buf);
		view8[0] = this.file.getData()[this.ptr-2];
		view8[1] = this.file.getData()[this.ptr-1];
		var tmp = new Uint16Array(buf);
		this.checkPosition();
		return tmp[0];
	}
	this.READLONG = function() {
		this.ptr+=4;
		var buf = new ArrayBuffer(4);
		var view8 = new Uint8Array(buf);
		view8[0] = this.file.getData()[this.ptr-4];
		view8[1] = this.file.getData()[this.ptr-3];
		view8[2] = this.file.getData()[this.ptr-2];
		view8[3] = this.file.getData()[this.ptr-1];
		var tmp = new Int32Array(buf);
		this.checkPosition();
		return tmp[0];
	}
	this.READULONG = function() {
		this.ptr+=4;
		var buf = new ArrayBuffer(4);
		var view8 = new Uint8Array(buf);
		view8[0] = this.file.getData()[this.ptr-4];
		view8[1] = this.file.getData()[this.ptr-3];
		view8[2] = this.file.getData()[this.ptr-2];
		view8[3] = this.file.getData()[this.ptr-1];
		var tmp = new Uint32Array(buf);
		this.checkPosition();
		return tmp[0];
	}
	this.READIEEE = function() {
		this.ptr+=8;
		var buf = new ArrayBuffer(8);
		var view8 = new Uint8Array(buf);
		view8[0] = this.file.getData()[this.ptr-8];
		view8[1] = this.file.getData()[this.ptr-7];
		view8[2] = this.file.getData()[this.ptr-6];
		view8[3] = this.file.getData()[this.ptr-5];
		view8[4] = this.file.getData()[this.ptr-4];
		view8[5] = this.file.getData()[this.ptr-3];
		view8[6] = this.file.getData()[this.ptr-2];
		view8[7] = this.file.getData()[this.ptr-1];
		var tmp = new Float64Array(buf);
		this.checkPosition();
		return tmp[0];
	}
	this.READSHORTIEEE = function() {
		this.ptr+=4;
		var buf = new ArrayBuffer(4);
		var view8 = new Uint8Array(buf);
		view8[0] = this.file.getData()[this.ptr-4];
		view8[1] = this.file.getData()[this.ptr-3];
		view8[2] = this.file.getData()[this.ptr-2];
		view8[3] = this.file.getData()[this.ptr-1];
		var tmp = new Float32Array(buf);
		this.checkPosition();
		return tmp[0];
	}
	this.READSTR = function(count) {
		var text = "";
		for (var i = 0; i < count; i++) {
			text += CHR_Str(this.READUBYTE());
		}
		return text;
	}
	
	//writes:
	this.WRITEBYTE = function(data) {
		var tmp = new Int8Array(1);
		tmp[0] = data;
		this.file.getData()[this.ptr] = tmp[0];
		
		this.ptr++;
		this.updateSize();
	}
	this.WRITEUBYTE = function(data) {
		var tmp = new Uint8Array(1);
		tmp[0] = data;
		this.file.getData()[this.ptr] = tmp[0];
		
		this.ptr++;
		this.updateSize();
	}
	this.WRITEWORD = function(data) {
		var buffer = new ArrayBuffer(2);
		var wordView = new Int16Array(buffer);
		wordView[0] = data;
		var byteView = new Uint8Array(buffer);
		for (var i = 0; i < byteView.length; i++) {
			this.WRITEUBYTE(byteView[i]);
		}
		this.updateSize();
	}
	this.WRITEUWORD = function(data) {
		var buffer = new ArrayBuffer(2);
		var wordView = new Uint16Array(buffer);
		wordView[0] = data;
		var byteView = new Uint8Array(buffer);
		for (var i = 0; i < byteView.length; i++) {
			this.WRITEUBYTE(byteView[i]);
		}
		this.updateSize();
	}
	this.WRITELONG = function(data) {
		var buffer = new ArrayBuffer(4);
		var longView = new Int32Array(buffer);
		longView[0] = data;
		var byteView = new Uint8Array(buffer);
		for (var i = 0; i < byteView.length; i++) {
			this.WRITEUBYTE(byteView[i]);
		}
		this.updateSize();
	}
	this.WRITEULONG = function(data) {
		var buffer = new ArrayBuffer(4);
		var longView = new Uint32Array(buffer);
		longView[0] = data;
		var byteView = new Uint8Array(buffer);
		for (var i = 0; i < byteView.length; i++) {
			this.WRITEUBYTE(byteView[i]);
		}
		this.updateSize();
	}
	this.WRITEIEEE = function(data) {
		var buffer = new ArrayBuffer(8);
		var floatView = new Float64Array(buffer);
		floatView[0] = data;
		var byteView = new Uint8Array(buffer);
		for (var i = 0; i < byteView.length; i++) {
			this.WRITEUBYTE(byteView[i]);
		}
		this.updateSize();
	}
	this.WRITESHORTIEEE = function(data) {
		var buffer = new ArrayBuffer(4);
		var floatView = new Float32Array(buffer);
		floatView[0] = data;
		var byteView = new Uint8Array(buffer);
		for (var i = 0; i < byteView.length; i++) {
			this.WRITEUBYTE(byteView[i]);
		}
		this.updateSize();
	}
	this.WRITESTR = function(data) {
		for (var i = 0; i <data.length; i++) {
			this.WRITEUBYTE(ASC(data, i));
			//this.file.getData()[this.ptr] = ASC(data, i);
			//this.ptr++;
		}
		this.updateSize();
	}
	this.WRITELINE = function(data) {
		this.WRITESTR(data+"\r\n");
	}
}

function OPENFILE(channel, file, mode) {
	try {
		channels[channel] = new Channel(channel, file, mode);
		if (channel >= channels.length) channels.length = channel + 1;
		return 1;
	} catch(ex) {
		return 0;
	}
}

function getChannel(chn) {
	if (!channels[chn]) throwError("Cannot find channel: "+chn);
	return channels[chn];
}

function ENDOFFILE(channel) {
	return getChannel(channel).ENDOFFILE() ? 1 : 0;
}

function FILEPOSITION(channel) {
	return getChannel(channel).ptr;
}

function FILESEEK(channel, bytes, dir) {
	getChannel(channel).FILESEEK(bytes, dir);
}

function KILLFILE(file) {
	try {
		if (fileSystem.doesDirExist(file)) {
			fileSystem.removeDir(file);
		} else if (fileSystem.doesFileExist(file)) {
			fileSystem.removeFile(file);
		}
	} catch (ex) {}
	
	try {
		if (staticFileSystem.doesDirExist(file)) {
			staticFileSystem.removeDir(file);
		} else if (staticFileSystem.doesFileExist(file)) {
			staticFileSystem.removeFile(file);
		}
	} catch (ex) {}
}

function CLOSEFILE(channel) {
	channels[channel] = null;
	saveFileSystem(); //fs abspeichern
}

//READ Wrapper
function READUBYTE(channel, b) {
	b[0] = getChannel(channel).READUBYTE();
}

function READBYTE(channel, b) {
	b[0] = getChannel(channel).READBYTE();
}

function READWORD(channel, b) {
	b[0] = getChannel(channel).READWORD();
}

function READUWORD(channel, b) {
	b[0] = getChannel(channel).READUWORD();
}

function READLONG(channel, b) {
	b[0] = getChannel(channel).READLONG();
}

function READULONG(channel, b) {
	b[0] = getChannel(channel).READULONG();
}

function READSHORTIEEE(channel, b) {
	b[0] = getChannel(channel).READSHORTIEEE();
}

function READIEEE(channel, b) {
	b[0] = getChannel(channel).READIEEE();
}

function READLINE(channel, line) {
	line[0] = getChannel(channel).READLINE();
}

function READSTR(channel, str, count) {
	str[0] = getChannel(channel).READSTR(count);
}

//WRITE Wrapper
function WRITEUBYTE(channel, data) {
	getChannel(channel).WRITEUBYTE(data);
}

function WRITEBYTE(channel, data) {
	getChannel(channel).WRITEBYTE(data);
}

function WRITEWORD(channel, data) {
	getChannel(channel).WRITEWORD(data);
}

function WRITEUWORD(channel, data) {
	getChannel(channel).WRITEUWORD(data);
}

function WRITELONG(channel, data) {
	getChannel(channel).WRITELONG(data);
}

function WRITEULONG(channel, data) {
	getChannel(channel).WRITEULONG(data);
}

function WRITESHORTIEEE(channel, data) {
	getChannel(channel).WRITESHORTIEEE(data);
}

function WRITEIEEE(channel, data) {
	getChannel(channel).WRITEIEEE(data);
}
function WRITELINE(channel, data) {
	getChannel(channel).WRITELINE(data);
}

function WRITESTR(channel, data) {
	getChannel(channel).WRITESTR(data);
}

function SETSHOEBOX(data, media) {
	//ignore!
}

function GETCOMMANDLINE_Str() {
	var c = window.location.href;
	var l = INSTR(c, "?");
	if (l == -1) return "";
	return REPLACE_Str(MID_Str(c, l+1), "&", " ");
}

function GETCURRENTDIR_Str() {
	return fileSystem.getCurrentDir();
}

function SETCURRENTDIR(dir) {
	if (dir == '') return;
	
	var tmpDir = rawpath(dir, fileSystem.getMainDir());
	dir = tmpDir.dir.getPath()+dir;
	
	var fs1 = false, fs2 = false;
	try {
		fileSystem.setCurrentDir(dir);
		fs1 = true;
	} catch (ex) {}
	try {
		staticFileSystem.setCurrentDir(dir);
		fs2 = true;
	} catch (ex) {}
	return (fs1 && fs2) ? 1 : 0;
}

function DOESFILEEXIST(file) {
	return (fileSystem.doesFileExist(file) || staticFileSystem.doesFileExist(file)) ? 1 : 0;
}

function DOESDIREXIST(dir) {
	return (fileSystem.doesDirExist(dir) || staticFileSystem.doesDirExist(dir)) ? 1 : 0;
}

function GETFILESIZE(file) {
	try {
		var f = null;
		if (fileSystem.doesFileExist(file)) {
			f = fileSystem.getFile(file);
		} else if (staticFileSystem.doesFileExist(file)) {
			f = staticFileSystem.getFile(file);
		} else {
			throwError("Cannot find file: "+file);
		}
		if (!!f) return f.getData().length;
	} catch(ex) {}
	return 0;
}

function GETFILELIST(find, files) {
	try {
		REDIM(files, [0], files.defval);
		var doesMatch = function(name) {
			var i = 0, j = 0;
			for (var j = 0; j <= find.length; j++) {
				var c = find.charAt(j);
				switch(c) {
					case '*':
						//beliebig lang
						j++;
						var endTok = find.charAt(j);
						j--;
						while(name.charAt(i) != endTok && i < name.length) i++; //bis es wieder zu einem spezialzeichen kommt, wiederholen
						break;
					case '?':
						//ignoriere!
						i++;
						break;
					default:
						if (c != name.charAt(i)) return false;
						i++;
				}
			}
			
			return true;
		}
		
		var data = fileSystem.getDir("").getList().concat(staticFileSystem.getDir("").getList());
		
		var numDir = 0, numFile = 0;
		
		var output = [];
		output.push(".");
		output.push("..");
		for (var i = 0; i <data.length; i++) {
			var o = data[i];
			
			if (doesMatch(o.name)) {
				if (o instanceof VirtualDirectory) {
					numDir++;
				} else if (o instanceof VirtualFile) {
					numFile++;
				} else {
					throwError("Unknown file type");
				}
				
				output.push(o.name);
			}
		}
		
		//output array in das echte array rein
		for (var i = 0; i < output.length; i++) {
			if (files.defval instanceof Array) {
				DIMPUSH(files, [output[i]]);
			} else {
				DIMPUSH(files, output[i]);
			}
		}
		
		//fertig
		return numDir*0x1000+numFile;
	} catch (ex) {
		throwError("GETFILELIST error: find: '"+find+"'");
	}
}

function COPYFILE(source, dest) {
	fileSystem.copyFile(source, dest);
	staticFileSystem.copyFile(source, dest);
}

function CREATEDIR(dir) {
	try {
		fileSystem.createDir(dir);
		staticFileSystem.createDir(dir);
		return 1;
	} catch(ex) {}
	return 0;
}

//-----------------------------------------------------------
//INI
//-----------------------------------------------------------

/**
* @constructor
*/
function INI(file) {
	this.parse = function(text) {
		try {
			var lines = text.replace("\r").split("\n");
			var cat = "";
			for (var i = 0; i < lines.length; i++) {
				var l = lines[i];
				if (INSTR(l, ";") != -1) {
					l = MID_Str(l, 0, INSTR(l, ";"));
				}
				if (MID_Str(l, 0, 1) == '[') {
					//kategorie
					cat = MID_Str(l, 1, REVINSTR(l, ']')-1);
				} else if (INSTR(l, "=") != -1) {
					var k = MID_Str(l, 0, INSTR(l,"="));
					var v = MID_Str(l, INSTR(l,"=")+1);
					INIPUT(cat, k, v);
				}
			}
		} catch(ex) {
			throwError("INI parse error: '"+text*"'");
		}
	}
	
	
	this.put = function(cat, key, value) {
		try {
			cat = cat.toLowerCase();
			var c;
			for (var i = 0;i < this.cats.length; i++) {
				if (this.cats[i].name == cat) {
					c = this.cats[i];
					if (key == "" && value == "") {
						//l?schen
						this.cats.splice(i, 1);
						return;
					}
					break;
				}
			}
			if (!c) {
				c = new INICat(cat);
				this.cats.push(c);
			}
			c.put(key, value);
		} catch(ex) {
			throwError("INIPUT error cat: '"+cat+"' key: '"+key+"' value: '"+value+"'");
		}
	}
	
	
	this.get = function(cat, key) {
		try {
			cat = cat.toLowerCase();
			var c;
			for (var i = 0;i < this.cats.length; i++) {
				if (this.cats[i].name == cat) {
					c = this.cats[i];
					break;
				}
			}
			if (!c) {
				c = new INICat(cat);
			}
			return c.get(key);
		} catch(ex) {
			throwError("INIGET error cat: '"+cat+"' key: '"+key+"'");
		}
	}
	
	this.save = function() {
		var text = "";
		for (var i = 0;i < this.cats.length; i++) {
			text += "["+this.cats[i].name+"]\n"
			text += this.cats[i].save();
		}
		return text;
	}
	
	this.cats = [];	
	this.channel = 1337*2;
	
	try {
		OPENFILE(this.channel, file, 0)
		var size = GETFILESIZE(file);
		if (size > 0) {
			var text = [""];
			READSTR(this.channel, text, size);
			var o = curIni;
			curIni = this;
			this.parse(text[0]);
			curIni = o;
		}
	} catch(ex) {
		throwError("INI load error: '"+file+"'");
	}
	
}

/**
* @constructor
*/
function INICat(name) {
	this.name = name;
	this.keys = [];
	
	this.put = function(key, value) {
		key = key.toLowerCase();
		var kv;
		for (var i = 0;i < this.keys.length; i++) {
			if (this.keys[i].key == key) {
				kv = this.keys[i];
				if (value == "") {
					this.keys.splice(i, 1);
					return;
				}
				break;
			}
		}
		if (!kv) {
			kv = new INIKeyValue(key, value);
			this.keys.push(kv);
		}
	}
	
	this.get = function(key) {
		key = key.toLowerCase();
		var kv;
		for (var i = 0;i < this.keys.length; i++) {
			if (this.keys[i].key == key) {
				kv = this.keys[i];
				break;
			}
		}
		if (!kv) {
			kv = new INIKeyValue(key, "");
			this.keys.push(kv);
		}
		return kv.value;
	}
	
	this.save = function() {
		var text = "";
		for(var i = 0; i < this.keys.length; i++) {
			text += this.keys[i].key+"="+this.keys[i].value+"\n";
		}
		return text;
	}
}

/**
* @constructor
*/
function INIKeyValue(key, value) {
	this.key = key;
	this.value = value;
}

var curIni = null;

function INIOPEN(file) {
	if (!!curIni) {
		//speichern
		var text = curIni.save();
		WRITESTR(curIni.channel, text);
		CLOSEFILE(curIni.channel);
	}
	if (file == "") {
		curIni = null;
	} else {
		curIni = new INI(file);
	}
}

function INIPUT(cat, name, key) {
	if (!!curIni) {
		curIni.put(cat, name, key);
	}
}

function INIGET_Str(cat, name) {
	if (!!curIni) {
		return curIni.get(cat, name);
	}
}
//------------------------------------------------------------
//Variables
//------------------------------------------------------------
if (typeof preInitFuncs == 'undefined') preInitFuncs = [];
preInitFuncs.push(function() {
	if (viewMode == '2d' || (typeof inEditorPreview != 'undefined')) {
		if (typeof window == 'undefined') window = {};
		window.onload=function( e ) {
			if (typeof GFX_WIDTH 	== 'undefined')
				window["GFX_WIDTH"] = 640;
				
			if (typeof GFX_HEIGHT 	== 'undefined')
				window["GFX_HEIGHT"] = 480;
			
			var c = document.createElement('canvas');
			c.width = GFX_WIDTH;
			c.height = GFX_HEIGHT
			c.id = "GLBCANVAS";
			
			document.body.appendChild(c);
			
			init2D('GLBCANVAS');
		}
	}
});


var waitload	= 0; 		//Auf wieviele Sachen muss noch gewartet werden
var curScreen	= null;		//Der aktuell ausgew?hlte Screen
var context		= null; 	//Der JavaScript Kontext
var canvas		= null;		//Das Canvas auf das gezeichnet wird
var clrColor	= RGB(0,0,0); //Die Hintergrundfarbe
var keyInput 	= [];		//Das Inputarray
var fontbuffer	= null;		//der frontbuffer
var backbuffer	= null;		//Der hintergrundbuffer
var initCalled	= false;	//wurde init aufgerufen?
var lastShwscrn	= 0;		//Wann wurde das letzte showscreen gemacht?
var showFPS		= -1; 		//wieviele fps?
var framePrev	= 0;		//welche ms gabs davor?
var frameDelay	= 0;		//wie lange soll gewarten werden?
var canvasWidth, canvasHeight; //Die breite/h?he
var	background	= null;		//Das Hintergrundbg (USEASBMP oder LOADBMP)
var loopFunc 	= null; //Aktueller LOOP
var loops 	 	= [];		//Der Loopstack
var usedSoundformat = 'ogg';	//Das benutzte Soundformat
var hibernate	= false;	//SOlls warten
var transCol	= null;		//Die durchsichtige farbe
var setBmp 		= null;		//die funktion die den hintergrund setzen soll
var lastKey		= ""; //der zuletzt gedr?ckte Buchstabe (ist f?r INKEY)

var waitForFont = false;


//------------------------------------------------------------
// Basic 2D stuff
//------------------------------------------------------------

var doCurrentFunction = function() {
	if (!waitload) {
		loopFunc(); //mainloop
	} else if (GLB_ON_LOADING) {
		GLB_ON_LOADING();
	}
	
	//Nun wieder auf normal
	
	if (inPoly) {
		ENDPOLY();
	}
	
	
	if (inViewport) {
		context.restore();
		inViewport = false;
	}
}

function update2D() {
	try {
		if (!initCalled) {
			if (waitForFont) {
				if (!waitload) {
					waitForFont = false;
				}
			} else {
				//Erst wenn Font fertig geladen ist
				initCalled = true;
				
				main();
			}
		} else {
			if (setBmp) {
				setBmp();
				setBmp = null;
			}
			
			updateTouches();
			
			if (hibernate) {
				if (ANYMOUSE() || ANYKEY() || globalSpeedX || globalSpeedY) {
					hibernate = false;
				}
			} else {
				canvasWidth = canvas.width; 
				canvasHeight = canvas.height;
				
				
				
				if (showFPS == -1) {
					doCurrentFunction();
				} else {
					var frameStart = GETTIMERALL();
					var frameDelta = frameStart - framePrev;
					
					if (frameDelta >= frameDelay) {
						doCurrentFunction();
							
						frameDelay = showFPS;
						if (frameDelta > frameDelay) {
							frameDelay = frameDelay - (frameDelta - frameDelay);
						}
						framePrev = frameStart;
					}
				}
				
			}
			
			anyKeyPress = false;
		}
		window.requestAnimFrame(update2D, frontbuffer.canvas);
	} catch(ex) {
		if (!(ex instanceof GLBExitException)) alert(formatError(ex));
	}
}

function domExceptionError(ex) {
	if (ex instanceof DOMException) {
		if (ex.code == 18) {
			throwError("Cannot access to ressource (maybe pixel data?). If you use Chrome, please run in localhost or use another browser!");
		} else {
			throwError("Unknown DOM error :(");
		}
	} else throw ex;
}

function PUSHLOOP(loop) {
	var f = eval("window['"+loop+"']");
	if (f == undefined) {
		loopFunc = function() {
			throwError("Call to undefined loop!");
		}
		throwError("Cannot push undefined loop: '"+loop+"'");
	}
	loopFunc = f;
	
	loops.push([f, loop]);
}

function POPLOOP() {
	loops.pop();
	
	if (loops.length == 0) {
		throwError("Cannot pop loop, because loop stack is empty!");
	}
	
	var f = loops[loops.length-1];
	loopFunc = f[0];
}

function GETCURRENTLOOP_Str() {
	var f = loops[loops.length-1];
	return f[1];
}

function RETURNTOLOOP(loop) {
	var f = eval("window."+loop);
	if (f == undefined) {
		throwError("Cannot return to undefined loop: '"+loop+"'");
	}
	while(GETCURRENTLOOP_Str() != loop) {
		POPLOOP();
	}
}

function X_MAKE2D() {
	//noch nichts tun, erst wenn 3D da ist
}

function SHOWSCREEN() {
	lastShwscrn = GETTIMERALL();
	if (initCalled) {
		USESCREEN(-2);
		CLEARSCREEN(clrColor);
		USESCREEN(-1);
		frontbuffer.context.drawImage(backbuffer.canvas,0, 0);
		CLEARSCREEN(clrColor);
		//nun noch falls vorhanden den bg zeichnen
		if (!!background) {
			backbuffer.context.drawImage(background, 0, 0);
		}
	}
}


function init2D(canvasName) {
	var myAudio = document.createElement('audio'); 
    var canPlayMp3 = false, canPlayOgg = false;
    if (myAudio.canPlayType) {
		canPlayMp3 = !!myAudio.canPlayType && "" != myAudio.canPlayType('audio/mpeg');
		if (canPlayMp3 == "maybe" || canPlayMp3 == "probably" || canPlayMp3 == true) canPlayMp3 = true; else canPlayMp3 = false;
		canPlayOgg = !!myAudio.canPlayType && "" != myAudio.canPlayType('audio/ogg; codecs="vorbis"');
		if (canPlayOgg == "maybe" || canPlayOgg == "probably" || canPlayOgg == true) canPlayOgg = true; else canPlayOgg = false;
	}
	if (!canPlayOgg && !canPlayMp3) {
		noSound = true; //throwError("Your browser is not able to play sound... please use a newer browser.");
		console.log("No sound playback possible!");
	}
	
	if (canPlayOgg) {
		usedSoundFormat = 'ogg';
	} else {
		usedSoundFormat = 'mp3';
	}
	
	frontbuffer = new Screen(document.getElementById(canvasName), -2);
	register(frontbuffer);
	
	var cnvs = document.createElement('canvas');
	cnvs.width = frontbuffer.canvas.width
	cnvs.height = frontbuffer.canvas.height
	backbuffer = new Screen(cnvs, -1);
	register(backbuffer);
	
	if (typeof GLB_ON_LOADING == 'undefined') GLB_ON_LOADING = null;
	
	USESCREEN(-2);
    if (!context) {
		throwError("Canvas unsupported, please use a newer browser.");
		END();
	}
	
	function finishEvent(e){
		if(e.stopPropagation){
			e.stopPropagation();
			e.preventDefault();
		} else {
			e.cancelBubble=true;
			e.returnValue=false;
		}
	}
	
	canvas.oncontextmenu = function() {
		return false;
	}
	
	touches.push(new Touch()); //Einen Touch gibts immer!
	
	//mouse listener
	if (!touchable) {
		canvas.onmousemove = function(ev) {
			if(!ev) ev = window.event();
			
			touches[0].x = ev.clientX - canvas.offsetLeft;
			touches[0].y = ev.clientY - canvas.offsetTop;
		}
		canvas.onmousedown=function( e ) {
			if(!e) e = window.event();
			
			switch( e.button ){
				case 0: touches[0].left 	= true; break;
				case 1: touches[0].middle 	= true; break;
				case 2: touches[0].right 	= true; break;
			}
			
			finishEvent(e);
		}
		
		canvas.onmouseup=function( e ) {
			if(!e) e = window.event();
			
			switch( e.button ){
				case 0: touches[0].left 	= false; break;
				case 1: touches[0].middle 	= false; break;
				case 2: touches[0].right 	= false; break;
			}
			finishEvent(e);
		}
		
		canvas.onmouseout=function( e ){
			if(!e) e = window.event();
			
			touches[0].left 	= false;
			touches[0].right	= false;
			touches[0].middle 	= false;
			finishEvent(e);
		}
		
		wheel = function(ev) {
			var delta = 0;
			if (!ev) ev = window.event;
			if (ev.wheelDelta){
				delta = ev.wheelDelta/120;
				if (window.opera) delta = -delta;
			} else if(ev.detail){
				delta = -ev.detail/3;
			}
			
			touches[0].wheel = (delta > 0) ? 1 : ((delta < 0) ? -1 : 0);
			if(ev.preventDefault) ev.preventDefault();
			ev.returnValue = false;
			
			finishEvent(ev);
		}
		
		if(window.addEventListener) window.addEventListener("DOMMouseScroll", wheel, false);
		window.onmousewheel = document.onmousewheel = wheel;
	} else {
		canvas.addEventListener('touchmove', function(event) {
			updateTouches(event.touches, 'move');
			
			finishEvent(event);
		}, false);
		
		
		canvas.addEventListener('touchstart', function(event) {
			//Beginn...
			updateTouches(event.touches, 'start');
			finishEvent(event);
		}, false);
		
		canvas.addEventListener('touchend', function(event) {
			//Ende...
			updateTouches(event.changedTouches, 'end');
			finishEvent(event);
		}, false);
	}
	//key listener
	document.onkeydown = canvas.onkeydown = function(ev) {
		if(!ev) ev = window.event();
		keyInput[ev.keyCode] = true;
		anyKeyPress = true;
		
		finishEvent(ev);
	}
	document.onkeyup = canvas.onkeyup = function(ev) {
		if(!ev) ev = window.event();
		keyInput[ev.keyCode] = false;
		
		finishEvent(ev);
	}
	// press listener (for INKEY$)
	document.onkeypress = canvas.onkeypress = function(ev) {
		if (!ev) ev = window.event();
		if (ev.keyCode == 8) 
			lastKey = "\b";
		else if (ev.keyCode == 13)
			lastKey = "\n";
		else
			lastKey = CHR_Str(ev.which);
	}
	
	USESCREEN(-1);
	CLEARSCREEN(RGB(0,0,0)); //black background color
	SHOWSCREEN();
	
	try {
		if (window['GLB_ON_LOOP']) {
			PUSHLOOP("GLB_ON_LOOP");
		} else {
			PUSHLOOP("GLB_MAIN_LOOP");
		}
	} catch(ex) {}
	
	SYSTEMPOINTER(0);
	
	if (DOESFILEEXIST("/Media/smalfont.png")) {
		LOADFONT("/Media/smalfont.png", 0);
		SETFONT(0);
		waitForFont = true;
	}
	
    update2D(); //call the render function
}

function deInit2D() {
	canvas = null;
	context = null;
    sprites = [];
    screens = [];
    waitload = 0;
    curScreen = null;
    clrColor = RGB(0, 0, 0);
    keyInput = [];
    fontbuffer = null;
    backbuffer = null;
	initCalled = false;
}

function register(obj) {
	if (obj instanceof Sprite) {
		sprites[obj.num] = obj;
		if (obj.num >= sprites.length) sprites.length = obj.num + 1;
	} else if (obj instanceof Screen) {
		screens[obj.num] = obj;
		if (obj.num>=screens.length) screens.length = obj.num + 1; //vllt +3
	} else if (obj instanceof Sound) {
		sounds[obj.num] = obj;
		if (obj.num >= sounds.length) sounds.length = obj.num + 1;
	} else if (obj instanceof SoundChannel) {
		soundChannels[obj.num] = obj;
		if (obj.num >= soundChannels.length) soundChannels.length = obj.num + 1;
	} else if (obj instanceof Font) {
		fonts[obj.num] = obj;
	} else {
		throwError("Cannot register unknown object: "+obj.constructor);
	}
	
	return obj.num;
}



//------------------------------------------------------------
//Misc
//------------------------------------------------------------

function FOCEFEEDBACK(joy, dur, x, y) {
	var f = navigator.vibrate || navigator.mozVibrate;
	if (f) f(dur);
}

function GETTIMER() {
	return GETTIMERALL() - lastShwscrn;
}

function ALPHAMODE(mode) {
	/*if (mode < 0) {
		context.globalCompositeOperation = 'lighter';
		mode = (1 - mode) - 1;
	} else if (mode > 0) {
		context.globalCompositeOperation = 'lighter';
	} else {
		context.globalCompositeOperation = 'source-over';
		mode = 1;
	}
	canvas.globalAlpha = mode;*/
}

function SETPIXEL(x, y, col) {
	DRAWRECT(x,y,1,1,col);
}

function LIMITFPS(fps) {
	showFPS = fps;
}

function RGB(r, g, b) {
	r = r%256; g = g%256; b = b%256
	return r*0x10000 + g*0x100 + b;
}

var whiteRGB = RGB(255,255,255);

function SETTRANSPARENCY(rgb) {
	//throwError("TODO: SETTRANS");
	transCol = rgb;
	transFontCol = rgb;
}

function SMOOTHSHADING(mode) {
	// Do nothing...
}

function SETSCREEN(width, height) {
	canvas.width = width;
	canvas.height = height;
}

var inViewport = false;
function VIEWPORT(x, y, width, height) {
	if (inViewport) {
		context.restore();
		inViewport = false;
	}
	
	if (x != 0 || y != 0 || width != 0 || height != 0) {
		//clipping \o/
		context.save();
		
		context.beginPath();
		context.rect( x,y,width,height );
		context.clip();
		
		
		inViewport = true;
	}
}

function ALLOWESCAPE(allow) {
	throwError("TODO: allowescape");
}

function AUTOPAUSE(mode) {
	throwError("TODO: autopause");
}

function HIBERNATE() {
	hibernate = true;
}

//------------------------------------------------------------
//get functions
//------------------------------------------------------------

function GETSCREENSIZE(width, height) {
	width[0] = canvas.width
	height[0] = canvas.height;
}

function GETSPRITESIZE(num, width, height) {
	width[0] = 0;
	height[0] = 0;
	
	if (sprites[num] && sprites[num].loaded) {
		width[0] = sprites[num].img.width;
		height[0] = sprites[num].img.height;
	}
}

function GETDESKTOPSIZE(width, height) {
	width[0] = window.innerWidth;
	height[0] = window.innerHeight;
}

function ISFULLSCREEN() {
	return 0;
}

function GETPIXEL(x, y) {
	var data = context.getImageData(x, y, 1, 1);
	return RGB(data[0], data[1], data[2]);
}


function removeTransparency(image, col) {
	if (typeof col == 'undefined') {
		col = transCol
	}
	//Weird hack...
	var width = image.width, height = image.height;
	var buf = document.createElement('canvas');
	buf.width = width;
	buf.height = height;
	
	var scrn = new Screen(buf, -42);
	scrn.context.drawImage(image, 0, 0);
	
	//data modifizieren
	var imageData = scrn.context.getImageData(0, 0, width, height);
	
	for (var y = 0; y < height; y++) {
		inpos = y * width * 4; // *4 for 4 ints per pixel
		outpos = inpos;
		for (var x = 0; x < width; x++) {
			var r = imageData.data[inpos++];
			var g = imageData.data[inpos++];
			var b = imageData.data[inpos++];
			var a = imageData.data[inpos++];
			
			var rgb = RGB(r, g, b);
			if (rgb == col) {
				//Transparent machen!
				a = 0;
			}
			
			imageData.data[outpos++] = r;
			imageData.data[outpos++] = g;
			imageData.data[outpos++] = b;
			imageData.data[outpos++] = a;
		}
	}
	
	scrn.context.putImageData(imageData, 0, 0);
	
	return buf;
}


//------------------------------------------------------------
//save functions
//------------------------------------------------------------
function SAVEBMP(file) {
	throwError("TODO: savebmp");
}

function SAVESPRITE(file, num) {
	throwError("TODO: savesprite");
}

//------------------------------------------------------------
//shape functions
//------------------------------------------------------------
function DRAWLINE(x1, y1, x2, y2, col) {
	context.save();
	context.strokeStyle	= formatColor(col);
	context.beginPath();
	context.moveTo(CAST2INT(x1), CAST2INT(y1));
	context.lineTo(CAST2INT(x2), CAST2INT(y2));
	context.stroke();
	context.restore();
}
function DRAWRECT(x,y,w,h,col) {
	if (col == transCol) {
		// delete this from the canvas
		context.clearRect(x,y,w,h);
	} else {
		context.save();
		context.fillStyle	= formatColor(col);
		context.fillRect(CAST2INT(x), CAST2INT(y), CAST2INT(w), CAST2INT(h));
		context.restore();
	}
}

function formatColor(col) {
	col = col.toString(16);
	while(col.length<6) {
		col = "00"+col;
	}
	return '#'+col;
}


//------------------------------------------------------------
//movie
//------------------------------------------------------------
function LOOPMOVIE(movie) {
	throwError("TODO: loopmovie");
}

function PLAYMOVIE(movie) {
	throwError("TODO:playmovie");
}



function loadAsset(path) {
	path = path.toLowerCase();
	
	if (!!window.assets) {
		for (var i = 0; i < window.assets.length; i++) {
			if (window.assets[i].name.toLowerCase() == path) {
				return window.assets[i].path;
			}
		}
	}
	return path;
}



//------------------------------------------------------------
//text
//------------------------------------------------------------

var transFontCol = null;
var fonts = [];
var currentFont = -1;

/**
 * @constructor
 */
function Font(path, num, img) {
	this.loaded = false;
	this.path = path;
	this.num = num;
	this.charwidth = 0;
	this.charheight = 0;
	this.chars = new Array(256);
	this.img = img;
	this.oimg = img;
}


function LOADFONT(path, num) {
	if (!transFontCol) {
		transFontCol = RGB(0,0,0);
	}
	var image = new Image();
	var font = new Font(path, num, image);
	
	
	//existiert das bild im filesystem?
	image.onerror = function() {
		if (fonts[num]) {
			waitload--;
			fonts[num] = null;
			if (path != "" && path != "0") {
				throwError("Font '"+num+"' '"+path+"' not found!");
			}
		} //else => es wurde schon gel?scht
	};
	//nein, also lade es von der hdd
	image.onload = function () { 
		if (!font.loaded) {
			waitload--;
			font.loaded = true;
			
			try {
				var width = image.width, height = image.height;
				var buf = document.createElement('canvas');
				buf.width = width;
				buf.height = height;
				
				var scrn = new Screen(buf, -42);
				scrn.context.drawImage(image, 0, 0);
				
				//data modifizieren
				var imageData = scrn.context.getImageData(0, 0, width, height);
				
				var blue = RGB(0,0,255);
				var yellow = RGB(255,255,0);
				
				var data = imageData.data;
				var fx = 0, fy = 0;
				var sizing = true;
				
				var getCol = function(x, y) {
					return RGB(data[(y*width + x)*4], data[(y*width + x)*4 + 1], data[(y*width + x)*4 + 2]);
				}
				
				var charwidth = null, charheight = null;
				
				var i = 0;
				while (sizing) {
					var x = fx + 1, y = fy + 1;
					var col = getCol(x, y);
					if (col == blue || col == yellow) {
						var startx = x, starty = y;
						for (;getCol(x, starty) == blue || getCol(x, starty) == yellow;x++) {}
						for (;getCol(startx, y) == blue || getCol(startx, y) == yellow;y++) {}
						//throwError("width: "+(x - startx)+" height: "+(y - starty));
						if (!charwidth || charwidth > (x - startx)) charwidth = (x - startx);
						if (!charheight || charheight > (y - starty)) charheight = (y - starty);
						
						fx += charwidth + 2;
						
						if (fx >= width) {
							fx = 0;
							fy += charheight + 2;
						}
						
						i++;
					} else {
						//console.log("fx: "+fx+" fy: "+fy);
						sizing = false;
					}
				}
				
				font.charwidth = charwidth;
				font.charheight = charheight;
				
				for (var y = fy + 1; y < height; y += charheight + 2) {
					for (var x = fx + 1; x < width; x += charwidth + 2) {
						var realwidth = charwidth;
						
						var startx, endx;
						//DO KERNING STUFF \o/
						
						for (var leftx = x + 1; leftx < x + charwidth; leftx++) {
							var pixel = false;
							for (var tmpy = y+1; tmpy < y + charheight-2; tmpy++) {
								if (getCol(leftx, tmpy) != transFontCol) {
									pixel = true;
									break;
								}
							}
							if (pixel) {
								startx = leftx;
								break;
							}
						}
						
						for (var rightx = x + charwidth; rightx > x; rightx--) {
							var pixel = false;
							for (var tmpy = y+1; tmpy < y + charheight-2; tmpy++) {
								if (getCol(rightx, tmpy) != transFontCol) {
									pixel = true;
									break;
								}
							}
							if (pixel) {
								endx = rightx;
								break;
							}
						}
						
						if (endx > startx) {
							//console.log("posi: end "+endx+", start "+startx);
							realwidth = endx - startx;
						} else {
							realwidth= 14;
						}
						
						font.chars[i] = {
							x: x + 1, y: y + 1,
							
							//kerning data
							width: realwidth+2
						};
						
						i++;
					}
				}
				
				
				
				font.img = removeTransparency(font.img, transFontCol);
			}  catch(ex) {
				//kann keine imagedata holen
				domExceptionError(ex);
			}
		}
	}
	image.src = loadAsset(fileSystem.getCurrentDir() + path);
	
	register(font);
	
	waitload++;
}



function PRINT(text, x, y, kerning) {
	if (currentFont == -1 || !fonts[currentFont].loaded) {
		context.save();
		context.font = "12pt Consolas";
		context.fillStyle	= '#ffffff';
		context.fillText(text, ~~(x+.5), ~~(y+.5)+12);
		context.restore();
	} else {
		context.save();
		x = ~~(x+.5);
		y = ~~(y+.5);
		
		var curposx = 0;
		
		var font = fonts[currentFont];
		for (var i = 0; i < text.length; i++) {
			var pos = text.charCodeAt(i);
			
			if (pos >= font.chars.length) {
				throwError("Unicode unsupported! "+pos);
			}
			var c = font.chars[pos];
			
			var pos;
			if (kerning) {
				pos = x-font.charwidth/2+c.width/2;
			} else {
				pos = x;
			}
			
			context.drawImage(font.img, c.x, c.y, font.charwidth, font.charheight, pos, y, font.charwidth, font.charheight);
			
			
			if (kerning) {
				x += c.width;
			} else {
				x += font.charwidth;
			}
		}
		context.restore();
	}
}

function SETFONT(num) {
	currentFont = num;
}

function KERNLEN(text, len) {
	if (currentFont == -1 || !fonts[currentFont].loaded) {
		throwError("Font not yet loaded - unable to determine length!");
	} else {
		var font = fonts[currentFont];
		var w = 0;
		for (var i = 0; i < text.length; i++) {
			var pos = text.charCodeAt(i);
		
			if (pos >= font.chars.length) {
				throwError("Unicode unsupported! "+pos);
			}
			var c = font.chars[pos];
			
			if (len) {
				w+=c.width;
			} else {
				w+=font.charwidth;
			}
		}
		return w;
	}
}

function GETFONTSIZE(width, height) {
	if (currentFont == -1 || !fonts[currentFont].loaded) {
		throwError("Font not yet loaded - unable to determine length!");
	} else {
		width[0] =  fonts[currentFont].charwidth;
		height[0] = fonts[currentFont].charheight;
	}
}

//------------------------------------------------------------
//sound
//------------------------------------------------------------
var sounds = [];
var soundChannels = [];
var noSound 	= false;

function genSoundChannel() {
	for (var i = 1; i < soundChannels.length; i++) {
		if (!soundChannels[i]) return i;
	}
	return soundChannels.length+1;
}

/**
* @constructor
*/
function Sound(file, num, buffer) {
	this.num = num;
	this.file = file;
	this.loaded = false;
	this.buffers = [];
	this.buffers.length = buffer;
	
	this.sound = new Audio(file);
	this.sound.load();
	// Add the audio element to the DOM, because otherwise a certain 
	// retarded Browser from Redmond will refuse to properly clone it
	
	//document.body.appendChild( this.sound );
	
	waitload++;
	
	var snd = this;
	this.sound.addEventListener("onerror", function() {
		waitload--;
		if (file != "" && file != "0") {
			throwError("Sound '"+num+"' '"+file+"' not found!");
		}
	}, false);
	this.sound.addEventListener("canplaythrough", function() {
		if (!snd.loaded) {
			waitload--;
			
			//buffer erstellen
			for (var i = 0; i < snd.buffers.length; i++) { 
				snd.buffers[i] = new SoundChannel(this);
			}
		}
		snd.loaded = true;
	}, false);
}

/**
* @constructor
*/
function SoundChannel(sound) {
	this.sound = sound.cloneNode(true);
	this.sound.load();
	
	this.num = genSoundChannel();
	this.loaded = false;
	this.playing = false;
	this.playTime = 0;
	
	this.play = function() {
		if (this.playing) this.stop();
		
		this.sound.currentTime = 0;
		this.playing = true;
		this.playTime = GETTIMERALL();
		this.sound.play();
	}
	
	this.stop = function() {
		this.sound.pause();
		this.sound.currentTime = 0;
		this.playing = false;
		this.playTime = 0;
	}
	
	var sndchn = this;
	this.sound.addEventListener( 'canplaythrough', function() {
		if (!sndchn.loaded) {
			waitload--;
		}
		sndchn.loaded = true;
	}, false );
	this.sound.addEventListener("ended", function() {
		sndchn.stop();
	}, false);
	
	waitload++;
}

function LOADSOUND(file, num, buffer) {
	if (noSound) return;
	var ass = loadAsset(file);
	
	if (ass == file) {
		var fileName = REPLACE_Str(MID_Str(file, MAX(0, file.lastIndexOf('/')), -1),"/","");
		file = REPLACE_Str(file, fileName, ".html5_convertedsounds_"+fileName)+"/";
		
		if (usedSoundFormat == 'ogg') {
			file +="sound.ogg";
		} else { //mp3
			file +="sound.mp3";
		}
		file = "./"+file;
	} else {
		file = ass;
	}
	
	var sound = new Sound(file, num, buffer);
	
	register(sound);
	
	return sound;
}

function PLAYSOUND(num, pan, volume) {
	if (noSound) return;
	
	var s = sounds[num];
	if (!s) {
		return 0;
	} else {
		//suche den mit dem niedrigsten playTime
		var curChn = null, lowestPlaytime = GETTIMERALL() + 1;
		for (var i = 0; i < s.buffers.length && lowestPlaytime != 0; i++) {
			if (s.buffers[i].playTime < lowestPlaytime) {
				lowestPlaytime = s.buffers[i].playTime;
				curChn = s.buffers[i];
			}
		}
		if (!!curChn) {
			curChn.play();
		} else {
			throwError("No channel available...");
		}
		return curChn.num;
	}
}

function HUSH() {
	if (noSound) return;
	
	for (var i = 0; i < soundChannels.length; i++) {
		if (!!soundChannels[i] && soundChannels[i].playing) soundChannels[i].stop();
	}
}

function SOUNDPLAYING(chn) {
	if (noSound) return false;
	
	return (!!soundChannels[chn] && soundChannels[chn].playing ) ? 0 : 1;
}
function PLAYMUSIC(file, loop) {
	if (noSound) return;
	return;
	
	var s = LOADSOUND(file, 0, 1);
	s.loop = loop;
	s.music = true;
}

function STOPMUSIC() {
	if (noSound) return;
	
	if (SOUNDPLAYING(0)) {
		soundChannels[0].stop();
	}
}

function ISMUSICPLAYING() {
	if (noSound) return false;
	
	return SOUNDPLAYING(0);
}
//------------------------------------------------------------
//input
//------------------------------------------------------------

var currentMouse= 0;


//Mouse/Touch Input
var anyKeyPress = false;	//Wurde eine Taste gedr?ckt?
var anyMousePress = false;	//Wurde eine Mouse gedr?ckt?

var globalSpeedX, globalSpeedY; //f?r HIBERNATE
var touches		= [];
var touchable	= document ? ('createTouch' in document) : false;


/**
* @constructor
*/
function Touch() {
	this.lastx 	= 0;
	this.lasty 	= 0;
	this.speedx = 0;
	this.speedy = 0;
	
	this.x = 0;
	this.y = 0;
	
	this.left	= false;
	this.right 	= false;
	this.middle = false;
	this.wheel 	= 0;
	this.reallywheel = 0;
}

function updateTouches(t, state) {
	anyMousePress = false;
	if (t) {
		switch(state) {
			case 'start':
				//falls neue tasten => draufhauen
				for (var i = touches.length; i < t.length-1; i++) {
					var tmp = t[i];
					touches[tmp.identifier].left = true; //letzten true setzen!
				}
				touches.length = t.length;
				break;
			case 'end':
				//Alle Tasten zur?cksetzen
				for (var i = 0; i < t.length; i++) {
					var tmp = t[i];
					touches[tmp.identifier].left  = false;
				}
				break;
			case 'move':
				//Nun die gedr?ckten Tasten setzen
				for (var i = 0; i < t.length; i++) {
					var tmp = t[i];
					touches[tmp.identifier].left  = true
					touches[tmp.identifier].x = tmp.clientX - canvas.offsetLeft;
					touches[tmp.identifier].y = tmp.clientY - canvas.offsetTop;
				}
				break;
		}
	} else {
		globalSpeedX = 0;
		globalSpeedY = 0;
		
		for (var i = 0; i <touches.length;i++) {
			var touch = touches[i];
			touch.reallywheel = touch.wheel
			touch.wheel = 0;
			
			touch.speedx = (touch.x - touch.lastx);
			touch.speedy = (touch.y - touch.lasty);
			
			globalSpeedX += touch.speedx;
			globalSpeedY += touch.speedy;
			
			touch.lastX = touch.x;
			touch.lastY = touch.y;
			
			if (touch.left || touch.right || touch.middle) {
				anyMousePress = true;
			}
		}
	}
}


function MOUSEAXIS(info) {
	if (currentMouse >= 0 && currentMouse < touches.length) {} else {
		return;
	}
	var t = touches[currentMouse];
	switch(info) {
		case 0:
			return t.speedx;
		case 1:
			return t.speedy;
		case 2:
			return t.reallywheel;
		case 3:
			return t.left ? 1 : 0;
		case 4:
			return t.right ? 1 : 0;
		case 5:
			return t.middle ? 1 : 0;
	}
}

function SETACTIVEMOUSE(mouse) {
	currentMouse = mouse;
	if (mouse < 0 || mouse >= touches.length) throwError("Invalid mouse index '"+mouse+"' max: '"+touches.length+"'");
}

function GETMOUSECOUNT() {
	return touches.length;
}

function MOUSESTATE(x, y, ml, mr) {
	if (currentMouse >= 0 && currentMouse < touches.length) {} else {
		return;
	}
	var t = touches[currentMouse];
	x[0] 	= t.x
	y[0] 	= t.y;
	ml[0]	= t.left ? 1 : 0;
	mr[0]	= t.right ? 1 : 0;
}

function SYSTEMPOINTER(show) {
	if (show) {
		canvas.style.cursor = '';
	} else {
		canvas.style.cursor = 'none';
	}
}

function KEY(key) {
	key = glb2jsKeyCode(key);
	return keyInput[key] ? 1 : 0;
}

function glb2jsKeyCode(key) {
	switch(key) {
		case 14:
			return 8;
		case 15:
			return 9;
		case 28:
			return 13;
		case 42:
			return 16;
		case 29:
		case 157:
			return 17;
		case 56:
		case 29: //ALT GR
		case 184: //ALT GR
			return 18;
		case 197:
			return 19;
		case 58:
			return 20;
		case 1:
			return 27;
		case 201:
			return 33;
		case 57:
			return 32;
		case 209:
			return 34;
		case 207:
			return 35;
		case 178:
			return 36;
		case 203:
			return 37;
		case 200:
			return 38;
		case 205:
			return 39;
		case 208:
			return 40;
		case 183:
			return 44;
		case 210:
			return 45;
		case 211:
			return 46;
		case 11:
			return 48;
		case 2:
			return 49;
		case 3:
			return 50;
		case 4:
			return 51;
		case 5:
			return 52;
		case 6:
			return 53;
		case 7:
			return 54;
		case 8:
			return 55;
		case 9:
			return 56;
		case 10:
			return 57;
		case 30:
			return 65;
		case 48:
			return 66;
		case 46:
			return 67;
		case 32:
			return 68;
		case 18:
			return 69;
		case 33:
			return 70;
		case 34:
			return 71;
		case 35:
			return 72;
		case 23:
			return 73;
		case 36:
			return 74;
		case 37:
			return 75;
		case 38:
			return 76;
		case 50:
			return 77;
		case 49:
			return 78;
		case 24:
			return 79;
		case 25:
			return 80;
		case 16:
			return 81;
		case 19:
			return 82;
		case 31:
			return 83;
		case 20:
			return 84;
		case 22:
			return 85;
		case 47:
			return 86;
		case 17:
			return 87;
		case 45:
			return 88;
		case 44:
			return 89;
		case 21:
			return 90;
		case 219:
			return 91;
		case 220:
			return 92;
		//case KEY_SELECT = 93:
		//	return 93;
		case 82:
			return 96;
		case 79:
			return 97;
		case 80:
			return 98;
		case 81:
			return 99;
		case 75:
			return 100;
		case 76:
			return 101;
		case 77:
			return 102;
		case 71:
			return 103;
		case 72:
			return 104;
		case 73:
			return 105;
		case 55:
			return 106;
		case 78:
			return 107;
		case 74:
			return 109;
		case 83:
			return 110;
		case 181:
			return 111;
		case 59:
			return 112;
		case 60:
			return 113;
		case 61:
			return 114;
		case 62:
			return 115;
		case 63:
			return 116;
		case 64:
			return 117;
		case 65:
			return 118;
		case 66:
			return 119;
		case 67:
			return 120;
		case 68:
			return 121;
		case 87:
			return 122;
		case 88:
			return 123;
		case 69:
			return 144;
		case KEY_SCROLLLOCK= 145:
			return 70;
	}
}

function INKEY_Str() {
	var k = lastKey;
	lastKey = "";
	return k;
}

function ANYKEY() {
	return anyKeyPress ? 1 : 0;
}

function ANYMOUSE() {
	return anyMousePress ? 1 : 0;
}
//------------------------------------------------------------
//Basic classes (Sprite, Screen, etc)
//------------------------------------------------------------

var sprites		= []; 		//Alle Sprites im Array

/**
* @constructor
*/
function Sprite(img, num) {
	this.img = img;
	this.oimg = img;
	this.num = num;
	this.data = null;
	this.loaded = false;
	this.tint = null; //Hat es das tinting?
	
	this.frames = null;
	this.frameWidth = -1;
	this.frameHeight = -1;
}

function getSprite(num) {
	if (!!sprites[num]) {
		if (!sprites[num].loaded) throwError("Image not yet loaded '"+num+"'");
		return sprites[num];
	} else {
		throwError("Image not available '"+num+"'");
	}
}


//------------------------------------------------------------
// sprite loading
//------------------------------------------------------------

function LOADSPRITE(path, num) {
	var image = new Image();
	var spr = new Sprite(image, num);
	//existiert das bild im filesystem?

	image.onerror = function() {
		if (sprites[num]) {
			waitload--;
			sprites[num] = null;
			if (path != "" && path != "0") {
				throwError("Image '"+num+"' '"+path+"' not found!");
			}
		} //else => es wurde schon gel?scht
	};
	//nein, also lade es von der hdd
	image.onload = function () { 
		if (!spr.loaded) {
			waitload--;
			spr.loaded = true;
			
			updateFrames(num);
			
			//transparency rausl?schen
			try {
				if (typeof transCol != 'undefined' && !!transCol) {
					spr.img = removeTransparency(spr.oimg);
				}
			}  catch(ex) {
				//kann keine imagedata holen
				domExceptionError(ex);
			}
			//on sprite loaded rufen
			
		}
	}
	image.src = loadAsset(fileSystem.getCurrentDir() + path);
	
	register(spr);
	
	waitload++;
}


function SETSPRITEANIM(num, frmw, frmh) {
	var spr = sprites[num];
	if (!spr) throwError("Cannot SETSPRITEANIM to unloaded sprite '"+num+"'");
	spr.frames = null;
	if (frmw && frmh) {
		//animation!
		spr.frameWidth = frmw;
		spr.frameHeight = frmh;
	} else {
		spr.frameWidth = -1;
		spr.frameHeight = -1;
	}
	
	if (spr.loaded) {
		//direkt updaten!
		updateFrames(num);
	}
}

function updateFrames(num) {
	//nun die frames in das sprite
	var spr = getSprite(num);
	if (spr.frameWidth != -1 && spr.frameHeight != -1) {
		spr.frameWidth = MAX(MIN(spr.frameWidth, spr.img.width), 0);
		spr.frameHeight = MAX(MIN(spr.frameHeight, spr.img.height), 0);
		
		spr.frames = [];
		var i = 0;
		for (var y = 0; y < spr.img.height; y+= spr.frameHeight) {
			for (var x = 0; x < spr.img.width; x += spr.frameWidth) {
				spr.frames.push({posx: x, posy: y});
			}
		}
	}
}

function LOADANIM(path,num, width, height) {
	LOADSPRITE(path, num, width, height);
	SETSPRITEANIM(num, width, height);
}


function MEM2SPRITE(pixels, num, width, height) {
	var buf = document.createElement('canvas');
	buf.width = width;
	buf.height = height;
	var spr = new Sprite(buf, num);
	register(spr);
	spr.loaded = true;
	var scrn = new Screen(buf, -42);
	try {
		var isref = pixels.deval instanceof Array;
		var data = scrn.context.getImageData(0,0,width, height);
		for (var x = 0; x < width; x++) {
			for (var y = 0; y < height; y++) {
				var pos = x + y*width;
				var p = pixels.arrAccess(pos).values[tmpPositionCache];
				if (isref) p = p[0]; // Dereferenzieren, falls notwendig
				
				var a = (p & 0xFF000000)/0x1000000;
				var b = (p & 0xFF0000)/0x10000;
				var g = (p & 0xFF00)/0x100;
				var r =  p & 0xFF;
				if (a == -1) a = 255;
				
				pos *= 4;
				data[pos]   = r
				data[pos+1] = g
				data[pos+2] = b
				data[pos+3] = a
			}
		}
		scrn.context.putImageData(data, 0, 0);
	} catch(ex) {
		//kann keine imagedata holen
		return 0;
	}
	return 1;
}

function SPRITE2MEM(pixels, num) {
	var isref = pixels.deval instanceof Array;
	
	var spr = getSprite(num);
	if (isref)
		DIM(pixels, [spr.img.width*spr.img.height], [0]);
	else
		DIM(pixels, [spr.img.width*spr.img.height], 0);
	
	var width = spr.img.width, height = spr.img.height;
	var buf = document.createElement('canvas');
	buf.width = width;
	buf.height = height;
	
	var scrn = new Screen(buf, -42);
	scrn.context.drawImage(spr.img, 0, 0);
	
	//data modifizieren
	try {
		var imageData = scrn.context.getImageData(0, 0, width, height);
	
		for (var y = 0; y < height; y++) {
			var inpos = y * width * 4; // *4 for 4 ints per pixel
			for (var x = 0; x < width; x++) {
				var r = imageData.data[inpos++];
				var g = imageData.data[inpos++];
				var b = imageData.data[inpos++];
				var a = imageData.data[inpos++];
				var v = bOR(RGB(r,g,b), ASL(a, 24));
				if (isref)
					v = [v];
				pixels.arrAccess(x + y*width).values[tmpPositionCache] = v
			}
		}
	}  catch(ex) {
		//kann keine imagedata holen
		return 0;
	}
	
	return 1;
}

function LOADSPRITEMEM(file, w, h, pixels) {
	throwError("TODO: loadspritemem");
}


//------------------------------------------------------------
// poly functions
//------------------------------------------------------------

var inPoly = false;
var num, mode;
var polyStack = [];
var tmpPolyStack = new Array(3);

function ENDPOLY() {
	if (!inPoly) throwError("ENDPOLY has to be in STARTPOLY - ENDPOLY ");
	if (polyStack.length > 0) {
		//schlie?en!
		if (polyStack.length == 4) {
			POLYNEWSTRIP();
		} else {
			//Zeichnen
			if (mode == 1) {
				//context.save();
				//context.fillStyle = '#FF0000';
				if ((polyStack.length % 3) != 0) throwError("Polyvector cannot draw non power of 3 triangles");
				var spr = getSprite(num);
				for (var i = 0; i < polyStack.length; i+=3) {
					/*context.beginPath()
					context.moveTo(polyStack[i].x, polyStack[i].y)
					context.lineTo(polyStack[i+1].x, polyStack[i+1].y)
					context.lineTo(polyStack[i+2].x, polyStack[i+2].y)
					context.closePath()
					context.fill()*/
					tmpPolyStack[0] = polyStack[i];
					tmpPolyStack[1] = polyStack[i+1];
					tmpPolyStack[2] = polyStack[i+2];
					drawPolygon(false, simpletris, tmpPolyStack, spr); //TODO: plzTint Parameter
				}
				context.restore();
			}else {
				throwError("Missing ENDPOLY function.");
			}
		}
		polyStack.length = 0;
	}
	
	inPoly = false;
}

var simpletris = [[0, 1, 2]];
var tris2 = [[0, 1, 2], [2, 3, 1]];
var tris1 = [[0, 1, 2], [2, 3, 0]];

function POLYNEWSTRIP() {
	if (!inPoly) throwError("POLYNEWSTRIP has to be in STARTPOLY - ENDPOLY ");
	
	if (num == -1) {
		//use pure html5!
		context.fillStyle = formatColor(polyStack[0].col);
		context.beginPath();
		context.moveTo(0, 0);
		for (var i = 0; i <polyStack.length; i++) {
			context.lineTo(~~(polyStack[i].x+.5), ~~(polyStack[i].y+.5));
		}
		context.closePath();
		context.fill();
		polyStack.length=0;
	} else {
		//use the texture!
		//got code from: http://stackoverflow.com/questions/4774172/image-manipulation-and-texture-mapping-using-html5-canvas Thanks, you saved my life!!
		var tris
		if (mode == 2) {
			tris = tris2;
		} else if (mode == 1) {
			tris =  tris1;
		} else if (mode == 0){
			tris = tris1 //TODO;
		}else {
			throwError("Invalid drawing mode!")
		}
		
		var spr = getSprite(num);
		
		//muss das sprite gef?rbt werden?
		var plzTint;
		if (polyStack[0].col != whiteRGB && polyStack[1].col != whiteRGB && polyStack[2].col != whiteRGB  && polyStack[2].col != whiteRGB) {
			plzTint = true;
		} else {
			plzTint = false;
		}
		var tmpAlpha = context.globalAlpha;
		var tmpOperation = context.globalCompositeOperation;
		
		drawPolygon(plzTint, tris, polyStack, spr);
	}
	
	if (plzTint) {
		//Drawing mode wieder zur?cksetzen
		context.globalAlpha = tmpAlpha;
		context.globalCompositeOperation = tmpOperation;
	}
	
	polyStack.length = 0; //anstatt = []
}

function drawPolygon(plzTint, tris, polyStack, spr) {
	var pts = polyStack
	for (var t=0; t<tris.length; t++) {
		var pp = tris[t];
		var x0 = pts[pp[0]].x, x1 = pts[pp[1]].x, x2 = pts[pp[2]].x;
		var y0 = pts[pp[0]].y, y1 = pts[pp[1]].y, y2 = pts[pp[2]].y;
		var u0 = pts[pp[0]].u, u1 = pts[pp[1]].u, u2 = pts[pp[2]].u;
		var v0 = pts[pp[0]].v, v1 = pts[pp[1]].v, v2 = pts[pp[2]].v;

		// Set clipping area so that only pixels inside the triangle will
		// be affected by the image drawing operation
		context.save(); context.beginPath(); context.moveTo(x0, y0); context.lineTo(x1, y1);
		context.lineTo(x2, y2); context.closePath(); context.clip();

		// Compute matrix transform
		var delta = u0*v1 + v0*u2 + u1*v2 - v1*u2 - v0*u1 - u0*v2;
		var delta_a = x0*v1 + v0*x2 + x1*v2 - v1*x2 - v0*x1 - x0*v2;
		var delta_b = u0*x1 + x0*u2 + u1*x2 - x1*u2 - x0*u1 - u0*x2;
		var delta_c = u0*v1*x2 + v0*x1*u2 + x0*u1*v2 - x0*v1*u2
					  - v0*u1*x2 - u0*x1*v2;
		var delta_d = y0*v1 + v0*y2 + y1*v2 - v1*y2 - v0*y1 - y0*v2;
		var delta_e = u0*y1 + y0*u2 + u1*y2 - y1*u2 - y0*u1 - u0*y2;
		var delta_f = u0*v1*y2 + v0*y1*u2 + y0*u1*v2 - y0*v1*u2
					  - v0*u1*y2 - u0*y1*v2;

		// Draw the transformed image
		context.transform(delta_a/delta, delta_d/delta,
					  delta_b/delta, delta_e/delta,
					  delta_c/delta, delta_f/delta);
		
		if (plzTint) {
			//schauen ob alle gleiche Farbe haben
			if (polyStack[0].col == polyStack[1].col && polyStack[1].col == polyStack[2].col && (polyStacj.length > 2 && polyStack[2].col == polyStack[3].col)) {
				if (!spr.tint) {
				//Hat noch nicht die Tinting Farbchannel
					try {
						//farbkan?le holen!
						spr.tint = generateRGBKs(spr.img);
					} catch (ex) {
						domExceptionError(ex);
					}
				}
				if (spr.tint) {
					//selbe farbe \o/
					
					var red = (polyStack[t].col & 0xFF0000)/0x10000 
					var green = (polyStack[t].col & 0xFF00)/0x100 
					var blue = polyStack[t].col & 0xFF 
					
					context.globalAlpha = 1;
					context.globalCompositeOperation = 'copy';
					context.drawImage( spr.tint[3], 0, 0 );

					context.globalCompositeOperation = 'lighter';
					if ( red > 0 ) {
						context.globalAlpha = red   / 255.0;
						context.drawImage( spr.tint[0], 0, 0 );
					}
					if ( green > 0 ) {
						context.globalAlpha = green / 255.0;
						context.drawImage( spr.tint[1], 0, 0 );
					}
					if ( blue > 0 ) {
						context.globalAlpha = blue  / 255.0;
						context.drawImage( spr.tint[2], 0, 0 );
					}
					
					
				} else {
					//Kann nicht tinten...
				}
			} else {
				//Die Farbe ist ein Farbverlauf!
				//Das kann ich noch nicht...
			}
		} else {
			context.drawImage(spr.img, 0, 0);
		}
		context.restore();
	}
}

function POLYVECTOR(posx, posy, tx, ty, color) {
	if (!inPoly) throwError("POLYVECTOR has to be in STARTPOLY - ENDPODRAWANIMLY ");
	
	if (polyStack[polyStack.length]) {
		//existiert bereits!
		polyStack[polyStack.length].x = posx;
		polyStack[polyStack.length].y = posy;
		polyStack[polyStack.length].u = tx;
		polyStack[polyStack.length].v = ty;
		polyStack[polyStack.length].col = color;
		polyStack.length++;
	} else {
		//existiert noch nicht!
		polyStack.push({
			x: posx, y: posy, u: tx, v: ty, col: color
		});
	}
}

function STARTPOLY(n, m) {
	if (inPoly) throwError("STARTPOLY has not to be in STARTPOLY - ENDPOLY ");
	inPoly = true;
	polyStack.length = 0;
	num = n;
	mode = m;
}

//------------------------------------------------------------
//Sprite Rendering
//------------------------------------------------------------

function GENSPRITE() {
	for (var i = 0; i < sprites.length; i++) {
		if (!sprites[i]) return i;
	}
	return sprites.length;
}

function DRAWSPRITE(num, x, y) {
	var spr = getSprite(num);
	context.drawImage(spr.img, ~~(x+.5), ~~(y+.5));
}

function ROTOSPRITE(num, x, y, phi) {
	if ((phi%360) == 0) {
		DRAWSPRITE(num, x, y);
	} else {
		context.save();
		context.translate(x, y);
		context.rotate(phi * Math.PI / 180); //convert into RAD
		var spr = getSprite(num);
		DRAWSPRITE(num, -spr.img.width/2, -spr.img.height/2);
		context.restore();
	}
}

function ZOOMSPRITE(num, x, y, sx, sy) {
	if (sx == 1 && sy == 1) {
		DRAWSPRITE(num, x, y);
	} else if (sx != 0 && sy != 0){
		context.save();
		context.translate(x, y);
		context.scale(sx, sy);
		DRAWSPRITE(num, 0, 0);
		context.restore();
	}
}

function STRETCHSPRITE(num,  x, y, width, height) {
	var spr = getSprite(num);
	if (width != 0 && height != 0) {
		context.save();
		var sx = width/spr.img.width, sy = height/spr.img.height;
		context.translate(x, y);
		context.scale(sx, sy);
		DRAWSPRITE(num, 0, 0);
		//context.drawImage(spr.img, CAST2INT(x), CAST2INT(y), CAST2INT(width), CAST2INT(height));
		context.restore();
	}
}

function ROTOZOOMSPRITE(num, x, y,phi, scale) {
	context.save();
	context.translate(x, y)
	context.scale(scale, scale);
	ROTOSPRITE(num, 0, 0, phi);
	context.restore();
}

function DRAWANIM(num, frame, x, y) {
	var spr = getSprite(num);
	if (spr.frames == null) throwError("DRAWANIM can only draw an animation!");
	frame = frame % spr.frames.length;
	if (frame < 0) throwError("Invalid frame '"+frame+"'");
	context.drawImage(spr.img, ~~(spr.frames[frame].posx+.5), ~~(spr.frames[frame].posy+.5), spr.frameWidth, spr.frameHeight, CAST2INT(x), CAST2INT(y), spr.frameWidth, spr.frameHeight);
}

function ROTOZOOMANIM(num, frame, x, y,phi, scale) {
	context.save();
	context.translate(x, y)
	context.scale(scale, scale);
	ROTOANIM(num, frame, 0, 0, phi);
	context.restore();
}

function ROTOANIM(num, frame, x, y, phi) {
	if ((phi%360) == 0) {
		DRAWANIM(num, frame, x, y);
	} else {
		context.save();
		context.translate(x, y);
		context.rotate(phi * Math.PI / 180); //convert into RAD
		var spr = getSprite(num);
		DRAWSPRITE(num, -spr.img.width/2, -spr.img.height/2);
		context.restore();
	}
}

function ZOOMANIM(num,frame, x, y, sx, sy) {
	if (sx == 1 && sy == 1) {
		DRAWANIM(num,frame, x, y);
	} else if (sx != 0 && sy != 0){
		context.save();
		context.translate(x, y);
		context.scale(sx, sy);
		DRAWANIM(num,frame, 0, 0);
		context.restore();
	}
}

function STRETCHANIM(num,frame,  x, y, width, height) {
	var spr = getSprite(num);
	if (width != 0 && height != 0) {
		context.save();
		var sx = width/spr.img.frameWidth, sy = height/spr.img.frameHeight;
		context.translate(x, y);
		context.scale(sx, sy);
		DRAWANIM(num,frame, 0, 0);
		context.restore();
	}
}

function GRABSPRITE(num, x, y, width, height) {
	if (width < 1 || height < 1) throwError("Invalid width/height!");
	try {
		var data = context.getImageData(x, y, width, height);
		
		var canvas = document.createElement('canvas');
		canvas.width = width;
		canvas.height = height;
		var ctxt = canvas.getContext("2d");
		ctxt.putImageData(data, 0, 0);
		
		var spr = new Sprite(canvas, num);
		spr.loaded = true;
		register(spr);
	}  catch(ex) {
		//kann keine imagedata holen
		domExceptionError(ex);
	}
}
//------------------------------------------------------------
//collision
//------------------------------------------------------------

function SPRCOLL(spr1, x1, y1, spr2, x2, y2) {
	//throwError("TODO: sprcoll");
	var s1, s2;
	s1 = getSprite(spr1);
	s2 = getSprite(spr2);
	
	
	if (!s1.data || !s2.data) {
		var getMyData = function(s) {
			//oha get the data!
			try {
				var canvas = document.createElement('canvas');
				canvas.width = s.img.width;
				canvas.height = s.img.height;
				var context = canvas.getContext("2d");
				
				context.drawImage(s.img, 0, 0);
				s.data = context.getImageData(0, 0, canvas.width, canvas.height);
			} catch (ex) {
				domExceptionError(ex);
			}
		}
		
		if (s1.data == null) {
			getMyData(s1);
		}
		if (s2.data == null) {
			getMyData(s2);
		}
	}
	
	return isPixelCollision(s1.data, x1, y1, s2.data, x2, y2) ? 1 : 0;
}

function ANIMCOLL(ani1, tile, x1, y1, ani2, time2, x2, y2) {
	throwError("TODO: animcoll");
}

//Thanks Joseph for these two useful functions!
/**
 * @author Joseph Lenton - PlayMyCode.com
 *
 * @param first An ImageData object from the first image we are colliding with.
 * @param x The x location of 'first'.
 * @param y The y location of 'first'.
 * @param other An ImageData object from the second image involved in the collision check.
 * @param x2 The x location of 'other'.
 * @param y2 The y location of 'other'.
 * @param isCentred True if the locations refer to the centre of 'first' and 'other', false to specify the top left corner.
 */
function isPixelCollision( first, x, y, other, x2, y2 ) {
	var isCentred = false;
	
    // we need to avoid using floats, as were doing array lookups
    x  = Math.round( x );
    y  = Math.round( y );
    x2 = Math.round( x2 );
    y2 = Math.round( y2 );

    var w  = first.width,
        h  = first.height,
        w2 = other.width,
        h2 = other.height ;

    // deal with the image being centred
    if ( isCentred ) {
        // fast rounding, but positive only
        x  -= ( w/2 + 0.5) << 0
        y  -= ( h/2 + 0.5) << 0
        x2 -= (w2/2 + 0.5) << 0
        y2 -= (h2/2 + 0.5) << 0
    }

    // find the top left and bottom right corners of overlapping area
    var xMin = Math.max( x, x2 ),
        yMin = Math.max( y, y2 ),
        xMax = Math.min( x+w, x2+w2 ),
        yMax = Math.min( y+h, y2+h2 );

    // Sanity collision check, we ensure that the top-left corner is both
    // above and to the left of the bottom-right corner.
    if ( xMin >= xMax || yMin >= yMax ) {
        return false;
    }

    var xDiff = xMax - xMin,
        yDiff = yMax - yMin;

    // get the pixels out from the images
    var pixels  = first.data,
        pixels2 = other.data;

    // if the area is really small,
    // then just perform a normal image collision check
    if ( xDiff < 4 && yDiff < 4 ) {
        for ( var pixelX = xMin; pixelX < xMax; pixelX++ ) {
            for ( var pixelY = yMin; pixelY < yMax; pixelY++ ) {
                if (
                        ( pixels [ ((pixelX-x ) + (pixelY-y )*w )*4 + 3 ] !== 0 ) &&
                        ( pixels2[ ((pixelX-x2) + (pixelY-y2)*w2)*4 + 3 ] !== 0 )
                ) {
                    return true;
                }
            }
        }
    } else {
        var incX = xDiff / 3.0,
            incY = yDiff / 3.0;
        incX = (~~incX === incX) ? incX : (incX+1 | 0);
        incY = (~~incY === incY) ? incY : (incY+1 | 0);

        for ( var offsetY = 0; offsetY < incY; offsetY++ ) {
            for ( var offsetX = 0; offsetX < incX; offsetX++ ) {
                for ( var pixelY = yMin+offsetY; pixelY < yMax; pixelY += incY ) {
                    for ( var pixelX = xMin+offsetX; pixelX < xMax; pixelX += incX ) {
                        if (
                                ( pixels [ ((pixelX-x ) + (pixelY-y )*w )*4 + 3 ] !== 0 ) &&
                                ( pixels2[ ((pixelX-x2) + (pixelY-y2)*w2)*4 + 3 ] !== 0 )
                        ) {
                            return true;
                        }
                    }
                }
            }
        }
    }

    return false;
}

/**
 * @author Joseph Lenton - PlayMyCode.com
 *
 * @param img the image with tinting
 */
function generateRGBKs( img ) {
	var w = img.width;
	var h = img.height;
	var rgbks = [];

	var canvas = document.createElement("canvas");
	canvas.width = w;
	canvas.height = h;

	var ctx = canvas.getContext("2d");
	ctx.drawImage( img, 0, 0 );

	var pixels = ctx.getImageData( 0, 0, w, h ).data;

	// 4 is used to ask for 3 images: red, green, blue and
	// black in that order.
	for ( var rgbI = 0; rgbI < 4; rgbI++ ) {
		var canvas = document.createElement("canvas");
		canvas.width  = w;
		canvas.height = h;

		var ctx = canvas.getContext('2d');
		ctx.drawImage( img, 0, 0 );
		var to = ctx.getImageData( 0, 0, w, h );
		var toData = to.data;

		for (
				var i = 0, len = pixels.length;
				i < len;
				i += 4
		) {
			toData[i  ] = (rgbI === 0) ? pixels[i  ] : 0;
			toData[i+1] = (rgbI === 1) ? pixels[i+1] : 0;
			toData[i+2] = (rgbI === 2) ? pixels[i+2] : 0;
			toData[i+3] =                pixels[i+3]    ;
		}

		ctx.putImageData( to, 0, 0 );

		// image is _slightly_ faster then canvas for this, so convert
		var imgComp = new Image();
		imgComp.src = canvas.toDataURL();

		rgbks.push( imgComp );
	}

	return rgbks;
}

function BOXCOLL(x1,y1,breite1,hoehe1,x2,y2,breite2,hoehe2) {
    if (x1<=(x2+breite2) && y1<=y2+hoehe2 && (x1+breite1) >=x2 && (y1+hoehe1)>= y2) return 1; else return 0; 
}
//------------------------------------------------------------
// Screens
//------------------------------------------------------------


var screens		= [];		//Alle Screens

/**
 * @constructor
 */
function Screen(buffer, num, sprid) {
	this.canvas = buffer;
	this.context = buffer.getContext('2d');
	this.realwidth = this.canvas.width;
	this.realheight = this.canvas.height;
	this.realx = this.canvas.offsetLeft;
	this.realy = this.canvas.offsetRight;
	this.num = num + 2;
	this.spr = sprid;
	
	if (this.context == null) throwError("Given buffer does not support '2d'");
}

function CREATESCREEN(scrid, sprid, width, height) {
	var buffer = document.createElement('canvas');
    buffer.width = width;
    buffer.height = height;
	
	register(new Screen(buffer, scrid, sprid));
	var spr = new Sprite(buffer, sprid);
	register(spr);
	spr.loaded = true; //es ist bereits geladen...
}

function USESCREEN(id) {
	var oScreen = curScreen;
	if (oScreen && oScreen.spr) {
		//die pixel und tint daten raushauen
		getSprite(oScreen.spr).data = null;
		getSprite(oScreen.spr).tint = null;
	}
	curScreen = screens[id + 2];
	if (!curScreen) {
		curScreen = oScreen;
	} else {
		context = curScreen.context;
		canvas = curScreen.canvas;
	}
}

function BLENDSCREEN(file, duration) {
	throwError("TODO: blendscreen");
}

function CLEARSCREEN(col) {
	context.save();
	context.fillStyle = formatColor(col);
	context.fillRect(0,0,canvas.width, canvas.height);
	clrColor = col;
	context.restore();
}

function BLACKSCREEN() {
	CLEARSCREEN(RGB(0,0,0));
}

function USEASBMP() {
	background = backbuffer.canvas;
	var buffer = document.createElement('canvas');
    buffer.width = canvasWidth;
    buffer.height = canvasHeight;
	backbuffer = new Screen(buffer, -1);
	register(backbuffer);
	USESCREEN(-1);
}

function LOADBMP(path) {
	var image = new Image();
	
	image.onload = function () {
		background = image;
	}
	image.onerror = function() {
		//fehler
		throwError("BMP '"+path+"' not found!");
	}
	image.src = loadAsset(fileSystem.getCurrentDir() + path);
	
}
var __debugInfo = "";
var debugMode = true;
window['main'] = function(){
	stackPush("main", __debugInfo);
	try {
		var local3_map_1266 = new type8_TGameMap(), local6_Player_1267 = new type7_TPlayer();
		__debugInfo = "9:\BugFight.gbas";
		SETTRANSPARENCY(0);
		__debugInfo = "11:\BugFight.gbas";
		SETCURRENTDIR("Media");
		__debugInfo = "187:\BugFight.gbas";
		(local3_map_1266).Load("map.png");
		__debugInfo = "190:\BugFight.gbas";
		(local6_Player_1267).SetPosition(40, 40);
		__debugInfo = "192:\BugFight.gbas";
		(local6_Player_1267).Init();
		__debugInfo = "194:\BugFight.gbas";
		global3_Spr = GENSPRITE();
		__debugInfo = "195:\BugFight.gbas";
		LOADSPRITE("bg.png", global3_Spr);
		__debugInfo = "9:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
}
window['method18_type11_TGameObject_6_Update'] = function(param4_self) {
	stackPush("method: Update", __debugInfo);
	try {
		
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method18_type11_TGameObject_6_Render'] = function(param4_self) {
	stackPush("method: Render", __debugInfo);
	try {
		
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method18_type11_TGameObject_4_Init'] = function(param4_self) {
	stackPush("method: Init", __debugInfo);
	try {
		var local4_self_ref_1271 = [param4_self]; /* NEWCODEHERE */
		__debugInfo = "22:\BugFight.gbas";
		DIMPUSH(global7_Objects_ref[0], local4_self_ref_1271);
		__debugInfo = "23:\BugFight.gbas";
		return 0;
		__debugInfo = "22:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method18_type11_TGameObject_11_SetPosition'] = function(param1_X, param1_Y, param4_self) {
	stackPush("method: SetPosition", __debugInfo);
	try {
		__debugInfo = "26:\BugFight.gbas";
		param4_self.attr9_PositionX = param1_X;
		__debugInfo = "27:\BugFight.gbas";
		param4_self.attr9_PositionY = param1_Y;
		__debugInfo = "28:\BugFight.gbas";
		return 0;
		__debugInfo = "26:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method14_type8_TGameMap_4_Load'] = function(param8_Path_Str, param4_self) {
	stackPush("method: Load", __debugInfo);
	try {
		__debugInfo = "39:\BugFight.gbas";
		param4_self.attr8_ScreenID = 0;
		__debugInfo = "40:\BugFight.gbas";
		param4_self.attr5_SprID = func7_LoadSpr(param8_Path_Str);
		__debugInfo = "41:\BugFight.gbas";
		DIM(param4_self.attr7_ImgData, [0], 0);
		__debugInfo = "42:\BugFight.gbas";
		(param4_self).Init();
		__debugInfo = "43:\BugFight.gbas";
		return 0;
		__debugInfo = "39:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method14_type8_TGameMap_6_Update'] = function(param4_self) {
	stackPush("method: Update", __debugInfo);
	try {
		__debugInfo = "70:\BugFight.gbas";
		if ((((BOUNDS(param4_self.attr7_ImgData, 0)) == (0)) ? 1 : 0)) {
			var local6_NewSpr_1284 = 0;
			__debugInfo = "48:\BugFight.gbas";
			if (((SPRITE2MEM(unref(param4_self.attr7_ImgData), param4_self.attr5_SprID)) ? 0 : 1)) {
				__debugInfo = "48:\BugFight.gbas";
				throw new GLBException("Failed to get imagedata", "\BugFight.gbas", 48);
				__debugInfo = "48:\BugFight.gbas";
			};
			__debugInfo = "50:\BugFight.gbas";
			GETSPRITESIZE(param4_self.attr5_SprID, param4_self.attr5_Width_ref, param4_self.attr6_Height_ref);
			__debugInfo = "50:\BugFight.gbas";
			{
				var local1_x_1281 = 0.0;
				__debugInfo = "61:\BugFight.gbas";
				for (local1_x_1281 = 0;untilCheck(local1_x_1281, param4_self.attr5_Width_ref[0], 1);local1_x_1281 += 1) {
					__debugInfo = "51:\BugFight.gbas";
					{
						var local1_y_1282 = 0.0;
						__debugInfo = "60:\BugFight.gbas";
						for (local1_y_1282 = 0;untilCheck(local1_y_1282, param4_self.attr6_Height_ref[0], 1);local1_y_1282 += 1) {
							var local1_a_1283 = 0.0;
							__debugInfo = "53:\BugFight.gbas";
							local1_a_1283 = bAND(ASR(param4_self.attr7_ImgData.arrAccess(~~(((local1_x_1281) + (((local1_y_1282) * (param4_self.attr5_Width_ref[0])))))).values[tmpPositionCache], 24), 255);
							__debugInfo = "59:\BugFight.gbas";
							if ((((local1_a_1283) > (64)) ? 1 : 0)) {
								__debugInfo = "56:\BugFight.gbas";
								param4_self.attr7_ImgData.arrAccess(~~(((local1_x_1281) + (((local1_y_1282) * (param4_self.attr5_Width_ref[0])))))).values[tmpPositionCache] = 1;
								__debugInfo = "56:\BugFight.gbas";
							} else {
								__debugInfo = "58:\BugFight.gbas";
								param4_self.attr7_ImgData.arrAccess(~~(((local1_x_1281) + (((local1_y_1282) * (param4_self.attr5_Width_ref[0])))))).values[tmpPositionCache] = 0;
								__debugInfo = "58:\BugFight.gbas";
							};
							__debugInfo = "53:\BugFight.gbas";
						};
						__debugInfo = "60:\BugFight.gbas";
					};
					__debugInfo = "51:\BugFight.gbas";
				};
				__debugInfo = "61:\BugFight.gbas";
			};
			__debugInfo = "63:\BugFight.gbas";
			local6_NewSpr_1284 = GENSPRITE();
			__debugInfo = "64:\BugFight.gbas";
			CREATESCREEN(param4_self.attr8_ScreenID, local6_NewSpr_1284, unref(~~(param4_self.attr5_Width_ref[0])), unref(~~(param4_self.attr6_Height_ref[0])));
			__debugInfo = "65:\BugFight.gbas";
			USESCREEN(param4_self.attr8_ScreenID);
			__debugInfo = "66:\BugFight.gbas";
			DRAWSPRITE(param4_self.attr5_SprID, 0, 0);
			__debugInfo = "67:\BugFight.gbas";
			USESCREEN(-(1));
			__debugInfo = "68:\BugFight.gbas";
			LOADSPRITE(CAST2STRING(param4_self.attr5_SprID), INT2STR(""));
			__debugInfo = "69:\BugFight.gbas";
			param4_self.attr5_SprID = local6_NewSpr_1284;
			__debugInfo = "48:\BugFight.gbas";
		};
		__debugInfo = "71:\BugFight.gbas";
		return 0;
		__debugInfo = "70:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method14_type8_TGameMap_6_Render'] = function(param4_self) {
	stackPush("method: Render", __debugInfo);
	try {
		__debugInfo = "74:\BugFight.gbas";
		DRAWSPRITE(param4_self.attr5_SprID, param4_self.attr9_PositionX, param4_self.attr9_PositionY);
		__debugInfo = "75:\BugFight.gbas";
		return 0;
		__debugInfo = "74:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method14_type8_TGameMap_14_CheckCollision'] = function(param1_X, param1_Y, param4_self) {
	stackPush("method: CheckCollision", __debugInfo);
	try {
		var local3_pos_1291 = 0;
		__debugInfo = "78:\BugFight.gbas";
		local3_pos_1291 = ~~(((param1_X) + (((param1_Y) * (param4_self.attr5_Width_ref[0])))));
		__debugInfo = "83:\BugFight.gbas";
		if ((((((((((local3_pos_1291) > (BOUNDS(param4_self.attr7_ImgData, 0))) ? 1 : 0)) || ((((param1_X) < (0)) ? 1 : 0))) ? 1 : 0)) || ((((param1_Y) < (0)) ? 1 : 0))) ? 1 : 0)) {
			__debugInfo = "80:\BugFight.gbas";
			return tryClone(0);
			__debugInfo = "80:\BugFight.gbas";
		} else {
			__debugInfo = "82:\BugFight.gbas";
			return tryClone(param4_self.attr7_ImgData.arrAccess(local3_pos_1291).values[tmpPositionCache]);
			__debugInfo = "82:\BugFight.gbas";
		};
		__debugInfo = "84:\BugFight.gbas";
		return 0;
		__debugInfo = "78:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method14_type8_TGameMap_10_RemoveRect'] = function(param1_x, param1_y, param1_w, param1_h, param3_col, param4_self) {
	stackPush("method: RemoveRect", __debugInfo);
	try {
		var local2_dy_1299 = 0.0, local2_xi_1300 = 0.0;
		__debugInfo = "87:\BugFight.gbas";
		USESCREEN(param4_self.attr8_ScreenID);
		__debugInfo = "90:\BugFight.gbas";
		param1_w = CAST2INT(((param1_w) / (2)));
		__debugInfo = "91:\BugFight.gbas";
		param1_h = CAST2INT(((param1_h) / (2)));
		__debugInfo = "92:\BugFight.gbas";
		param1_x = ((param1_x) + (param1_w));
		__debugInfo = "92:\BugFight.gbas";
		{
			__debugInfo = "102:\BugFight.gbas";
			for (local2_dy_1299 = -(param1_h);toCheck(local2_dy_1299, param1_h, 1);local2_dy_1299 += 1) {
				var local2_yy_1301 = 0.0;
				__debugInfo = "94:\BugFight.gbas";
				local2_xi_1300 = ((CAST2INT(((param1_w) / (param1_h)))) * (SQR(((((param1_h) * (param1_h))) - (((local2_dy_1299) * (local2_dy_1299)))))));
				__debugInfo = "95:\BugFight.gbas";
				DRAWRECT(((param1_x) - (local2_xi_1300)), ((((param1_y) + (local2_dy_1299))) + (param1_h)), ((local2_xi_1300) + (local2_xi_1300)), 1, param3_col);
				__debugInfo = "96:\BugFight.gbas";
				local2_yy_1301 = ((((param1_y) + (local2_dy_1299))) + (param1_h));
				__debugInfo = "96:\BugFight.gbas";
				{
					var local2_xx_1302 = 0.0;
					__debugInfo = "101:\BugFight.gbas";
					for (local2_xx_1302 = ((param1_x) - (local2_xi_1300));toCheck(local2_xx_1302, ((param1_x) + (local2_xi_1300)), 1);local2_xx_1302 += 1) {
						__debugInfo = "100:\BugFight.gbas";
						if (((((((((((((local2_xx_1302) >= (0)) ? 1 : 0)) && ((((local2_yy_1301) >= (0)) ? 1 : 0))) ? 1 : 0)) && ((((local2_xx_1302) < (param4_self.attr5_Width_ref[0])) ? 1 : 0))) ? 1 : 0)) && ((((local2_yy_1301) < (param4_self.attr6_Height_ref[0])) ? 1 : 0))) ? 1 : 0)) {
							__debugInfo = "99:\BugFight.gbas";
							param4_self.attr7_ImgData.arrAccess(~~(((local2_xx_1302) + (((local2_yy_1301) * (param4_self.attr5_Width_ref[0])))))).values[tmpPositionCache] = param3_col;
							__debugInfo = "99:\BugFight.gbas";
						};
						__debugInfo = "100:\BugFight.gbas";
					};
					__debugInfo = "101:\BugFight.gbas";
				};
				__debugInfo = "94:\BugFight.gbas";
			};
			__debugInfo = "102:\BugFight.gbas";
		};
		__debugInfo = "103:\BugFight.gbas";
		USESCREEN(-(1));
		__debugInfo = "104:\BugFight.gbas";
		return 0;
		__debugInfo = "87:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method21_type14_TCollisionable_6_Update'] = function(param4_self) {
	stackPush("method: Update", __debugInfo);
	try {
		var local4_PosY_1305 = 0.0, local4_PosX_1306 = 0.0;
		__debugInfo = "115:\BugFight.gbas";
		method18_type11_TGameObject_6_Update(param4_self);
		__debugInfo = "117:\BugFight.gbas";
		param4_self.attr2_VY+=0.5;
		__debugInfo = "119:\BugFight.gbas";
		param4_self.attr2_VX = ((param4_self.attr2_VX) * (0.8));
		__debugInfo = "120:\BugFight.gbas";
		param4_self.attr2_VY = ((param4_self.attr2_VY) * (0.99));
		__debugInfo = "124:\BugFight.gbas";
		local4_PosY_1305 = param4_self.attr9_PositionY;
		__debugInfo = "126:\BugFight.gbas";
		param4_self.attr9_PositionY+=param4_self.attr2_VY;
		__debugInfo = "130:\BugFight.gbas";
		if ((param4_self).IsCollision()) {
			__debugInfo = "128:\BugFight.gbas";
			param4_self.attr2_VY = 0;
			__debugInfo = "129:\BugFight.gbas";
			param4_self.attr9_PositionY = local4_PosY_1305;
			__debugInfo = "128:\BugFight.gbas";
		};
		__debugInfo = "133:\BugFight.gbas";
		local4_PosX_1306 = param4_self.attr9_PositionX;
		__debugInfo = "135:\BugFight.gbas";
		param4_self.attr9_PositionX+=param4_self.attr2_VX;
		__debugInfo = "149:\BugFight.gbas";
		if ((param4_self).IsCollision()) {
			var local1_i_1307 = 0, local5_Found_1308 = 0;
			__debugInfo = "137:\BugFight.gbas";
			local1_i_1307 = 8;
			__debugInfo = "138:\BugFight.gbas";
			local5_Found_1308 = 0;
			__debugInfo = "143:\BugFight.gbas";
			while ((((((((((local1_i_1307) > (0)) ? 1 : 0)) && ((param4_self).IsCollision())) ? 1 : 0)) && (((local5_Found_1308) ? 0 : 1))) ? 1 : 0)) {
				__debugInfo = "140:\BugFight.gbas";
				param4_self.attr9_PositionY+=-(1);
				__debugInfo = "141:\BugFight.gbas";
				if ((((param4_self).IsCollision()) ? 0 : 1)) {
					__debugInfo = "141:\BugFight.gbas";
					local5_Found_1308 = 1;
					__debugInfo = "141:\BugFight.gbas";
				};
				__debugInfo = "142:\BugFight.gbas";
				local1_i_1307+=-(1);
				__debugInfo = "140:\BugFight.gbas";
			};
			__debugInfo = "148:\BugFight.gbas";
			if (((local5_Found_1308) ? 0 : 1)) {
				__debugInfo = "145:\BugFight.gbas";
				param4_self.attr9_PositionX = local4_PosX_1306;
				__debugInfo = "146:\BugFight.gbas";
				param4_self.attr9_PositionY = local4_PosY_1305;
				__debugInfo = "147:\BugFight.gbas";
				param4_self.attr2_VX = 0;
				__debugInfo = "145:\BugFight.gbas";
			};
			__debugInfo = "137:\BugFight.gbas";
		};
		__debugInfo = "151:\BugFight.gbas";
		return 0;
		__debugInfo = "115:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method21_type14_TCollisionable_11_IsCollision'] = function(param4_self) {
	stackPush("method: IsCollision", __debugInfo);
	try {
		var alias3_map_ref_1311 = [new type8_TGameMap()];
		__debugInfo = "154:\BugFight.gbas";
		alias3_map_ref_1311 = castobj(global7_Objects_ref[0].arrAccess(0).values[tmpPositionCache], type8_TGameMap) /* ALIAS */;
		__debugInfo = "155:\BugFight.gbas";
		{
			var local1_x_1312 = 0.0;
			__debugInfo = "158:\BugFight.gbas";
			for (local1_x_1312 = param4_self.attr9_PositionX;toCheck(local1_x_1312, ((param4_self.attr9_PositionX) + (param4_self.attr5_Width)), 1);local1_x_1312 += 1) {
				__debugInfo = "157:\BugFight.gbas";
				if (((((alias3_map_ref_1311[0]).CheckCollision(~~(local1_x_1312), ~~(param4_self.attr9_PositionY))) || ((alias3_map_ref_1311[0]).CheckCollision(~~(local1_x_1312), ~~(((param4_self.attr9_PositionY) + (param4_self.attr6_Height)))))) ? 1 : 0)) {
					__debugInfo = "157:\BugFight.gbas";
					return 1;
					__debugInfo = "157:\BugFight.gbas";
				};
				__debugInfo = "157:\BugFight.gbas";
			};
			__debugInfo = "158:\BugFight.gbas";
		};
		__debugInfo = "158:\BugFight.gbas";
		{
			var local1_y_1313 = 0.0;
			__debugInfo = "161:\BugFight.gbas";
			for (local1_y_1313 = param4_self.attr9_PositionY;toCheck(local1_y_1313, ((param4_self.attr9_PositionY) + (param4_self.attr6_Height)), 1);local1_y_1313 += 1) {
				__debugInfo = "160:\BugFight.gbas";
				if (((((alias3_map_ref_1311[0]).CheckCollision(~~(param4_self.attr9_PositionX), ~~(local1_y_1313))) || ((alias3_map_ref_1311[0]).CheckCollision(~~(((param4_self.attr9_PositionX) + (param4_self.attr5_Width))), ~~(local1_y_1313)))) ? 1 : 0)) {
					__debugInfo = "160:\BugFight.gbas";
					return 1;
					__debugInfo = "160:\BugFight.gbas";
				};
				__debugInfo = "160:\BugFight.gbas";
			};
			__debugInfo = "161:\BugFight.gbas";
		};
		__debugInfo = "162:\BugFight.gbas";
		return tryClone(0);
		__debugInfo = "163:\BugFight.gbas";
		return 0;
		__debugInfo = "154:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method13_type7_TPlayer_6_Update'] = function(param4_self) {
	stackPush("method: Update", __debugInfo);
	try {
		__debugInfo = "169:\BugFight.gbas";
		method21_type14_TCollisionable_6_Update(param4_self);
		__debugInfo = "171:\BugFight.gbas";
		param4_self.attr2_VX+=((-(((KEY(203)) - (KEY(205))))) * (0.75));
		__debugInfo = "173:\BugFight.gbas";
		param4_self.attr9_PositionY+=4;
		__debugInfo = "176:\BugFight.gbas";
		if ((((KEY(57)) && ((param4_self).IsCollision())) ? 1 : 0)) {
			__debugInfo = "175:\BugFight.gbas";
			param4_self.attr2_VY = -(10);
			__debugInfo = "175:\BugFight.gbas";
		};
		__debugInfo = "177:\BugFight.gbas";
		param4_self.attr9_PositionY+=-(4);
		__debugInfo = "178:\BugFight.gbas";
		return 0;
		__debugInfo = "169:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method13_type7_TPlayer_6_Render'] = function(param4_self) {
	stackPush("method: Render", __debugInfo);
	try {
		__debugInfo = "181:\BugFight.gbas";
		PRINT((((((("PosX: ") + (CAST2STRING(INTEGER(param4_self.attr9_PositionX))))) + (" PosY: "))) + (CAST2STRING(INTEGER(param4_self.attr9_PositionY)))), 10, 10, 1);
		__debugInfo = "182:\BugFight.gbas";
		DRAWRECT(param4_self.attr9_PositionX, param4_self.attr9_PositionY, param4_self.attr5_Width, param4_self.attr6_Height, RGB(255, 0, 0));
		__debugInfo = "183:\BugFight.gbas";
		return 0;
		__debugInfo = "181:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['GLB_ON_LOOP'] = function() {
	stackPush("sub: GLB_ON_LOOP", __debugInfo);
	try {
		var local1_w_ref_1318 = [0], local1_h_ref_1319 = [0], local1_x_ref_1320 = [0.0], local1_y_ref_1321 = [0.0], local2_ml_ref_1322 = [0.0], local2_mr_ref_1323 = [0.0], alias3_map_ref_1326 = [new type8_TGameMap()];
		__debugInfo = "199:\BugFight.gbas";
		GETSCREENSIZE(local1_w_ref_1318, local1_h_ref_1319);
		__debugInfo = "200:\BugFight.gbas";
		STRETCHSPRITE(global3_Spr, 0, 0, unref(local1_w_ref_1318[0]), unref(local1_h_ref_1319[0]));
		__debugInfo = "203:\BugFight.gbas";
		MOUSESTATE(local1_x_ref_1320, local1_y_ref_1321, local2_ml_ref_1322, local2_mr_ref_1323);
		__debugInfo = "206:\BugFight.gbas";
		var forEachSaver2144 = global7_Objects_ref[0];
		for(var forEachCounter2144 = 0 ; forEachCounter2144 < forEachSaver2144.values.length ; forEachCounter2144++) {
			var local3_Obj_ref_1324 = forEachSaver2144.values[forEachCounter2144];
		{
				__debugInfo = "205:\BugFight.gbas";
				(local3_Obj_ref_1324[0]).Render();
				__debugInfo = "205:\BugFight.gbas";
			}
			forEachSaver2144.values[forEachCounter2144] = local3_Obj_ref_1324;
		
		};
		__debugInfo = "209:\BugFight.gbas";
		var forEachSaver2151 = global7_Objects_ref[0];
		for(var forEachCounter2151 = 0 ; forEachCounter2151 < forEachSaver2151.values.length ; forEachCounter2151++) {
			var local3_Obj_ref_1325 = forEachSaver2151.values[forEachCounter2151];
		{
				__debugInfo = "208:\BugFight.gbas";
				(local3_Obj_ref_1325[0]).Update();
				__debugInfo = "208:\BugFight.gbas";
			}
			forEachSaver2151.values[forEachCounter2151] = local3_Obj_ref_1325;
		
		};
		__debugInfo = "212:\BugFight.gbas";
		alias3_map_ref_1326 = castobj(global7_Objects_ref[0].arrAccess(0).values[tmpPositionCache], type8_TGameMap) /* ALIAS */;
		__debugInfo = "215:\BugFight.gbas";
		if (local2_ml_ref_1322[0]) {
			__debugInfo = "214:\BugFight.gbas";
			(alias3_map_ref_1326[0]).RemoveRect(~~(((local1_x_ref_1320[0]) - (15))), ~~(((local1_y_ref_1321[0]) - (15))), 30, 30, 0);
			__debugInfo = "214:\BugFight.gbas";
		};
		__debugInfo = "217:\BugFight.gbas";
		PRINT(unref((((alias3_map_ref_1326[0]).CheckCollision(unref(~~(local1_x_ref_1320[0])), unref(~~(local1_y_ref_1321[0])))) ? ("Coll") : ("No Coll"))), unref(local1_x_ref_1320[0]), unref(local1_y_ref_1321[0]), 1);
		__debugInfo = "219:\BugFight.gbas";
		SHOWSCREEN();
		__debugInfo = "199:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['func7_LoadSpr'] = function(param8_Path_Str) {
	stackPush("function: LoadSpr", __debugInfo);
	try {
		var local2_id_1328 = 0;
		__debugInfo = "226:\BugFight.gbas";
		local2_id_1328 = GENSPRITE();
		__debugInfo = "227:\BugFight.gbas";
		LOADSPRITE(param8_Path_Str, local2_id_1328);
		__debugInfo = "228:\BugFight.gbas";
		return tryClone(local2_id_1328);
		__debugInfo = "229:\BugFight.gbas";
		return 0;
		__debugInfo = "226:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['GLB_ON_LOADING'] = function() {
	stackPush("sub: GLB_ON_LOADING", __debugInfo);
	try {
		__debugInfo = "232:\BugFight.gbas";
		PRINT("Loading...", 10, 10, 0);
		__debugInfo = "233:\BugFight.gbas";
		SHOWSCREEN();
		__debugInfo = "232:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method13_type7_TObject_12_ToString_Str'] = function(param4_self) {
	stackPush("method: ToString_Str", __debugInfo);
	try {
		__debugInfo = "241:\BugFight.gbas";
		return "Object";
		__debugInfo = "242:\BugFight.gbas";
		return "";
		__debugInfo = "241:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method13_type7_TObject_6_Equals'] = function(param3_Obj, param4_self) {
	stackPush("method: Equals", __debugInfo);
	try {
		__debugInfo = "248:\BugFight.gbas";
		if ((((param3_Obj) == (param4_self)) ? 1 : 0)) {
			__debugInfo = "245:\BugFight.gbas";
			return 1;
			__debugInfo = "245:\BugFight.gbas";
		} else {
			__debugInfo = "247:\BugFight.gbas";
			return tryClone(0);
			__debugInfo = "247:\BugFight.gbas";
		};
		__debugInfo = "249:\BugFight.gbas";
		return 0;
		__debugInfo = "248:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
window['method13_type7_TObject_10_ToHashCode'] = function(param4_self) {
	stackPush("method: ToHashCode", __debugInfo);
	try {
		__debugInfo = "251:\BugFight.gbas";
		return 0;
		__debugInfo = "252:\BugFight.gbas";
		return 0;
		__debugInfo = "251:\BugFight.gbas";
	} catch(ex) {
		if (isKnownException(ex)) throw ex;
		alert(formatError(ex));
		END();
	} finally {
		stackPop();
	}
	
};
var vtbl_type11_TGameObject = {
	Update: method18_type11_TGameObject_6_Update, 
	Render: method18_type11_TGameObject_6_Render, 
	Init: method18_type11_TGameObject_4_Init, 
	SetPosition: method18_type11_TGameObject_11_SetPosition, 
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type11_TGameObject'] = function() {
	this.attr9_PositionX = 0.0;
	this.attr9_PositionY = 0.0;
	this.vtbl = vtbl_type11_TGameObject;
	return this;
	
};
window['type11_TGameObject'].prototype.clone = function() {
	var other = new type11_TGameObject();
	other.attr9_PositionX = this.attr9_PositionX;
	other.attr9_PositionY = this.attr9_PositionY;
	other.vtbl = this.vtbl;
	return other;
};
type11_TGameObject.prototype.Update = function() {
	 return this.vtbl.Update(this);
};
type11_TGameObject.prototype.Render = function() {
	 return this.vtbl.Render(this);
};
type11_TGameObject.prototype.Init = function() {
	 return this.vtbl.Init(this);
};
type11_TGameObject.prototype.SetPosition = function() {
	 return this.vtbl.SetPosition(arguments[0], arguments[1], this);
};
type11_TGameObject.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type11_TGameObject.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type11_TGameObject.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var vtbl_type8_TGameMap = {
	Load: method14_type8_TGameMap_4_Load, 
	Update: method14_type8_TGameMap_6_Update, 
	Render: method14_type8_TGameMap_6_Render, 
	CheckCollision: method14_type8_TGameMap_14_CheckCollision, 
	RemoveRect: method14_type8_TGameMap_10_RemoveRect, 
	Init: method18_type11_TGameObject_4_Init, 
	SetPosition: method18_type11_TGameObject_11_SetPosition, 
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type8_TGameMap'] = function() {
	this.attr5_SprID = 0;
	this.attr8_ScreenID = 0;
	this.attr7_ImgData = new GLBArray();
	this.attr5_Width_ref = [0.0];
	this.attr6_Height_ref = [0.0];
	this.attr9_PositionX = 0.0;
	this.attr9_PositionY = 0.0;
	this.vtbl = vtbl_type8_TGameMap;
	return this;
	
};
window['type8_TGameMap'].prototype.clone = function() {
	var other = new type8_TGameMap();
	other.attr5_SprID = this.attr5_SprID;
	other.attr8_ScreenID = this.attr8_ScreenID;
	other.attr7_ImgData = tryClone(this.attr7_ImgData);
	other.attr5_Width_ref = tryClone(this.attr5_Width_ref);
	other.attr6_Height_ref = tryClone(this.attr6_Height_ref);
	other.attr9_PositionX = this.attr9_PositionX;
	other.attr9_PositionY = this.attr9_PositionY;
	other.vtbl = this.vtbl;
	return other;
};
type8_TGameMap.prototype.Load = function() {
	 return this.vtbl.Load(arguments[0], this);
};
type8_TGameMap.prototype.Update = function() {
	 return this.vtbl.Update(this);
};
type8_TGameMap.prototype.Render = function() {
	 return this.vtbl.Render(this);
};
type8_TGameMap.prototype.CheckCollision = function() {
	 return this.vtbl.CheckCollision(arguments[0], arguments[1], this);
};
type8_TGameMap.prototype.RemoveRect = function() {
	 return this.vtbl.RemoveRect(arguments[0], arguments[1], arguments[2], arguments[3], arguments[4], this);
};
type8_TGameMap.prototype.Init = function() {
	 return this.vtbl.Init(this);
};
type8_TGameMap.prototype.SetPosition = function() {
	 return this.vtbl.SetPosition(arguments[0], arguments[1], this);
};
type8_TGameMap.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type8_TGameMap.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type8_TGameMap.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var vtbl_type14_TCollisionable = {
	Update: method21_type14_TCollisionable_6_Update, 
	IsCollision: method21_type14_TCollisionable_11_IsCollision, 
	Render: method18_type11_TGameObject_6_Render, 
	Init: method18_type11_TGameObject_4_Init, 
	SetPosition: method18_type11_TGameObject_11_SetPosition, 
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type14_TCollisionable'] = function() {
	this.attr2_VX = 0.0;
	this.attr2_VY = 0.0;
	this.attr5_Width = 0.0;
	this.attr6_Height = 0.0;
	this.attr9_PositionX = 0.0;
	this.attr9_PositionY = 0.0;
	this.vtbl = vtbl_type14_TCollisionable;
	return this;
	
};
window['type14_TCollisionable'].prototype.clone = function() {
	var other = new type14_TCollisionable();
	other.attr2_VX = this.attr2_VX;
	other.attr2_VY = this.attr2_VY;
	other.attr5_Width = this.attr5_Width;
	other.attr6_Height = this.attr6_Height;
	other.attr9_PositionX = this.attr9_PositionX;
	other.attr9_PositionY = this.attr9_PositionY;
	other.vtbl = this.vtbl;
	return other;
};
type14_TCollisionable.prototype.Update = function() {
	 return this.vtbl.Update(this);
};
type14_TCollisionable.prototype.IsCollision = function() {
	 return this.vtbl.IsCollision(this);
};
type14_TCollisionable.prototype.Render = function() {
	 return this.vtbl.Render(this);
};
type14_TCollisionable.prototype.Init = function() {
	 return this.vtbl.Init(this);
};
type14_TCollisionable.prototype.SetPosition = function() {
	 return this.vtbl.SetPosition(arguments[0], arguments[1], this);
};
type14_TCollisionable.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type14_TCollisionable.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type14_TCollisionable.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var vtbl_type7_TPlayer = {
	Update: method13_type7_TPlayer_6_Update, 
	Render: method13_type7_TPlayer_6_Render, 
	IsCollision: method21_type14_TCollisionable_11_IsCollision, 
	Init: method18_type11_TGameObject_4_Init, 
	SetPosition: method18_type11_TGameObject_11_SetPosition, 
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type7_TPlayer'] = function() {
	this.attr5_Width = 0.0;
	this.attr6_Height = 0.0;
	this.attr2_VX = 0.0;
	this.attr2_VY = 0.0;
	this.attr9_PositionX = 0.0;
	this.attr9_PositionY = 0.0;
	this.vtbl = vtbl_type7_TPlayer;
	this.attr5_Width = 8;
	this.attr6_Height = 16;
	return this;
	
};
window['type7_TPlayer'].prototype.clone = function() {
	var other = new type7_TPlayer();
	other.attr5_Width = this.attr5_Width;
	other.attr6_Height = this.attr6_Height;
	other.attr2_VX = this.attr2_VX;
	other.attr2_VY = this.attr2_VY;
	other.attr9_PositionX = this.attr9_PositionX;
	other.attr9_PositionY = this.attr9_PositionY;
	other.vtbl = this.vtbl;
	return other;
};
type7_TPlayer.prototype.Update = function() {
	 return this.vtbl.Update(this);
};
type7_TPlayer.prototype.Render = function() {
	 return this.vtbl.Render(this);
};
type7_TPlayer.prototype.IsCollision = function() {
	 return this.vtbl.IsCollision(this);
};
type7_TPlayer.prototype.Init = function() {
	 return this.vtbl.Init(this);
};
type7_TPlayer.prototype.SetPosition = function() {
	 return this.vtbl.SetPosition(arguments[0], arguments[1], this);
};
type7_TPlayer.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type7_TPlayer.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type7_TPlayer.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var vtbl_type7_TObject = {
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type7_TObject'] = function() {
	this.vtbl = vtbl_type7_TObject;
	return this;
	
};
window['type7_TObject'].prototype.clone = function() {
	var other = new type7_TObject();
	other.vtbl = this.vtbl;
	return other;
};
type7_TObject.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type7_TObject.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type7_TObject.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var vtbl_type6_TObj3D = {
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type6_TObj3D'] = function() {
	this.vtbl = vtbl_type6_TObj3D;
	return this;
	
};
window['type6_TObj3D'].prototype.clone = function() {
	var other = new type6_TObj3D();
	other.vtbl = this.vtbl;
	return other;
};
type6_TObj3D.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type6_TObj3D.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type6_TObj3D.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var vtbl_type10_DataBuffer = {
	ToString_Str: method13_type7_TObject_12_ToString_Str, 
	Equals: method13_type7_TObject_6_Equals, 
	ToHashCode: method13_type7_TObject_10_ToHashCode
};
window ['type10_DataBuffer'] = function() {
	this.vtbl = vtbl_type10_DataBuffer;
	return this;
	
};
window['type10_DataBuffer'].prototype.clone = function() {
	var other = new type10_DataBuffer();
	other.vtbl = this.vtbl;
	return other;
};
type10_DataBuffer.prototype.ToString_Str = function() {
	 return this.vtbl.ToString_Str(this);
};
type10_DataBuffer.prototype.Equals = function() {
	 return this.vtbl.Equals(arguments[0], this);
};
type10_DataBuffer.prototype.ToHashCode = function() {
	 return this.vtbl.ToHashCode(this);
};
var const7_GRAVITY = 0.5, const8_MAXSPEED = 8, const19_GL_DEPTH_BUFFER_BIT = 256, const21_GL_STENCIL_BUFFER_BIT = 1024, const19_GL_COLOR_BUFFER_BIT = 16384, const8_GL_FALSE = 0, const7_GL_TRUE = 1, const9_GL_POINTS = 0, const8_GL_LINES = 1, const12_GL_LINE_LOOP = 2, const13_GL_LINE_STRIP = 3, const12_GL_TRIANGLES = 4, const17_GL_TRIANGLE_STRIP = 5, const15_GL_TRIANGLE_FAN = 6, const7_GL_ZERO = 0, const6_GL_ONE = 1, const12_GL_SRC_COLOR = 768, const22_GL_ONE_MINUS_SRC_COLOR = 769, const12_GL_SRC_ALPHA = 770, const22_GL_ONE_MINUS_SRC_ALPHA = 771, const12_GL_DST_ALPHA = 772, const22_GL_ONE_MINUS_DST_ALPHA = 773, const12_GL_DST_COLOR = 774, const22_GL_ONE_MINUS_DST_COLOR = 775, const21_GL_SRC_ALPHA_SATURATE = 776, const11_GL_FUNC_ADD = 32774, const17_GL_BLEND_EQUATION = 32777, const21_GL_BLEND_EQUATION_RGB = 32777, const23_GL_BLEND_EQUATION_ALPHA = 34877, const16_GL_FUNC_SUBTRACT = 32778, const24_GL_FUNC_REVERSE_SUBTRACT = 32779, const16_GL_BLEND_DST_RGB = 32968, const16_GL_BLEND_SRC_RGB = 32969, const18_GL_BLEND_DST_ALPHA = 32970, const18_GL_BLEND_SRC_ALPHA = 32971, const17_GL_CONSTANT_COLOR = 32769, const27_GL_ONE_MINUS_CONSTANT_COLOR = 32770, const17_GL_CONSTANT_ALPHA = 32771, const27_GL_ONE_MINUS_CONSTANT_ALPHA = 32772, const14_GL_BLEND_COLOR = 32773, const15_GL_ARRAY_BUFFER = 34962, const23_GL_ELEMENT_ARRAY_BUFFER = 34963, const23_GL_ARRAY_BUFFER_BINDING = 34964, const31_GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965, const14_GL_STREAM_DRAW = 35040, const14_GL_STATIC_DRAW = 35044, const15_GL_DYNAMIC_DRAW = 35048, const14_GL_BUFFER_SIZE = 34660, const15_GL_BUFFER_USAGE = 34661, const24_GL_CURRENT_VERTEX_ATTRIB = 34342, const8_GL_FRONT = 1028, const7_GL_BACK = 1029, const17_GL_FRONT_AND_BACK = 1032, const13_GL_TEXTURE_2D = 3553, const12_GL_CULL_FACE = 2884, const8_GL_BLEND = 3042, const9_GL_DITHER = 3024, const15_GL_STENCIL_TEST = 2960, const13_GL_DEPTH_TEST = 2929, const15_GL_SCISSOR_TEST = 3089, const22_GL_POLYGON_OFFSET_FILL = 32823, const27_GL_SAMPLE_ALPHA_TO_COVERAGE = 32926, const18_GL_SAMPLE_COVERAGE = 32928, const11_GL_NO_ERROR = 0, const15_GL_INVALID_ENUM = 1280, const16_GL_INVALID_VALUE = 1281, const20_GL_INVALID_OPERATION = 1282, const16_GL_OUT_OF_MEMORY = 1285, const5_GL_CW = 2304, const6_GL_CCW = 2305, const13_GL_LINE_WIDTH = 2849, const27_GL_ALIASED_POINT_SIZE_RANGE = 33901, const27_GL_ALIASED_LINE_WIDTH_RANGE = 33902, const17_GL_CULL_FACE_MODE = 2885, const13_GL_FRONT_FACE = 2886, const14_GL_DEPTH_RANGE = 2928, const18_GL_DEPTH_WRITEMASK = 2930, const20_GL_DEPTH_CLEAR_VALUE = 2931, const13_GL_DEPTH_FUNC = 2932, const22_GL_STENCIL_CLEAR_VALUE = 2961, const15_GL_STENCIL_FUNC = 2962, const15_GL_STENCIL_FAIL = 2964, const26_GL_STENCIL_PASS_DEPTH_FAIL = 2965, const26_GL_STENCIL_PASS_DEPTH_PASS = 2966, const14_GL_STENCIL_REF = 2967, const21_GL_STENCIL_VALUE_MASK = 2963, const20_GL_STENCIL_WRITEMASK = 2968, const20_GL_STENCIL_BACK_FUNC = 34816, const20_GL_STENCIL_BACK_FAIL = 34817, const31_GL_STENCIL_BACK_PASS_DEPTH_FAIL = 34818, const31_GL_STENCIL_BACK_PASS_DEPTH_PASS = 34819, const19_GL_STENCIL_BACK_REF = 36003, const26_GL_STENCIL_BACK_VALUE_MASK = 36004, const25_GL_STENCIL_BACK_WRITEMASK = 36005, const11_GL_VIEWPORT = 2978, const14_GL_SCISSOR_BOX = 3088, const20_GL_COLOR_CLEAR_VALUE = 3106, const18_GL_COLOR_WRITEMASK = 3107, const19_GL_UNPACK_ALIGNMENT = 3317, const17_GL_PACK_ALIGNMENT = 3333, const19_GL_MAX_TEXTURE_SIZE = 3379, const20_GL_MAX_VIEWPORT_DIMS = 3386, const16_GL_SUBPIXEL_BITS = 3408, const11_GL_RED_BITS = 3410, const13_GL_GREEN_BITS = 3411, const12_GL_BLUE_BITS = 3412, const13_GL_ALPHA_BITS = 3413, const13_GL_DEPTH_BITS = 3414, const15_GL_STENCIL_BITS = 3415, const23_GL_POLYGON_OFFSET_UNITS = 10752, const24_GL_POLYGON_OFFSET_FACTOR = 32824, const21_GL_TEXTURE_BINDING_2D = 32873, const17_GL_SAMPLE_BUFFERS = 32936, const10_GL_SAMPLES = 32937, const24_GL_SAMPLE_COVERAGE_VALUE = 32938, const25_GL_SAMPLE_COVERAGE_INVERT = 32939, const33_GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466, const29_GL_COMPRESSED_TEXTURE_FORMATS = 34467, const12_GL_DONT_CARE = 4352, const10_GL_FASTEST = 4353, const9_GL_NICEST = 4354, const23_GL_GENERATE_MIPMAP_HINT = 33170, const7_GL_BYTE = 5120, const16_GL_UNSIGNED_BYTE = 5121, const8_GL_SHORT = 5122, const17_GL_UNSIGNED_SHORT = 5123, const6_GL_INT = 5124, const15_GL_UNSIGNED_INT = 5125, const8_GL_FLOAT = 5126, const8_GL_FIXED = 5132, const18_GL_DEPTH_COMPONENT = 6402, const8_GL_ALPHA = 6406, const6_GL_RGB = 6407, const7_GL_RGBA = 6408, const12_GL_LUMINANCE = 6409, const18_GL_LUMINANCE_ALPHA = 6410, const25_GL_UNSIGNED_SHORT_4_4_4_4 = 32819, const25_GL_UNSIGNED_SHORT_5_5_5_1 = 32820, const23_GL_UNSIGNED_SHORT_5_6_5 = 33635, const18_GL_FRAGMENT_SHADER = 35632, const16_GL_VERTEX_SHADER = 35633, const21_GL_MAX_VERTEX_ATTRIBS = 34921, const29_GL_MAX_VERTEX_UNIFORM_VECTORS = 36347, const22_GL_MAX_VARYING_VECTORS = 36348, const35_GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661, const33_GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660, const26_GL_MAX_TEXTURE_IMAGE_UNITS = 34930, const31_GL_MAX_FRAGMENT_UNIFORM_VECTORS = 36349, const14_GL_SHADER_TYPE = 35663, const16_GL_DELETE_STATUS = 35712, const14_GL_LINK_STATUS = 35714, const18_GL_VALIDATE_STATUS = 35715, const19_GL_ATTACHED_SHADERS = 35717, const18_GL_ACTIVE_UNIFORMS = 35718, const28_GL_ACTIVE_UNIFORM_MAX_LENGTH = 35719, const20_GL_ACTIVE_ATTRIBUTES = 35721, const30_GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 35722, const27_GL_SHADING_LANGUAGE_VERSION = 35724, const18_GL_CURRENT_PROGRAM = 35725, const8_GL_NEVER = 512, const7_GL_LESS = 513, const8_GL_EQUAL = 514, const9_GL_LEQUAL = 515, const10_GL_GREATER = 516, const11_GL_NOTEQUAL = 517, const9_GL_GEQUAL = 518, const9_GL_ALWAYS = 519, const7_GL_KEEP = 7680, const10_GL_REPLACE = 7681, const7_GL_INCR = 7682, const7_GL_DECR = 7683, const9_GL_INVERT = 5386, const12_GL_INCR_WRAP = 34055, const12_GL_DECR_WRAP = 34056, const9_GL_VENDOR = 7936, const11_GL_RENDERER = 7937, const10_GL_VERSION = 7938, const13_GL_EXTENSIONS = 7939, const10_GL_NEAREST = 9728, const9_GL_LINEAR = 9729, const25_GL_NEAREST_MIPMAP_NEAREST = 9984, const24_GL_LINEAR_MIPMAP_NEAREST = 9985, const24_GL_NEAREST_MIPMAP_LINEAR = 9986, const23_GL_LINEAR_MIPMAP_LINEAR = 9987, const21_GL_TEXTURE_MAG_FILTER = 10240, const21_GL_TEXTURE_MIN_FILTER = 10241, const17_GL_TEXTURE_WRAP_S = 10242, const17_GL_TEXTURE_WRAP_T = 10243, const10_GL_TEXTURE = 5890, const19_GL_TEXTURE_CUBE_MAP = 34067, const27_GL_TEXTURE_BINDING_CUBE_MAP = 34068, const30_GL_TEXTURE_CUBE_MAP_POSITIVE_X = 34069, const30_GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 34070, const30_GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 34071, const30_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072, const30_GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 34073, const30_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074, const28_GL_MAX_CUBE_MAP_TEXTURE_SIZE = 34076, const11_GL_TEXTURE0 = 33984, const11_GL_TEXTURE1 = 33985, const11_GL_TEXTURE2 = 33986, const11_GL_TEXTURE3 = 33987, const11_GL_TEXTURE4 = 33988, const11_GL_TEXTURE5 = 33989, const11_GL_TEXTURE6 = 33990, const11_GL_TEXTURE7 = 33991, const11_GL_TEXTURE8 = 33992, const11_GL_TEXTURE9 = 33993, const12_GL_TEXTURE10 = 33994, const12_GL_TEXTURE11 = 33995, const12_GL_TEXTURE12 = 33996, const12_GL_TEXTURE13 = 33997, const12_GL_TEXTURE14 = 33998, const12_GL_TEXTURE15 = 33999, const12_GL_TEXTURE16 = 34000, const12_GL_TEXTURE17 = 34001, const12_GL_TEXTURE18 = 34002, const12_GL_TEXTURE19 = 34003, const12_GL_TEXTURE20 = 34004, const12_GL_TEXTURE21 = 34005, const12_GL_TEXTURE22 = 34006, const12_GL_TEXTURE23 = 34007, const12_GL_TEXTURE24 = 34008, const12_GL_TEXTURE25 = 34009, const12_GL_TEXTURE26 = 34010, const12_GL_TEXTURE27 = 34011, const12_GL_TEXTURE28 = 34012, const12_GL_TEXTURE29 = 34013, const12_GL_TEXTURE30 = 34014, const12_GL_TEXTURE31 = 34015, const17_GL_ACTIVE_TEXTURE = 34016, const9_GL_REPEAT = 10497, const16_GL_CLAMP_TO_EDGE = 33071, const18_GL_MIRRORED_REPEAT = 33648, const13_GL_FLOAT_VEC2 = 35664, const13_GL_FLOAT_VEC3 = 35665, const13_GL_FLOAT_VEC4 = 35666, const11_GL_INT_VEC2 = 35667, const11_GL_INT_VEC3 = 35668, const11_GL_INT_VEC4 = 35669, const7_GL_BOOL = 35670, const12_GL_BOOL_VEC2 = 35671, const12_GL_BOOL_VEC3 = 35672, const12_GL_BOOL_VEC4 = 35673, const13_GL_FLOAT_MAT2 = 35674, const13_GL_FLOAT_MAT3 = 35675, const13_GL_FLOAT_MAT4 = 35676, const13_GL_SAMPLER_2D = 35678, const15_GL_SAMPLER_CUBE = 35680, const30_GL_VERTEX_ATTRIB_ARRAY_ENABLED = 34338, const27_GL_VERTEX_ATTRIB_ARRAY_SIZE = 34339, const29_GL_VERTEX_ATTRIB_ARRAY_STRIDE = 34340, const27_GL_VERTEX_ATTRIB_ARRAY_TYPE = 34341, const33_GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922, const30_GL_VERTEX_ATTRIB_ARRAY_POINTER = 34373, const37_GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975, const33_GL_IMPLEMENTATION_COLOR_READ_TYPE = 35738, const35_GL_IMPLEMENTATION_COLOR_READ_FORMAT = 35739, const17_GL_COMPILE_STATUS = 35713, const18_GL_INFO_LOG_LENGTH = 35716, const23_GL_SHADER_SOURCE_LENGTH = 35720, const18_GL_SHADER_COMPILER = 36346, const24_GL_SHADER_BINARY_FORMATS = 36344, const28_GL_NUM_SHADER_BINARY_FORMATS = 36345, const12_GL_LOW_FLOAT = 36336, const15_GL_MEDIUM_FLOAT = 36337, const13_GL_HIGH_FLOAT = 36338, const10_GL_LOW_INT = 36339, const13_GL_MEDIUM_INT = 36340, const11_GL_HIGH_INT = 36341, const14_GL_FRAMEBUFFER = 36160, const15_GL_RENDERBUFFER = 36161, const8_GL_RGBA4 = 32854, const10_GL_RGB5_A1 = 32855, const9_GL_RGB565 = 36194, const20_GL_DEPTH_COMPONENT16 = 33189, const16_GL_STENCIL_INDEX = 6401, const17_GL_STENCIL_INDEX8 = 36168, const21_GL_RENDERBUFFER_WIDTH = 36162, const22_GL_RENDERBUFFER_HEIGHT = 36163, const31_GL_RENDERBUFFER_INTERNAL_FORMAT = 36164, const24_GL_RENDERBUFFER_RED_SIZE = 36176, const26_GL_RENDERBUFFER_GREEN_SIZE = 36177, const25_GL_RENDERBUFFER_BLUE_SIZE = 36178, const26_GL_RENDERBUFFER_ALPHA_SIZE = 36179, const26_GL_RENDERBUFFER_DEPTH_SIZE = 36180, const28_GL_RENDERBUFFER_STENCIL_SIZE = 36181, const37_GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048, const37_GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049, const39_GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050, const47_GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051, const20_GL_COLOR_ATTACHMENT0 = 36064, const19_GL_DEPTH_ATTACHMENT = 36096, const21_GL_STENCIL_ATTACHMENT = 36128, const7_GL_NONE = 0, const23_GL_FRAMEBUFFER_COMPLETE = 36053, const36_GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054, const44_GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055, const36_GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057, const26_GL_FRAMEBUFFER_UNSUPPORTED = 36061, const22_GL_FRAMEBUFFER_BINDING = 36006, const23_GL_RENDERBUFFER_BINDING = 36007, const24_GL_MAX_RENDERBUFFER_SIZE = 34024, const32_GL_INVALID_FRAMEBUFFER_OPERATION = 1286, global7_Objects_ref = [new GLBArray()], global3_Spr = 0, global6_Objs3D = new GLBArray();
window['initStatics'] = function() {}
for (var __init = 0; __init < preInitFuncs.length; __init++) preInitFuncs[__init]();
