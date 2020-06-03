#!/bin/bash

# Load the utils
source ./utils.sh

function setup_bluetooth {
  prepare_yay
  yay -S --needed blueman bluez-utils
}

function setup_drive {
  prepare_yay
  yay -S --needed insync cryptomator keepassxc

  if pacman -Qqe | grep -q "nautilus"; then
    yay -S --needed insync-nautilus
  fi

  if pacman -Qqe | grep -q "thunar"; then
    yay -S --needed insync-thunar
  fi
}

function setup_development {
  prepare_yay
  yay -S --needed jetbrains-toolbox code gitkraken
}

function setup_docker {
  prepare_yay
  yay -S --needed docker docker-compose
  sudo usermod -a -G docker $USER
  sudo systemctl enable docker.service
  sudo systemctl start docker.service
}

function setup_applets {
  prepare_yay
  yay -S --needed pasystray
}

function setup_misc {
  prepare_yay
  yay -S --needed mpv telegram-desktop thunderbird
}
