#!/bin/bash

ARTIST=$(mpc --format [%artist%] | head -n1 | tr ';' ' ' )
ALBUM=$(mpc --format [%album%] | head -n1)
TITLE=$(mpc --format [%title%] | head -n1 | cut -f1 -d"(")
FILE=$(mpc --format [%file%] | head -n1)

getMPDCover () {
  API_KEY="2a6e9e4c8f1514043c5d84b41ba758dc"
  URL=$( curl \
          --silent \
          --data-urlencode "api_key=${API_KEY}" \
          --data-urlencode "artist=${ARTIST}" \
          --data-urlencode "album=${ALBUM}" \
          http://ws.audioscrobbler.com/2.0/?method=album.getinfo \
          | grep "<image size=\"large\">" \
          | sed -e 's/<image size=\"large\">\(.*\)<\/image>/\1/' 
      )
    
    
    wget $URL -qO /tmp/$FILE.png &> /dev/null 

}

if [ ! -f "/tmp/$FILE.png" ]
then  
    getMPDCover
fi
  dunstify -r 2395 -t 5000  -i "/tmp/$FILE.png" "<b>$TITLE</b><br/>$ARTIST"

