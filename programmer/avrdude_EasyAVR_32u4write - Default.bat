chcp 1251
set avrdude=%~d0%~p0
set dir=leonardo
set port=com7
rem flash=
set fw=G:\home\Documents\Projects\EAGLE\Keyboard\firmware\EasyAVR\keymapper\korbord_v0.3.hex
rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -v F
%avrdude%\avrdude.exe -P %port% -c stk500v2 -p m32u4 -U flash:w:%fw%:a



rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U eeprom:r:"%dir%\eeprom.hex":r

rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U hfuse:r:"%dir%\hfuse.hex":h
rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U lfuse:r:"%dir%\lfuse.hex":h
rem avrdude.exe -P %port% -c stk500v2 -p m32u4 -U efuse:r:"%dir%\efuse.hex":h


pause
