if [[ -n "$DESKTOP_SESSION" ]]; then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

export PATH="${PATH}:${HOME}/bin:${HOME}/.local/bin"

if [[ -a ~/.zshenv_local ]]; then
  . ~/.zshenv_local
fi

