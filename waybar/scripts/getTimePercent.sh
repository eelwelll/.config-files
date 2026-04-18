#!/bin/bash

lengths=("﹏         " "﹏﹏        " "﹏﹏﹏       " "﹏﹏﹏﹏      " "﹏﹏﹏﹏﹏     " "﹏﹏﹏﹏﹏﹏    " "﹏﹏﹏﹏﹏﹏﹏  " "﹏﹏﹏﹏﹏﹏﹏﹏  " "﹏﹏﹏﹏﹏﹏﹏﹏﹏ " "﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏")
duration=$(playerctl position --format "{{ duration(position) }}")
length=$(playerctl metadata --format "{{duration(mpris:length)}}")
minD=${duration%:*}
secD=${duration#*:}
minL=${length%:*}
secL=${length#*:}

totalsecondsL=$((($minL*60)+$secL))
totalSecondsD=$((($minD*60)+$secD))
percent=$(echo "scale=2; $totalSecondsD / $totalsecondsL" | bc)
percent=$(echo "$percent * 10" | bc)
# echo ${percent%.*}
final=${lengths[${percent%.*}]}
echo $final 
