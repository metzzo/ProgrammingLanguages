#include "GC.h"
#include <setjmp.h>

//Node löschen
void removeNode(GCNode* node) {
    if (node != NULL) {
        free(node -> data);
        free(node);
    }
}


void GCInit() {
    currentNode = NULL;
    currentFrame = NULL;
}

void GCDeInit() {
    GCNode* node = currentNode;
    while (node != NULL) {
        GCNode* tmp = node -> next;
        removeNode(node);
        node = tmp;
    }
    currentNode = NULL;

    GCFrame* frame = currentFrame;
    while (frame != NULL) {
        GCFrame* tmp = frame -> prev;
        free(frame);
        frame = tmp;
    }

    currentFrame = NULL;
}

//Stack Manipulation
void stack_enter(int size, ExceptionHolder* exception) { //size ist wieviele lokale variablen drinnen sind. exception: wohin gesprungen wird, bei einer exception
    //neuen stack pushen.
    GCFrame* frame = (GCFrame*)malloc(sizeof(GCFrame));
    frame->prev = currentFrame;
    frame->refs = (GCNode***)malloc(sizeof(GCNode) * size);
    frame->size = size;
    frame->exception = exception;


    currentFrame = frame;
}

void stack_leave() {
    //stack wieder weg.
    GCFrame* frame = currentFrame->prev;

    if (currentFrame -> exception != NULL) removeException(currentFrame -> exception);
    free(currentFrame -> refs);
    free(currentFrame);

    currentFrame = frame;
}

void stack_create(GCNode** node, int pos) {
    //auf den stackerstellen
    currentFrame -> refs[pos] = node;
}

//Collecten
void gccollect() {
    //Stack durchgehen und alle GCNode marken
    GCFrame* frame = currentFrame;
    while (frame != NULL) {
        //Alle Refs durchgehen
        int i;
        for (i = 0; i<frame->size; i++) {
            GCNode* ref = *(frame -> refs[i]);
            if (ref != NULL) {
                ref -> trace(ref);
            }
        }
        frame = frame -> prev;
    }
    //alle objekte löschen, die nicht markiert sind
    GCNode* node = currentNode;
    GCNode* prev = NULL;
    while (node != NULL) {
        GCNode* next = node -> next;
        if (node -> mark == 0) {
            //Nicht markiert => löschen
            if (prev != NULL) {
                prev -> next = next;
            }

            removeNode(node);
        } else {
            node -> mark = 0;
            prev = node;
        }
        node = next;
    }
}


//Speicher anfordetn
GCNode* gc_malloc(int size, void(*tracefunc)(GCNode*)) {
    void* data = NULL;
    if (size > 0) {
        data = malloc(size);
    }
    GCNode* node = (GCNode*)malloc(sizeof(GCNode));
    if (node == NULL) {
        throwOutOfMemory();
        return NULL;
    }
    node -> typid = 0;
    node -> size = size;
    node -> data = data;
    node -> mark = 0;
    node -> trace = tracefunc;
    node -> next = currentNode;
    currentNode = node;

    return node;
}

void standardTrace(GCNode* node) {
    node -> mark = 1;
}
