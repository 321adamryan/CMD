ECHO OFF
Title Diagnostics
CLS

ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO    filename: CMD - RunDiag.bat
ECHO       coder: AdamRyan
ECHO     program: Windows Command Prompt
ECHO description: Run assorted diagnostics to fix problems
ECHO   extention: BAT
ECHO    licensce: OpenSource
ECHO     website: adamryan.info
ECHO ...............................................
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Fix Printer
ECHO 2 - Fix Website Connection
ECHO 3 - Fix Network Adapter
ECHO 4 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO Printer
IF %M%==2 GOTO Website
IF %M%==3 GOTO Network
IF %M%==4 GOTO EOF

:Printer
::Troubleshoots problems printing.
msdt.exe /id PrinterDiagnostic
GOTO MENU

:Website
::Troubleshoots problems connecting to the Internet or to a specific Web site.
msdt.exe /id NetworkDiagnosticsWeb
GOTO MENU

:Network
::Troubleshoots problems with Ethernet, wireless, or other network adapters.
msdt.exe /id NetworkDiagnosticsNetworkAdapter
GOTO MENU

:EOF
EXIT