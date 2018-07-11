#!/bin/bash
# Command: /path/to/multi-bg-set.sh /path/to/some/image.ext

INPUT=$1
if [ ! -f "$INPUT" ]
	then
	echo "Input file must exist!"
	exit 1
fi

# Can we use the md5sum caching?
if md5sum --version &> /dev/null
then
	# Checking to see if there's already a complete split image ready
	MD5=$(md5sum "$INPUT" 2>/dev/null | cut -f1 -d\ )

	if [ ! -f "$HOME/.tmp/wallpaper-$MD5-0.jpg" -o \
		 ! -f "$HOME/.tmp/wallpaper-$MD5-1.jpg" ]
		then
		# No file yet, or incomplete cache, so we'll build a new set.
    rm "$HOME/.tmp/wallpaper-"*.jpg 
		nice -n 19 convert -crop 1920x1080 +repage "$INPUT" $HOME/.tmp/wallpaper-$MD5.jpg
	fi
  
  echo "line 25"
	feh --bg-scale "$HOME/.tmp/wallpaper-$MD5-0.jpg" "$HOME/.tmp/wallpaper-$MD5-1.jpg"

# Nope, cannot use cached copies, do it all from scratch
	else
    rm "$HOME/.tmp/wallpaper-"*.jpg 
  	nice -n 19 convert -crop 1920x1080 +repage "$INPUT" "$HOME/.tmp/wallpaper.jpg"
	  feh --bg-scale "$HOME/.tmp/wallpaper-0.jpg" "$HOME/.tmp/wallpaper-1.jpg"
fi
