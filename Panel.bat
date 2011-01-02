title Guardiangunz updater
@ECHO OFF
mode con cols=170 lines=50

Set Version=2.03
Set Newest=2.04

IF EXIST Update204/disable.txt Title OUTDATED VERSION
IF EXIST Update204/disable.txt Echo This is a outdated version
IF EXIST Update204/Disable.txt Echo Version: %Version%
IF EXIST Update204/Disable.txt Echo Newest: %Newest%
IF EXIST Update204/Disable.txt Pause
IF EXIST Update204/Disable.txt Exit
Else
goto Update

Set MySQL_off=Y

:Update
IF NOT EXIST Game mkdir Game
IF NOT EXIST Update204 git\bin\git.exe clone git://github.com/gangboy70/ragezone.git
rmdir /s /q Game
rmdir Test
cls
pause
GOTO main

:main
SET /P M=Enter your password:
If /i %M%==. Echo you did not enter a password
If /i %M%==. Echo try again pls
If /i %M%==. Pause
If /i %M%==. Goto adminpanel
:main2
rem fill this with your own code! this is empty space made for you!
:finished

:adminpanel
cls
Echo Welcome %username%
Echo.
Echo to the admin panel,
Echo Please enter your password.

SET /P M=Enter your password:
If /i %M%==hansje cls
If /i %M%==hansje echo Password OK!
If /i %M%==hansje echo press a key to enter the panel
If /i %M%==hansje pause>nul
If /i %M%==hansje goto passwordok
Else
cls
Echo Wrong password entered %USERNAME%.
Echo Please try again or close this program.
Echo.
Echo.
pause>nul
goto adminpanel

:passwordok
cls
Echo What do you want todo %username% ?

Echo --------------------------------
Echo.
Echo L - Shutdown the locator.
Echo M - Shutdown the matchserver.
Echo D - Shutdown the matchagent.
Echo Q - Enter MySQL Admin Panel
Echo X - Log out of the admin panel.
Echo.
Echo --------------------------------
Echo.
Echo Note: entering a wrong option will result in a program crash!
Echo.
Echo.
Echo.

SET /P E=Make a choise:
If /i %E%==L TASKKILL /F /IM "Locator.exe"
If /i %E%==M TASKKILL /F /IM "matchserver.exe"
If /i %E%==D TASKKILL /F /IM "matchagent.exe"
If /i %E%==Q cls
If /i %E%==Q Echo Still under development
If /i %E%==Q Echo this function will be added in patch 2.78
If /i %E%==Q Echo the program auto-updates and will notify you once this function is added!
If /i %E%==Q ------------------------------------------------------------------------------
If /i %E%==Q Echo.
If /i %E%==Q Echo to override this setting ask gangboy70 @ Ragezone for a admin panel with the BETA version of this function!
If /i %E%==Q Pause
If /i %E%==Q goto passwordok
If /i %E%==X goto logout

:logout
cls
SET /P N=Enter your password:
If /i %N%==. Echo you did not enter a password
If /i %N%==. Echo try again pls
If /i %N%==. Pause
If /i %N%==. Goto adminpanel
If /i %N%==hansje cls
If /i %N%==hansje echo Password OK!
If /i %N%==hansje echo press a key to leave the panel
If /i %N%==hansje pause>nul
If /i %N%==hansje goto adminpanel
Else
cls
Echo Wrong password entered %USERNAME%.
Echo Please try again or close this program.
Echo.
Echo.
pause>nul
goto logout









