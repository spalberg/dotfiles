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
yay -S --needed termite ttf-ibm-plex

# Cleanup and stow
rm -r $HOME/.config/termite
cd $DIR/..
stow termite

printf "\nSuccess!\n"
