@echo off
Title KillTeamviewer
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - KillTeamviewer.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Terminates Teamviewer Instances
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

taskkill /F /IM TeamViewer.exe
taskkill /F /IM TeamViewer_Service.exe