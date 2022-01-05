

void print(GCStackNode* node) {
	CPB_STRING text;
	text = ((CPB_STRING)node->obj);
	printf("%s\n",text);
	free(text);
}
