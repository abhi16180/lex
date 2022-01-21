# LEX and YACC programs for SS Tutorial
Fork repo and create pull request to contribute
</br></br>
#### LEX Compilation:
1. Allow execute privileges to "compile" file.
2. Navigate to directory containing lex program.
3. On Linux:  ../compile.sh  _fileName.l_
4. On Windows:  ..\compile.bat  _fileName.l_


#### YACC Compilation:
1. Navigate to directory containing lex and yacc programs<br>
2. Execute these commands (replace proper file name)<br>
    *flex lexfile.l*<br>
    *bison -yd yaccfile.y*<br>
    *gcc lex.yy.c y.tab.c*<br>
    *.\a.exe*