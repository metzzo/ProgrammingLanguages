#include "clib/main.c"
void* allocarray_dim3(int size, int param1, int param2, int param3) {
   int*** mem=(void*)GC_malloc(size*param1);
   int  vari1, vari2, vari3; 
   for(vari1=0;vari1<param1;vari1++) {
      mem[vari1]=(void*)GC_malloc(size*param2);
      for(vari2=0;vari2<param2;vari2++) {
         mem[vari1][vari2]=(void*)GC_malloc(size*param3);
      }
   }
   return (void*)mem;
}
void* allocarray_dim2(int size, int param1, int param2) {
   int** mem=(void*)GC_malloc(size*param1);
   int  vari1, vari2; 
   for(vari1=0;vari1<param1;vari1++) {
      mem[vari1]=(void*)GC_malloc(size*param2);
   }
   return (void*)mem;
}
void* allocarray_dim1(int size, int param1) {
   int* mem=(void*)GC_malloc(size*param1);
   int  vari1; 
   return (void*)mem;
}
typedef struct _treturntype {
   struct _object* superclass;
   CPB_INT _haha_;
}TRETURNTYPE;
typedef struct _testtype2 {
   struct _object* superclass;
   struct _testtype2* _self_;
}TESTTYPE2;
typedef struct _tlink {
   struct _object* superclass;
   struct _tlink* _prev_;
   struct _tlink* _succ_;
   CPB_INT _value_;
}TLINK;
typedef struct _tlist {
   struct _object* superclass;
   struct _tlink* _start_;
}TLIST;
typedef struct _ttest {
   struct _object* superclass;
   CPB_INT _x_;
   CPB_FLOAT _y_;
   CPB_STRING _z_;
   struct _ttest** _testarray_;
}TTEST;
typedef struct _tmethodtest {
   struct _object* superclass;
   CPB_INT _haha_;
   //Method name:___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__int__dim_0_
   //Method name:___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0_
   //Method name:___tmethodtest__blub__internmethod___tmethodtest__dim_0_
   //Method name:___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_
   //Method name:___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0_
   void (**vptr_void)();
   struct _tmethodtest* (**vptr_TMETHODTEST_dim)();
   CPB_INT** (**vptr_CPB_INT_dim_dim)();
   struct _tmethodtest** (**vptr_TMETHODTEST_dim_dim)();
}TMETHODTEST;
typedef struct _blubtyp {
   struct _object* superclass;
   CPB_INT _hallo_;
   CPB_INT _tschuess_;
   //Method name:___blubtyp__hihi__internmethod___blubtyp__dim_0_
   void (**vptr_void)();
}BLUBTYP;
typedef struct _verververerbt {
   struct _object* superclass;
   //Method name:___verververerbt__blub__internmethod___verververerbt__dim_0_
   void (**vptr_void)();
}VERVERVERERBT;
typedef struct _ververerbt {
   struct _object* superclass;
   //Method name:___ververerbt__test2__internmethod___ververerbt__dim_0_
   //Method name:___ververerbt__test1__internmethod___ververerbt__dim_0_
   void (**vptr_void)();
}VERVERERBT;
typedef struct _vererbt {
   struct _object* superclass;
   CPB_FLOAT _hahaichbinprivat_;
   CPB_INT _hallo_;
   //Method name:___vererbt__test1__internmethod___vererbt__dim_0_
   void (**vptr_void)();
}VERERBT;
typedef struct _object {
}OBJECT;
OBJECT* new_OBJECT(OBJECT* tmp );
void ___vererbt__test1__internmethod___vererbt__dim_0_( VERERBT* _this_, int __vpos__) {
   _this_->vptr_void[__vpos__](_this_);
}
VERERBT* new_VERERBT(VERERBT* tmp );
void ___ververerbt__test2__internmethod___ververerbt__dim_0_( VERVERERBT* _this_, int __vpos__) {
   _this_->vptr_void[__vpos__](_this_);
}
void ___ververerbt__test1__internmethod___ververerbt__dim_0_( VERVERERBT* _this_, int __vpos__) {
   _this_->vptr_void[__vpos__](_this_);
}
VERVERERBT* new_VERVERERBT(VERVERERBT* tmp );
void ___verververerbt__blub__internmethod___verververerbt__dim_0_( VERVERVERERBT* _this_, int __vpos__) {
   _this_->vptr_void[__vpos__](_this_);
}
VERVERVERERBT* new_VERVERVERERBT(VERVERVERERBT* tmp );
void ___blubtyp__hihi__internmethod___blubtyp__dim_0_( BLUBTYP* _this_, int __vpos__) {
   _this_->vptr_void[__vpos__](_this_);
}
BLUBTYP* new_BLUBTYP(BLUBTYP* tmp );
void ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__int__dim_0_( TMETHODTEST* _this_, int __vpos__, CPB_INT param) {
   _this_->vptr_void[__vpos__](_this_, param);
}
void ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0_( TMETHODTEST* _this_, int __vpos__, CPB_FLOAT param) {
   _this_->vptr_void[__vpos__](_this_, param);
}
TMETHODTEST* ___tmethodtest__blub__internmethod___tmethodtest__dim_0_( TMETHODTEST* _this_, int __vpos__) {
   return (TMETHODTEST*)_this_->vptr_TMETHODTEST_dim[__vpos__](_this_);
}
CPB_INT** ___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_( TMETHODTEST* _this_, int __vpos__) {
   return (CPB_INT**)_this_->vptr_CPB_INT_dim_dim[__vpos__](_this_);
}
TMETHODTEST** ___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0_( TMETHODTEST* _this_, int __vpos__, CPB_INT mitparam) {
   return (TMETHODTEST**)_this_->vptr_TMETHODTEST_dim_dim[__vpos__](_this_, mitparam);
}
TMETHODTEST* new_TMETHODTEST(TMETHODTEST* tmp );
TTEST* new_TTEST(TTEST* tmp );
TLIST* new_TLIST(TLIST* tmp );
TLINK* new_TLINK(TLINK* tmp );
TESTTYPE2* new_TESTTYPE2(TESTTYPE2* tmp );
TRETURNTYPE* new_TRETURNTYPE(TRETURNTYPE* tmp );
TTEST* _einkleinertest_=NULL;
TTEST** _wawa_=NULL;
CPB_INT _zeahler_=0;
CPB_INT _halloglobal_=0;

