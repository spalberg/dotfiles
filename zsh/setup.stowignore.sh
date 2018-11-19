#!/bin/bash

# Download packages
sudo pacman -S exa dfc fd powerline-fonts awesome-terminal-fonts ripgrep 

# Download and install oh-my-zsh
sh -c "$(curl -fsSL 
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Download the powerline9k theme
git clone https://github.com/bhilburn/powerlevel9k.git 
~/.oh-my-zsh/custom/themes/powerlevel9k

# Download and install fzf
git clone https://github.com/junegunn/fzf.git ${ZSH}/custom/plugins/fzf
${ZSH}/custom/plugins/fzf/install --bin

# Download fzf-zsh
git clone https://github.com/Treri/fzf-zsh.git ${ZSH}/custom/plugins/fzf-zsh

