@echo off
title avrdude
rem set path=%path%;%~d0%~p0
@chcp 1251
set avrdude=%~d0%~p0win32
cls

set port=com7
set fw=..\keymapper\mykb.hex

echo.
echo PORT: %port%  FW: %fw%
echo.


rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -v F
%avrdude%\avrdude.exe -P %port% -c stk500v2 -p m32u4 -U flash:w:%fw%:a

@rem set dir=leonardo
@rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U eeprom:r:"%dir%\eeprom.hex":r

@rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U hfuse:r:"%dir%\hfuse.hex":h
@rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U lfuse:r:"%dir%\lfuse.hex":h
@rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U efuse:r:"%dir%\efuse.hex":h
@rem chcp 866
@rem pause
@ping -n 10 -w 1000 -l 1 127.0.0.1 >%tmp%\bat.tmp