void ___vererbt__test1__internmethod___vererbt__dim_0__isreal_( VERERBT* _this_);

void ___ververerbt__test2__internmethod___ververerbt__dim_0__isreal_( VERVERERBT* _this_);

void ___ververerbt__test1__internmethod___ververerbt__dim_0__isreal_( VERVERERBT* _this_);

void ___verververerbt__blub__internmethod___verververerbt__dim_0__isreal_( VERVERVERERBT* _this_);

void ___blubtyp__hihi__internmethod___blubtyp__dim_0__isreal_( BLUBTYP* _this_);

void ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__int__dim_0__isreal_( TMETHODTEST* _this_,CPB_INT _param_);

void ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0__isreal_( TMETHODTEST* _this_,CPB_FLOAT _param_);

TMETHODTEST* ___tmethodtest__blub__internmethod___tmethodtest__dim_0__isreal_( TMETHODTEST* _this_);

CPB_INT** ___tmethodtest__arraytest__internmethod___tmethodtest__dim_0__isreal_( TMETHODTEST* _this_);

TMETHODTEST** ___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0__isreal_( TMETHODTEST* _this_,CPB_INT _mitparam_);

TLIST* createlist();

TLINK* add_tlist__dim_0__int__dim_0_( TLIST* _list_,CPB_INT _value_);

TRETURNTYPE* gettype();

void typalsparameter_treturntype__dim_0_( TRETURNTYPE* _blubtest_);

void ohnenichts();

CPB_INT blub_int__dim_0__string__dim_0__int__dim_0_( CPB_INT _x_,CPB_STRING _z_,CPB_INT _y_);

CPB_INT blub_string__dim_0__int__dim_0__float__dim_0_( CPB_STRING _x_,CPB_INT _z_,CPB_FLOAT _y_);

