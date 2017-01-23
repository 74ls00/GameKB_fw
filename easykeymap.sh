#!/bin/sh

chmod +x $( dirname "$0" )/programmer/avrdude.sh
chmod +x $( dirname "$0" )/programmer/port.sh

cd "$( dirname "$0" )/keymapper"
python -m easykeymap.gui
