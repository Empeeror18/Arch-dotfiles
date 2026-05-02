#!/bin/bash

current=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | head -n1 | tr -d '%')

new=$(seq 0 5 100 | wofi --dmenu --prompt "Volume: $current%")

if [ -n "$new" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ ${new}%
fi
