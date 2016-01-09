#! /bin/bash
STATUS=`amixer -c 0 get "Auto-Mute Mode" | sed -n "s/Item0: '\(.*\)'/\1/p"`
echo $STATUS
if [ $STATUS == "Enabled" ]; then
  amixer -c 0 set "Auto-Mute Mode" "Disabled" 1>/dev/null
  echo "Speakers Enabled!"
else
  amixer -c 0 set "Auto-Mute Mode" "Enabled" 1>/dev/null
  echo "Speakers Disabled!" 
fi