void vordefiniert_int__dim_0__float__dim_0__string__dim_0_( CPB_INT _x_,CPB_FLOAT _y_,CPB_STRING _z_);

CPB_INT* arrayfunktion_int__dim_1_( CPB_INT* _x_);

CPB_INT*** mehrdimtest_int__dim_3_( CPB_INT*** _y_);

void datatypetest();

CPB_INT** testarray();

void optionaltest_int__dim_0__int__dim_0__int__dim_0_( CPB_INT _x_,CPB_INT _y_,CPB_INT _z_);

void print_string__dim_0_( CPB_STRING _text_) {
   print( _text_);
}

void gccollect();
OBJECT* new_OBJECT(OBJECT* tmp ) {
   return tmp;
}
VERERBT* new_VERERBT(VERERBT* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->vptr_void=GC_malloc(sizeof(void())*1);
   tmp->vptr_void[0]=& ___vererbt__test1__internmethod___vererbt__dim_0__isreal_;
   tmp->_hahaichbinprivat_=99.9999924;
   tmp->_hallo_=100;
   return tmp;
}
VERVERERBT* new_VERVERERBT(VERVERERBT* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->vptr_void=GC_malloc(sizeof(void())*2);
   tmp->vptr_void[0]=& ___ververerbt__test2__internmethod___ververerbt__dim_0__isreal_;
   tmp->vptr_void[0]=& ___ververerbt__test1__internmethod___ververerbt__dim_0__isreal_;
   return tmp;
}
VERVERVERERBT* new_VERVERVERERBT(VERVERVERERBT* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->vptr_void=GC_malloc(sizeof(void())*1);
   tmp->vptr_void[0]=& ___verververerbt__blub__internmethod___verververerbt__dim_0__isreal_;
   return tmp;
}
BLUBTYP* new_BLUBTYP(BLUBTYP* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->vptr_void=GC_malloc(sizeof(void())*1);
   tmp->vptr_void[0]=& ___blubtyp__hihi__internmethod___blubtyp__dim_0__isreal_;
   tmp->_hallo_=200;
   tmp->_tschuess_=300;
   return tmp;
}
TMETHODTEST* new_TMETHODTEST(TMETHODTEST* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->vptr_void=GC_malloc(sizeof(void())*2);
   tmp->vptr_void[0]=& ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__int__dim_0__isreal_;
   tmp->vptr_void[0]=& ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0__isreal_;
   tmp->vptr_TMETHODTEST_dim=GC_malloc(sizeof(TMETHODTEST*())*1);
   tmp->vptr_TMETHODTEST_dim[2]=& ___tmethodtest__blub__internmethod___tmethodtest__dim_0__isreal_;
   tmp->vptr_CPB_INT_dim_dim=GC_malloc(sizeof(CPB_INT**())*1);
   tmp->vptr_CPB_INT_dim_dim[3]=& ___tmethodtest__arraytest__internmethod___tmethodtest__dim_0__isreal_;
   tmp->vptr_TMETHODTEST_dim_dim=GC_malloc(sizeof(TMETHODTEST**())*1);
   tmp->vptr_TMETHODTEST_dim_dim[4]=& ___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0__isreal_;
   tmp->_haha_=20;
   return tmp;
}
TTEST* new_TTEST(TTEST* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->_x_=200;
   tmp->_y_=0.000000000;
   tmp->_z_="";
   tmp->_testarray_=(TTEST**)allocarray_dim1(sizeof(TTEST),20);
   return tmp;
}
TLIST* new_TLIST(TLIST* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->_start_=NULL;
   return tmp;
}
TLINK* new_TLINK(TLINK* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->_prev_=NULL;
   tmp->_succ_=NULL;
   tmp->_value_=0;
   return tmp;
}
TESTTYPE2* new_TESTTYPE2(TESTTYPE2* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->_self_=NULL;
   return tmp;
}
TRETURNTYPE* new_TRETURNTYPE(TRETURNTYPE* tmp ) {
   tmp->superclass=new_OBJECT((OBJECT*)GC_malloc(sizeof(OBJECT)));
   tmp->_haha_=(-1*99);
   return tmp;
}
int main() {
   GC_INIT();
   print_string__dim_0_( int2string((2*(2+3))));
   print_string__dim_0_( "Next0");
   VERERBT* _normal_=NULL;
   _normal_=new_VERERBT((VERERBT*)GC_malloc(sizeof(VERERBT)));
   ___vererbt__test1__internmethod___vererbt__dim_0_( _normal_,0);
   print_string__dim_0_( "Next");
   VERVERERBT* _testver_=NULL;
   _testver_=new_VERVERERBT((VERVERERBT*)GC_malloc(sizeof(VERVERERBT)));
   ___ververerbt__test1__internmethod___ververerbt__dim_0_( _testver_,1);
   print_string__dim_0_( "Next2");
   ___ververerbt__test2__internmethod___ververerbt__dim_0_( _testver_,0);
   print_string__dim_0_( "Begin");
   TMETHODTEST* _methodtestinst_=NULL;
   _methodtestinst_=new_TMETHODTEST((TMETHODTEST*)GC_malloc(sizeof(TMETHODTEST)));
   print_string__dim_0_( "StartPArameter");
   ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0_( _methodtestinst_,1,100.900002);
   print_string__dim_0_( "EndParameter");
   print_string__dim_0_( joinstr("Haha: ",int2string(___tmethodtest__blub__internmethod___tmethodtest__dim_0_( ___tmethodtest__blub__internmethod___tmethodtest__dim_0_( ___tmethodtest__blub__internmethod___tmethodtest__dim_0_( _methodtestinst_,0),0),0)->_haha_)));
   print_string__dim_0_( joinstr("Aus Methode: ",int2string(___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_( _methodtestinst_,0)[4][4])));
   print_string__dim_0_( joinstr("Rekurive Arrays: ",int2string(___tmethodtest__arraytest__internmethod___tmethodtest__dim_0_( ___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0_( _methodtestinst_,1,400)[1],0)[4][4])));
   _einkleinertest_=new_TTEST((TTEST*)GC_malloc(sizeof(TTEST)));
   _wawa_=(TTEST**)allocarray_dim1(sizeof(TTEST),20);
   print_string__dim_0_( joinstr("Ein kleiner Test mit vordefinierte Werte: ",int2string(_einkleinertest_->_x_)));
   TLIST* _list_=NULL;
   _list_=createlist();
   add_tlist__dim_0__int__dim_0_( _list_,4);
   add_tlist__dim_0__int__dim_0_( _list_,10);
   add_tlist__dim_0__int__dim_0_( _list_,100);
   TLINK* _cur_=NULL;
   _cur_=_list_->_start_;
   while ((CPB_INT)((_cur_!=NULL))) {
      print_string__dim_0_( joinstr("Linked List: ",int2string(_cur_->_value_)));
      _cur_=_cur_->_prev_;
   }
   TTEST** _test_=NULL;
   _test_=(TTEST**)allocarray_dim1(sizeof(TTEST),2);
   _test_[1]=new_TTEST((TTEST*)GC_malloc(sizeof(TTEST)));
   _test_[1]->_x_=10;
   print_string__dim_0_( joinstr("Test: ",int2string(_test_[1]->_x_)));
   _test_[1]->_testarray_=(TTEST**)allocarray_dim1(sizeof(TTEST),5);
   _test_[1]->_testarray_[1]=new_TTEST((TTEST*)GC_malloc(sizeof(TTEST)));
   _test_[1]->_testarray_[1]->_x_=100;
   print_string__dim_0_( int2string(_test_[1]->_testarray_[1]->_x_));
   TESTTYPE2* _test2_=NULL;
   _test2_=new_TESTTYPE2((TESTTYPE2*)GC_malloc(sizeof(TESTTYPE2)));
   _test2_->_self_=_test2_;
   TESTTYPE2* _tmptyp_=NULL;
   _tmptyp_=_test2_;
   CPB_INT _j_=0;
   _j_=0;
   while ((CPB_INT)((_tmptyp_!=NULL))) {
      print_string__dim_0_( "Hallo in Type DUmm");
      _tmptyp_=_tmptyp_->_self_;
      _j_=(_j_+1);
      if ((_j_>4)) {
         break;
      }
   }
   TRETURNTYPE* _typ_=NULL;
   _typ_=gettype();
   _typ_->_haha_=20;
   typalsparameter_treturntype__dim_0_( _typ_);
   print_string__dim_0_( joinstr("Bekomme Typ: ",int2string(gettype()->_haha_)));
   CPB_INT*** _mehrdim_=NULL;
   _mehrdim_=(CPB_INT***)allocarray_dim3(sizeof(CPB_INT),5,9,20);
   print_string__dim_0_( "Mehrdim start");
   _mehrdim_[4][8][19]=42;
   _mehrdim_[4][4][4]=99;
   print_string__dim_0_( int2string(_mehrdim_[4][8][19]));
   _mehrdim_=mehrdimtest_int__dim_3_( _mehrdim_);
   print_string__dim_0_( "Blub");
   datatypetest();
   print_string__dim_0_( "Hallo");
   print_string__dim_0_( joinstr("Hallo",int2string((((((2*(5+4))+(5*(8+10)))+5)+5)+3))));
   vordefiniert_int__dim_0__float__dim_0__string__dim_0_( 100,9.89999962,"Gaga");
   CPB_STRING** _mehrdimstring_=NULL;
   _mehrdimstring_=(CPB_STRING**)allocarray_dim2(sizeof(CPB_STRING),5,5);
   _mehrdimstring_[2][3]="Hallo";
   print_string__dim_0_( _mehrdimstring_[2][3]);
   CPB_INT** _anderertest_=NULL;
   _anderertest_=(CPB_INT**)allocarray_dim2(sizeof(CPB_INT),10,10);
   { CPB_INT _x_=0;;
   for (_x_=0;_x_<9;_x_+=1) {
      { CPB_INT _y_=0;;
      for (_y_=0;_y_<9;_y_+=1) {
         _anderertest_[_x_][_y_]=((_x_*9)+_y_);
      } }
   } }
   { CPB_INT _x_=0;;
   for (_x_=0;_x_<9;_x_+=1) {
      { CPB_INT _y_=0;;
      for (_y_=0;_y_<9;_y_+=1) {
         print_string__dim_0_( joinstr(joinstr(joinstr(joinstr(joinstr("In Array an Position '",int2string(_x_)),"', '"),int2string(_y_)),"': "),int2string(_anderertest_[_x_][_y_])));
      } }
   } }
   print_string__dim_0_( joinstr("MultiDim Array:",int2string(_mehrdim_[1][1][1])));
   CPB_INT* _array_=NULL;
   _array_=(CPB_INT*)allocarray_dim1(sizeof(CPB_INT),1000);
   _array_[40]=(100*4);
   _array_=arrayfunktion_int__dim_1_( _array_);
   print_string__dim_0_( joinstr("Aus Array Funktion: ",int2string(_array_[4])));
   gccollect();
   print_string__dim_0_( int2string((-1*5)));
   print_string__dim_0_( float2string(string2float("5.5")));
   CPB_FLOAT _floattest_=0.0f;
   _floattest_=(CPB_FLOAT)(200);
   print_string__dim_0_( float2string(_floattest_));
   _halloglobal_=100;
   print_string__dim_0_( "Zweite Zeile");
   CPB_INT _hallo_=0;
   _hallo_=40;
   _hallo_=(100+(5*10));
   _hallo_=(CPB_INT)(((CPB_FLOAT)(_hallo_)+100.000000));
   print_string__dim_0_( joinstr("Text: ",int2string(_hallo_)));
   if ((10*10)) {
      print_string__dim_0_( "Hallo ist gleich 10");
      
   } else {
      if (10) {
         if (string2int("Hallo Welt")) {
            print_string__dim_0_( "hallo");
            
         } else {
            if (2) {
               print_string__dim_0_( "Blub");
               
            } else {
               print_string__dim_0_( "Gaga");

            }

         }
         print_string__dim_0_( "In Elseif");
         
      } else {
         print_string__dim_0_( "Blub");

      }

   }
   CPB_INT _tmp_=0;
   _tmp_=1;
   while ((_tmp_<10)) {
      print_string__dim_0_( joinstr("In While - Wend ",int2string(_tmp_)));
      _tmp_=(_tmp_+1);
   }
   do {
      print_string__dim_0_( "In Repeat Until");
      break;
   } while (!(1));
   switch (10) {
      case 5:
         print_string__dim_0_( "Hallo");
         print_string__dim_0_( "Blubbig");
         break;

      case 20:
         print_string__dim_0_( "Hallo");
         print_string__dim_0_( "Blubbig");
         break;

      case 7:
         print_string__dim_0_( "blub");
         break;

      default:
         print_string__dim_0_( "in Default");

   }
   { CPB_INT _i_=0;;
   for (_i_=0;_i_<10;_i_+=1) {
      print_string__dim_0_( joinstr("Zahl: ",int2string(_i_)));
   } }
   print_string__dim_0_( int2string(blub_string__dim_0__int__dim_0__float__dim_0_( "Hallo",10,10.0000000)));
   ohnenichts();
   print_string__dim_0_( joinstr("Aus Array direkt entnommen: ",int2string(testarray()[4][4])));
   print_string__dim_0_( joinstr("Lustig: ",int2string((-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*(-1*10)))))))))))))))))));
   optionaltest_int__dim_0__int__dim_0__int__dim_0_( 100,100,300);
}
void ___vererbt__test1__internmethod___vererbt__dim_0__isreal_( VERERBT* _this_) {
   print_string__dim_0_( "Hiho");
   print_string__dim_0_( joinstr("In Test1 ",int2string(_this_->_hallo_)));
}

