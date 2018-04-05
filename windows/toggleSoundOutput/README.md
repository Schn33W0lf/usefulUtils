# Toggle sound output
## Description
The Batch file uses nircmd to set the default sound output to a specific device. It doesnt matter where the device is (HDMI, USB, Audio), the name is the only important thing.
## Installation
1. Download [nircmd](http://www.nirsoft.net/utils/nircmd.html) (scroll down and select your architecture 32-bit or 64-Bit, if you arent sure, choose the 32-bit version (first download link)) and save the nircmd folder on your hard disk.
3. Download the [NIRCMD-toggleSoundOutput.BAT](NIRCMD-toggleSoundOutput.BAT) and paste it in the nircmd folder.
3. Create a anyNameYouWant.lnk (or right-click » New » Link). The destination is `DEVICE:\path\to\nircmd\NIRCMD-toggleSoundOutput.BAT`, eg: `C:\programm-files\nircmd\NIRCMD`
## Configuration
**WIN 7** In your task bar should be a red speaker symbol. Click on that and in the list choose something like _Audio Devices_ or _Playback Devices_. Then, look for your two audio devices. Right-click and rename them. Paste the new names in the .BAT file. Maybe these steps are the same on **Windows 8/ 10**.
**WIN XP** (Classic view) Start » Control Panel » Sounds and Audio Devices \[I dont know more about how you change the name, the option should be anywhere there :P\]
