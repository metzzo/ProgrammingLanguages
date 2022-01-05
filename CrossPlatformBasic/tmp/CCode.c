#include "../Language/C/libs/cpb_core.h"
#include <stdlib.h>
#include "../Language/C/libs/cpb_graphics.h"
void normalTrace(GCStackNode* node) {
   node->mark = 1;
}
typedef struct _tlink {
   GCStackNode* _prev_;
   GCStackNode* _succ_;
   GCStackNode* _value_;
}TLINK;
void tracetlink(GCStackNode* node) {
   node->mark=1;
   GCStackNode* tmp;
   tmp=((TLINK*)node->obj)->_prev_;
   if (tmp != NULL && tmp->mark==0) tmp->trace(tmp);
   tmp=((TLINK*)node->obj)->_succ_;
   if (tmp != NULL && tmp->mark==0) tmp->trace(tmp);
   tmp=((TLINK*)node->obj)->_value_;
   if (tmp != NULL && tmp->mark==0) tmp->trace(tmp);
}
typedef struct _tlist {
   GCStackNode* _startlink_;
   GCStackNode* _status_;
}TLIST;
void tracetlist(GCStackNode* node) {
   node->mark=1;
   GCStackNode* tmp;
   tmp=((TLIST*)node->obj)->_startlink_;
   if (tmp != NULL && tmp->mark==0) tmp->trace(tmp);
   tmp=((TLIST*)node->obj)->_status_;
   if (tmp != NULL && tmp->mark==0) tmp->trace(tmp);
}
typedef struct _timage {
   CPB_INT _img_;
}TIMAGE;
void tracetimage(GCStackNode* node) {
   node->mark=1;
}
typedef struct _tintdatatype {
   CPB_INT _value_;
}TINTDATATYPE;
void tracetintdatatype(GCStackNode* node) {
   node->mark=1;
}
GCStackNode* new_TINTDATATYPE(GCStackNode* node );
GCStackNode* new_TIMAGE(GCStackNode* node );
GCStackNode* new_TLIST(GCStackNode* node );
GCStackNode* new_TLINK(GCStackNode* node );

GCStackNode* ___tintdatatype__create__internmethod___tintdatatype__dim_0__int__dim_0_( GCStackNode* _this_,CPB_INT _value_);

void ___timage__load__internmethod___timage__dim_0__string__dim_0_( GCStackNode* _this_,GCStackNode* _path_);

void ___timage__load__internmethod___timage__dim_0__string__dim_0__int__dim_0__int__dim_0_( GCStackNode* _this_,GCStackNode* _path_,CPB_INT _framewidth_,CPB_INT _frameheight_);

void ___timage__draw__internmethod___timage__dim_0__float__dim_0__float__dim_0__int__dim_0_( GCStackNode* _this_,CPB_FLOAT _x_,CPB_FLOAT _y_,CPB_INT _frame_);

void ___timage__delete__internmethod___timage__dim_0_( GCStackNode* _this_);

void end();

void ___tlist__add__internmethod___tlist__dim_0__unknown__dim_0_( GCStackNode* _this_,GCStackNode* _obj_);

void ___tlist__startiterate__internmethod___tlist__dim_0_( GCStackNode* _this_);

void ___tlist__enditerate__internmethod___tlist__dim_0_( GCStackNode* _this_);

CPB_INT ___tlist__hasnext__internmethod___tlist__dim_0_( GCStackNode* _this_);

GCStackNode* ___tlist__next__internmethod___tlist__dim_0_( GCStackNode* _this_);

CPB_INT loadimage_string__dim_0_( GCStackNode* _path_) {
   return loadImage( ((CPB_STRING)_path_->obj));
}

CPB_INT loadanim_string__dim_0__int__dim_0__int__dim_0_( GCStackNode* _path_,CPB_INT _width_,CPB_INT _height_) {
   return loadAnim( ((CPB_STRING)_path_->obj), _width_, _height_);
}

void drawimage_int__dim_0__int__dim_0__int__dim_0__int__dim_0_( CPB_INT _image_,CPB_INT _posx_,CPB_INT _posy_,CPB_INT _frame_) {
   drawImage( _image_, _posx_, _posy_, _frame_);
}

