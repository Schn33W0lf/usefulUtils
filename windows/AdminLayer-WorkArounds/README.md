# Admin-Layer Workarounds
_Here are some (Batch) files you can use to prevent the Admin-Layer (If you want to execute a file but you dont have permission)._
## Installation
Copy the code and paste it in a text document.
Save it as &lt;AnyStupidName&gt;.bat (or .BAT, .cmd, ...)
## Code:
### Simple version
```batch
set __COMPAT_LAYER=RunAsInvoker
start "" "%*"  /s /q
```
#### How it works:
> The Security of Using \_\_COMPAT_LAYER
> Setting \_\COMPAT_LAYER to RunAsInvoker does not actually give you administrator privileges if you
> do not have them; it simply prevents the UAC pop-up from appearing and then runs the program as
> whatever user called it. As such, it is safe to use this since you are not magically obtaining admin
> rights. - [SomethingDark | Stackoverflow](https://stackoverflow.com/a/37881453)
The Batch only prevent the Admin-Layer (or UAC pop-up), which asks you for a password.
**So it doesnt give you any admin rights!** If you want to install something or access to areas/ directorys you dont have rights for, you get an error message. **OR** Maybe some executables like Win32DiskManager (e.g to write an image to a µSD Card for RPi, ...) will work because they use the popup to prevent users to start the programm (Because you could kill your hard drive/ USB sticks, ...).
> With Great Power Comes Great Responsibility

so use this carefully :P
