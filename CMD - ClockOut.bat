@echo off
Title ClockOut
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ClockOut.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Logs a TimeClock System using CSV
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

set user=graphics2
echo OUT,%date%,%time% >> C:\Users\%user%\Desktop\TimeClock\Logs\TimeClock.log