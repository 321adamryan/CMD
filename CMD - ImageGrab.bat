@echo off
Title ImageGrab
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ImageGrab.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Grabs Images in a reference list and copies to a new destination
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
echo.
echo.
echo Window will disapear upon completion
echo.


set in_list=\\W2K3SERV1\swap\00_IMAGEGRAB
set src_folder=\\W2K3SERV1\swap\00 Product Versions\Staged
set dst_folder=\\W2K3SERV1\swap\00_IMAGEGRAB\images
set out_log=\\W2K3SERV1\swap\00_IMAGEGRAB
set ext=.jpg

for /f "delims=" %%i in (%in_list%\file_list.txt) DO copy "%src_folder%\%%i*%ext%" "%dst_folder%\%%i*%ext%" >> "%out_log%\BATCHLOG.txt"



