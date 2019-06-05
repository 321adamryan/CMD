@echo off
Title DeleteAllButItemNumber
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - DeleteAllButItemNumber.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Assuming the File suffix is a 5 Digit Item Number the rest of the filename will be removed
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


REN *.jpg ?????.*