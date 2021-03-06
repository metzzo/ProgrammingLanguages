/******************************************************************
 * File: source//script_scanner.h
 *
 * This file was automatically generated by CppCC Version 0.0.6
 * DO NOT EDIT MANUALLY
 ******************************************************************/


#ifndef __SCRIPT_SCANNER_HH__
#define __SCRIPT_SCANNER_HH__

#include <string>
#include <fstream>
#include <iostream>
#include <exception>
#include <stack>

#include "script_token.h"

namespace script_tut
{

class ScanException : public std::exception
{
  public:
    
    ScanException (const std::string &message_ = "Scan exception") :
      message(message_)
    {}
    
    ScanException (const Position &pos_,
                   const std::string &message_ = "Scan exception") :
      message(message_), pos(pos_)
    {}
    
    ~ScanException () throw ()
    {}
    
    virtual operator std::string () const
    {
      return std::string(pos) + ": " + message;
    }
    
    virtual const char* what () throw ()
    {
      return message.c_str();
    }
    
  private:
  
    Position pos;
    std::string message;
};

class scriptScanner_base
{
  protected:
    bool onScanError (ScanException &ex) { return false; }
    bool onIOError (ScanException &ex) { return false; }
    bool wrap () { return false; }
    void commonTokenAction (scriptToken &tok) {}
    void onInit () {}
    void onDestroy () {}
};

class scriptScanner: public scriptScanner_base
{
public:
  
  struct t_laCell
  {
    scriptToken *token;
    struct t_laCell *next;
    t_laCell(scriptToken *token_, struct t_laCell *next_) : token(token_), next(next_) {}
    ~t_laCell() { delete token; }
  };
  
  scriptScanner (std::istream *in_ = NULL)
      : _buffer(NULL), _reject(false), _more(false),
  _bsz(8 * 1024), _pbsz(100)
  {
    switchToStream(in_);
    lookahead = false;
    la0 = _laBegin = _laEnd = new struct t_laCell(new scriptToken, NULL);
    la0->next = la0;
    switchToState(START);
    onInit();
  }
  
  ~scriptScanner ()
  {
    if (_buffer) delete[] _buffer;
    for (t_laCell *p = _laEnd->next, *q; p != _laEnd; p = q)
    {
      q = p->next;
      delete p;
    }
    delete _laEnd;
    onDestroy();
  }
  
  void rejectToken() {_reject = true; }
  
  void switchToStream (std::istream *in)
  {
    resetPos();
    inputStream = in;
    _binit();
  }
  
  class StreamState
  {
    friend class scriptScanner;
    std::istream *inputStream;
    char *_buffer, *_ch, *_start, *_eob;
    char * _bol;
    int _bsz, _pbsz;
    bool _lta, _eof;
    Position bPos, ePos;
    
    StreamState (std::istream *inputStream_, char *_buffer_, int _bsz_,
                int _pbsz_, char *_start_, char *_bol_, char *_ch_,
                 char *_eob_, bool _lta_, bool _eof_,
                 Position &bPos_, Position &ePos_) :
      inputStream(inputStream_), _buffer(_buffer_), _bsz(_bsz_),
        _pbsz(_pbsz_), _start(_start_), _bol(_bol_), _ch(_ch_),
       _eob(_eob_), _lta(_lta_), _eof(_eof_),
       bPos(bPos_), ePos(ePos_)
    {}
    
    ~StreamState () { if (_buffer != NULL) delete[] _buffer; }
  };
  
  StreamState* pushStream (std::istream *in)
  {
    StreamState *res = new StreamState(inputStream, _buffer, _bsz,
                        _pbsz, _more ? _start : _ch, _bol, _ch,
                                       _eob, _lta, _eof,
                                     _more ? bPos : ePos, ePos);
    _buffer = NULL;
    switchToStream(in);
    return res;
  }
  
  void popStream (StreamState *s)
  {
    if (_buffer != NULL) delete[] _buffer;
    inputStream = s->inputStream;
    _buffer = s->_buffer;
    _bsz = s->_bsz;
    _pbsz = s->_pbsz;
    _start = s->_start;
    _bol = s->_bol;
    _ch = s->_ch;
    _eob = s->_eob;
    _lta = s->_lta;
    _eof = s->_eof;
    bPos = s->bPos;
    ePos = s->ePos;
    s->_buffer = NULL;
    delete s;
  }
  
