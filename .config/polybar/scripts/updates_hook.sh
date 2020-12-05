#!/bin/bash
input="/tmp/polybar.pids"
pid=$(head -n 1 "$input")
polybar-msg -p $pid hook updates-arch-combined 1
