#!/bin/bash

shopt -s lastpipe #needed to get result out of subshell
find /mnt/mediaNAS/Memes /mnt/mediaNAS/Sounds -type f \
	| fzf \
	| CLIP=$(</dev/stdin)

echo "$CLIP" | xclip -selection clipboard -in \
	&& notify-send "$CLIP is in clipboard."


