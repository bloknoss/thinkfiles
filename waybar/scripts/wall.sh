#!/bin/bash

filename=$(ls $HOME/Wallpapers/ | grep "" | rofi -dmenu)
wallpaper="$HOME/Wallpapers/$filename"

#filename="cloud-workspace.png"
#wallpaper="$HOME/Wallpapers/$filename"

if [ "$filename" == "" ]; then
	exit
fi

echo $filename
echo $wallpaper

swww img $wallpaper -t random

wal -n -i $wallpaper

wpg -a $wallpaper
wpg -ns ~/.config/wpg/wallpapers/$filename

pywalfox update

for kittypid in $(pgrep kitty)
do
	kill -SIGUSR1 $kittypid
done


killall waybar
nohup waybar >/dev/null 2>&1 &

