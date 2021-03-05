@echo off
mode con: cols=54 lines=20
cls
goto AccountBin

::This just makes sure you have the right files. Don't mess with this.

:AccountBin
cd %userprofile%\documents
if exist "AccountBin" goto profiles
if not exist "AccountBin" md "AccountBin"
goto profiles

:profiles
cd %userprofile%\documents\AccountBin
if exist "Profiles" goto home
if not exist "Profiles" md "Profiles"
goto home

:home
cls
title Menu
color 0f
echo Type a number to select.
echo.
echo.
echo [1] Log-in
echo [2] Sign-up
echo [3] Exit
echo.
echo.
set /p answer=:

if %answer% == 1 goto login
if %answer% == 2 goto signup
if %answer% == 3 exit
if %answer% == admin goto selection
goto home

:login
cls
echo Sign-in: Please enter your username.
echo.
set /p loginuser=:
cd %userprofile%\documents\AccountBin\Profiles\
if not exist %loginuser% goto loginerror
goto lockcheck

:lockcheck
cls
cd %userprofile%\documents\AccountBin\Profiles\%loginuser%\LockedProfile
if exist "Yes".txt goto profilelocked
if not exist "Yes".txt goto continuelogging

:continuelogging

echo Sign-in: Please enter your password.
echo.
set /p loginpass=:
cd %userprofile%\documents\AccountBin\Profiles\%loginuser%
if not exist %loginpass%.bat goto loginerror
echo %date% %time%>>LoggedLogins.txt
goto loginsuccess

:signup
cls
echo Sign-up: Please enter a username.
echo.
set /p username=:

echo Sign-up: Please enter a password.
echo.
set /p password=:

if %password% == %username% goto nopassasuser
cd %userprofile%\documents\AccountBin\Profiles 
if exist "%username%" goto signuperror
if not exist "%username%" md %username%
cd %userprofile%\documents\AccountBin\Profiles\%username%
md LockedProfile
cd %userprofile%\documents\AccountBin\Profiles\%username%\LockedProfile
echo No>>No.txt
cd %userprofile%\documents\AccountBin\Profiles\%username%
echo %password%>>%password%.bat
echo %username%>>%username%.txt
echo Registered: %date% %time%>>LoggedLogins.txt
goto signupsuccess

:selection
mode con: cols=54 lines=20
cls
title %loginuser%
echo Type a number to select.				%date%
echo.
echo.
echo [1] Change Username
echo [2] Change Password
echo [3] Play UNHINGED
echo [4] Credits
echo [5] Logout
echo.
echo.
set/p answer2=:

::The 1-5 is default and you can edit it to your liking.

if %answer2% == 1 goto changeusername
if %answer2% == 2 goto changepassword
if %answer2% == 3 goto playgame
if %answer2% == 4 goto credits
if %answer2% == 5 goto home
goto selection

:changeusername
cls
echo Please enter your old username.
echo.
set /p olduser=:

if not %olduser% == %loginuser% goto userchangeerror2

cls
echo Please enter your new username.
echo.
set /p newuser=:

cd %userprofile%\documents\AccountBin\Profiles
if not exist %olduser% goto userchangeerror
if exist %newuser% goto userchangeerror3
if exist %olduser% rename "%olduser%" "%newuser%"
cd %userprofile%\documents\AccountBin\Profiles\%newuser%
rename "%olduser%.txt" "%newuser%.txt"
echo U.C: %date% %time%>>LoggedLogins.txt
goto userchangesuccess

:credits
cls
color 6
echo Credit goes to Brendon for creating this game.
pause
goto selection

:changepassword
cls
echo Please enter your username.
echo.
set /p passuser=:

cd %userprofile%\documents\AccountBin\Profiles\
if not exist %passuser% goto userchangeerror
if not %passuser% == %loginuser% goto userchangeerror2

cls
echo Please enter your old password.
echo.
set /p oldpass=:

if not %oldpass% == %loginpass% goto notthesame

cls
echo Please enter your new password.
echo.
set /p newpass=:

cd %userprofile%\documents\AccountBin\Profiles\%passuser%
if %loginuser% == %newpass% goto nopassasuser2
rename "%oldpass%.bat" "%newpass%.bat"
echo P.C: %date% %time%>>LoggedLogins.txt
goto passsuccess

:playgame
cls
@echo off
setlocal
title Starting

::The actual game

@echo off
mode con: cols=54 lines=20
color 6
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Connecting...
echo        ----------------------------------------
echo                                         =   0 ]
echo        ----------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Connecting...
echo        ---------------------------------------
echo        []                              =   5 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Connecting...
echo        ---------------------------------------
echo        [][]                            =  15 ]
echo        ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Connecting...
echo        ---------------------------------------
echo        [][][]                          =  23 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Connecting...
echo        ---------------------------------------
echo        [][][][]                        =  30 ]
echo         --------------------------------------
ping localhost -n 4 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Databreach fount.. Attempt login...
echo        ---------------------------------------
echo        [][][][][]                      =  38 ]
echo        ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Databreach fount.. Attempt login...
echo        ---------------------------------------
echo        [][][][][]                      =  42 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Databreach fount.. Attempt login...
echo        ---------------------------------------
echo        [][][][][][]                    =  45 ]
echo        ---------------------------------------  
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Databreach fount.. Attempt login...
echo        ---------------------------------------
echo        [][][][][][][]                  =  48 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Databreach fount.. Attempt login...
echo        ---------------------------------------
echo        [][][][][][][][]                =  50 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Databreach fount.. Attempt login...
echo        ---------------------------------------
echo        [][][][][][][][][]              =  56 ]
echo        ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][]            =  63 ]
echo        ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][][]          =  69 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][][][]        =  75 ]
echo        ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][][][][]      =  79 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][]    =  86 ]
echo        ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][][]  =  90 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Logging in...
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][][]  =  96 ]
echo        ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Log in complete!
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][][][]= 100 ]
echo        ---------------------------------------

