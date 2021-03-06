# Toggle sound output
The Batch file uses nircmd to set the default sound output to a specific device. It doesnt matter where the device is (HDMI, USB, Audio), the name is the only important thing. It switches between two devices.
## Installation
1. Download [nircmd](http://www.nirsoft.net/utils/nircmd.html) (scroll down and select your architecture 32-bit or 64-Bit, if you arent sure, choose the 32-bit version (first download link)) and save the nircmd folder on your hard disk.
3. Download the [NIRCMD-toggleSoundOutput.BAT](NIRCMD-toggleSoundOutput.BAT) and paste it in the nircmd folder.
3. Create a anyNameYouWant.lnk (or right-click » New » Link). The destination is `DEVICE:\path\to\nircmd\NIRCMD-toggleSoundOutput.BAT`, eg: `C:\programm-files\nircmd\NIRCMD`
## Configuration
### WIN 7+
In your task bar should be a red speaker symbol. Click on that and in the list choose something like _Audio Devices_ or _Playback Devices_. Then, look for your two audio devices. Right-click and rename them. Paste the new names in the .BAT file. Maybe these steps are the same on **Windows 8/ 10**.

### WIN XP
(Classic view) Start » Control Panel » Sounds and Audio Devices \[I dont know more about how you change the name, the option should be anywhere there :P\] Then, paste the new names in the .BAT file.

Edit the device names and the path in the .BAT file. If the .BAT file is in the same directory as the nircmd.exe, just type nircmd.exe
## Additional configuration
You can create a shortcut (\*.lnk) to the batch file, give it a nice icon and even give it a shortcut key.

You can give the file a shortcut key in the propertys, for example N - like notes. Execute the file by pressing STRG + ALT + N

**Notice** that STRG + ALT equals ALT GR. So if you want to write an @ and a shortcut key is Q you will run the shortcut instead of writing an @ (On german keyboards you have to type ALT GR + Q to write an @ character). **You can use the .lnk files on the Desktop only.**

This is the [.lnk](nircmd%20Sound%20Output%20%5BV%5D.lnk) I use. You have to change the destination in the propertys if you want to use it.
## How it works
If you run the batch, it checks for %OUTPUT1% in a file (defaultsounddevice.cookie)[\[1\]](#fn1). If the characters are found in the file, %OPTION2% will be written. If it doesnt find the character, it writes %OPTION1%. After that, it calls nircmd.exe to set the default audio device to the written value.
So, basically it changes the value of the cookie-file and the audio output.
## Troubles
- If you change the default audio output manually, the cookie-file wont change. Just execute the batch twice and then everything is right
## Footnotes
###### FN1 
Its a simple text file, I thought cookie would be a apt name because of web-cookies which does the same job)
###### [Top](#)
