# Scientific-Calculator-Compiler-Construction-C-C-
Developed a compiler for C/C++ that performs scientific calculations and supports variable storage capabilities
How to run it!
Code:
lex lex.l
yacc yacc.y or yacc -d yacc.y
gcc -o parser lex.yy.c y.tab.c -ly -ll
./parser  or ./a.out
