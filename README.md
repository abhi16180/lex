# LEX and YACC programs for SS Tutorial
Fork repo and create pull request to contribute
</br></br>
#### LEX Compilation:
1. Allow execute privileges to "compile" file.
2. Navigate to directory containing lex program.
3. On Linux:  ../compile.sh  _fileName.l_
4. On Windows:  ..\compile.bat  _fileName.l_


#### YACC Compilation
1.Navigate to directory containing lex and yacc programs
2.Execute these commands (replace proper file name)
  flex lexfile.l
  bison -yd yaccfile.y
  gcc lex.yy.c y.tab.c
  .\a.exe