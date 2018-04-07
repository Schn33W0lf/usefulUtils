# Admin-Layer Workarounds
_Here are some (Batch) files you can use to prevent the Admin-Layer (If you want to execute a file but you dont have permission)._
## Installation
Copy the code and paste it in a text document.
Save it as [AnyStupidName].bat (or .BAT, .cmd, ...)
## Code:
### Simple version
```batch
set __COMPAT_LAYER=RunAsInvoker
start "" "%*"  /s /q
```
