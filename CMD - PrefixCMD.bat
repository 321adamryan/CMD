@echo off
Title PrefixCMD
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - PrefixCMD.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Prefixes files in a directory with "CMD -"
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

for %%a in (*.*) do ren "%%a" "CMD - %%a"