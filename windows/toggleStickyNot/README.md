# toggle 'StickyNot.exe'
Toggles the Sticky Notes of Windows 7+
## Installation
Download the file and save it anywhere on your disk.



No, thats all
## Additional infos
You can toggle **every** executable file with that.

Just edit Line 2: `tasklist |find /i "StikyNot.exe">nul` replace StickyNot.exe with your filename.
## How it works
It tests if the process (StickyNot) is running and analyse the errorlevel. 0 Means that the process is running, so it kills the process. On the other hand, if the process isnt running (not errorlevel 0) it starts the process.
