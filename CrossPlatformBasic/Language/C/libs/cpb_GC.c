#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

inline void checksize() {
	if (stackpos==STACKSIZE) {
		gccollect();
	}
	if (stackpos>=STACKSIZE) {
		printf("ERROR STACKOVERFLOW\n");
	}
}


void GC_INIT() {
	stackpos=0;
}
void stack_enter() {
	if (stack[stackpos] == NULL) {
		stack[stackpos] = (GCStackEntry*)malloc(sizeof(GCStackEntry));
	}
	stack[stackpos]->marker=1;
	stack[stackpos]->obj=NULL;
	stackpos++;
	checksize();
}
void stack_leave() {
	while (stackpos>0) {
		stackpos--;
		checksize();
		if (stack[stackpos]->marker == 1) return;
	}
}
void stack_push(GCStackNode** adress) {
	if (stack[stackpos] == NULL) {
		stack[stackpos] = malloc(sizeof(GCStackEntry));
	}
	stack[stackpos]->marker=0;
	stack[stackpos]->var = adress;
	stackpos++;
	checksize();
}


void gccollect() {
	//stack durchgehen und verfügbare markieren
	int i=0;
	for (i=0;i<stackpos;i++) {
	    if (stack[i]!=NULL && stack[i]->marker==0) {
            GCStackNode* node = *(stack[i]->var);
            if (node!=NULL) {
                if (node->trace != NULL) node->trace(node);
                //printf("mark");
            }
	    }
	}

	//alle nicht markierten nodes loeschen
	GCStackNode* current = last;
	GCStackNode* before = NULL;
	i=0;
	while (current != NULL) {
		GCStackNode* next = current->next;
		if (current->mark==0) {
			//printf("delete");
			if (before!=NULL) {
				before->next=next;
			} else {
				last=next;
			}
			if (current->finalizer != NULL) current->finalizer(current);
			if (current->obj != NULL) free(current->obj);
			if (current->info != NULL) free(current->info);
			free(current);
			current=NULL;
		} else {
            current->mark=0;
			before=current;
		}
		current=next;
		i++;
	}

}

GCStackNode* GC_malloc(int size, void(*tracefunc)(GCStackNode*)) {
	void* ptr=malloc(size);
	GCStackNode* node=(GCStackNode*)malloc(sizeof(GCStackNode));
	node->obj = ptr;
	node->mark = 0;
	node->next=last;
	node->trace = tracefunc;
	node->info = NULL;
	node->finalizer = NULL;
	last=node;
	return node;
}
