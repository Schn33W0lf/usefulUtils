@echo off
mode con lines=58 cols=75
title=UMLAUTE.BAT
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
echo    #                                                                   #
echo    #####################################################################
echo.
echo  #########################################################################
echo   ##OHNE CHCP
echo   #GRO%ssz%            ^> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
echo   #GRO%ssz%, uml.      ^> "ÄÖÜ                       "
echo   #GRO%ssz%, sonderz.  ^> "°!"§$%&/()=?`*'>;:_                    "
echo   #KLEIN           ^> "abcdefghijklmnopqrstuvwxyz"
echo   #KLEIN, uml.     ^> "äöü                       "
echo   #KLEIN, sonderz. ^> "^ß´+#<,.-                 "
echo   #ZAHLEN          ^> "1234567890                "
echo   #ALTGR           ^> "²³{[]}\@€~|               "
echo  #########################################################################
echo   ##MIT CHCP
echo   #GRO%ssz%            ^> ABCDEFGHIJKLMNOPQRSTUVWXYZ
echo   #GRO%ssz%, uml.      ^> %bae%%boe%%bue%
echo   #GRO%ssz%, sonderz.  ^> %s01%!"%s02%$%%^&/()=?`*'>;:_
echo   #KLEIN           ^> abcdefghijklmnopqrstuvwxyz
echo   #KLEIN, uml.     ^> %sae%%soe%%sue%
echo   #KLEIN, sonderz. ^> ^^%ssz%%s03%+#^<,.-
echo   #ZAHLEN          ^> 1234567890
echo   #ALTGR           ^> %sz2%%sz3%{[]}^\^@€^~^|
echo  #########################################################################
echo   INFORMATION:
echo   ^> Die Anf%sue%hrungszeichen helfen, Operationsszeichen nicht auszuf%sue%hren.
echo   ^> Weitere Operationszeichen, die kommentiert werden m%sue%ssen:
echo     ^>  Operationszeichen ^| Fix ^| Ben%soe%tigt (Erfahrungsgem%sae%%ssz%)
echo     ^>  ^^                  ^| ^^^^  ^| oft
echo     ^>  %%                  ^| %%%%  ^| immer
echo     ^>  ^&                  ^| ^^^&  ^| oft
echo     ^>  ^/                  ^| ^^^/  ^| selten
echo     ^>  (                  ^| ^^(  ^| selten
echo     ^>  )                  ^| ^^)  ^| selten
echo     ^>  ^=                  ^| ^^^=  ^| oft
echo     ^>  ^?                  ^| ^^^?  ^| selten
echo     ^>  ^\                  ^| ^^^\  ^| selten
echo     ^>  ^*                  ^| ^^^*  ^| selten
echo     ^>  ^+                  ^| ^^^+  ^| selten
echo     ^>  ^<                  ^| ^^^<  ^| oft
echo     ^>  ^>                  ^| ^^^>  ^| oft
echo     ^>  ^|                  ^| ^^^>  ^| immer
echo     ^>  "Euro-Zeichen" "€" ^| Noch nichts gefunden
echo   ^> GL HF ;D
echo  #########################################################################
echo   ^| BY Schn33W0lf                                            16.07.2017 ^|
echo   #######################################################################
echo.
echo                   Dr%sue%cken Sie eine beliebige Taste . . .
pause>nul
