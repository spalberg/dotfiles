set fish_greeting

alias cp 'rsync --info=progress2'
alias vim nvim

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
abbr -a cat 'bat --paging=never'
abbr -a df 'dfc -moTs'
abbr -a du 'du -hHLl'
abbr -a fd 'fd -HI'

abbr -a asp 'aws profile'
abbr -a asl 'aws sso login'

if status is-interactive
    if test -d "/home/linuxbrew"
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    end

    if test -d "$HOME/.deno"
        set -x DENO_INSTALL "$HOME/.deno"
        set -x DENO_TLS_CA_STORE "system"
        fish_add_path "$DENO_INSTALL/bin"
    end

    if test -d "$HOME/.bun"
        set -X BUN_INSTALL "$HOME/.bun"
        fish_add_path "$BUN_INSTALL/bin"
    end

    if test -d "$HOME/.sdkman/candidates"
        fish_add_path "$HOME/.sdkman/candidates/java/current/bin"
    end

    if type -q zoxide
        zoxide init fish | source
    end

    if type -q starship
        starship init fish | source
    end
end
