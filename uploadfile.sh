#!/bin/bash

path=`xclip -selection clipboard -out`

#remove everything but the filename, then replace spaces with underscores. TODO: This script breaks if the filename has a comma.
filename=`echo "$path" | sed -e 's/.*\///g' | sed -e 's/\s/_/g'` 

resp=`curl -X POST -F "file=@${path}" "https://0x0.st"` \
	&& echo "$resp/$filename" | xclip -selection clipboard \
	&& notify-send "File uploaded to 0x0.st. URL is in clipboard."
