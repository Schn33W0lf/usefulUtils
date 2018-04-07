# Other Batch files...
_Maybe the are (not) usless :P_
## Prevent your Computer to go to standby mode
_The title says everything..._
### Code
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
