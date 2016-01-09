#! /bin/bash

# A simple shell script to make managing dotfile repos easier

# Check to see if we were given a valid destination
if [ "$#" -ne 1 ]; then
  echo "Illegal number of paramaters!"
  echo "You need to provide a path to copy config files to"
  exit
elif [ ! -e "$1" ]; then
  echo "$1 does not exist!"
  exit
elif [ ! -d "$1" ]; then 
  echo "$1 is not a directory!"
  exit
fi
gitRepoDir=$1
# First initialize and populate an array with paths to config files
declare -a configPaths
configPaths[0]=$HOME/bin/
configPaths[1]=$HOME/.colors/reed-mono
configPaths[2]=$HOME/.config/dunst/dunstrc
configPaths[3]=$HOME/.config/gtk-3.0/settings.ini
configPaths[4]=$HOME/.gtkrc-2.0
configPaths[5]=$HOME/.i3/
configPaths[6]=$HOME/.i3blocks.conf
configPaths[7]=$HOME/.mozilla/firefox/umm9jg8s.default/stylish.sqlite
configPaths[8]=$HOME/.ncmpcpp/config
configPaths[9]=$HOME/.Skype/reed.mullanix/config.xml
configPaths[10]=$HOME/.vim/
configPaths[11]=$HOME/.vimrc
configPaths[12]=$HOME/.xprofile
configPaths[13]=$HOME/.Xresources
configPaths[14]=$HOME/.yaourtrc
configPaths[15]=$HOME/.zsh/
configPaths[16]=$HOME/.zshrc
# These files are not located in the home directory, and may prove to be problematic
configPaths[17]=/usr/share/X11/xkb/symbols/reed
configPaths[18]=/etc/X11/xorg.conf.d/90-custom-kbd.conf

# Next, loop through the config files, making sure that
# a) They exist
# b) We have sufficent permissons
# c) We handle directories properly

for config in "${configPaths[@]}"
do
  if [ ! -e "$config" ]; then
    echo "File $config does not exist!"
    exit
  fi
  if [ ! -r "$config" ]; then
    echo "We dont have read permissons for file $config!"
    exit
  fi
  # If the file is in the $HOME directory, strip that off while retaining the rest of the path
  gitConfigPath=$gitRepoDir`echo ${config#$HOME}`
  gitConfigDir=`dirname $gitConfigPath`
  if [ ! "$gitConfigDir" = "$gitRepoDir" ]; then
    mkdir -p $gitConfigDir
  fi
  echo "Copying $config to $gitConfigPath..."
  # first make the 
  if [ -d "$config" ]; then
    cp -r $config $gitConfigPath
  else
    cp $config $gitConfigPath
  fi
done
    
