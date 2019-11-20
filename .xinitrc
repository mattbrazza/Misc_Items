#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# MY PERSONAL SETUP
xset s off              # Turn off screensaver - do dmps ??
xset -b                 # Turn off bell (or `b off`)
xset dpms 1800 2700 3600 # monitor standby @ 30min, suspend @ 45min, off @ 60min
xautolock -time 16 -locker "/home/mbrazza/.config/i3/my_i3lock.sh" -killtime 30 -killer "systemctl suspend" -notify 35 -notifier "notify-send -u critical 'Locking in 30 sec.!'" &
cd $HOME  # Reset direcotry to $HOME before launching Xorg
exec i3   # --force-xinerama

