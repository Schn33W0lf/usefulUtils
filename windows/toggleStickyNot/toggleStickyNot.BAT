@echo off
tasklist |find /i "StikyNot.exe">nul
if %errorlevel% == 0 (
::KILL::
taskkill /F /IM "StikyNot.exe"
) else (
::START::
start "" "StikyNot.exe"
)
