@echo off
Title ImageGrabPrep
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - ImageGramPrep.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Prepares the ImageGrab script
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


del \\W2K3SERV1\swap\00_IMAGEGRAB\images
del \\W2K3SERV1\swap\00_IMAGEGRAB\file_list.txt

mkdir \\W2K3SERV1\swap\00_IMAGEGRAB\images
echo.> \\W2K3SERV1\swap\00_IMAGEGRAB\file_list.txt