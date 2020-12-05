#!/bin/bash
# Displays an icon indicating current audio output chanel

CURRENT_PROFILE=$(pactl list sinks | grep "Active Port"| cut -d ' ' -f 3-)
CURRENT_SINK=$(pacmd list-sinks  | grep -e '*' | cut -d ":" -f 2)

if [ "$CURRENT_PROFILE" = "analog-output-lineout" ] ; then
	echo "蓼 "  
elif [ "$CURRENT_SINK" -eq 1 ]; then
	echo "3D   "
else 
	echo " "  
fi
