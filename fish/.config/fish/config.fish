set fish_greeting # disable greeting message

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q starship
    starship init fish | source
end