pause 
@echo off
mode con: cols=110 lines=23
cls
title Game
echo Date: 4/21/1998 
echo [Enter your story name]
echo.
echo.
echo.
echo.
echo.

COLOR A
:getName
echo.  
set "name="
SET /P NAME=
if not defined NAME goto getName
ECHO Welcome back %NAME% !

cls

echo. 
echo Logged in as %name%
echo.
echo [ONLINE]JaisyHutson@email.org: Hey! %name% ! Got that new product that you just produced, gotta say I'm loving it!
echo From 9:02pm
echo.
echo [You]%name%@email.org: Why thank you! It means a lot, been working on it for over a year now.
echo Sent 9:03pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JaisyHutson@email.org: Yeah, I heard many other people bought it so they could clean their house. LOL! 
echo From 9:06pm
echo [You]%name%@email.org: Crap, well I should've made it clear that it was a drinking supply and not cleaning..
echo Sent 9:08pm
echo Press 'Enter' to proceed.
echo.

echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JaisyHutson@email.org: I mean.. Some old elders are using it for cleaning I presume. 
echo From 9:14pm
echo [You]%name%@email.org: Yeah, well I am going to re-release it with a notice on the back of the bottle..
echo Sent 9:17pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin


echo [ONLINE]JaisyHutson@email.org: Anyways.. I have to go turn my product in for today so that I don't get fired!
echo From 9:17pm
echo [You]%name%@email.org: I thought you already turned it in!? Or was that just a form from your other company?
echo Sent 9:19pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JaisyHutson@email.org: Well I did! But there were some errors you were supposed to fix, but didn't so the moderator had to fix it instead!
echo From 9:24pm
echo [You]%name%@email.org: Weird.. I thought I fixed the security last time I checked in..
echo Sent 9:24pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin


echo [ONLINE]JaisyHutson@email.org: But you didn't, you were on time but you didn't get the memo! 
echo From 9:26pm
echo [You]%name%@email.org: I'm sorry Jais. Next time.
echo Sent 9:26pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JaisyHutson@email.org: Better be! I gotta go work with Jill.
echo From 9:28pm
echo [You]%name%@email.org:Oh.. Jill? Alright, well see you.
echo Sent 9:28pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JaisyHutson@email.org: Bye! 
echo From 9:30pm
echo [You]%name%@email.org: Cya
echo Sent 9:30pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JaisyHutson@email.org: PS, there was a databreach that happened yesterday and none of the staff team can fix it. I don't think it's that serious though.
echo From 9:34pm
echo [You]%name%@email.org: I'll try fixing it, I am not 100 percent sure if I can, but I'll try.
echo Sent 9:38pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

cls
color 3
echo [ONLINE]JillCarbol@email.org: Hey there! Just checkin' up on ya. I'm sorry if I didn't answer your questions, I'm currently doing some top secret stuff with Jaisy ;) Ttyl!
echo From 9:54pm
echo [You]%name%@email.org: Listen. Don't even touch her. Do you understand me?!
echo Sent 9:58pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JillCarbol@email.org: Relax! She could've told you, but she didn't. She's your crush isn't she?
echo From 10:02pm
echo [You]%name%@email.org: That's none of your business.
echo Sent 10:04pm
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

echo [ONLINE]JillCarbol@email.org: So be it! Lol, you can't even get out of that office.
echo From 10:06pm
echo [ You have blocked this user ] 
echo Press 'Enter' to proceed
echo.

:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

color 4
cls
echo [ERROR] Databreach fount! Shutting service down..
echo.
echo [You] Shit.. Knew it would happen..
echo Press 'Enter' to proceed


:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

::Task testing - I don't know how it will work but, whatever.
cls 
echo [Task] Fix the databreach!

goto selection

:: end of game

set /p fd=:


::Error
:nopassasuser
echo.
echo You can't have your password as your username.
pause >nul
goto signup

:signuperror
echo.
color 0c
echo It seems this username has already been taken. Please choose another username or log-in.
pause >nul
goto home

:loginerror
echo.
color 0c
echo It seems that you have put in an incorrect username or password. Have you registered?
pause >nul
goto home

:userchangeerror
cls
echo The username you have provided does not exist.
pause >nul
goto selection

:userchangeerror2
cls
echo You cannot change the username or password of someone else's account.
pause >nul
goto selection

:userchangeerror3
cls
echo The username you have provided is already in use.
pause >nul
goto selection


:profilelocked
cls
echo Your profile has been locked. Please contact the computer Administrator.
pause >nul
goto home

:nopassasuser2
echo.
echo You can't have your password as your username.
pause >nul
goto changepassword

:notthesame
cls
echo The old password is not correct.
pause >nul
goto selection

:folderlockerror
cls
echo The folder name you have provided was not found.
pause >nul
goto selection

:folderunlockerror
cls
echo The folder name you have provided was not found.
pause >nul
goto selection


::Success
:signupsuccess
echo.
color 0f
echo You have successfully created an account!
pause >nul
goto home

:loginsuccess
echo.
color 0f
echo You have successfully logged in.
pause >nul
goto selection

:userchangesuccess
cls
echo You have successfully changed your username.
pause >nul
goto home

:passsuccess
cls
echo You have successfully changed your password.
pause >nul
goto home
