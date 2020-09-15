#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
	echo "$(playerctl metadata --format "{{artist}} - {{title}}" 2> /dev/null)"
elif [ "$player_status" = "Paused" ]; then
    echo "Paused"
else
    echo ""
fi
