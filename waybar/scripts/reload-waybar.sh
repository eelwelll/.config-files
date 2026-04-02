#!/bin/bash
if pgrep -x "waybar" > /dev/null 
then
	killall waybar && waybar &
else
	nohup waybar &
fi


if pgrep -x "syshud" > /dev/null 
then
	killall syshud && syshud -W 220px -H 25px -i 15 -p top-right &
else
	nohup syshud -W 220px -H 25px -i 15 -p top-right &
fi
