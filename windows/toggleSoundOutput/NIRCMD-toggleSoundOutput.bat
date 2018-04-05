::@echo off
:::::::::::::::::::::::::::::::::::::SETTINGS::::::::::::::
set OUTPUT1=USB-Headset
set OUTPUT2=Klinke-Lautsprecher
set PATH2NIRCMD=nircmd
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
find /c /i "%OUTPUT1%" "defaultsounddevice.cookie"
if errorlevel 1 goto false
echo %OUTPUT2%>defaultsounddevice.cookie
nircmd.exe setdefaultsounddevice %OUTPUT2%
::DEBUG::pause
GOTO exit
:false
echo %OUTPUT1%>defaultsounddevice.cookie
%PATH2NIRCMD%\nircmd.exe setdefaultsounddevice %OUTPUT1%
::DEBUG::pause
:exit
::DEV::pause
