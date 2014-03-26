#!/bin/sh

synclient VertTwoFingerScroll=1
xinput set-button-map 11  1 2 3 5 4

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

