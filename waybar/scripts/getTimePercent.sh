#!/bin/bash

duration=$(playerctl position --format "{{ duration(position) }}")
length=$(playerctl metadata --format "{{duration(mpris:length)}}")
minD=${duration%:*}
secD=${duration#*:}
minL=${length%:*}
secL=${length#*:}

#totalRemainingMinutes=$(echo "scale=2; $minD / $minL" | bc)
#if [[ $secL -lt $secD ]]; then
#  totalRemainingSeconds=$(echo "scale=2; $secL / $secD" | bc)
#else
#  totalRemainingSeconds=$(echo "scale=2; $secD / $secL" | bc)
#fi
#totalRemainingSeconds=$(echo "$totalRemainingSeconds * 10" | bc)
#totalRemainingMinutes=$(echo "$totalRemainingMinutes * 100" | bc)

#totalPercent=$(echo "$totalRemainingMinutes + $totalRemainingSeconds" | bc)

totalsecondsL=$((($minL*60)+$secL))
totalSecondsD=$((($minD*60)+$secD))
percent=$(echo "scale=2; $totalSecondsD / $totalsecondsL" | bc)
percent=$(echo "$percent * 100" | bc)
echo $percent
