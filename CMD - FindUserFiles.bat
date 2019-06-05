@echo off
Title FindUSerFiles
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - FindUserFiles.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Locates all files associated with a Username
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

echo NOTES: 
echo Use FindUserFiles.bat to search for files created by 
echo a specified user within a location and its subdirectories
echo.
echo.
set /P src="What drive would you like to search?"
echo.
set /P user="What user are you searching for?"
echo.
echo.
echo *****Window will disapear upon completion*****
echo.
set output=%USERPROFILE%\Desktop


DIR /a:-d/-c/o:g/s/q/x %src%\*.*  |FIND /i "DOMAIN\%user%"  > %output%\%user%_%date:~10,4%-%date:~4,2%-%date:~7,2%_UserFileReport.txt



