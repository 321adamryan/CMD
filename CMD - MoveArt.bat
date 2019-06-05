::AdamRyan
::Filename=MoveArt
::Description=Grabs partial filename from list and moves artwork from source folder to destination folder while exporting a log of the results
::Filetype=bat
::License=OpenSource

@echo off
:A
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL


@echo off
echo *******Are you sure you want to move the files?*******[Y/N]
choice /c YN
if %errorlevel%== Y goto Mimaki
if %errorlevel%== N exit

set date=_%date:~-4,4%%date:~-7,2%%date:~-10,2%_

:Mimaki
@echo off
set Source=\\W2k8exch1\nfl\_PrintMimaki
set Target=\\W2k8exch1\nfl\_00Fix\images\Mimaki
set FileList=\\W2k8exch1\nfl\_00Fix\file_list.txt
set out_log=\\W2k8exch1\nfl\_00Fix
set ext=.eps
echo.

if not exist "%Source%" echo Source folder "%Source%" not found & goto Exit
if not exist "%FileList%" echo File list "%FileList%" not found & goto Exit
if not exist "%Target%" md "%Target%"

for /F "delims=" %%a in ('type "%FileList%"') do move "%Source%\%%a*%ext%" "%Target%" >> "%out_log%\BATCHLOG%date%.txt"

GOTO Magnets

:Magnets
@echo off
set Source=\\W2k8exch1\nfl\Stockdale\00 print mags
set Target=\\W2k8exch1\nfl\_00Fix\images\Magnets
set FileList=\\W2k8exch1\nfl\_00Fix\file_list.txt
set out_log=\\W2k8exch1\nfl\_00Fix
set ext=.eps
echo.

if not exist "%Source%" echo Source folder "%Source%" not found & goto Exit
if not exist "%FileList%" echo File list "%FileList%" not found & goto Exit
if not exist "%Target%" md "%Target%"

for /F "delims=" %%a in ('type "%FileList%"') do move "%Source%\%%a*%ext%" "%Target%" >> "%out_log%\BATCHLOG%date%.txt"

GOTO GerberSmooth

:GerberSmooth
@echo off
set Source=\\W2k8exch1\nfl\_PrintGerberSmooth
set Target=\\W2k8exch1\nfl\_00Fix\images\Gerber_Smooth
set FileList=\\W2k8exch1\nfl\_00Fix\file_list.txt
set out_log=\\W2k8exch1\nfl\_00Fix
set ext=.plt
echo.

if not exist "%Source%" echo Source folder "%Source%" not found & goto Exit
if not exist "%FileList%" echo File list "%FileList%" not found & goto Exit
if not exist "%Target%" md "%Target%"

for /F "delims=" %%a in ('type "%FileList%"') do move "%Source%\%%a*%ext%" "%Target%" >> "%out_log%\BATCHLOG%date%.txt"

GOTO GerberClear

:GerberClear
@echo off
set Source=\\W2k8exch1\nfl\_PrintGerberClear
set Target=\\W2k8exch1\nfl\_00Fix\images\Gerber_Clear
set FileList=\\W2k8exch1\nfl\_00Fix\file_list.txt
set out_log=\\W2k8exch1\nfl\_00Fix
set ext=.plt
echo.

if not exist "%Source%" echo Source folder "%Source%" not found & goto Exit
if not exist "%FileList%" echo File list "%FileList%" not found & goto Exit
if not exist "%Target%" md "%Target%"

for /F "delims=" %%a in ('type "%FileList%"') do move "%Source%\%%a*%ext%" "%Target%" >> "%out_log%\BATCHLOG%date%.txt"

GOTO Acrylic

:Acrylic
@echo off
set Source=\\W2K3SERV1\Seiko
set Target=\\W2k8exch1\nfl\_00Fix\images\Acrylic
set FileList=\\W2k8exch1\nfl\_00Fix\file_list.txt
set out_log=\\W2k8exch1\nfl\_00Fix
set ext=.eps
echo.

if not exist "%Source%" echo Source folder "%Source%" not found & goto Exit
if not exist "%FileList%" echo File list "%FileList%" not found & goto Exit
if not exist "%Target%" md "%Target%"

for /F "delims=" %%a in ('type "%FileList%"') do move "%Source%\%%a*%ext%" "%Target%" >> "%out_log%\BATCHLOG%date%.txt"

GOTO Exit

:Exit
