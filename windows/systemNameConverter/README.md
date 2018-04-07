# System name converter
_converts a file without an extension named 'hello' to '.hello'_
## Problem - why this?
Maybe you want to mark a file or a folder as a 'system folder' or 'system required folder' or whatever. But why not renaming it by hand?<br>
You can easily rename a file with an extension, for example 'hello.txt' to '.hello.txt'. But have you ever tried to rename a file without an extension like '.txt'?<br>
You'll get:
> Uhh im Windows and I'm stupid and I don't want you to do that because...
## Simple version - Code
```Batch
@echo off
echo This Tool dont allow your computer to go into the standby mode.
echo.
echo Press any key to start, close the programm to stop that.
pause>nul
@echo on
:loop
goto loop
```
## Extended version - Code
```Batch
@echo off
mode con lines=20 cols=87
title 'NAME'2'.NAME'-Converter v1.2
echo WARNING
echo ^> It isnt possible to rename folders / files with spaces in the name!
echo ^> Wait a second . . .
ping localhost -n 2 >nul
if "%1" == "" GOTO ERROR-file
:START-renaming
echo INFO
echo ^> Renaming . . .
For %%A in ("%1") do ren %1 .%%~nxA
echo ^> Successful!
echo ^> Press any key to exit . . .
pause>nul
exit
:ERROR-file
echo ERROR
echo ^> No file / folder selected.
echo ^> To select a file / folder, just drag and drop a file / folder over this batch file.
echo ^> press any key to exit . . .
pause>nul
exit
```
## How it works
Drag and drop any file over the Batch and wait.<br>
You also can rename file, you renamed already. ('.hello' to '..hello' to '...hello' and so on...)
## Troubles
You cant rename files with spaces in it...
