[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Kbd lang
setxkbmap fr

# Set pointer
xsetroot -cursor_name left_ptr

exec bspwm 

