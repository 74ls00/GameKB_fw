#!/bin/sh
#
#mate-terminal --title "avrdude" -e ./avrdude.sh
#dmesg | grep ttyS  #http://www.opennet.ru/openforum/vsluhforumID9/8593.html

port=/dev/ttyUSB0
fw=../../keymapper/korbord_v0.3.hex

pdir=$( dirname "$0" )

echo "PORT:" $port   
echo "FW :" $pdir/
echo $fw

avrdude -P $port -c stk500v2 -p m32u4 -U flash:w:$pdir/$fw:a

sleep 5s


 
