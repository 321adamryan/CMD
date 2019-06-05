@echo off
Title DeleteItemsWithPartialFilename
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - DeleteItemsWithPartialFilename.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Moves for Deletion Files listed in sheet with PartialFilename
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


for /r %%x in (PartialFilename*.*) do move "%%x" "G:\00_HOLD FOR DELETE"