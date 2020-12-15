#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
#polybar -c $HOME/.config/polybar/bspwm-polybar.conf main &
#polybar main

#polybar -c $HOME/.config/polybar/bspwm-polybar.conf music &
#polybar -c $HOME/.config/polybar/bspwm-polybar.conf tray &
#polybar -c $HOME/.config/polybar/bspwm-polybar.conf bspwm &
#

polybar bspwm &
polybar music &
polybar tray &

monitor_two=$(xrandr --query | grep 'HDMI-1')
if [[ $monitor_two = *connected* ]]; then
	polybar bspwm_small &
	polybar tray_small &
fi
echo "Polybar launched..."
