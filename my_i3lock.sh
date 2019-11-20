#!/usr/bin/env bash

#icon="$HOME/.config/i3/wallpapers/icon_lock_blue.png"
#tmpbg="/tmp/screen.png"
lockwallpaper="$HOME/Media/wallpaper_lock"

# Uncomment to allow icon to be a call argument
#(( $# )) && { icon=$1; }
#scrot "$tmpbg"
#convert "$tmpbg" -scale 10% -scale 1000% -fill black -colorize 75% "$tmpbg"
#convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#i3lock -i "$lockwallpaper" -p win -e -f --nofork

# Prep locking by muting and disabling notifications/Dunst
pactl set-sink-mute 0 1
pkill -USR1 -u "$(id -u)" -x dunst

# actually lock (do not fork so script does below when logged back in)
i3lock --nofork --ignore-empty-password --show-failed-attempts --image="$lockwallpaper" --color=250045

# Restore system state before lock (e.g., re-enable Dunst and volume)
pactl set-sink-mute 0 0
pkill -USR2 -u "$(id -u)" -x dunst

