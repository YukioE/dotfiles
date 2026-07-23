#!/usr/bin/env bash

chosen=$(printf "󰍁 lock\n󰤄 sleep\n󰋓 exit sway\n󰜉 reboot\n power off" | \
    rofi -dmenu -p "" -theme ~/.config/rofi/style-powermenu.rasi)

case "$chosen" in
    "󰍁 lock")
        hyprlock
        ;;
    "󰤄 sleep")
        systemctl suspend
        ;;
    "󰋓 exit sway")
        swaymsg exit
        ;;
    "󰜉 reboot")
        systemctl reboot
        ;;
    " power off")
        systemctl poweroff
        ;;
esac
