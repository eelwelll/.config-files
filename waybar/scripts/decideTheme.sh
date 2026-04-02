#!/bin/bash

decision=$($HOME/.config/waybar/scripts/getThemes.sh | wofi --show=dmenu)

newWallpaper=$($HOME/.config/waybar/scripts/changeWallpaper.sh $decision)
