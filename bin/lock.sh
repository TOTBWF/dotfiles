#!/bin/bash
scrot -e 'convert -resize 20% -fill "#282828" -colorize 50% -blur 1 -resize 500% $f ~/Photos/lockbg.png'
convert -gravity center -composite ~/Photos/lockbg.png ~/Photos/Icons/transparent-icon-lock.png ~/Photos/lockfinal.png
i3lock -u -b -i ~/Photos/lockfinal.png
rm ~/Photos/lockbg.png 