  std::istream& getInputStream ()
  {
    return *inputStream;
  }
  
  int switchToState (int newState)
  {
    int prevState = _state;
    _state = newState;
    return prevState;
  }
  
  int getState ()
  {
    return _state;
  }
  
  int pushState (int newState)
  {
    _stateStack.push(_state);
    return switchToState(newState);
  }
  
  int popState ()
  {
    int prevState = switchToState(_stateStack.top());
    _stateStack.pop();
    return prevState;
  }
  
  const Position& getCurrentPos ()
  {
    return bPos;
  }
  
  void resetPos ()
  {
    ePos.ln = bPos.ln = 1;
    bPos.col = ePos.col = 1;
    _bol = _ch;
  }
  
  int newLine ()
  {
    _bol = _ch;
    ePos.col = 1;
    return ePos.ln++;
  }
  
  bool lookingAhead ()
  {
    return lookahead;
  }
  
  int getChar ()
  {
    for(;;) {
      unsigned int c = *_ch++;
      if (_ch == _eob) {
        _ch--;
        if (_eof && !wrap()) return EOF;
        else _brefill();
      } else {
        if (_start == _ch - 1) _start = _ch;
        return c;
      }
    }
  }
  
  void unGetChars (const char *c, int n);
  void unGetChar (char c)
  {
    unGetChars(&c, 1);
  }
  
  void unGetChars (const std::string &s)
  {
    unGetChars(s.data(), s.length());
  }
  
  void unGetChars (const char *s)
  {
    unGetChars(s, strlen(s));
  }
  
  scriptToken* la (int k)
  {
    struct t_laCell *p, *q;
    for (p = la0; k >= 0; k--, q = p, p = p->next) {
      if (p == _laEnd) {
        if (_laEnd->next == _laBegin)
          _laEnd->next = new struct t_laCell(new scriptToken(), _laBegin);
        _scan(_laEnd->token);
        _laEnd = _laEnd->next;
      }
    }
    return q->token;
  }
  
  scriptToken* la ()
  {
    if (la0 == _laEnd) {
      if (_laEnd->next == _laBegin)
        _laEnd->next = new struct t_laCell(new scriptToken(), _laBegin);
      _scan(_laEnd->token);
      _laEnd = _laEnd->next;
    }
    return la0->token;
  }
  
  void consume ()
  {
    la();
    la0 = la0->next;
    if (!lookahead)
      _laBegin = _laBegin->next;
  }
  
  void unchecked_consume ()
  {
    la0 = la0->next;
    if (!lookahead)
      _laBegin = _laBegin->next;
  }
  
  void setMarker ()
  {
    lookahead = true;
    laMarkers.push(la0);
  }
  
  void rewindToMarker ()
  {
    la0 = laMarkers.top();
    laMarkers.pop();
    if (laMarkers.empty()) {
      lookahead = false;
      _laBegin = la0;
    }
  }
  
  
  static const int START;
  
protected: // the ugly stuff

  void _scan(scriptToken *token);
  Position bPos, ePos;
  std::istream *inputStream;
  
  bool lookahead;
  struct t_laCell *la0, *_laBegin, *_laEnd;
  std::stack<struct t_laCell*> laMarkers;
  int _state;
  std::stack<int> _stateStack;
  bool _reject;
  
  void _brefill ();
  void _binit();
  int _bsz; //buffer size
  int _pbsz; //extra bytes for pushback
  char *_buffer;
  char *_ch; // current char
  char *_eob; // one past the last char in the buffer
  char *_start; // points ot the token's start
  bool _eof; // eof seen during _brefill
  bool _lta; // last token in the stream was accepted
  bool _more; // true in token actions of MORE tokens
  char * _bol; // _ch - _bol = col increment.
  
private: // user code

		public:
		
		// Wenn ein Input/Output error passiert, wird diese
		// Funktion aufgerufen
		bool onIOError(ScanException e)
		{
			cout << "IO Error: " << e.what() << endl;
			return true;
		}
		
		// wenn zB eine Zeichenkette gescannt wird, die auf kein
		// Token passt, wird diese Funktion aufgerufen
		bool onScanError(ScanException e)
		{
			cout << "Scan Error: " << e.what() << endl;
			return true;
		}
	


}; // end class scriptScanner


} //end namespace script_tut

#endif // ifndef __SCRIPT_SCANNER_HH__


/* End of file. */
