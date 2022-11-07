#!/bin/bash
input="/tmp/polybar.pids"
pid=$(head -n 1 "$input")
/usr/bin/machinectl shell nicolas@ /usr/bin/bash -c "polybar-msg -p $pid action updates-arch-combined reset"
