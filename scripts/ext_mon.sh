pgrep redshift &> /dev/null || redshift &> /dev/null &
# Disable Caps Lock 
#xmodmap ~/.config/swap_esc &
export DISPLAY=:0
export XAUTHORITY=/home/micha/.Xauthority
sleep 0.3
if [[ $(xrandr | awk '/DP3-1/ {print $2}') == "connected" ]]; then
    sleep 0.3
    xrandr --verbose --output eDP1 --off --output DP3-1 --mode 2560x1440 --primary 2>&1
    sleep 0.3
    /home/micha/scripts/background.sh
else
    sleep 0.3
    xrandr --verbose --output DP3-1 --off --output eDP1 --mode 1920x1080 --primary 2>&1
    sleep 0.3
    /home/micha/scripts/background.sh
fi

