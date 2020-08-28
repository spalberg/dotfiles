#!/bin/bash

# Memorize the current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Load the utils
source $DIR/../utils.sh

# Change the context to $HOME
cd $HOME

# Prepare yay
prepare_yay

# Download packages
yay -S --needed \
  i3-gaps \
  i3blocks \
  i3lock \
  i3status \
  light \
  feh \
  rofi \
  xautolock \
  xclip \
  maim \
  pasystray
  
sudo usermod -aG video $USER # user has to be in video group for light to work


if ls /usr/share/xsessions/ | grep -q "gnome"; then
    yay -S --needed i3-gnome
else
    echo "\nGnome is not installed. i3-gnome will not be installed either.\n"
fi


# Cleanup and stow
rm -r $HOME/.config/i3
cd $DIR/..
stow i3

printf "\nSuccess!\n"