void freeimage_int__dim_0_( CPB_INT _image_) {
   freeImage( _image_);
}

void print_string__dim_0_( GCStackNode* _text_) {
   print( _text_);
}

void exit_int__dim_0_( CPB_INT _value_) {
   exit( _value_);
}
GCStackNode* new_TINTDATATYPE(GCStackNode* node ) {
   TINTDATATYPE* tmp = (TINTDATATYPE*)node->obj;
   tmp->_value_=0;
   return node;
}
GCStackNode* new_TIMAGE(GCStackNode* node ) {
   TIMAGE* tmp = (TIMAGE*)node->obj;
   node->finalizer = &___timage__delete__internmethod___timage__dim_0_;
   tmp->_img_=0;
   return node;
}
GCStackNode* new_TLIST(GCStackNode* node ) {
   TLIST* tmp = (TLIST*)node->obj;
   tmp->_startlink_=NULL;
   tmp->_status_=NULL;
   return node;
}
GCStackNode* new_TLINK(GCStackNode* node ) {
   TLINK* tmp = (TLINK*)node->obj;
   tmp->_prev_=NULL;
   tmp->_succ_=NULL;
   tmp->_value_=NULL;
   return node;
}
int main ( int argc, char** argv ) {
   GC_INIT();
   stack_enter();
   GCStackNode* _list_=NULL;
   stack_push(&_list_);
   _list_=new_TLIST((GCStackNode*)GC_malloc(sizeof(TLIST),&tracetlist));
   GCStackNode* _i_=NULL;
   stack_push(&_i_);
   _i_=new_TINTDATATYPE((GCStackNode*)GC_malloc(sizeof(TINTDATATYPE),&tracetintdatatype));
   ___tlist__add__internmethod___tlist__dim_0__unknown__dim_0_( _list_,___tintdatatype__create__internmethod___tintdatatype__dim_0__int__dim_0_( _i_,420));
   _i_=new_TINTDATATYPE((GCStackNode*)GC_malloc(sizeof(TINTDATATYPE),&tracetintdatatype));
   ___tlist__add__internmethod___tlist__dim_0__unknown__dim_0_( _list_,___tintdatatype__create__internmethod___tintdatatype__dim_0__int__dim_0_( _i_,240));
   _i_=new_TINTDATATYPE((GCStackNode*)GC_malloc(sizeof(TINTDATATYPE),&tracetintdatatype));
   ___tlist__add__internmethod___tlist__dim_0__unknown__dim_0_( _list_,___tintdatatype__create__internmethod___tintdatatype__dim_0__int__dim_0_( _i_,24));
   _i_=new_TINTDATATYPE((GCStackNode*)GC_malloc(sizeof(TINTDATATYPE),&tracetintdatatype));
   ___tlist__add__internmethod___tlist__dim_0__unknown__dim_0_( _list_,___tintdatatype__create__internmethod___tintdatatype__dim_0__int__dim_0_( _i_,42));
   ___tlist__startiterate__internmethod___tlist__dim_0_( _list_);
   GCStackNode* _obj_=NULL;
   stack_push(&_obj_);
   _obj_=___tlist__next__internmethod___tlist__dim_0_( _list_);
   while ((CPB_INT)((___tlist__hasnext__internmethod___tlist__dim_0_( _list_)!=NULL))) {
      stack_enter();
      print_string__dim_0_( int2string(((TINTDATATYPE*)_obj_->obj)->_value_));
      _obj_=___tlist__next__internmethod___tlist__dim_0_( _list_);
      stack_leave();
   }
   ___tlist__enditerate__internmethod___tlist__dim_0_( _list_);
   stack_leave();
return 0;
}
GCStackNode* ___tintdatatype__create__internmethod___tintdatatype__dim_0__int__dim_0_( GCStackNode* _this_,CPB_INT _value_) {
   GCStackNode* retvalue;
   stack_enter();
   stack_push(&_this_);
   ((TINTDATATYPE*)_this_->obj)->_value_=_value_;
   retvalue=_this_;
   stack_leave();
   return retvalue;
   stack_leave();
}

void ___timage__load__internmethod___timage__dim_0__string__dim_0_( GCStackNode* _this_,GCStackNode* _path_) {
   stack_enter();
   stack_push(&_this_);
   stack_push(&_path_);
   ((TIMAGE*)_this_->obj)->_img_=loadimage_string__dim_0_( _path_);
   stack_leave();
}

