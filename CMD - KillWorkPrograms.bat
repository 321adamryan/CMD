@echo off
Title KillWorkPrograms
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - KillWorkPrograms.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Terminates All Work Program Instances
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


taskkill /F /IM spotify.exe
taskkill /F /IM SpotifyHelper.exe
taskkill /F /IM Illustrator.exe
taskkill /F /IM TeamViewer.exe
taskkill /F /IM TeamViewer_Service.exe
taskkill /F /IM Photoshop.exe
taskkill /F /IM Outlook.exe
taskkill /F /IM Bridge.exe
taskkill /F /IM GspComposer.exe