Mainly for personal use, but I thought I'd share it since I had little luck finding good alternatives online. Currently only supports [0x0](https://0x0.st).

Requires `fzf`, `xclip`, `bash`, some terminal (YMMV), `mpv` for fzfplay.sh

Adjust paths in the fzf scripts to your liking.

----

Bind single-use (for instance, in `xfce4-keyboard-settings`) scripts (clip.sh, uploadfile.sh, uploadimage.sh, uploadtext.sh) using:

`bash ./script.sh`


Bind scripts that need user interaction via terminal window (fzfget.sh, fzfplay.sh) using:

`xfce4-terminal -x ./script.sh`

This will close them upon hitting ESC or Ctrl-X, or when hitting enter when picking a file via `fzf`.
