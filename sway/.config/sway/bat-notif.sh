#!/usr/bin/env bash

BATTERY="/sys/class/power_supply/BAT0"
CAPACITY=$(cat "$BATTERY/capacity")
STATUS=$(cat "$BATTERY/status")

if [ "$CAPACITY" -le 20 ] && [ "$STATUS" = "Discharging" ]; then
    notify-send -u critical "Low battery" "Battery at ${CAPACITY}%"
fi
