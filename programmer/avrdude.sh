#!/bin/sh
#
#mate-terminal -e ./avrdude.sh --title "avrdude"
#dmesg | grep ttyS
#http://www.opennet.ru/openforum/vsluhforumID9/8593.html



port=/dev/ttyUSB0
fw=../keymapper/mykb.hex

user=$(whoami)
pdir=$( dirname "$0" )

echo "PORT:" $port   
echo "FW :" $pdir/$fw

sudo usermod -a -G dialout $user
sudo chmod a+rw $port

avrdude -P $port -c stk500v2 -p m32u4 -U flash:w:$pdir/$fw:a


 
