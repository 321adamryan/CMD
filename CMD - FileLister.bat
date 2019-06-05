@echo off
Title FileLister
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - FileLister.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Asks What Filetype you would like to list and exports a CSV in the directory
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

echo off
set /p ext="What Extention would you like to list:  "

(for /r %%F in (*.%ext%) do @echo "%%~dpF","%%~nF","%%~xF","%%F") >> %ext%-File-List.csv