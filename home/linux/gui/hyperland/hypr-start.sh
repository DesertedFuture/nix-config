#!/usr/bin/env bash


swww init &

swww img -1 ~/home/scott/Downloads/images/circle-wave.gif &
swww img -2 ~/home/scott/Downloads/images/peaceful-blue-hue.gif &

nm-applet -- indicator &

waybar &

dunst