void ___ververerbt__test2__internmethod___ververerbt__dim_0__isreal_( VERVERERBT* _this_) {
   print_string__dim_0_( "In Test2");
}

void ___ververerbt__test1__internmethod___ververerbt__dim_0__isreal_( VERVERERBT* _this_) {
   print_string__dim_0_( "HUHU");
   print_string__dim_0_( "In Test 1 aber VerVErerbt");
}

void ___verververerbt__blub__internmethod___verververerbt__dim_0__isreal_( VERVERVERERBT* _this_) {
}

void ___blubtyp__hihi__internmethod___blubtyp__dim_0__isreal_( BLUBTYP* _this_) {
   print_string__dim_0_( joinstr(joinstr(joinstr("Blubbig: ",int2string(_this_->_hallo_))," - "),int2string(_this_->_tschuess_)));
}

void ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__int__dim_0__isreal_( TMETHODTEST* _this_,CPB_INT _param_) {
   print_string__dim_0_( joinstr("In Methode ",int2string(_param_)));
   _this_->_haha_=100;
   print_string__dim_0_( "Aus Methode");
}

void ___tmethodtest__methodentest__internmethod___tmethodtest__dim_0__float__dim_0__isreal_( TMETHODTEST* _this_,CPB_FLOAT _param_) {
   print_string__dim_0_( joinstr("Ueberladen: ",float2string(_param_)));
}

