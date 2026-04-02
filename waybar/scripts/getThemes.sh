#!/bin/bash

picturesPath="$HOME/Pictures/wallpapers"

for items in "$picturesPath"/*;do 
  filename="${items%.*}"
  filename="${filename:33}"
  echo "$filename"
done
