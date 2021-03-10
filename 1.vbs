Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd %userprofile%\Documents\1stExecution.bat"
oShell.Run strArgs, 0, false