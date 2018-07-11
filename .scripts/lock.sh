#!/bin/bash

TMPBG=/tmp/screen.png
LOCK=$HOME/lock.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')

ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=5:1" -vframes 1 $TMPBG
i3lock -i $TMPBG
rm $TMPBG
