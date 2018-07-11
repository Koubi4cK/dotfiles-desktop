#!/bin/bash
 
# Kbd lang
setxkbmap fr &
/usr/lib/lxpolkit/lxpolkit &
# Set pointer
xsetroot -cursor_name left_ptr &
dunst &
compton --config /home/koubi4ck/.config/compton.conf -b &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
mopidy &
sxhkd &
exec bspwm 

