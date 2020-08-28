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
yay -S --needed cheat

# Download the community cheatsheets
cd $DIR/.config/cheat/cheatsheets
clone_pull https://github.com/cheat/cheatsheets community

# Stow
cd $DIR/..
stow cheat

printf "\nSuccess!\n"

