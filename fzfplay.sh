#!/bin/bash

mpv "$(fd . /mnt/mediaNAS/Sounds | fzf)"
