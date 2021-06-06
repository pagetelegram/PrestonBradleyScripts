#!/bin/bash
ffmpeg -i $1 -f mp3 -acodec libmp3lame -filter:a loudnorm -ab 320000 -ar 44100 _$1.mp3
mp3splt -s -p th=-50,nt=$2 _$1.mp3
#mp3splt -s $1
