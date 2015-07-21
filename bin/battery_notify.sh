#! /bin/bash

# 
# Sends a libnotify alert on low battery status
# Author: Reed Mullanix
#

BAT_PATH='/sys/class/power_supply/BAT0'
POWER="$(cat $BAT_PATH/capacity)"
STATUS="$(cat $BAT_PATH/status)"

echo $POWER
echo $STATUS

WARNING_LEVEL=40

if [[ "$POWER" -le "$WARNING_LEVEL" && "$STATUS" = "Discharging" ]]
then
  notify-send -t 10000 -u critical "Low Battery!"
fi

