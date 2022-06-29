#!/usr/bin/env bash

# Otherwise you can use the nuclear option:
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main & 

if [[ $(xrandr -q | grep 'DP-1 connected') ]]; then
    polybar main & 
fi