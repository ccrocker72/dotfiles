#!/bin/bash

# Check if waybar is running
if pgrep -x "waybar" > /dev/null; then
    # If running, kill the waybar process
    pkill -x "waybar"
fi
if ! (pgrep -x "waybar"); then
    # If not running, start waybar
    waybar &
fi

