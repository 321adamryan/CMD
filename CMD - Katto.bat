@echo off
Title Katto
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - Katto.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Katto "Cuts" Katto Named files out of existence 
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

@echo off
setlocal enabledelayedexpansion
set deletestring=katto_
echo Ready to start
echo.
echo.
for /f "delims==" %%F in ('dir /b ^| find "%deletestring%"') do (
   set oldfilename=%%F
   set newfilename=!oldfilename:%deletestring%=!
   Ren "!oldfilename!" "!newfilename!"
   )
echo.
echo All done