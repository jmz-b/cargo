#!/bin/sh

xrdb -merge $HOME/.Xresources
xsetroot -solid '#073642'

_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING

exec dwmstatus &
exec dwm
