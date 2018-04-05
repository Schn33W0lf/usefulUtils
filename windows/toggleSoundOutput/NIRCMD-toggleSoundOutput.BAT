::@echo off
:::::::::::::::::::::::::::::::::::::SETTINGS::::::::::::::
set OUTPUT1="OUTPUT1"
set OUTPUT2="OUTPUT2"
set PATH="nircmd.exe"
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
find /c /i "%OUTPUT1%" "defaultsounddevice.cookie"
if errorlevel 1 goto false
echo %OUTPUT2%>defaultsounddevice.cookie
%PATH% setdefaultsounddevice %OUTPUT2%
GOTO exit
:false
echo %OUTPUT1%>defaultsounddevice.cookie
%PATH% setdefaultsounddevice %OUTPUT1%
:exit
