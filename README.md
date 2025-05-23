# dotfiles
Linux config files

# Programs required
Programs required for this setup not part of distro installation

* neofetch (system spec)

## bash

## vim
* vim-plug

## neovim
* packer

## i3
* blueman (bluetooth)
* pavucontrol (audio)
* rofi (dmenu alternative)
* i3blocks (i3 bar)
* i3lock (lock screen)


# Usage
* clone repo to home directory root
* Install stow
* Inside cloned directory run stow {dir-name} to create symlinks in home directory

## shell
The following files are in this directory
* .bashrc-1 - Basic .bashrc file
* .commonrc - Config common to all shells on all machines
* {machine}rc - Config specific to a machine

The idea is that .bashrc is not in this directory.  Instead the following 4 lines need to be added to ~/.bashrc.
Note .privaterc is not under source control and contains things like confidential environment variables. .temprc is also not under source control and for temporary non-secret configurations.
```
source ~/.bashrc-1
source ~/.commonrc
source ~/.thinkpad460rc
source ~/.privaterc
source ~/.temprc
```

## dot-config
'stow dot-files' syncs to ~/.config/..

## i3

i3 contains config.base and machine-specific configs files e.g. config.tp460.  In ~/.config/i3 a config file needs to be composed from the base file and the machine-specific file e.g

```
./reload-dot-config.sh {machine specific config}
```

### Dell XPS 15 dual setup
To get rid of massive cursor issues the following is required
~/.Xresources
 Xcursor.size: 16

~/.xinitrc
 xrdb ~/.Xresources
 exec i3

## git folder
The empty ~/.dotfiles/git/.stow-local-ignore file is needed to stow the .gitignore file
