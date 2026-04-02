#!/usr/bin/env bash
OUTPUT="$HOME/.config/waybar/scripts/coverimage.png"
TMP="/tmp/coverimage.png"
metadata=$(/usr/bin/playerctl metadata --format '{{mpris:artUrl}}' 2>/dev/null)
if [ -n "$metadata" ]; then
    /usr/bin/curl -s "$metadata" -o "$TMP"
    magick "$TMP" "$OUTPUT"
fi
