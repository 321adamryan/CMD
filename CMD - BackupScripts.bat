@echo off
Title BackupScripts
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - BackupScripts.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Saves a Backup of Adobe Illustrator Scripts, Adobe Photoshop Scripts, Excel Scripts
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
set source=C:\Program Files\Adobe\Adobe Illustrator CC 2018\Presets\en_US\Scripts\
set destination=F:\backupscripts\Illustrator_
set destination2=F:\backupscripts\Photoshop_
set destination3=F:\backupscripts\Excel_

for /F "tokens=2-4 delims=/ " %%i in ('date /t') do set yyyymmdd1=%%j"."%%i"."%%k

if exist %destination% goto GO
:GO
mkdir %destination%%yyyymmdd1%
echo.
echo Created %destination%%yyyymmdd1%
xcopy "%source%*.*" "%destination%%yyyymmdd1%" /s/d/y/c/v/r
echo. 
echo Finished copying %source% to %destination%%yyyymmdd1%

ECHO OFF
set source=C:\Program Files\Adobe\Adobe Photoshop CC 2018\Presets\Scripts\


for /F "tokens=2-4 delims=/ " %%i in ('date /t') do set yyyymmdd1=%%j"."%%i"."%%k

if exist %destination2% goto GO
:GO
mkdir %destination2%%yyyymmdd1%
echo.
echo Created %destination2%%yyyymmdd1%
xcopy "%source%*.*" "%destination2%%yyyymmdd1%" /s/d/y/c/v/r
echo. 
echo Finished copying %source% to %destination2%%yyyymmdd1%


ECHO OFF
set source=C:\Users\graphics2\Desktop\_Order66\Scripts\


for /F "tokens=2-4 delims=/ " %%i in ('date /t') do set yyyymmdd1=%%j"."%%i"."%%k

if exist %destination3% goto GO
:GO
mkdir %destination3%%yyyymmdd1%
echo.
echo Created %destination3%%yyyymmdd1%
xcopy "%source%*.*" "%destination3%%yyyymmdd1%" /s/d/y/c/v/r
echo. 
echo Finished copying %source% to %destination3%%yyyymmdd1%