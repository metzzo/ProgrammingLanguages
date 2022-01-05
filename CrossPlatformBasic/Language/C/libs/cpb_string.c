#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

void traceStringNode(GCStackNode* node) {
	node->mark=1;
	return;
}

GCStackNode* newString(CPB_STRING str) {
	GCStackNode* node = GC_malloc(0, &traceStringNode);
	free(node->obj);
	node->obj = str;
	return node;
}

CPB_INT len(GCStackNode* node) {
	CPB_STRING str;
	str=((CPB_STRING)node->obj);
	int len=strlen(str);
	return len;
}

CPB_INT asc(GCStackNode* node) {
	CPB_STRING str;
	str=((CPB_STRING)node->obj);
	if (len(node)==0) {
		return 0;
	}
	int data=str[0];
	return data;
}
GCStackNode* chr(CPB_INT txt) {
	CPB_STRING str;
	str=(CPB_STRING)malloc(3*sizeof(char));
	str[0]=txt;
	str[1]='\0';
	return newString(str);
}


GCStackNode* int2string(CPB_INT value) {
	CPB_STRING str;
	str=(CPB_STRING) malloc(4*sizeof(int));
	sprintf( str , "%i", value );
	
	return newString(str);
}

GCStackNode* float2string(CPB_FLOAT value) {
	CPB_STRING str;
	str=(CPB_STRING) malloc(4*sizeof(float));
	sprintf( str , "%f", value );

	return newString(str);
}

GCStackNode* double2string(CPB_DOUBLE value) {
	CPB_STRING str;
	str=(CPB_STRING) malloc(8*sizeof(CPB_DOUBLE));
	sprintf( str , "%f", value );

	return newString(str);
}

GCStackNode* short2string(CPB_SHORT value) {
	CPB_STRING str;
	str=(CPB_STRING) malloc(4*sizeof(CPB_SHORT));
	sprintf( str , "%i", value );

	return newString(str);
}

GCStackNode* long2string(CPB_LONG value) {
	CPB_STRING str;
	str=(CPB_STRING) malloc(8*sizeof(CPB_LONG));
	sprintf( str , "%i", value );

	return newString(str);
}

GCStackNode* byte2string(CPB_BYTE value) {
	CPB_STRING str;
	str=(CPB_STRING) malloc(4*sizeof(CPB_BYTE));
	sprintf( str , "%i", value );

	return newString(str);
}

CPB_INT string2int(GCStackNode* node) {
	CPB_STRING value;
	value=((CPB_STRING)node->obj);
	CPB_INT val=(CPB_INT)atoi( value );
	return val; 
}

CPB_FLOAT string2float(GCStackNode* node) {
	CPB_STRING value;
	value=((CPB_STRING)node->obj);
	CPB_FLOAT val=(CPB_FLOAT)atof( value );
	return val;
}

CPB_DOUBLE string2double(GCStackNode* node) {
	
}

CPB_SHORT string2short(GCStackNode* node) {
	
}

CPB_LONG string2long(GCStackNode* node) {
	
}

CPB_BYTE string2byte(GCStackNode* node) {
	
}


GCStackNode* joinstr(GCStackNode* node1, GCStackNode* node2) {
	CPB_STRING value1;
	CPB_STRING value2;
	value1=(CPB_STRING)(node1->obj);
	value2=(CPB_STRING)(node2->obj);

	CPB_STRING str;
	str = (CPB_STRING) malloc((strlen(value1) + strlen(value2) + 1)* sizeof(char));
	strcpy(str, value1);
	strcat(str, value2);
	return newString(str);
}


CPB_INT instr(GCStackNode* node1, GCStackNode* node2, CPB_INT start) {
	CPB_STRING str1;
	CPB_STRING str2;
	str1=((CPB_STRING)node1->obj);
	str2=((CPB_STRING)node2->obj);
	int i=0;
	int j=0;
	char find=0;
	for (i=start;i<len(node1);i++) {
		find=1;
		for (j=0;j<len(node2) && (i+j)>len(node1);j++) {
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

GCStackNode* mid(GCStackNode* node, CPB_INT von, CPB_INT bis) {
	CPB_STRING str = (CPB_STRING)node->obj;
	if (bis==-1) bis=(len(node))-von;

	int newlen = bis-von+1;

	CPB_STRING ret;
	ret=(CPB_STRING) malloc(newlen*sizeof(char));
	int k = 0;
    int i = 0;
    
    for( i = von; i < (von+bis); i++) {
        ret[k] = str[i];
        k++;
    }
	ret[k]='\0';
	return newString(ret);
}

GCStackNode* left(GCStackNode* str, CPB_INT anzahl) {
	return mid(str, 0, anzahl);
}

GCStackNode* right(GCStackNode* str, CPB_INT anzahl) {
	return mid(str,len(str)-anzahl,anzahl);
}

GCStackNode* upper(GCStackNode* node) {
	CPB_STRING str = (CPB_STRING)node->obj;
	CPB_STRING ret;
	ret=(CPB_STRING) malloc((len(node) + 1)* sizeof(char));
	int i=0;
	
	for( i = 0; str[ i ]; i++)
		ret[i]=toupper(str[i]);
	ret[i]='\0';
	return newString(ret);
}

GCStackNode* lower(GCStackNode* node) {
	CPB_STRING str = (CPB_STRING)node->obj;
	CPB_STRING ret;
	ret=(CPB_STRING) malloc((len(node) + 1)* sizeof(char));
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
GCStackNode* replace(GCStackNode* str1, GCStackNode* str2, GCStackNode* str3, CPB_INT start) {
	CPB_STRING ret="";
	ret=internreplace((CPB_STRING)(mid(str1,start,-1)->obj),(CPB_STRING)str2->obj,(CPB_STRING)str3->obj);
	return joinstr(mid(str1,0,start),newString(ret));
}
GCStackNode* trim(GCStackNode* node) {
	CPB_STRING str=(CPB_STRING)node->obj;
	int start, end;
	int i=0;
	start=0;
	end=len(node)-1;
	for (i=0;i<len(node);i++) {
		if (str[i]!=' ' && str[i]!='\t') {
			start=i;
			break;
		}
	}
	for (i=len(node)-1;i>0;i--) {
		if (str[i]!=' ' && str[i]!='\t') {
			end=i;
			break;
		}
	}
	return mid(node,start,end-start+1);
}
