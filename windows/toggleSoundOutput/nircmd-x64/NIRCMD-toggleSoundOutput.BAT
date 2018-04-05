@echo off
:::::::::::::::::::::::::::::::::::::DEFINITION::::::::::::
set OUTPUT1=*FIRST_OUTPUT*
set OUTPUT2=*SECOND_OUTPUT*
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
find /c /i "%OUTPUT1%" "defaultsounddevice.cookie"
if errorlevel 1 goto false
echo %OUTPUT2%>defaultsounddevice.cookie
nircmd.exe setdefaultsounddevice %OUTPUT2%
exit
:false
echo %OUTPUT1%>defaultsounddevice.cookie
nircmd.exe setdefaultsounddevice %OUTPUT1%
exit
::INFO
::rename this to *NAME*.BAT or .CMD