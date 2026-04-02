#!/bin/bash
./getThemes.sh
theme="$1"


wallpaper="$HOME/Pictures/wallpapers/$theme.png"
waybar="$HOME/.config/waybar/themes/$theme.css"
waybar_style="$HOME/.config/waybar/colors.css"
wallpaper_replace="$HOME/.config/hypr/currentWallpaper.png"

cp $wallpaper $wallpaper_replace
cp $waybar $waybar_style
pkill hyprpaper
hyprpaper &
hyprctl hyprpaper wallpaper "eDP-1, $wallpaper_replace, cover"
$(~/scripts/reload-waybar.sh)

echo $theme > ~/.config/theme/current.txt
