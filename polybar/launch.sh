#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
export WIRELESS=$(iw dev | awk '$1=="Interface"{print $2}')
export MOUNT_POINT=1
polybar example

echo "Bars launched..."
