@echo off
Title ClockIn
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ClockIn.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Logs a TimeClock system using CSV
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
echo IN,%date%,%time% >> C:\Users\%user%\Desktop\TimeClock\Logs\TimeClock.csv