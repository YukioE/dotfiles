#!/bin/sh

# Get the brightness level
brightness=$(brightnessctl get)
max=$(brightnessctl max)

# Convert brightness level to a percentage
brightness=$((brightness * 100 / max))

# Send notification
notify-send \
    -t 1000 \
    -a 'brightness' \
    -h string:x-canonical-private-synchronous:brightness \
    -h int:value:$brightness \
    "Brightness: ${brightness}%"
