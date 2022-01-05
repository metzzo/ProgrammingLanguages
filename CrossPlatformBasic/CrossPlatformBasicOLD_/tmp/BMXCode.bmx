SuperStrict
Type vererbt 
   Field _hahaichbinprivat_:Float
   Field _hallo_:Int
EndType
Function new_VERERBT:VERERBT( tmp:VERERBT )
   tmp.hahaichbinprivat = 99.9999924
   tmp.hallo = 100
   return tmp
EndFunction
Type ververerbt 
EndType
Function new_VERVERERBT:VERVERERBT( tmp:VERVERERBT )
   return tmp
EndFunction
Type verververerbt 
EndType
Function new_VERVERVERERBT:VERVERVERERBT( tmp:VERVERVERERBT )
   return tmp
EndFunction
Type blubtyp 
   Field _hallo_:Int
   Field _tschuess_:Int
EndType
Function new_BLUBTYP:BLUBTYP( tmp:BLUBTYP )
   tmp.hallo = 200
   tmp.tschuess = 300
   return tmp
EndFunction
Type tmethodtest 
   Field _haha_:Int
EndType
Function new_TMETHODTEST:TMETHODTEST( tmp:TMETHODTEST )
   tmp.haha = 20
   return tmp
EndFunction
Type ttest 
   Field _x_:Int
   Field _y_:Float
   Field _z_:String
   Field _testarray_:TTEST[]
EndType
Function new_TTEST:TTEST( tmp:TTEST )
   tmp.x = 200
   tmp.y = 0.000000000
   tmp.z = ""
   tmp.testarray = new TTEST[] [20]
   return tmp
EndFunction
Type tlist 
   Field _start_:TLINK
EndType
Function new_TLIST:TLIST( tmp:TLIST )
   tmp.start = Null
   return tmp
EndFunction
Type tlink 
   Field _prev_:TLINK
   Field _succ_:TLINK
   Field _value_:Int
EndType
Function new_TLINK:TLINK( tmp:TLINK )
   tmp.prev = Null
   tmp.succ = Null
   tmp.value = 0
   return tmp
EndFunction
Type testtype2 
   Field _self_:TESTTYPE2
EndType
Function new_TESTTYPE2:TESTTYPE2( tmp:TESTTYPE2 )
   tmp.self = Null
   return tmp
EndFunction
Type treturntype 
   Field _haha_:Int
EndType
Function new_TRETURNTYPE:TRETURNTYPE( tmp:TRETURNTYPE )
   tmp.haha = -1*99
   return tmp
EndFunction
Global _einkleinertest_:TTEST
Global _wawa_:TTEST[]
Global _zeahler_:Int=0
Global _halloglobal_:Int=0

Function ___vererbt__test1__internmethod___vererbt__dim_0_:Int(  _this_:VERERBT)
   print_string__dim_0_("Hiho")
   print_string__dim_0_("In Test1 "+String(_this_._hallo_))
EndFunction

Function ___ververerbt__test2__internmethod___ververerbt__dim_0_:Int(  _this_:VERVERERBT)
   print_string__dim_0_("In Test2")
EndFunction

Function ___ververerbt__test1__internmethod___ververerbt__dim_0_:Int(  _this_:VERVERERBT)
   print_string__dim_0_("HUHU")
   print_string__dim_0_("In Test 1 aber VerVErerbt")
EndFunction

Function ___verververerbt__blub__internmethod___verververerbt__dim_0_:Int(  _this_:VERVERVERERBT)
EndFunction

Function ___blubtyp__hihi__internmethod___blubtyp__dim_0_:Int(  _this_:BLUBTYP)
   print_string__dim_0_("Blubbig: "+String(_this_._hallo_)+" - "+String(_this_._tschuess_))
EndFunction

Function ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__int__dim_0_:Int(  _this_:TMETHODTEST, _param_:Int)
   print_string__dim_0_("In Methode "+String(_param_))
   _this_._haha_=100
   print_string__dim_0_("Aus Methode")