void ___timage__load__internmethod___timage__dim_0__string__dim_0__int__dim_0__int__dim_0_( GCStackNode* _this_,GCStackNode* _path_,CPB_INT _framewidth_,CPB_INT _frameheight_) {
   stack_enter();
   stack_push(&_this_);
   stack_push(&_path_);
   ((TIMAGE*)_this_->obj)->_img_=loadanim_string__dim_0__int__dim_0__int__dim_0_( _path_,_framewidth_,_frameheight_);
   stack_leave();
}

void ___timage__draw__internmethod___timage__dim_0__float__dim_0__float__dim_0__int__dim_0_( GCStackNode* _this_,CPB_FLOAT _x_,CPB_FLOAT _y_,CPB_INT _frame_) {
   stack_enter();
   stack_push(&_this_);
   drawimage_int__dim_0__int__dim_0__int__dim_0__int__dim_0_( ((TIMAGE*)_this_->obj)->_img_,(CPB_INT)(_x_),(CPB_INT)(_y_),_frame_);
   stack_leave();
}

void ___timage__delete__internmethod___timage__dim_0_( GCStackNode* _this_) {
   stack_enter();
   stack_push(&_this_);
   freeimage_int__dim_0_( ((TIMAGE*)_this_->obj)->_img_);
   stack_leave();
}

void end() {
   stack_enter();
   exit_int__dim_0_( 0);
   stack_leave();
}

void ___tlist__add__internmethod___tlist__dim_0__unknown__dim_0_( GCStackNode* _this_,GCStackNode* _obj_) {
   stack_enter();
   stack_push(&_this_);
   stack_push(&_obj_);
   GCStackNode* _l_=NULL;
   stack_push(&_l_);
   _l_=new_TLINK((GCStackNode*)GC_malloc(sizeof(TLINK),&tracetlink));
   ((TLINK*)_l_->obj)->_value_=_obj_;
   ((TLINK*)_l_->obj)->_prev_=((TLIST*)_this_->obj)->_startlink_;
   if ((CPB_INT)((((TLIST*)_this_->obj)->_startlink_!=NULL))) {
      stack_enter();
      ((TLINK*)((TLIST*)(/* fromright */TLINK*)_this_->obj)->_startlink_->obj)->_succ_=_l_;
      stack_leave();
   }
   ((TLIST*)_this_->obj)->_startlink_=_l_;
   stack_leave();
}

void ___tlist__startiterate__internmethod___tlist__dim_0_( GCStackNode* _this_) {
   stack_enter();
   stack_push(&_this_);
   ((TLIST*)_this_->obj)->_status_=((TLIST*)_this_->obj)->_startlink_;
   stack_leave();
}

void ___tlist__enditerate__internmethod___tlist__dim_0_( GCStackNode* _this_) {
   stack_enter();
   stack_push(&_this_);
   ((TLIST*)_this_->obj)->_status_=NULL;
   stack_leave();
}

CPB_INT ___tlist__hasnext__internmethod___tlist__dim_0_( GCStackNode* _this_) {
   CPB_INT retvalue;
   stack_enter();
   stack_push(&_this_);
   if ((CPB_INT)((((TLIST*)_this_->obj)->_status_==NULL))) {
      stack_enter();
      retvalue=0;
      stack_leave();
      return retvalue;
      stack_leave();
   }
   retvalue=1;
   stack_leave();
   return retvalue;
   stack_leave();
}

GCStackNode* ___tlist__next__internmethod___tlist__dim_0_( GCStackNode* _this_) {
   GCStackNode* retvalue;
   stack_enter();
   stack_push(&_this_);
   GCStackNode* _ret_=NULL;
   stack_push(&_ret_);
   _ret_=((TLINK*)((TLIST*)(/* fromright */GCStackNode*)_this_->obj)->_status_->obj)->_value_;
   ((TLIST*)_this_->obj)->_status_=((TLINK*)((TLIST*)(/* fromright */TLINK*)_this_->obj)->_status_->obj)->_succ_;
   retvalue=_ret_;
   stack_leave();
   return retvalue;
   stack_leave();
}

