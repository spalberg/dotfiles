#!/bin/bash

# Memorize the current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Change the context to $HOME
cd $HOME

# Download packages
sudo pacman -S --needed yay exa dfc fd powerline-fonts awesome-terminal-fonts ripgrep autojump
yay -S --needed nvm

# Download and install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh::g' | sed 's:chsh -s .*$::g')"

# Download the powerline9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Download and install fzf
git clone https://github.com/junegunn/fzf.git ${ZSH}/custom/plugins/fzf
${ZSH}/custom/plugins/fzf/install --bin

# Download fzf-zsh
git clone https://github.com/Treri/fzf-zsh.git ${ZSH}/custom/plugins/fzf-zsh

# Download zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Cleanup and stow
rm $HOME/.zshrc
cd $DIR/..
stow zsh

printf "Success!"