EndFunction

Function ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0_:Int(  _this_:TMETHODTEST, _param_:Float)
   print_string__dim_0_("Ueberladen: "+String(_param_))
EndFunction

Function ___tmethodtest__blub__internmethod___tmethodtest__dim_0_:TMETHODTEST(  _this_:TMETHODTEST)
   Return _this_
EndFunction

Function ___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_:Int[](  _this_:TMETHODTEST)
   print_string__dim_0_("In Array Test")
   Local _arr_:Int[][]
   _arr_=new INT [20][20]
   _arr_[4][4]=200
   Return _arr_
EndFunction

Function ___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0_:TMETHODTEST[](  _this_:TMETHODTEST, _mitparam_:Int)
   print_string__dim_0_("GetArray: "+String(_mitparam_))
   Local _arr_:TMETHODTEST[]
   _arr_=new TMETHODTEST[] [2]
   _arr_[1]=new_TMETHODTEST(new TMETHODTEST)
   Return _arr_
EndFunction

Function createlist:TLIST()
   Local _list_:TLIST
   _list_=new_TLIST(new TLIST)
   _list_._start_=Null
   Return _list_
EndFunction

Function add_tlist__dim_0__int__dim_0_:TLINK(  _list_:TLIST, _value_:Int)
   _zeahler_=_zeahler_+1
   Local _link_:TLINK
   _link_=new_TLINK(new TLINK)
   _link_._value_=_value_
   _link_._prev_=_list_._start_
   _link_._succ_=Null
   if (Int(_list_._start_<>Null))
      _list_._start_._succ_=_link_
   EndIf
   _list_._start_=_link_
   Return _link_
EndFunction

Function gettype:TRETURNTYPE()
   Return new_TRETURNTYPE(new TRETURNTYPE)
EndFunction

Function typalsparameter_treturntype__dim_0_:Int(  _blubtest_:TRETURNTYPE)
   print_string__dim_0_(String(_blubtest_._haha_))
EndFunction

Function ohnenichts:Int()
EndFunction

Function blub_int__dim_0__string__dim_0__int__dim_0_:Int(  _x_:Int, _z_:String, _y_:Int)
   print_string__dim_0_("X: "+String(_x_)+" Y: "+String(_y_)+"  "+_z_)
   Return 100
EndFunction

Function blub_string__dim_0__int__dim_0__float__dim_0_:Int(  _x_:String, _z_:Int, _y_:Float)
   print_string__dim_0_("In anderes Blub")
   Return -1*100
EndFunction

Function vordefiniert_int__dim_0__float__dim_0__string__dim_0_:Int(  _x_:Int, _y_:Float, _z_:String)
   print_string__dim_0_("VORDEFINIERT FTW. "+String(_x_)+" "+String(_y_)+" "+_z_)
EndFunction

Function arrayfunktion_int__dim_1_:Int[](  _x_:Int[])
   print_string__dim_0_("In Array Funktion: "+String(_x_[40]))
   _x_=Int(Null)
   Local _test_:Int[]
   _test_=new INT [10]
   _test_[4]=22
   Return _test_
EndFunction

Function mehrdimtest_int__dim_3_:Int[](  _y_:Int[])
   print_string__dim_0_("In Mehr Dim Array Funktion: "+String(_y_[4][4][4]))
   _y_=Int(Null)
   Local _test_:Int[][][]
   _test_=new INT [2][2][2]
   _test_[1][1][1]=100
   Return _test_
EndFunction

Function datatypetest:Int()
   Local _testshort_:Short=0Local _testdouble_:Double=0.0Local _testlong_:Long=0Local _testbyte_:Byte=0
   _testshort_=Short(65535)
   _testdouble_=Double(10000.0000)
   _testlong_=Long(9999999)
   _testbyte_=Byte(255)
EndFunction

