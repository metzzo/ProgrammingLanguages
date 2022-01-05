#ifndef STRING_FILE
#define STRING_FILE
GCNode* newString(char* str);
int str_len(GCNode* node);
int str_asc(GCNode* node);
GCNode* str_chr(int txt);
GCNode* int2string(int value);
GCNode* float2string(float value);
GCNode* double2string(double value);
GCNode* short2string(short value);
GCNode* long2string(long value);
GCNode* byte2string(char value);
GCNode* boolean2string(char value);
int string2int(GCNode* node);
float string2float(GCNode* node);
double string2double(GCNode* node);
short string2short(GCNode* node);
long string2long(GCNode* node);
char string2byte(GCNode* node);
char string2boolean(GCNode* node);
GCNode* joinstr(GCNode* node1, GCNode* node2);
int str_instr(GCNode* node1, GCNode* node2, int start);
GCNode* str_mid(GCNode* node, int von, int bis);
GCNode* str_left(GCNode* str, int anzahl);
GCNode* str_right(GCNode* str, int anzahl);
GCNode* str_upper(GCNode* node);
GCNode* str_lower(GCNode* node);
GCNode* str_replace(GCNode* str1, GCNode* str2, GCNode* str3, int start);
GCNode* str_trim(GCNode* node);
char* toCString(GCNode* node);
int str_hash(GCNode* node);
#endif
