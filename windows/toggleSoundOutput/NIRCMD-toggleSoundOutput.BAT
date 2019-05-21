::@echo off
:::::::::::::::::::::::::::::::::::::SETTINGS::::::::::::::
set OUTPUT1="OUTPUT1"
set OUTPUT2="OUTPUT2"
set PATH="nircmd.exe"
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p OUTPUT=<defaultsounddevice.cookie
if %OUTPUT% == %OUTPUT2% goto false
echo %OUTPUT2%>defaultsounddevice.cookie
%PATH% setdefaultsounddevice %OUTPUT2%
GOTO exit
:false
echo %OUTPUT1%>defaultsounddevice.cookie
%PATH% setdefaultsounddevice %OUTPUT1%
:exit
