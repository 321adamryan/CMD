@echo off
Title ListJPGWithCopy
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ListJPGWithCopy.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Lists all JPGS with copy in the filename
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


dir /b *copy.* >jpg-list.txt

