#!/bin/bash

nm-applet &
blueman-applet &
parcellite &
#blueman-applet &
#volumeicon &
lxpolkit &
#slstatus &
dwmblocks &
picom &   # Needed for dwm
sxhkd -c ~/.config/bspwm/sxhkdrc &
####~/.config/bspwm/testwallpaper &
