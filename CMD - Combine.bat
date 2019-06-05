@echo off
Title CombineJSX
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - CombineJSX.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Combines JSX files in a folder into a master file
ECHO   extention: BAT
ECHO    licensce: OpenSource
ECHO     website: adamryan.info
ECHO ...............................................
ECHO.
@echo off
:A
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL
ECHO OFF
CLS

copy "C:\Users\graphics2\Desktop\tester\New folder\*.jsx" "combine.jsx"