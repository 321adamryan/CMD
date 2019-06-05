@echo off
Title IPReset
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - IPReset.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Releases, Renews, Flushes, Registers IP/DNS Exports Log
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
cls
ipconfig /release
sleep 3000
ipconfig /renew
sleep 3000
ipconfig /flushdns
sleep 3000
ipconfig /registerdns
sleep 3000

echo IPReset,%date%,%time% >> "C:\Users\%USERNAME%\Desktop\_RPSFiles\Logs\IPlog.csv"
exit