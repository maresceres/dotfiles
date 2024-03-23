#!/bin/bash

directory=~/Pictures/wall/
monitor=DP-1

if [ -d "$directory" ]; then
    random_background=$(ls $directory/*.* | shuf -n 1)

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper "$monitor, $random_background"

fi