Function testarray:Int[]()
   Local _array_:Int[][]
   _array_=new INT [8][8]
   _array_[4][4]=100
   Return _array_
EndFunction

Function optionaltest_int__dim_0__int__dim_0__int__dim_0_:Int(  _x_:Int, _y_:Int, _z_:Int)
   print_string__dim_0_(String(_x_))
   print_string__dim_0_(String(_y_))
   print_string__dim_0_(String(_z_))
EndFunction

Function print_string__dim_0_:Int(  _text_:String)
   print( _text_)
EndFunction
print_string__dim_0_(String(2*2+3))
print_string__dim_0_("Next0")
Local _normal_:VERERBT
_normal_=new_VERERBT(new VERERBT)
___vererbt__test1__internmethod___vererbt__dim_0_(_normal_)
print_string__dim_0_("Next")
Local _testver_:VERVERERBT
_testver_=new_VERVERERBT(new VERVERERBT)
___ververerbt__test1__internmethod___ververerbt__dim_0_(_testver_)
print_string__dim_0_("Next2")
___ververerbt__test2__internmethod___ververerbt__dim_0_(_testver_)
print_string__dim_0_("Begin")
Local _methodtestinst_:TMETHODTEST
_methodtestinst_=new_TMETHODTEST(new TMETHODTEST)
print_string__dim_0_("StartPArameter")
___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0_(_methodtestinst_,100.900002)
print_string__dim_0_("EndParameter")
print_string__dim_0_("Haha: "+String(___tmethodtest__blub__internmethod___tmethodtest__dim_0_(___tmethodtest__blub__internmethod___tmethodtest__dim_0_(___tmethodtest__blub__internmethod___tmethodtest__dim_0_(_methodtestinst_)))._haha_))
print_string__dim_0_("Aus Methode: "+String(___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_(_methodtestinst_)[4][4]))
print_string__dim_0_("Rekurive Arrays: "+String(___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_(___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0_(_methodtestinst_,400)[1])[4][4]))
_einkleinertest_=new_TTEST(new TTEST)
_wawa_=new TTEST[] [20]
print_string__dim_0_("Ein kleiner Test mit vordefinierte Werte: "+String(_einkleinertest_._x_))
Local _list_:TLIST
_list_=createlist()
add_tlist__dim_0__int__dim_0_(_list_,4)
add_tlist__dim_0__int__dim_0_(_list_,10)
add_tlist__dim_0__int__dim_0_(_list_,100)
Local _cur_:TLINK
_cur_=_list_._start_
While (Int(_cur_<>Null))
   print_string__dim_0_("Linked List: "+String(_cur_._value_))
   _cur_=_cur_._prev_
Wend
Local _test_:TTEST[]
_test_=new TTEST[] [2]
_test_[1]=new_TTEST(new TTEST)
_test_[1]._x_=10
print_string__dim_0_("Test: "+String(_test_[1]._x_))
_test_[1]._testarray_=new TTEST[] [5]
_test_[1]._testarray_[1]=new_TTEST(new TTEST)
_test_[1]._testarray_[1]._x_=100
print_string__dim_0_(String(_test_[1]._testarray_[1]._x_))
Local _test2_:TESTTYPE2
_test2_=new_TESTTYPE2(new TESTTYPE2)
_test2_._self_=_test2_
Local _tmptyp_:TESTTYPE2
_tmptyp_=_test2_
Local _j_:Int=0
_j_=0
While (Int(_tmptyp_<>Null))
   print_string__dim_0_("Hallo in Type DUmm")
   _tmptyp_=_tmptyp_._self_
   _j_=_j_+1
   if (_j_>4)
      Exit
   EndIf
