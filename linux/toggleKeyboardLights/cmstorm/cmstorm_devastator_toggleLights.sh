#!/bin/bash
FLAGS=$(xset q | awk 'NR==2' | awk '{ print $10 }')
if [[ ${FLAGS:0:1} == "0" ]]; then
        xset led on
else
        xset led off
fi

