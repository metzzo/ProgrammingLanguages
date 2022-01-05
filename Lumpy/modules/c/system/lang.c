#include "GC.h"
#include "lang.h"

void print_string(GCNode* str) {
    if (str == NULL) throwNullPointer();
    printf("%s\n",(char*)(str -> data));
}

void print_int(int i) {
    printf("%d\n",i);
}

int array_bytes_int(GCNode* node) {
    return node -> size;
}

int array_bytes_float(GCNode* node) {
    return node -> size;
}

int array_bytes_boolean(GCNode* node) {
    return node -> size;
}

int array_bytes_str(GCNode* node) {
    return node -> size;
}

int array_bytes_obj(GCNode* node) {
    return node -> size;
}
