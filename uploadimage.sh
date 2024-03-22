#!/bin/bash

HOMEDIR=$(eval echo ~$USER)
mkdir -p $HOMEDIR/temp
screenshotpath="$HOMEDIR/temp/tempscreenshot.png"

xclip -selection clipboard -target image/png -out > "${screenshotpath}"

resp=`curl -X POST -F "file=@${screenshotpath}" "https://0x0.st"` \
	&& echo $resp | xclip -selection clipboard \
	&& notify-send "Screenshot uploaded to 0x0.st. URL is in clipboard."


