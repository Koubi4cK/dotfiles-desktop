#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)
separator="%{T4}%{F#EBCB8B}C%{F-}"

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    echo -e " $pac.$aur "
fi
