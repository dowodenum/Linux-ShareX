#!/bin/bash

HOMEDIR=$(eval echo ~$USER)
mkdir -p $HOMEDIR/temp
textpath="$HOMEDIR/temp/temptext.txt"

xclip -selection clipboard -target text/plain -out > "${textpath}"

resp=`curl -X POST -F "file=@${textpath}" "https://0x0.st"` \
	&& echo $resp | xclip -selection clipboard \
	&& notify-send "Text uploaded to 0x0.st. URL is in clipboard."
