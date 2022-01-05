#include <stdarg.h>

#ifndef EXCEPTION_FILE
#define EXCEPTION_FILE


#include "GC.h"


typedef struct exceptionholder {
    int* exceptions; //die moeglichen Exceptions, die dieser holder abfangen kann
    int size; // die anzahl der exceptions
    jmp_buf* buffer; //der sprungbuffer
} ExceptionHolder;
ExceptionHolder* newException(jmp_buf* buffer, int size, ...);
ExceptionHolder* findHolder(int data);
void throwException(int typ);

#endif




