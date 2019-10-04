#!/bin/bash

# Memorize the current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Load the utils
source $DIR/../utils.sh

# Change the context to $HOME
cd $HOME

# Check for distro support (Arch and ManjaroLinux)
DISTRIB_ID=`sudo cat /etc/*release | grep DISTRIB_ID | awk -F"=" '{print $2}' | awk '{$1=$1;print}'`
if [[ $DISTRIB_ID == "ManjaroLinux" ]]; then
  printf "Detected Manjaro - installing yay via pacman\n"
  sudo pacman -S --needed yay
elif [[ $DISTRIB_ID == "Arch" ]]; then
  printf "Detected Manjaro - installing yay manually\n"
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay
  makepkg -si
  cd $HOME
  rm -rf /tmp/yay
else
  printf "Distribution $DISTRIB_ID is not supported at this time. Exiting...\n"
  exit 0
fi

# Download packages
sudo pacman -S --needed exa dfc fd powerline-fonts awesome-terminal-fonts ripgrep autojump python-pip bat
yay -S --needed nvm yank navi

# Download and install oh-my-zsh if needed
if ! [[ -d ${ZSH:-~/.oh-my-zsh} ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh::g' | sed 's:chsh -s .*$::g')"
fi

ZSH_CUSTOM_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
ZSH_PUGINS_DIR=${ZSH_CUSTOM_DIR}/plugins

# Download the powerline9k theme
clone_pull https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM_DIR}/themes/powerlevel9k

# Download and install fzf
clone_pull https://github.com/junegunn/fzf.git ${ZSH_PUGINS_DIR}/fzf 
${ZSH_PUGINS_DIR}/fzf/install --bin

# Download fzf-zsh
clone_pull https://github.com/Treri/fzf-zsh.git ${ZSH_PUGINS_DIR}/fzf-zsh

# Download zsh-syntax-highlighting
clone_pull https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_PUGINS_DIR}/zsh-syntax-highlighting

# Download zsh-autosuggestions
clone_pull https://github.com/zsh-users/zsh-autosuggestions ${ZSH_PUGINS_DIR}/zsh-autosuggestions

# Install thefuck
pip install --user thefuck

# Cleanup and stow
rm $HOME/.zshrc
cd $DIR/..
stow zsh

printf "\nSuccess!\n"
