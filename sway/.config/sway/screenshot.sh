#!/bin/bash

DIR="$HOME/Pictures"
mkdir -p "$DIR"

FILE="$DIR/$(date +%Y-%m-%d_%H-%M-%S).png"

grim -g "$(slurp)" "$FILE" && \
wl-copy --type image/png < "$FILE"

notify-send "Screenshot saved and copied to clipboard"
