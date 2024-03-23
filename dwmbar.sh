#!/usr/bin/env bash
#
# Statusbar loop for displaying time and date in dwm statusbar
while true; do
   xsetroot -name "$( date +"   %F %R" )"
   sleep 1m    # Update time every minute
done &
