# Shell module

This module holds configuration for a shell setup using `alacritty` as terminal emulator, `fish` as shell and `starship` as prompt.

## Requirements

The following binaries should be available:

 * fish
 * starship
 * fzf
 * fd
 * zoxide
 * eza
 * ripgrep
 * bat
 * mosh
 * tmux

## Setup

Inside the project root, run the following command:
```bash
stow shell
```

Login into fish and run the following command to initialize the plugins:
```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update
```
