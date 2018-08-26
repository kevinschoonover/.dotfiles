#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bottom &
polybar top &
# MONITOR=override-value polybar bottom &
# MONITOR=override-value polybar top &
# MONITOR=override-value polybar external & 

echo "Bars launched..."
