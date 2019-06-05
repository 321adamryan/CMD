@echo off
Title Add2NameOLDART
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - Add2Name(OLD ART).bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Adds (OLD ART) to the suffix of every file within the folder
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

 for %%a in (*.*) do ren "%%~a" "%%~na (OLD ART)%%~xa"



CLS