﻿@echo off
Title Listing
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - Listing.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Lists all files in a Directory
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


dir/b *.*>dirlist.csv

