#!/bin/bash
input="/tmp/polybar.pids"
pid=$(head -n 2 "$input" | tail -1)
polybar-msg -p $pid cmd hide
