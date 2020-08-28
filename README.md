```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ custom linux config files
 ░▓ author ▓ spalberg
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░
```

## How to use
Make sure that you have `stow` installed:
```
sudo pacman -S stow
```

Then clone the `dotfile` repository inside your `$HOME` folder:
```
cd $HOME
git clone git@github.com:spalberg/dotfiles.git
```

If you wish to apply the config files from a specific subfolder,
just `cd` into the `dotfiles` folder and execute `stow` with the subfolder as argument.
Example for the `yay` config:
```
cd $HOME/dotfiles
stow yay
```

However some configs are more complex like the `zsh` config.
If the subfolder in question contains a `setup.stowignore.sh` file just execute it and it will take care of the rest.
Example for `zsh`:
```
cd $HOME/dotfiles # You don't have to do this, but why not...
./zsh/setup.stowignore.sh
```

Cheers!

