#!/bin/bash
# https://kifarunix.com/install-and-setup-i3-windows-manager-on-ubuntu-20-04/
xdg-open "$(locate -i / | rofi -threads 0 -width 100 -dmenu -i -p "Find")"