TMETHODTEST* ___tmethodtest__blub__internmethod___tmethodtest__dim_0__isreal_( TMETHODTEST* _this_) {
   return _this_;
}

CPB_INT** ___tmethodtest__arraytest__internmethod___tmethodtest__dim_0__isreal_( TMETHODTEST* _this_) {
   print_string__dim_0_( "In Array Test");
   CPB_INT** _arr_=NULL;
   _arr_=(CPB_INT**)allocarray_dim2(sizeof(CPB_INT),20,20);
   _arr_[4][4]=200;
   return _arr_;
}

TMETHODTEST** ___tmethodtest__getarray__internmethod___tmethodtest__dim_0__int__dim_0__isreal_( TMETHODTEST* _this_,CPB_INT _mitparam_) {
   print_string__dim_0_( joinstr("GetArray: ",int2string(_mitparam_)));
   TMETHODTEST** _arr_=NULL;
   _arr_=(TMETHODTEST**)allocarray_dim1(sizeof(TMETHODTEST),2);
   _arr_[1]=new_TMETHODTEST((TMETHODTEST*)GC_malloc(sizeof(TMETHODTEST)));
   return _arr_;
}

TLIST* createlist() {
   TLIST* _list_=NULL;
   _list_=new_TLIST((TLIST*)GC_malloc(sizeof(TLIST)));
   _list_->_start_=NULL;
   return _list_;
}

