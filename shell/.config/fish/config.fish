set fish_greeting

alias cp 'rsync --info=progress2'
alias vim nvim
alias cat bat

set -x TERM xterm-256color
set -x EDITOR vim
set -x VISUAL vim

abbr -a c clear
abbr -a d docker
abbr -a dc docker compose
abbr -a tf terraform
abbr -a k kubectl
abbr -a h helm
abbr -a g git
abbr -a df 'dfc -moTs'
abbr -a du 'du -hHLl'
abbr -a fd 'fd -HI'

if status is-interactive
    if type -q zoxide
        zoxide init fish | source
    end

    if type -q starship
        starship init fish | source
    end
end
