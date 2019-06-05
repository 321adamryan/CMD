@echo off
Title CopyFromKnockout
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - CopyFromKnockout.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Copies Referenced files in a list from a source to a destination
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

set in_list=\\W2K3SERV1\swap\00_IMAGEGRAB
set src_folder=C:\Users\graphics2\Desktop\knockout
set dst_folder=\\W2K3SERV1\swap\00_IMAGEGRAB\images
set out_log=\\W2K3SERV1\swap\00_IMAGEGRAB
set ext=.jpg

for /f %%i in (%in_list%\file_list.txt) DO copy "%src_folder%\%%i*%ext%" "%dst_folder%\%%i*%ext%" >> "%out_log%\BATCHLOG.txt"



