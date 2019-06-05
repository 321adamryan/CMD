@echo off
Title ItemNumbers
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ItemNumbers.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Creates a TXT list of a Directory
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


dir/b *.*>dirlist.txt

