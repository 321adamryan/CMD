@echo off
Title Delete
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - Delete.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Deletes every file with a set word in the Filename from a Directory
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

set DOOBILYDOO = DAZAMIER

for /r %%x in (%DOOBILYDOO%*.*) do move "%%x" "G:\00_DELETE"