TLINK* add_tlist__dim_0__int__dim_0_( TLIST* _list_,CPB_INT _value_) {
   _zeahler_=(_zeahler_+1);
   TLINK* _link_=NULL;
   _link_=new_TLINK((TLINK*)GC_malloc(sizeof(TLINK)));
   _link_->_value_=_value_;
   _link_->_prev_=_list_->_start_;
   _link_->_succ_=NULL;
   if ((CPB_INT)((_list_->_start_!=NULL))) {
      _list_->_start_->_succ_=_link_;
   }
   _list_->_start_=_link_;
   return _link_;
}

TRETURNTYPE* gettype() {
   return new_TRETURNTYPE((TRETURNTYPE*)GC_malloc(sizeof(TRETURNTYPE)));
}

void typalsparameter_treturntype__dim_0_( TRETURNTYPE* _blubtest_) {
   print_string__dim_0_( int2string(_blubtest_->_haha_));
}

void ohnenichts() {
}

CPB_INT blub_int__dim_0__string__dim_0__int__dim_0_( CPB_INT _x_,CPB_STRING _z_,CPB_INT _y_) {
   print_string__dim_0_( joinstr(joinstr(joinstr(joinstr(joinstr("X: ",int2string(_x_))," Y: "),int2string(_y_)),"  "),_z_));
   return 100;
}

