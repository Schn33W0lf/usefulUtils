::@echo off
:::::::::::::::::::::::::::::::::::::SETTINGS::::::::::::::
set OUTPUT1="OUTPUT1"
set OUTPUT2="OUTPUT2"
set PATH2NIRCMD="nircmd\"
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
find /c /i "%OUTPUT1%" "defaultsounddevice.cookie"
if errorlevel 1 goto false
echo %OUTPUT2%>defaultsounddevice.cookie
nircmd.exe setdefaultsounddevice %OUTPUT2%
GOTO exit
:false
echo %OUTPUT1%>defaultsounddevice.cookie
%PATH2NIRCMD%nircmd.exe setdefaultsounddevice %OUTPUT1%
:exit
