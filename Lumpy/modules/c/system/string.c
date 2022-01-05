#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>


#include "GC.h"
#include "string.h"

GCNode* newString(char* str) {
	GCNode* ret = gc_malloc(0, &standardTrace);
	ret -> data = str;
    ret -> size = strlen(str);

	return ret;
}
char* toCString(GCNode* node) {
	return (char*)node->data;
}
int str_len(GCNode* node) {
	char* str;
	str=((char*)node->data);
	int len=strlen(str);
	return len;
}

int str_asc(GCNode* node) {
	char* str;
	str=((char*)node->data);
	if (str_len(node)==0) {
		return 0;
	}
	int data=str[0];
	return data;
}
GCNode* str_chr(int txt) {
	char* str;
	str=(char*)malloc(3*sizeof(char));
	str[0]=txt;
	str[1]='\0';
	return newString(str);
}


GCNode* int2string(int value) {
	char* str;
	str=(char*) malloc(4*sizeof(int));
	sprintf( str , "%i", value );

	return newString(str);
}

GCNode* float2string(float value) {
	char* str;
	str=(char*) malloc(4*sizeof(float));
	sprintf( str , "%f", value );

	return newString(str);
}

GCNode* double2string(double value) {
	char* str;
	str=(char*) malloc(8*sizeof(double));
	sprintf( str , "%f", value );

	return newString(str);
}

GCNode* short2string(short value) {
	char* str;
	str=(char*) malloc(4*sizeof(short));
	sprintf( str , "%i", value );

	return newString(str);
}

GCNode* long2string(long value) {
	char* str;
	str=(char*) malloc(8*sizeof(long));
	sprintf( str , "%i", value );

	return newString(str);
}
GCNode* boolean2string(char value) {
    if (!value)
        return newString("false");
    else
        return newString("true");
}
GCNode* byte2string(char value) {
	char* str;
	str=(char*) malloc(4*sizeof(char));
	sprintf( str , "%i", value );

	return newString(str);
}

int string2int(GCNode* node) {
	char* value;
	value=((char*)node->data);
	int val=(int)atoi( value );
	return val;
}

float string2float(GCNode* node) {
	char* value;
	value=((char*)node->data);
	float val=(float)atof( value );
	return val;
}

double string2double(GCNode* node) {

}

short string2short(GCNode* node) {

}

long string2long(GCNode* node) {

}

char string2byte(GCNode* node) {

}

char string2boolean(GCNode* node) {
    char* ptr = ((char*) node -> data);
    if (strcmp(ptr,"false") || strcmp(ptr,"0"))
        return 0;
    else
        return 1;
}


GCNode* joinstr(GCNode* node1, GCNode* node2) {
	char* value1;
	char* value2;
	value1=(char*)(node1->data);
	value2=(char*)(node2->data);

	char* str;
	str = (char*) malloc((strlen(value1) + strlen(value2) + 1)* sizeof(char));
	strcpy(str, value1);
	strcat(str, value2);
	return newString(str);
}


int str_instr(GCNode* node1, GCNode* node2, int start) {
	char* str1;
	char* str2;
	str1=((char*)node1->data);
	str2=((char*)node2->data);
	int i=0;
	int j=0;
	char find=0;
	for (i=start;i<str_len(node1);i++) {
		find=1;
		for (j=0;j<str_len(node2) && (i+j)>str_len(node1);j++) {
			if (str1[i+j]!=str2[j]) {
				find=0;
				break;
			}
		}
		if (find) {
			return i;
		}
	}
	return -1;
}

GCNode* str_mid(GCNode* node, int von, int bis) {
	char* str = (char*)node->data;
	if (bis==-1) bis=(str_len(node))-von;

	int newlen = bis-von+1;

	char* ret;
	ret=(char*) malloc(newlen*sizeof(char));
	int k = 0;
	int i = 0;

	for( i = von; i < (von+bis); i++) {
		ret[k] = str[i];
		k++;
	}
	ret[k]='\0';
	return newString(ret);
}

