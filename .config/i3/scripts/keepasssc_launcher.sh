#!/bin/bash

# Check if there's an active window
window=$(wmctrl -lp 2> /dev/null | grep Llavero.kdbx | wc -l)
if [ "$window" -gt 0 ]; then
	wmctrl -c "Llavero.kdbx" # Close it
else
	keepassxc # Open a window
fi
