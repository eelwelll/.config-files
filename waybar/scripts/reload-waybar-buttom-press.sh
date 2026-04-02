
theme="$HOME/.config/theme/current.txt"
theme=$(cat "$HOME/.config/theme/current.txt") 
waybar="$HOME/.config/waybar/themes/$theme.css"
waybar_style="$HOME/.config/waybar/colors.css"
echo $waybar
echo $waybar_style
cp $waybar $waybar_style
nohup syshud -W 220px -H 30px -i 20 -p top-right &
$HOME/.config/waybar/scripts/reload-waybar.sh
