#!/bin/bash
export NUM=0
# This script was totally ripped off of Nicolas.Estibals from the arch forums
while true; do
  # Wait until we get new mail
  ev=`inotifywait -e create -e moved_to $HOME/.mutt/mail/*/new 2> /dev/null`
  # Get the directory the new file is in
  pa=${ev/ */}
  # Get the filename
  f="$pa${ev/* /}"
  echo $f
  set "$NUM += 1"
  echo $NUM > /home/reed/.config/bspwm/panel/unread_count 
  notify-send -t 12000 "New Mail:" "`grep -m 1 ^From: $f`\n`grep -m 1 ^Subject: $f`" 
done
