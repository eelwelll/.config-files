
theme="$HOME/.config/theme/current.txt"
theme=$(cat "$HOME/.config/theme/current.txt") 
waybar="$HOME/.config/waybar/$theme.css"
waybar_style="$HOME/.config/waybar/colors.css"
cp $waybar $waybar_style
nohup syshud -W 220px -H 30px -i 20 -p top-right &
$HOME/scripts/reload-waybar.sh
