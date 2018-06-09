#!/usr/bin/env sh


killall -q polybar

#wait until the process is down
while pgrep -x polybar </dev/null; do sleep 1; done

#launch bar1 and bar2
MONITOR=VGA1 polybar example &
MONITOR=LVDS1 polybar example &

echo "Bars launched or something..."
