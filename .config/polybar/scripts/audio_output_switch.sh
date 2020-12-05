#!/bin/bash
# Switches current audio output chanel (speakers or headphones)

CURRENT_PROFILE=$(pactl list sinks | grep "Active Port"| cut -d ' ' -f 3-)

if [ "$CURRENT_PROFILE" = "analog-output-lineout" ] ; then
        pactl set-sink-port 0 "analog-output-headphones"
else 
        pactl set-sink-port 0 "analog-output-lineout"      
fi
polybar-msg hook audio-output 1
