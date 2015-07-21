#! /bin/bash

TOUCHPAD_OFF=`synclient | awk '/TouchpadOff/ {print $3}'`
echo $TOUCHPAD_OFF
if [[ $TOUCHPAD_OFF = 0 ]]
then
  TOUCHPAD_OFF=1
else
  TOUCHPAD_OFF=0
fi
synclient TouchpadOff=$TOUCHPAD_OFF
