#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>


CPB_INT len(CPB_STRING str) {
	return strlen(str);
}

CPB_INT asc(CPB_STRING str) {
	if (len(str)==0) return 0;
	return str[0];
}
CPB_STRING chr(CPB_INT txt) {
	CPB_STRING str;
	str=(char *) GC_malloc(4*sizeof(char));
	str[0]=txt;
	str[1]=(int)"\0";
	return str;
}


CPB_STRING int2string(CPB_INT value) {
	CPB_STRING str;
	str=(char *) GC_malloc(4*sizeof(int));
	sprintf( str , "%i", value );

	return str;
}

CPB_STRING float2string(CPB_FLOAT value) {
	CPB_STRING str;
	str=(char *) GC_malloc(4*sizeof(float));
	sprintf( str , "%f", value );

	return str;
}

CPB_STRING double2string(CPB_DOUBLE value) {
	CPB_STRING str;
	str=(char *) GC_malloc(8*sizeof(CPB_DOUBLE));
	sprintf( str , "%f", value );

	return str;
}

CPB_STRING short2string(CPB_SHORT value) {
	CPB_STRING str;
	str=(char *) GC_malloc(4*sizeof(CPB_SHORT));
	sprintf( str , "%i", value );

	return str;
}

CPB_STRING long2string(CPB_LONG value) {
	CPB_STRING str;
	str=(char *) GC_malloc(8*sizeof(CPB_LONG));
	sprintf( str , "%i", value );

	return str;
}

CPB_STRING byte2string(CPB_BYTE value) {
	CPB_STRING str;
	str=(char *) GC_malloc(4*sizeof(CPB_BYTE));
	sprintf( str , "%i", value );

	return str;
}

CPB_INT string2int(CPB_STRING value) {
	return (int)atoi( value ); 
}

CPB_FLOAT string2float(CPB_STRING value) {
	return (float)atof( value );
}

CPB_DOUBLE string2double(CPB_STRING value) {
	
}

CPB_SHORT string2short(CPB_STRING value) {
	
}

CPB_LONG string2long(CPB_STRING value) {
	
}

CPB_BYTE string2byte(CPB_STRING value) {
	
}


CPB_STRING joinstr(CPB_STRING value1, CPB_STRING value2) {
	CPB_STRING str;
	str = (char *) GC_malloc((strlen(value1) + strlen(value2) + 1)* sizeof(char));
	strcpy(str, value1);
	strcat(str, value2);

	return str;
}


CPB_INT instr(CPB_STRING str1, CPB_STRING str2, CPB_INT start) {
	int i=0;
	int j=0;
	char find=0;
	for (i=start;i<len(str1);i++) {
		find=1;
		for (j=0;j<len(str2) && (i+j)>len(str1);j++) {
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

CPB_STRING mid(CPB_STRING str, CPB_INT von, CPB_INT bis) {
	if (bis==-1) bis=len(str)-von;
	CPB_STRING ret;
	ret=(char *) GC_malloc(bis*sizeof(char));
	int k = 0;
    int i = 0;
    
    for( i = von; i < (von+bis); i++) {
        ret[k] = str[i];
        k++;
    }
	return ret;
}

CPB_STRING left(CPB_STRING str, CPB_INT anzahl) {
	return mid(str, 0, anzahl);
}

CPB_STRING right(CPB_STRING str, CPB_INT anzahl) {
	return mid(str,len(str)-anzahl,anzahl);
}

CPB_STRING upper(CPB_STRING str) {
	CPB_STRING ret;
	ret=(char *) GC_malloc((len(str) + 1)* sizeof(char));
	int i=0;
	
	for( i = 0; str[ i ]; i++)
		ret[i]=toupper(str[i]);

	return ret;
}

CPB_STRING lower(CPB_STRING str) {
	CPB_STRING ret;
	ret=(char *) GC_malloc((len(str) + 1)* sizeof(char));
	int i=0;
	
	for( i = 0; str[ i ]; i++)
		ret[i]=tolower(str[i]);

	return ret;
}

char* internreplace(char* source_str,char* search_str,char* replace_str) {
	char *ostr, *nstr = NULL, *pdest = "";
	int length, nlen;
	unsigned int nstr_allocated;
	unsigned int ostr_allocated;

	if(!source_str || !search_str || !replace_str){
		//printf("Not enough arguments\n");
		return "";
	}
	ostr_allocated = sizeof(char) * (strlen(source_str)+1);
	ostr = GC_malloc( sizeof(char) * (strlen(source_str)+1));
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
				nstr = GC_malloc( sizeof(char) * nlen );
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
				ostr = GC_malloc(sizeof(char)*strlen(nstr)+1 );
			}
			if(!ostr){
				printf("Insufficient memory available\n");
				return "";
			}
			strcpy(ostr, nstr);
		}
	}
	//if(nstr)
	//	free(nstr);
	return ostr;
}
CPB_STRING replace(CPB_STRING str1, CPB_STRING str2, CPB_STRING str3, CPB_INT start) {
	CPB_STRING ret;
	ret=internreplace(mid(str1,start,-1),str2,str3);
	return ret;
}
CPB_STRING trim(CPB_STRING str) {
	int start, end;
	int i=0;
	for (i=0;i<len(str);i++) {
		if (str[i]!=' ' && str[i]!='\t') {
			start=i;
			break;
		}
	}
	for (i=len(str)-1;i>0;i--) {
		if (str[i]!=' ' && str[i]!='\t') {
			end=i;
			break;
		}
	}
	//printf("test %i %i \n",start,end);
	return mid(str,start,end-start+1);
}
