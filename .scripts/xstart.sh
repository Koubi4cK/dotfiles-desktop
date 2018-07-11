#! /bin/sh

# xautolock
if ! pgrep -x "xautolock" > /dev/null
then
  xautolock -time 1 -nowlocker "i3lockmore --pixelate --lock-icon --dpms 300"
fi

# Mopidy
if ! pgrep -x "mopidy" > /dev/null
then
  mopidy
fi
