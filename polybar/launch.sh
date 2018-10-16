#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
export WIRELESS=$(iw dev | awk '$1=="Interface"{print $2}')

source $HOME/.config/polybar/personal_config.sh

# prefer polybar showed at external monitor
ALL_MONITORS=$(xrandr -q | grep " connected" | cut -d ' ' -f1)
MONITORS_ARRAY=(${ALL_MONITORS// /})
LAST_MONITOR=${MONITORS_ARRAY[-1]}

MONITOR="$LAST_MONITOR" polybar top &
MONITOR="$LAST_MONITOR" polybar bottom &

echo "Bars launched..."
