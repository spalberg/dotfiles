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
  exa \
  dfc \
  fd \
  powerline-fonts \
  ripgrep \
  python-pip \
  bat \
  nvm \
  autojump \
  antigen \
  noto-fonts-emoji \
  ttf-google-fonts-git \
  ttf-font-awesome \
  ttf-ibm-plex

# Install thefuck
pip install --user thefuck

# Cleanup and stow
rm $HOME/.zshrc
cd $DIR/..
stow zsh

printf "\nSuccess!\n"

