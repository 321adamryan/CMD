set WshShell = WScript.CreateObject("WScript.Shell")

'Open a Telnet connection to router IP'
'Delay of 4 seconds in between using the Sleep 4000 parameter when entering commands'

WshShell.run"telnet.exe 192.168.100.1 8080"
WScript.Sleep 4000

'Provide username
WshShell.SendKeys"admin"
WshShell.SendKeys("{Enter}")
WScript.Sleep 4000

'Provide user password
WshShell.SendKeys"password"
WshShell.SendKeys("{Enter}")
WScript.Sleep 4000

'Reboot the router
WshShell.SendKeys"reboot"
WshShell.SendKeys("{Enter}")