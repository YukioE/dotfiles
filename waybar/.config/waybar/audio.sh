#!/usr/bin/env bash

choice=$(
    pactl list short sinks |
    rofi -dmenu -i -p "Audio Output"
) || exit 0

sink=$(printf '%s\n' "$choice" | awk '{print $2}')
[ -z "$sink" ] && exit 1

# Set as default for new applications
pactl set-default-sink "$sink"

# Move all currently playing streams
pactl list short sink-inputs | awk '{print $1}' | while read -r input; do
    pactl move-sink-input "$input" "$sink"
done
