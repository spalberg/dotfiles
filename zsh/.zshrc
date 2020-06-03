# General Config
setopt autocd
bindkey -v # make zle use vi mode

autoload -Uz compinit promptinit
compinit
promptinit

zstyle :compinstall filename "${HOME}/.zshrc"
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

source /usr/share/zsh/share/antigen.zsh

# Antigen Config
antigen use oh-my-zsh
export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_PHP_SHOW=false
export SPACESHIP_KUBECTL_SHOW=true
export SPACESHIP_KUBECTL_VERSION_SHOW=false
export SPACESHIP_EXIT_CODE_SHOW=true

# workaround for https://github.com/zsh-users/antigen/issues/675
THEME=denysdovhan/spaceship-prompt
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

antigen bundle docker
antigen bundle git
antigen bundle fzf-zsh
antigen bundle bgnotify
antigen bundle autojump
antigen bundle extract
antigen bundle thefuck
antigen bundle command-not-found
antigen bundle softmoth/zsh-vim-mode
antigen bundle zsh-users/zsh-autosuggestions
bindkey '^ ' autosuggest-accept
#antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Exports
export TERM=xterm-256color
export KEYTIMEOUT=1
export SSH_KEY_PATH="~/.ssh/rsa_id"
export EDITOR="vim"
export VISUAL="vim"

# Alias
alias ls="exa"
alias cp="rsync --info=progress2"
alias df="dfc -moTs"
alias resource="source ~/.zshrc"
alias du="du -hHLl"
alias fd="fd -HI"
alias cat="bat"
alias c="clear"
alias ssh='TERM=xterm-256color ssh'

# Docker stuff
alias d='docker'
alias dc="docker-compose"

# K8s stuff
alias k='kubectl'
alias kdcm='kubectl describe configmap'
alias kdcj='kubectl describe cronjob'
alias kdd='kubectl describe deploy'
alias kdj='kubectl describe job'
alias kdn='kubectl describe node'
alias kgns='kubectl describe ns'
alias kdp='kubectl describe pod'
alias kgrs='kubectl describe rs'
alias kds='kubectl describe secret'
alias kdsvc='kubectl describe service'
alias ke='kubectl exec -it'
alias krmp='kubectl delete pod'
alias kgcm='kubectl get configmap'
alias kgcj='kubectl get cronjob'
alias kgd='kubectl get deploy'
alias kgj='kubectl get job'
alias kgn='kubectl get node'
alias kgns='kubectl get ns'
alias kgp='kubectl get pod'
alias kgrs='kubectl get rs'
alias kgs='kubectl get secret'
alias kgsvc='kubectl get service'
alias kl='kubectl logs'

# NVM
source /usr/share/nvm/init-nvm.sh
