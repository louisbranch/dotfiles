#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
MONITOR=HDMI-1 polybar laptop &
MONITOR=VGA-1 polybar laptop &
MONITOR=eDP-1 polybar laptop &
