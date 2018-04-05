
@echo off
title Picture Sorter pre-release a_0.3.1
mode con lines=51 cols=101
chcp 1252>nul
set sae=ä
set soe=ö
set sue=ü
set bae=Ä
set boe=Ö
set bue=Ü
set ssz=ß
set sz3=³
set sz2=²
set s01=°
set s02=§
set s03=Ž
chcp 850>nul
::::::::::::::::::::::::::::::::::::::::::::::::::::::KEYS::::::::::::::::::::::::::OPTIONS
set U=W
set D=S
set S=D
::::::::::::::::::::::::::::::::::::::::::::::::::::::KEY:DESCRIPTION:/:MESSAGE:::::
set UM=Nach oben
set DM=Nach unten
set SM=Option w%sae%hlen
::::::::::::::::::::::::::::::::::::::::::::::::::::::OPTIONS:::::::::::::::::::::::
set O1=           Aufnahme-Datum           
set O2=           Erstell-Datum            
SET O3=          Durchnummerieren          
::::::::::::::::::::::::::::::::::::::::::::::::::::::ARROW:STYLE:::::::::::::::::::
SET L=                          ^=^=^> 
SET R= ^<^=^=
::::::::::::::::::::::::::::::::::::::::::::::::::::::DONT:CHANGE
GOTO START
:S
::::::::::::::::::::::::::::::::::::::::::::::::::::::DESTINATION:::::::::::::::::::
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo       ²²²²²   ²²²²²        ²²²²²²²²²²²²²²²    ²²²²²     ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²²²²²²
echo       ²²²²²   ²²²²²        ²²²²²²²²²²²²²²²    ²²²²²²    ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²²²²²²
echo      ²²²²²²² ²²²²²²²       ²²²²²              ²²²²²²²   ²²²²²    ²²²²²     ²²²²²    ²²²²²
echo      ²²²²²²² ²²²²²²²       ²²²²²              ²²²²²²²²  ²²²²²    ²²²²²     ²²²²²    ²²²²²
echo     ²²²²²²²²²²²²²²²²²      ²²²²²²²²²²         ²²²²²²²²² ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²
echo     ²²²²²²²²²²²²²²²²²      ²²²²²²²²²²         ²²²²² ²²²²²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²
echo    ²²²²²  ²²²²²  ²²²²²     ²²²²²              ²²²²²  ²²²²²²²²    ²²²²²     ²²²²²    ²²²²²
echo    ²²²²²         ²²²²²     ²²²²²              ²²²²²   ²²²²²²²     ²²²²²   ²²²²²     ²²²²²
echo   ²²²²²           ²²²²²    ²²²²²²²²²²²²²²²    ²²²²²    ²²²²²²      ²²²²²²²²²²²      ²²²²²²²²²²²²²²²
echo   ²²²²²           ²²²²²    ²²²²²²²²²²²²²²²    ²²²²²     ²²²²²         ²²²²²         ²²²²²²²²²²²²²²²
echo.
echo ²EXECUTING²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo W%sae%hle eine der Optionen mithilfe folgender Tasten:
echo ²²²²²²
echo ³WARN³ Bitte stets die R%sue%ckmeldung der Befehle beachten!
echo ²²²²²²
echo.
echo ²²²²²²
echo ³INFO³ Kopiere Dateien in ein tempor%sae%res Verzeichnis . . .
echo ²²²²²²
echo.
copy INPUT temp
echo.
::O1 AufnahmeDatum
IF "%menue%" == "1" echo ²²²²²²& echo ³INFO³ Lese EXIF Daten . . .& echo ²²²²²²& echo.& exiftool.exe -F -d OUTPUT/%%Y-%%m-%%d_%%H-%%M-%%S.%%%%e "-filename<DateTimeOriginal" temp
::O2 ErstellDatum
IF "%menue%" == "2" echo ²²²²²²& echo ³INFO³ Lese EXIF Daten . . .& echo ²²²²²²& echo.& exiftool.exe -F -d OUTPUT/%%Y-%%m-%%d_%%H-%%M-%%S.%%%%e "-filename<FileCreateDate" temp
::O3 Durchnummerieren
IF "%menue%" == "3"  GOTO VBS1
echo.
echo ²²²²²²
echo ³INFO³ L%soe%sche Daten aus dem tempor%sae%ren Verzeichnis . . .
echo ²²²²²²
echo.
del temp\*.* /s /q
echo.
echo ²²²²²²
echo ³INFO³ Bitte dr%sue%cke eine beliebige Taste . . .
echo ²²²²²²
pause>nul
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo       ²²²²²   ²²²²²        ²²²²²²²²²²²²²²²    ²²²²²     ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²²²²²²
echo       ²²²²²   ²²²²²        ²²²²²²²²²²²²²²²    ²²²²²²    ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²²²²²²
echo      ²²²²²²² ²²²²²²²       ²²²²²              ²²²²²²²   ²²²²²    ²²²²²     ²²²²²    ²²²²²
echo      ²²²²²²² ²²²²²²²       ²²²²²              ²²²²²²²²  ²²²²²    ²²²²²     ²²²²²    ²²²²²
echo     ²²²²²²²²²²²²²²²²²      ²²²²²²²²²²         ²²²²²²²²² ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²
echo     ²²²²²²²²²²²²²²²²²      ²²²²²²²²²²         ²²²²² ²²²²²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²
echo    ²²²²²  ²²²²²  ²²²²²     ²²²²²              ²²²²²  ²²²²²²²²    ²²²²²     ²²²²²    ²²²²²
echo    ²²²²²         ²²²²²     ²²²²²              ²²²²²   ²²²²²²²     ²²²²²   ²²²²²     ²²²²²
echo   ²²²²²           ²²²²²    ²²²²²²²²²²²²²²²    ²²²²²    ²²²²²²      ²²²²²²²²²²²      ²²²²²²²²²²²²²²²
echo   ²²²²²           ²²²²²    ²²²²²²²²²²²²²²²    ²²²²²     ²²²²²         ²²²²²         ²²²²²²²²²²²²²²²
echo.
echo ²FINISH²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo Fertig! Men%sue% wird geladen . . .
ping 127.0.0.1 -n 2 >nul
cls
::::::::::::::::::::::::::::::::::::::::::::::::::::::DONT:CHANGE::::::::::::::::::::::::::
GOTO M
:START
::::::::::::::::::::::::::::::::::::::::::::::::::::::MENUE
set menue=1
:M
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo       ²²²²²   ²²²²²        ²²²²²²²²²²²²²²²    ²²²²²     ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²²²²²²
echo       ²²²²²   ²²²²²        ²²²²²²²²²²²²²²²    ²²²²²²    ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²²²²²²
echo      ²²²²²²² ²²²²²²²       ²²²²²              ²²²²²²²   ²²²²²    ²²²²²     ²²²²²    ²²²²²
echo      ²²²²²²² ²²²²²²²       ²²²²²              ²²²²²²²²  ²²²²²    ²²²²²     ²²²²²    ²²²²²
echo     ²²²²²²²²²²²²²²²²²      ²²²²²²²²²²         ²²²²²²²²² ²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²
echo     ²²²²²²²²²²²²²²²²²      ²²²²²²²²²²         ²²²²² ²²²²²²²²²    ²²²²²     ²²²²²    ²²²²²²²²²²
echo    ²²²²²  ²²²²²  ²²²²²     ²²²²²              ²²²²²  ²²²²²²²²    ²²²²²     ²²²²²    ²²²²²
echo    ²²²²²         ²²²²²     ²²²²²              ²²²²²   ²²²²²²²     ²²²²²   ²²²²²     ²²²²²
echo   ²²²²²           ²²²²²    ²²²²²²²²²²²²²²²    ²²²²²    ²²²²²²      ²²²²²²²²²²²      ²²²²²²²²²²²²²²²
echo   ²²²²²           ²²²²²    ²²²²²²²²²²²²²²²    ²²²²²     ²²²²²         ²²²²²         ²²²²²²²²²²²²²²²
echo.
echo ²MAIN MENUE²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo W%sae%hle eine der Optionen mithilfe folgender Tasten:
echo.
echo [%U%] ^= [%UM%]
echo [%D%] ^= [%DM%]
echo [%S%] ^= [%SM%]
echo.
echo.
echo                               ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo                               ³                                      ³
IF "%menue%" == "1" echo                           ^=^=^> ³ %O1% ³ ^<^=^=
IF "%menue%" == "2" echo                               ³ %O1% ³
IF "%menue%" == "3" echo                               ³ %O1% ³
echo                               ³                                      ³
echo                               ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo.
echo                               ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo                               ³                                      ³
IF "%menue%" == "1" echo                               ³ %O2% ³
IF "%menue%" == "2" echo                           ^=^=^> ³ %O2% ³ ^<^=^=
IF "%menue%" == "3" echo                               ³ %O2% ³
echo                               ³                                      ³
echo                               ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo.
echo                               ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo                               ³                                      ³
IF "%menue%" == "1" echo                               ³ %O3% ³
IF "%menue%" == "2" echo                               ³ %O3% ³
IF "%menue%" == "3" echo                           ^=^=^> ³ %O3% ³ ^<^=^=
echo                               ³                                      ³
echo                               ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo.
CHOICE /N /C:%D%%U%%S%
IF errorlevel 3 GOTO S
IF errorlevel 2 GOTO U
IF errorlevel 1 GOTO D
GOTO E
:U
IF "%menue%" == "2" set menue=1
IF "%menue%" == "3" set menue=2
GOTO M
:D
IF "%menue%" == "2" set menue=3
IF "%menue%" == "1" set menue=2
GOTO M
:VBS1
cls
echo error - irgendwas ist schief gelaufen.
echo.
echo.
echo.
echo shit happens :D
echo.
echo Bitte eine beliebige Taste druecken . . .
set M=%temp%\Meldung.vbs
>%M% echo Set args=WScript.Arguments:WScript.Quit MsgBox(args(0),args(1),args(2))
cscript //nologo %M% "Diese Funktion ist noch nicht verf%sue%gbar!" 16 "ERROR: MENUE >> O3"
cls
GOTO M
:E
cls
echo error - irgendwas ist schief gelaufen.
echo.
echo.
echo.
echo shit happens :D
echo.
echo Bitte eine beliebige Taste druecken . . .
pause>nul
start "" "PictureSorter_v0.3.1.BAT"
EXIT
