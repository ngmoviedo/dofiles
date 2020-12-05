#!/bin/bash

# Terminate already running bar instances
killall -q polybar
rm /tmp/polybar.pids

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar -r mybar &
echo "$!" >> /tmp/polybar.pids
polybar -r tray &
echo "$!" >> /tmp/polybar.pids

sleep 1

polybar-msg -p $! cmd hide


echo "Polybar launched..."
