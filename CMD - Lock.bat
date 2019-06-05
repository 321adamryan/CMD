@echo off
Title Lock
CLS
@echo off
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - Lock.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO    password: 313
ECHO description: Secures a folder
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

 @ECHO OFF
 title Folder Secure
 if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
 if NOT EXIST Secure goto MDLOCKER
 :CONFIRM
 echo Are you sure you want to lock the folder(Y/N)
 set/p "cho=>"
 if %cho%==Y goto LOCK
 if %cho%==y goto LOCK
 if %cho%==n goto END
 if %cho%==N goto END
 echo Invalid choice.
 goto CONFIRM
 :LOCK
 ren Secure "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 echo Folder locked
 goto End
 :UNLOCK
 echo Enter the Password to unlock folder
 set/p "pass=>"
 if NOT %pass%== kibasang goto FAIL
 attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Secure
 echo Folder Unlocked successfully
 goto End
 :FAIL
 echo Invalid password
 goto end
 :MDLOCKER
 md Secure
 echo Secure created successfully
 goto End
 :End
