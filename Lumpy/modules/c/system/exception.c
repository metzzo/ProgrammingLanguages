#include "GC.h"


ExceptionHolder* findHolder(int data) {
    while (currentFrame != NULL) {
        ExceptionHolder* holder = currentFrame -> exception;
        if (holder != NULL) {
            int i = 0;

            for (i = 0; i < holder -> size; i++) {
                if ((holder -> exceptions)[i] == data || (holder -> exceptions)[i] == -1) {
                    return holder;
                }
            }
        }
        if (currentFrame -> prev == NULL) {
            printf("An error occured.");
            return NULL;
        } else {
            stack_leave();
        }
    }

    printf("Unhandled Exception.");
    return NULL;
}

void removeException(ExceptionHolder* exc) {
    free(exc -> buffer);
    free(exc -> exceptions);
    free(exc);
}

ExceptionHolder* newException(jmp_buf* buffer, int size, ...) {
    va_list args;
	va_start (args, size);

    ExceptionHolder* holder = malloc(sizeof(ExceptionHolder));
    holder -> size = size;
    holder -> buffer = buffer;
    holder -> exceptions = malloc(sizeof(int) * size);

    int i = 0;
    for (i = 0; i< size; i++) {
        (holder -> exceptions)[i] = va_arg(args, int);
    }

	va_end (args);

	return holder;
}

void throwException(int typ) {
    ExceptionHolder* holder = findHolder(typ);
    if (holder != NULL) {
        jmp_buf* buf = holder -> buffer;
        if (buf != NULL) {
            longjmp(*buf, typ);
        } else {
            printf("No buffer found.");
        }
    } else {
        printf("No holder.");
    }
}
