%{
       #include<math.h>
       #include"y.tab.h"	
%}
%%
[0-9]+|[0-9]*\.[0-9]+	{
                       		yylval.p = atof(yytext);
                       		return num;		
                       	}
sin 	return SIN;	
cos 	return COS;	
tan 	return TAN;		
log 	return LOG;		
sqrt 	return SQRT;
ceil 	return CEILING;
floor	return FLOOR;
power	return POWER;
isin  	return ISIN;
icos  	return ICOS;
itan 	return ITAN;
[\t];
\n      return 0;
.       return yytext[0];
%%
