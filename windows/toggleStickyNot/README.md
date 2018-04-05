# toggle 'StickyNot.exe'
Toggles the Sticky Notes of Windows 7+
## Installation
Download the file and save it anywhere on your disk.



No, thats all
## Additional configuration
You can create a shortcut (\*.lnk) to the batch file, give it a nice icon and even give it a shortcut key.

You can give the file a shortcut key in the propertys, for example N - like notes. Execute the file by pressing STRG + ALT + N

**Notice** that STRG + ALT equals ALT GR. So if you want to write an @ and a shortcut key is Q you will run the shortcut instead of writing an @[\[1\]](#fn1). **You can use the .lnk files on the Desktop only.**

This is the [.lnk](nircmd%20Sound%20Output%20%5BV%5D.lnk) I use. You have to change the destination in the propertys if you want to use it.
## Additional infos
You can toggle **every** executable file with that.

Just edit Line 2: `tasklist |find /i "StikyNot.exe">nul` replace StickyNot.exe with your filename.
## How it works
It tests if the process (StickyNot) is running and analyse the errorlevel. 0 Means that the process is running, so it kills the process. On the other hand, if the process isnt running (not errorlevel 0) it starts the process.
## Footnotes
###### FN1 
On german keyboards you have to type ALT GR + Q to write an @ character.
###### [Top](#)
