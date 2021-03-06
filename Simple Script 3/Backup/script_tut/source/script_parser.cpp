/******************************************************************
 * File: source//script_parser.cpp
 *
 * This file was automatically generated by CppCC Version 0.0.6
 * DO NOT EDIT MANUALLY
 ******************************************************************/



#include "script_parser.h"

void script_tut::scriptParser::file ()
{
		;

  while ((scanner.la()->id == scriptToken::IF) || (scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::L_CURLY) || (scanner.la()->id == scriptToken::SEMICOLON) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
    statement();
  }
  { cout << "Statement list" << endl; }

}


void script_tut::scriptParser::statement ()
{
		;

  if ((scanner.la()->id == scriptToken::IF)) {
    if_statement();
    { cout << "If statement" << endl; }

  } else { 
    if ((scanner.la()->id == scriptToken::L_CURLY)) {
      compound_statement();
      { cout << "compound statement" << endl; }

    } else { 
      if ((scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
        expression();
        consumeToken(scriptToken::SEMICOLON);
        { cout << "Simple statement" << endl; }

      } else { 
        consumeToken(scriptToken::SEMICOLON);
        { cout << "Empty statement" << endl; }

      }
    }
  }
}


void script_tut::scriptParser::compound_statement ()
{
		;

  consumeToken(scriptToken::L_CURLY);
  while ((scanner.la()->id == scriptToken::IF) || (scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::L_CURLY) || (scanner.la()->id == scriptToken::SEMICOLON) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
    statement();
  }
  consumeToken(scriptToken::R_CURLY);
}


void script_tut::scriptParser::if_statement ()
{
		;

  consumeToken(scriptToken::IF);
  consumeToken(scriptToken::L_PAR);
  expression();
  consumeToken(scriptToken::R_PAR);
  statement();
  if (__la_0_(1000000000)) {
    consumeToken(scriptToken::ELSE);
    statement();
  } else { 
     /* lambda */
  }
}


void script_tut::scriptParser::expression ()
{
		;

  assign_expression();
}


void script_tut::scriptParser::assign_expression ()
{
		;

  concat_expression();
  while ((scanner.la()->id == scriptToken::ASSIGN)) {
    consumeToken(scriptToken::ASSIGN);
    concat_expression();
    { cout << "Assign" << endl; }

  }
}


void script_tut::scriptParser::concat_expression ()
{
		;

  logical_OR_expression();
  while ((scanner.la()->id == scriptToken::CONCAT)) {
    consumeToken(scriptToken::CONCAT);
    logical_OR_expression();
    { cout << "Concatenation op" << endl; }

  }
}


void script_tut::scriptParser::logical_OR_expression ()
{
		;

  logical_AND_expression();
  while ((scanner.la()->id == scriptToken::LOGIC_OR)) {
    consumeToken(scriptToken::LOGIC_OR);
    logical_AND_expression();
    { cout << "Logic OR" << endl; }

  }
}


void script_tut::scriptParser::logical_AND_expression ()
{
  equal_expression();
  while ((scanner.la()->id == scriptToken::LOGIC_AND)) {
    consumeToken(scriptToken::LOGIC_AND);
    equal_expression();
    { cout << "Logic AND" << endl; }

  }
}


void script_tut::scriptParser::equal_expression ()
{
		;

  add_expression();
  while ((scanner.la()->id == scriptToken::EQUAL) || (scanner.la()->id == scriptToken::NEQUAL)) {
    if ((scanner.la()->id == scriptToken::EQUAL)) {
      consumeToken(scriptToken::EQUAL);
    } else { 
      consumeToken(scriptToken::NEQUAL);
    }
    add_expression();
    { cout << "Equality operator" << endl; }

  }
}


void script_tut::scriptParser::add_expression ()
{
		;

  mult_expression();
  while ((scanner.la()->id == scriptToken::ADD) || (scanner.la()->id == scriptToken::SUB)) {
    if ((scanner.la()->id == scriptToken::ADD)) {
      consumeToken(scriptToken::ADD);
    } else { 
      consumeToken(scriptToken::SUB);
    }
    mult_expression();
    { cout << "Addition|Substraction" << endl; }

  }
}


void script_tut::scriptParser::mult_expression ()
{
		;

  func_call_expression();
  while ((scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV)) {
    if ((scanner.la()->id == scriptToken::MULT)) {
      consumeToken(scriptToken::MULT);
    } else { 
      consumeToken(scriptToken::DIV);
    }
    func_call_expression();
    { cout << "Multiplication|Divide" << endl; }

  }
}


void script_tut::scriptParser::func_call_expression ()
{
		;

  if ((scanner.la()->id == scriptToken::IDENTIFIER)) {
    while ((scanner.la()->id == scriptToken::IDENTIFIER)) {
      consumeToken(scriptToken::IDENTIFIER);
      consumeToken(scriptToken::L_PAR);
      if ((scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
        argument_list();
      } else { 
         /* lambda */
      }
      consumeToken(scriptToken::R_PAR);
      { cout << "Function call" << endl; }

    }
  } else { 
    value_expression();
  }
}


void script_tut::scriptParser::argument_list ()
{
  expression();
  while ((scanner.la()->id == scriptToken::COMMA)) {
    consumeToken(scriptToken::COMMA);
    expression();
  }
  { cout << "Argument list" << endl; }

}


void script_tut::scriptParser::value_expression ()
{
		;

  if ((scanner.la()->id == scriptToken::VAR_NAME)) {
    consumeToken(scriptToken::VAR_NAME);
    { cout << "Variable name: " << token->varName << endl; }

  } else { 
    if ((scanner.la()->id == scriptToken::STRING)) {
      consumeToken(scriptToken::STRING);
      { cout << "String: " << token->stringValue << endl; }

    } else { 
      if ((scanner.la()->id == scriptToken::DECIMAL)) {
        consumeToken(scriptToken::DECIMAL);
        { cout << "Number: " << token->intValue << endl; }

      } else { 
        consumeToken(scriptToken::L_PAR);
        expression();
        consumeToken(scriptToken::R_PAR);
        { cout << "Grouped expression" << endl; }

      }
    }
  }
}


bool script_tut::scriptParser::__la_file_ ()
{
  while ((scanner.la()->id == scriptToken::IF) || (scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::L_CURLY) || (scanner.la()->id == scriptToken::SEMICOLON) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
    if (!__la_statement_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_statement_ ()
{
  if ((scanner.la()->id == scriptToken::IF)) {
    if (!__la_if_statement_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  } else { 
    if ((scanner.la()->id == scriptToken::L_CURLY)) {
      if (!__la_compound_statement_()) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    } else { 
      if ((scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
        if (!__la_expression_()) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
        if (!laConsumeToken(scriptToken::SEMICOLON)) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
      } else { 
        if (!laConsumeToken(scriptToken::SEMICOLON)) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
      }
    }
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_compound_statement_ ()
{
  if (!laConsumeToken(scriptToken::L_CURLY)) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::IF) || (scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::L_CURLY) || (scanner.la()->id == scriptToken::SEMICOLON) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
    if (!__la_statement_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  if (!laConsumeToken(scriptToken::R_CURLY)) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_if_statement_ ()
{
  if (!laConsumeToken(scriptToken::IF)) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  if (!laConsumeToken(scriptToken::L_PAR)) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  if (!__la_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  if (!laConsumeToken(scriptToken::R_PAR)) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  if (!__la_statement_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  if (__la_0_(1000000000)) {
    if (!laConsumeToken(scriptToken::ELSE)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
    if (!__la_statement_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  } else { 
     /* lambda */
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_0_ (int depth)
{
  int _laSave = _la;
  _la = depth;
  scanner.setMarker();
  
  if (!laConsumeToken(scriptToken::ELSE)) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  if (!__la_statement_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  goto __lookahead_succeed_;
  
__lookahead_fail_:
  _la = _laSave;
  scanner.rewindToMarker();
  return false;

__lookahead_succeed_:
  _la = _laSave;
  scanner.rewindToMarker();
  return true;
}


bool script_tut::scriptParser::__la_expression_ ()
{
  if (!__la_assign_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_assign_expression_ ()
{
  if (!__la_concat_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::ASSIGN)) {
    if (!laConsumeToken(scriptToken::ASSIGN)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
    if (!__la_concat_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_concat_expression_ ()
{
  if (!__la_logical_OR_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::CONCAT)) {
    if (!laConsumeToken(scriptToken::CONCAT)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
    if (!__la_logical_OR_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_logical_OR_expression_ ()
{
  if (!__la_logical_AND_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::LOGIC_OR)) {
    if (!laConsumeToken(scriptToken::LOGIC_OR)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
    if (!__la_logical_AND_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_logical_AND_expression_ ()
{
  if (!__la_equal_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::LOGIC_AND)) {
    if (!laConsumeToken(scriptToken::LOGIC_AND)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
    if (!__la_equal_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_equal_expression_ ()
{
  if (!__la_add_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::EQUAL) || (scanner.la()->id == scriptToken::NEQUAL)) {
    if ((scanner.la()->id == scriptToken::EQUAL)) {
      if (!laConsumeToken(scriptToken::EQUAL)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    } else { 
      if (!laConsumeToken(scriptToken::NEQUAL)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    }
    if (!__la_add_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_add_expression_ ()
{
  if (!__la_mult_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::ADD) || (scanner.la()->id == scriptToken::SUB)) {
    if ((scanner.la()->id == scriptToken::ADD)) {
      if (!laConsumeToken(scriptToken::ADD)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    } else { 
      if (!laConsumeToken(scriptToken::SUB)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    }
    if (!__la_mult_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_mult_expression_ ()
{
  if (!__la_func_call_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV)) {
    if ((scanner.la()->id == scriptToken::MULT)) {
      if (!laConsumeToken(scriptToken::MULT)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    } else { 
      if (!laConsumeToken(scriptToken::DIV)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    }
    if (!__la_func_call_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_func_call_expression_ ()
{
  if ((scanner.la()->id == scriptToken::IDENTIFIER)) {
    while ((scanner.la()->id == scriptToken::IDENTIFIER)) {
      if (!laConsumeToken(scriptToken::IDENTIFIER)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
      if (!laConsumeToken(scriptToken::L_PAR)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
      if ((scanner.la()->id == scriptToken::L_PAR) || (scanner.la()->id == scriptToken::MULT) || (scanner.la()->id == scriptToken::DIV) || (scanner.la()->id == scriptToken::IDENTIFIER) || (scanner.la()->id == scriptToken::VAR_NAME) || (scanner.la()->id == scriptToken::DECIMAL) || (scanner.la()->id == scriptToken::STRING)) {
        if (!__la_argument_list_()) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
      } else { 
         /* lambda */
      }
      if (!laConsumeToken(scriptToken::R_PAR)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    }
  } else { 
    if (!__la_value_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_argument_list_ ()
{
  if (!__la_expression_()) goto __lookahead_fail_;
  if (_la == 0) goto __lookahead_succeed_;
  while ((scanner.la()->id == scriptToken::COMMA)) {
    if (!laConsumeToken(scriptToken::COMMA)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
    if (!__la_expression_()) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}


bool script_tut::scriptParser::__la_value_expression_ ()
{
  if ((scanner.la()->id == scriptToken::VAR_NAME)) {
    if (!laConsumeToken(scriptToken::VAR_NAME)) goto __lookahead_fail_;
    if (_la == 0) goto __lookahead_succeed_;
  } else { 
    if ((scanner.la()->id == scriptToken::STRING)) {
      if (!laConsumeToken(scriptToken::STRING)) goto __lookahead_fail_;
      if (_la == 0) goto __lookahead_succeed_;
    } else { 
      if ((scanner.la()->id == scriptToken::DECIMAL)) {
        if (!laConsumeToken(scriptToken::DECIMAL)) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
      } else { 
        if (!laConsumeToken(scriptToken::L_PAR)) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
        if (!__la_expression_()) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
        if (!laConsumeToken(scriptToken::R_PAR)) goto __lookahead_fail_;
        if (_la == 0) goto __lookahead_succeed_;
      }
    }
  }
  
  __lookahead_succeed_:
    return true;
    
  __lookahead_fail_:
    return false;
}





/* End of file. */
