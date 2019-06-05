@echo off
Title ClockReason
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ClockReason.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Logs Exceptions into a TimeClock System in CSV
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

set d=%date%
set t=%time%
 
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (C:\Users\%user%\Desktop\TimeClock\Logs\time-out.log) do (
set lasttimeout=%%a
)
 
echo You've been away from %lasttimeout% to %d% %t%.
set /p exp="Why were you away? "
echo From %lasttimeout% to %d% %t% - %exp%. >> C:\Users\%user%\Desktop\TimeClock\Logs\reasons.log
pause