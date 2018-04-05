# toggle 'StickyNot.exe'
Toggles the Sticky Notes of Windows 7+
## Installation
Download the file and save it anywhere on your disk.



No, thats all
## Additional configuration
You can create a shortcut (\*.lnk) to the batch file, give it a nice icon and even give it a shortcut key. You can execute the file for example with shortcut N - like notes. So if you press ALT GR + N (its the same like STRG + ALT + N) you execute the file. But dont give them random shortcut keys: If you want to write an @ the file with the shortcut Q will be executed instead of writing an @ (the @ character is there on a german keyboard). **You can use the .lnk files on the Desktop only.**
## Additional infos
You can toggle **every** executable file with that.

Just edit Line 2: `tasklist |find /i "StikyNot.exe">nul` replace StickyNot.exe with your filename.
## How it works
It tests if the process (StickyNot) is running and analyse the errorlevel. 0 Means that the process is running, so it kills the process. On the other hand, if the process isnt running (not errorlevel 0) it starts the process.
