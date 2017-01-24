#!/bin/sh

dmesg | grep tty
echo

user=$(whoami)
port=/dev/ttyUSB0

sudopsw="1234"

echo $sudopsw | sudo -S usermod -a -G dialout $user
echo $sudopsw | sudo -S chmod a+rw $port

echo
echo end

sleep 5s
