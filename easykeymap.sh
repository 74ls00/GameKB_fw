#!/bin/sh

chmod +x $( dirname "$0" )/programmer/linux/avrdude.sh
chmod +x $( dirname "$0" )/programmer/linux/port.sh

cd "$( dirname "$0" )/keymapper"
python -m easykeymap.gui
