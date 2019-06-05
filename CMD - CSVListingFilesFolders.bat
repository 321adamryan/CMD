@echo off
Title CSVListFilesFolders
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - CSVListFilesFolders.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Lists All Files and Folders in the associated Directory into CSV
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


dir /s /b /o:gn>dirprint.csv



