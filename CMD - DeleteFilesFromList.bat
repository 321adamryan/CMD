@echo off
Title DeleteFilesFromList
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - DeleteFilesFromList.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Deletes all files located in a list
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


for /F "usebackq eol=| delims=" %%F in ("S:\00_DELETE ITEM NUMBERS\item_numbers.txt") do del /S /Q "%%~F*.*" 
