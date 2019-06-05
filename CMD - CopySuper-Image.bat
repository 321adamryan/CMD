@echo off
Title CopySuper-Image
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - CopySuper-Image.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Copies All Image Files on the computer to a destination
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


set DST=S:\Adam_Ryan\test_folder
set SRC=C:\

for /R "%SRC%" %%G in (*.png *.jpg *.jpeg *.gif) do copy /-y "%%G" "%DST%"