Wend
Local _typ_:TRETURNTYPE
_typ_=gettype()
_typ_._haha_=20
typalsparameter_treturntype__dim_0_(_typ_)
print_string__dim_0_("Bekomme Typ: "+String(gettype()._haha_))
Local _mehrdim_:Int[][][]
_mehrdim_=new INT [5][9][20]
print_string__dim_0_("Mehrdim start")
_mehrdim_[4][8][19]=42
_mehrdim_[4][4][4]=99
print_string__dim_0_(String(_mehrdim_[4][8][19]))
_mehrdim_=mehrdimtest_int__dim_3_(_mehrdim_)
print_string__dim_0_("Blub")
datatypetest()
print_string__dim_0_("Hallo")
print_string__dim_0_("Hallo"+String(2*5+4+5*8+10+5+5+3))
vordefiniert_int__dim_0__float__dim_0__string__dim_0_(100,9.89999962,"Gaga")
Local _mehrdimstring_:String[][]
_mehrdimstring_=new STRING [5][5]
_mehrdimstring_[2][3]="Hallo"
print_string__dim_0_(_mehrdimstring_[2][3])
Local _anderertest_:Int[][]
_anderertest_=new INT [10][10]
For Local _x_:Int=0 To 9 Step 1
   For Local _y_:Int=0 To 9 Step 1
      _anderertest_[_x_][_y_]=_x_*9+_y_
   Next
Next
For Local _x_:Int=0 To 9 Step 1
   For Local _y_:Int=0 To 9 Step 1
      print_string__dim_0_("In Array an Position '"+String(_x_)+"', '"+String(_y_)+"': "+String(_anderertest_[_x_][_y_]))
   Next
Next
print_string__dim_0_("MultiDim Array:"+String(_mehrdim_[1][1][1]))
Local _array_:Int[]
_array_=new INT [1000]
_array_[40]=100*4
_array_=arrayfunktion_int__dim_1_(_array_)
print_string__dim_0_("Aus Array Funktion: "+String(_array_[4]))
gccollect()
print_string__dim_0_(String(-1*5))
print_string__dim_0_(String(Float("5.5")))
Local _floattest_:Float=0.0
_floattest_=Float(200)
print_string__dim_0_(String(_floattest_))
_halloglobal_=100
print_string__dim_0_("Zweite Zeile")
Local _hallo_:Int=0
_hallo_=40
_hallo_=100+5*10
_hallo_=Int(Float(_hallo_)+100.000000)
print_string__dim_0_("Text: "+String(_hallo_))
if (10*10)
   print_string__dim_0_("Hallo ist gleich 10")
   
Else
   if (10)
      if (Int("Hallo Welt"))
         print_string__dim_0_("hallo")
         
      Else
         if (2)
            print_string__dim_0_("Blub")
            
         Else
            print_string__dim_0_("Gaga")

         EndIf

      EndIf
      print_string__dim_0_("In Elseif")
      
   Else
      print_string__dim_0_("Blub")

   EndIf

EndIf
Local _tmp_:Int=0
_tmp_=1
While (_tmp_<10)
   print_string__dim_0_("In While - Wend "+String(_tmp_))
   _tmp_=_tmp_+1
Wend
Repeat
   print_string__dim_0_("In Repeat Until")
   Exit
Until (1)
Select (10)
   Case 5
      print_string__dim_0_("Hallo")
      print_string__dim_0_("Blubbig")

   Case 20
      print_string__dim_0_("Hallo")
      print_string__dim_0_("Blubbig")

   Case 7
      print_string__dim_0_("blub")

   Default
      print_string__dim_0_("in Default")

EndSelect
For Local _i_:Int=0 To 10 Step 1
   print_string__dim_0_("Zahl: "+String(_i_))
Next
print_string__dim_0_(String(blub_string__dim_0__int__dim_0__float__dim_0_("Hallo",10,10.0000000)))
ohnenichts()
print_string__dim_0_("Aus Array direkt entnommen: "+String(testarray()[4][4]))
print_string__dim_0_("Lustig: "+String(-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*-1*10))
optionaltest_int__dim_0__int__dim_0__int__dim_0_(100,100,300)

