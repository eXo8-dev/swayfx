#!/bin/bash

entries="󰗽 Logout\n⏾ Suspend\n󰜉 Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi --width 10 --height 150 --xoffset 920 --dmenu | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
