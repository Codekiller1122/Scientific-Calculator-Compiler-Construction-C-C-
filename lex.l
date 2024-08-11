%{
#include<stdio.h>
#include "y.tab.h"
#include <math.h>
%}

%%

[a-zA-Z]   {
                     yylval.var = *yytext; 
                     return VAR;
           }

[0-9]+|[0-9]*[.][0-9]+ {
                                     yylval.val=atof(yytext);
                                     return NUMBER;

                       }
sin {return SIN;}
cos {return COS;}
tan {return TAN;}
log {return LOG;}
asin {return ASIN;}
acos {return ACOS;}
atan {return ATAN;}
print {return PRINT;}
[\t] ;
[\n] return 0;
. return yytext[0];

%%

int yywrap()
{
    return 1;
}
