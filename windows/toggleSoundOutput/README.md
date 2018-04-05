# Toggle sound output
## Description
The Batch file uses nircmd to set the default sound output to a specific device. It doesnt matter where the device is (HDMI, USB, Audio), the name is the only important thing.
## Installation
1. nircmd
   - Install [nircmd](http://www.nirsoft.net/utils/nircmd.html) (scroll down and select your architecture 32-bit or 64-Bit, if you arent sure, choose the 32-bit version (first download link))
   - _**[or]**_ Download the nircmd folder above and paste it anywhere on your hard drive (e.g: C:\program-files\nircmd). _**If you do that, ignore step 2.**_
2. Download the [NIRCMD-toggleSoundOutput.BAT](NIRCMD-toggleSoundOutput.BAT) and paste it in the nircmd folder.
3. Create a anyNameYouWant.lnk (or right-click » New » Link) in the destination line write DEVICE:\path\to\nircmd\NIRCMD-toggleSoundOutput.BAT
