@echo off
mode con lines=58 cols=75
title=Special Characters.BAT
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
set s03=´
chcp 850>nul
echo.
echo    #####################################################################
echo    #                                                                   #
echo    #  U   U M   M  L     AAA  U   U TTTTT EEEEE   BBBB   AAA  TTTTT    #
echo    #  U   U MM MM  L     A A  U   U   T    E       B  B  A A    T      #
echo    #  U   U M M M  L     A A  U   U   T    EEE     BBB   A A    T      #
echo    #  U   U M   M  L    AAAAA U   U   T    E       B  B AAAAA   T      #
echo    #   UUU  M   M LLLLL A   A  UUU    T   EEEEE O BBBB  A   A   T      #
echo    #  ^= Special Characters.BAT                                         #
echo    #####################################################################
echo.
echo  #########################################################################
echo   ##WITHOUT CHCP
echo   #BIG              ^> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
echo   #BIG     , uml.*  ^> "ÄÖÜ                       "
echo   #BIG, sonderz.*   ^> "°!"§$%&/()=?`*'>;:_                    "
echo   #SMALL            ^> "abcdefghijklmnopqrstuvwxyz"
echo   #SMALL, uml.*     ^> "äöü                       "
echo   #SMALL, sonderz.* ^> "^ß´+#<,.-                 "
echo   #NUMBERS          ^> "1234567890                "
echo   #ALTGR            ^> "²³{[]}\@€~|               "
echo   #*german (or other) special characters
echo  #########################################################################
echo   ##WITH CHCP
echo   #BIG              ^> ABCDEFGHIJKLMNOPQRSTUVWXYZ
echo   #BIG, uml.*       ^> %bae%%boe%%bue%
echo   #BIG, sonderz.*   ^> %s01%!"%s02%$%%^&/()=?`*'>;:_
echo   #SMALL            ^> abcdefghijklmnopqrstuvwxyz
echo   #SMALL, uml.*     ^> %sae%%soe%%sue%
echo   #SMALL, sonderz.* ^> ^^%ssz%%s03%+#^<,.-
echo   #NUMBERS          ^> 1234567890
echo   #ALTGR            ^> %sz2%%sz3%{[]}^\^@€^~^|
echo   #*german (or other) special characters
echo  #########################################################################
echo   INFORMATION:
echo   ^> The quotes helped to not execute some Operation characeters (e.g. %, !, ...) 
echo   ^>Here is a list of characters which must be annotated: 
echo     ^>  Special Character ^| Fix ^| Recommended
echo     ^>  ^^                  ^| ^^^^  ^| often
echo     ^>  %%                  ^| %%%%  ^| always
echo     ^>  ^&                  ^| ^^^&  ^| often
echo     ^>  ^/                  ^| ^^^/  ^| rarely
echo     ^>  (                  ^| ^^(  ^| rarely
echo     ^>  )                  ^| ^^)  ^| rarely
echo     ^>  ^=                  ^| ^^^=  ^| often
echo     ^>  ^?                  ^| ^^^?  ^| rarely
echo     ^>  ^\                  ^| ^^^\  ^| rarely
echo     ^>  ^*                  ^| ^^^*  ^| rarely
echo     ^>  ^+                  ^| ^^^+  ^| rarely
echo     ^>  ^<                  ^| ^^^<  ^| often
echo     ^>  ^>                  ^| ^^^>  ^| often
echo     ^>  ^|                  ^| ^^^>  ^| always
echo     ^>  "Euro-Zeichen" "€" ^| Nothing found yet
echo   ^> GL HF ;D
echo  #########################################################################
echo   ^| BY Schn33W0lf                                            16.07.2017 ^|
echo   #######################################################################
echo.
echo                   Press any key to continue . . .
pause>nul
