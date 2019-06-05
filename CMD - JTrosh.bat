@echo off
Title JTrosh
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - JTrosh.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Creates, Hides, Shows a folder
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

ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Open Jtro
ECHO 2 - Open Jtrax
ECHO 2 - Open Nova
ECHO 4 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO Jtro
IF %M%==2 GOTO Jtrax
IF %M%==3 GOTO Nova
IF %M%==4 GOTO EOF

Set Location = "C:\Nova"

:Jtro
attrib +s +h %Location%

GOTO MENU
:Jtrax
attrib -s -h %Location%

GOTO MENU

:Nova
mkdir %Location%

GOTO MENU