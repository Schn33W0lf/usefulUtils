# Installation Infos for any toggleKeyboardLights programm
1. download the right keyboard bash file to `/opt/toggleKeyboardLights/[trademark/ manufacturer]/[trademark/ manufacturer]_toggleLights.sh`
2. (optional), you can download the png in the folder or just search your own.
3. go to Menue (Application Bar) » Preferences » Main Menue Editor
   -  choose Accessories (or any other where you want to display the app)
   - click New Item
   - give it a (senselessy :P) name e.g: \[keyboard trademark\/ manufacturer\] toggleLights
   - and a senslessy description e.g: toggle the background lights of the \[trademark\/ manufactorer\] keyboard
   - and type in `sh /opt/toggleKeyboardLights/[trademark/ manufacturer]/[trademark/ manufacturer]_toggleLights.sh`
   - and save.
4. navigate to `/home/$USER/.local/share/applications`
5. open the .desktop entry with any text editor
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