GCNode* str_left(GCNode* str, int anzahl) {
	return str_mid(str, 0, anzahl);
}

GCNode* str_right(GCNode* str, int anzahl) {
	return str_mid(str,str_len(str)-anzahl,anzahl);
}

GCNode* str_upper(GCNode* node) {
	char* str = (char*)node->data;
	char* ret;
	ret=(char*) malloc((str_len(node) + 1)* sizeof(char));
	int i=0;

	for( i = 0; str[ i ]; i++)
		ret[i]=toupper(str[i]);
	ret[i]='\0';
	return newString(ret);
}

GCNode* str_lower(GCNode* node) {
	char* str = (char*)node->data;
	char* ret;
	ret=(char*) malloc((str_len(node) + 1)* sizeof(char));
	int i=0;

	for( i = 0; str[ i ]; i++)
		ret[i]=tolower(str[i]);
	ret[i]='\0';
	return newString(ret);
}

char* internreplace(char* source_str,char* search_str,char* replace_str) {
	char* ostr, *nstr = NULL, *pdest = "";
	int length, nlen;
	unsigned int nstr_allocated;
	unsigned int ostr_allocated;

	if(!source_str || !search_str || !replace_str){
		//printf("Not enough arguments\n");
		return "";
	}
	ostr_allocated = sizeof(char) * (strlen(source_str)+1);
	ostr = malloc( sizeof(char) * (strlen(source_str)+1));
	if(!ostr){
		printf("Insufficient memory available\n");
		return "";
	}
	strcpy(ostr, source_str);

	while(pdest)
	{
		pdest = strstr( ostr, search_str );
		length = (int)(pdest - ostr);

		if ( pdest != NULL )
		{
			ostr[length]='\0';
			nlen = strlen(ostr)+strlen(replace_str)+strlen( strchr(ostr,0)+strlen(search_str) )+1;
			if( !nstr || /* _msize( nstr ) */ nstr_allocated < sizeof(char) * nlen){
				nstr_allocated = sizeof(char) * nlen;
				nstr = malloc( sizeof(char) * nlen );
			}
			if(!nstr){
				printf("Insufficient memory available\n");
				return "";
			}

			strcpy(nstr, ostr);
			strcat(nstr, replace_str);
			strcat(nstr, strchr(ostr,0)+strlen(search_str));

			if( /* _msize(ostr) */ ostr_allocated < sizeof(char)*strlen(nstr)+1 ){
				ostr_allocated = sizeof(char)*strlen(nstr)+1;
				ostr = malloc(sizeof(char)*strlen(nstr)+1 );
			}
			if(!ostr){
				printf("Insufficient memory available\n");
				return "";
			}
			strcpy(ostr, nstr);
		}
	}
	if(nstr)
		free(nstr);
	return ostr;
}
GCNode* str_replace(GCNode* str1, GCNode* str2, GCNode* str3, int start) {
	char* ret="";
	ret=internreplace((char*)(str_mid(str1,start,-1)->data),(char*)str2->data,(char*)str3->data);
	return joinstr(str_mid(str1,0,start),newString(ret));
}
GCNode* str_trim(GCNode* node) {
	char* str=(char*)node->data;
	int start, end;
	int i=0;
	start=0;
	end=str_len(node)-1;
	for (i=0;i<str_len(node);i++) {
		if (str[i]!=' ' && str[i]!='\t') {
			start=i;
			break;
		}
	}
	for (i=str_len(node)-1;i>0;i--) {
		if (str[i]!=' ' && str[i]!='\t') {
			end=i;
			break;
		}
	}
	return str_mid(node,start,end-start+1);
}

int str_hash(GCNode* node) {
    unsigned int hash = 0;
    int c;
    char* s = (char*)(node -> data);
    while((c = *s++))
    {
        /* hash = hash * 33 ^ c */
        hash = ((hash << 5) + hash) ^ c;
    }

    return hash;
}
