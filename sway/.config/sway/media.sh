#!/bin/sh

case "$1" in
    play)
        playerctl play-pause
        ;;
    pause)
        playerctl play-pause
        ;;
    prev)
        playerctl previous
        ;;
    next)
        playerctl next
        ;;
    stop)
        playerctl stop
        ;;
esac

status=$(playerctl status 2>/dev/null)
title=$(playerctl metadata --format '{{artist}} — {{title}}' 2>/dev/null)

case "$status" in
    Playing)
        icon="▶"
        ;;
    Paused)
        icon="⏸"
        ;;
    Stopped)
        icon="⏹"
        ;;
    *)
        exit 0
        ;;
esac

notify-send \
    -t 1500 \
    -a 'playerctl' \
    -h string:x-canonical-private-synchronous:player \
    "$icon $title"
