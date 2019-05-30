#!/bin/bash

# usage:
# ./windowMgr.sh <r|l> <i>
# arg1: align window right or left
# arg2: align window on screen 0 or 1

# configuration:
# under resolution settings, enter the resolution of your main screen (screen0X,Y),
# your second screen (screen1X,Y) if you have one
# and the task bar (screen0T, screen1T).
# in lxde go to Menu > Settings > Setup Hot Keys and select programs. create new actions,
# configure Hotkey 1 and the command, save and exit.
# My setup:
# Command                          Hotkey 1            Hotkey 2
# bash ~/windowMgr.sh l 0          <Super>Left
# bash ~/windowMgr.sh r 0          <Super>Right
# bash ~/windowMgr.sh l 1          <Shift><Super>Left
# bash ~/windowMgr.sh r 1          <Shift><Super>Right


screen=0
screen=$2

#resolutuionSettings
screen0X=1920
screen0Y=1080
screen0T=51
screen1X=1280
screen1Y=800
screen1T=0

#calculations
positionX0=0
positionY0=0
positionX1=$(expr $screen0X / 2)
positionY1=0
windowX=$(expr $(expr $screen0X / 2) - 2)
windowY=$(expr $screen0Y - 51)
if [ "$screen" == "1" ]; then
	positionX0=$screen0X
	positionX1=$(expr $screen0X + $(expr $screen1X / 2))
	windowX=$(expr $(expr $screen1X / 2) - 2)
	windowY=$(expr $screen1Y - 51)
fi

#movement
if [ "$1" == "l" ]; then
	xdotool windowsize $(xdotool getwindowfocus) $windowX $windowY
	xdotool windowmove $(xdotool getwindowfocus) $positionX0 $positionY0
fi
if [ "$1" == "r" ]; then
	xdotool windowsize $(xdotool getwindowfocus) $windowX $windowY
	xdotool windowmove $(xdotool getwindowfocus) $positionX1 $positionY1
fi
