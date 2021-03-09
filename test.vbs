Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd %userprofile%\Documents\Walk.bat"
oShell.Run strArgs, 0, false