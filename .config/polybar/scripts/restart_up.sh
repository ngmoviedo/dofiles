#!/bin/bash
input="/tmp/polybar.pids"
pid=$(head -n 1 "$input")
polybar-msg -p $pid cmd restart
