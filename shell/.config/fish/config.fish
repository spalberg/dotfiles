set fish_greeting # disable greeting message

abbr -a c clear
abbr -a d docker
abbr -a dc docker compose
abbr -a tf terraform
abbr -a k kubectl

if status is-interactive
    if type -q zoxide
        zoxide init fish | source
    end

    if type -q starship
        starship init fish | source
    end
end
