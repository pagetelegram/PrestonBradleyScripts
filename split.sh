#!/bin/bash
ffmpeg -i $1 -f mp3 -acodec libmp3lame _$1.mp3
mp3splt -s -p th=-30,nt=$2 _$1.mp3
#mp3splt -s $1
