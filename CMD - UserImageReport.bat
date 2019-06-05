@echo off
Title UserImageReport
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - UserImageReport.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Creates a UserImageReport
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


set searchDate=/D:06-27-2018
xcopy "S:\00 Product Versions\Staged\*.jpg" "C:\Users\graphics2\Desktop\UserImageReport\images\*.*" /o %searchDate%