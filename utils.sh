#!/bin/bash

function clone_pull {
  DIRECTORY="$2"        
  if [ -d "$DIRECTORY" ]; then
    cd "$DIRECTORY"
    git pull
    cd ../
  else
    git clone "$1" "$2"
  fi
}

function prepare_yay {
  # Check for distro support (Arch and ManjaroLinux)
  DISTRIB_ID=`sudo cat /etc/*release | grep DISTRIB_ID | awk -F"=" '{print $2}' | awk '{$1=$1;print}'`
  if [[ `yay --help` ]]; then
    printf "Yay is already installed. Skipping.\n"
  elif [[ $DISTRIB_ID == "ManjaroLinux" ]]; then
    printf "Detected Manjaro - installing yay via pacman.\n"
    sudo pacman -S --needed yay
  elif [[ $DISTRIB_ID == "Arch" ]]; then
    printf "Detected Arch - installing yay manually.\n"
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si
    cd $HOME
    rm -rf /tmp/yay
  else
    printf "Distribution $DISTRIB_ID is not supported at this time. Exiting.\n"
    exit 0
  fi
}