CPB_INT blub_string__dim_0__int__dim_0__float__dim_0_( CPB_STRING _x_,CPB_INT _z_,CPB_FLOAT _y_) {
   print_string__dim_0_( "In anderes Blub");
   return (-1*100);
}

void vordefiniert_int__dim_0__float__dim_0__string__dim_0_( CPB_INT _x_,CPB_FLOAT _y_,CPB_STRING _z_) {
   print_string__dim_0_( joinstr(joinstr(joinstr(joinstr(joinstr("VORDEFINIERT FTW. ",int2string(_x_))," "),float2string(_y_))," "),_z_));
}

CPB_INT* arrayfunktion_int__dim_1_( CPB_INT* _x_) {
   print_string__dim_0_( joinstr("In Array Funktion: ",int2string(_x_[40])));
   _x_=(CPB_INT)(NULL);
   CPB_INT* _test_=NULL;
   _test_=(CPB_INT*)allocarray_dim1(sizeof(CPB_INT),10);
   _test_[4]=22;
   return _test_;
}

CPB_INT*** mehrdimtest_int__dim_3_( CPB_INT*** _y_) {
   print_string__dim_0_( joinstr("In Mehr Dim Array Funktion: ",int2string(_y_[4][4][4])));
   _y_=(CPB_INT)(NULL);
   CPB_INT*** _test_=NULL;
   _test_=(CPB_INT***)allocarray_dim3(sizeof(CPB_INT),2,2,2);
   _test_[1][1][1]=100;
   return _test_;
}

void datatypetest() {
   CPB_SHORT _testshort_=0;CPB_DOUBLE _testdouble_=0.0f;CPB_LONG _testlong_=0;CPB_BYTE _testbyte_=0;
   _testshort_=(CPB_SHORT)(65535);
   _testdouble_=(CPB_DOUBLE)(10000.0000);
   _testlong_=(CPB_LONG)(9999999);
   _testbyte_=(CPB_BYTE)(255);
}

CPB_INT** testarray() {
   CPB_INT** _array_=NULL;
   _array_=(CPB_INT**)allocarray_dim2(sizeof(CPB_INT),8,8);
   _array_[4][4]=100;
   return _array_;
}

void optionaltest_int__dim_0__int__dim_0__int__dim_0_( CPB_INT _x_,CPB_INT _y_,CPB_INT _z_) {
   print_string__dim_0_( int2string(_x_));
   print_string__dim_0_( int2string(_y_));
   print_string__dim_0_( int2string(_z_));
}

