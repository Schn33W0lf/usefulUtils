# Installation Infos for any toggleKeyboardLights programm
1. download the correct keyboard bash file to `/opt/toggleKeyboardLights/[trademark/ manufacturer]/[trademark/ manufacturer]_toggleLights.sh`
2. (optional) You can download the png in the folder or just search your own.
3. Go to Menue (Application Bar) » Preferences » Main Menue Editor
   -  choose Accessories (or any other where you want to display the app)
   - Click New Item
   - Give it a (senselessy :P) name e.g: \[keyboard trademark\/ manufacturer\] toggleLights
   - and a senslessy description e.g: toggle the background lights of the \[trademark\/ manufactorer\] keyboard.
   - Type in `sh /opt/toggleKeyboardLights/[trademark/ manufacturer]/[trademark/ manufacturer]_toggleLights.sh`
   - and save.
4. Navigate to `/home/$USER/.local/share/applications`.
5. Open the .desktop entry with any text editor
   - add `Categories=Accessories` (or other)
   - and `Icon=/opt/toggleKeyboardLights/[trademark/ manufacturer].png`
In my case my .desktop file looks like this:
```desktop
[Desktop Entry]
Comment=toggle the background lights of the cmstorm devastator keyboard
Terminal=false
Name=cmstorm devastator toggleLights
Exec=sh /opt/toggleKeyboardLights/cmstorm_devastator_toggleLights.sh
Type=Application
Categories=Accessories
Icon=/opt/toggleKeyboardLights/cmstorm.png
```
