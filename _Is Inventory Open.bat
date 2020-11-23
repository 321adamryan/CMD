@echo off
Title Inventory Checker
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: FileCheck.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Finds Important Files
ECHO   extention: BAT
ECHO    licensce: OpenSource
ECHO     website: adamryan.info
ECHO ...............................................
ECHO.

ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Check From Adam
ECHO 2 - Check From John
ECHO 2 - Check From Tim
ECHO 4 - Check From Antoine
ECHO 5 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO AdamA
IF %M%==2 GOTO JohnA
IF %M%==3 GOTO TimA
IF %M%==4 GOTO AntoineA
IF %M%==5 GOTO END

::---------------------------------------ADAM
:AdamA
@echo off
set file1="E:\Dropbox\Warehouse\Master Inventory File_Open.xlsx"
if exist %file1% ( 
cls
echo Master Inventory File is Open!!!
) else (
cls
echo Master Inventory File is Closed!!!
)
echo.
pause
GOTO END    


::---------------------------------------John
:JohnA
@echo off
set file1="C:\Users\TylaGelman\Dropbox\Warehouse\Master Inventory File_Open.xlsx"
if exist %file1% ( 
cls
echo Master Inventory File is Open!!!
) else (
cls
echo Master Inventory File is Closed!!!
)
echo.
pause
GOTO END 

::---------------------------------------TIM
:TimA
@echo off
set file1="C:\Users\E&T\Dropbox\Warehouse\Master Inventory File_Open.xlsx"
if exist %file1% ( 
cls
echo Master Inventory File is Open!!!
) else (
cls
echo Master Inventory File is Closed!!!
)
echo.
pause
GOTO END 

::---------------------------------------ANTOINE
:AntoineA
@echo off
set file1="C:\Users\info\Dropbox\Warehouse\Master Inventory File_Open.xlsx"
if exist %file1% ( 
cls
echo Master Inventory File is Open!!!
) else (
cls
echo Master Inventory File is Closed!!!
)
echo.
pause
GOTO END 