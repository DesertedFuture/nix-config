#!/usr/bin/env bash

swww img DP-1 ~/home/scott/Downloads/images/circle-wave.gif &
swww img DP-2 ~/home/scott/Downloads/images/peaceful-blue-hue.gif &

nm-applet -- indicator &

waybar &

dunst
