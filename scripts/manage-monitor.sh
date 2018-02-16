#!/bin/sh
# acpi event files under /etc/acpi/events
export DISPLAY=:0
export XAUTHORITY=/home/micha/.Xauthority
sleep 0.5
if [ "$1" = "dock" ]; then
    logger "ACPI event: Turning on DP3-1. This will take 10 seconds or so..."
    while (xrandr | grep "DP3-1 disconnected"); do
        sleep 0.5
    done
    sleep 0.5
    xrandr --verbose --output eDP1 --off --output DP3-1 --mode 2560x1440 --primary 2>&1 | logger
    /home/micha/scripts/background.sh
else
    logger "ACPI event: Turning off DP3-1"
    sleep 0.5
    xrandr  --verbose --output DP3-1 --off --output eDP1 --mode 1920x1080 --primary 2>&1 | logger
    xrandr --output DP3-1 --off
    /home/micha/scripts/background.sh
fi
