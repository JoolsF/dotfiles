# dotfiles
Linux config files

## Usage
* clone repo to home directory root
* Install stow
* Inside cloned directory run stow {dir-name} to create symlinks in home directory

## shell
The following files are in this directory
* .bashrc-1 - Basic .bashrc file
* .commonrc - Config common to all shells on all machines
* {machine}rc - Config specific to a machine

The idea is that .bashrc is not in this directory.  Instead the following 4 lines need to be added to ~/.bashrc.
Note .privaterc which is not under source control and contains things like confidential environment variables.

```
source ~/.bashrc-1
source ~/.commonrc
source ~/.thinkpad460rc
source ~/.privaterc

```

## dot-config
'stow dot-files' syncs to ~/.config/..

### i3

i3 contains config.base and machine-specific configs files e.g. config.tp460.  In ~/.config/i3 a config file needs to be composed from the base file and the machine-specific file e.g

```
./reload-dot-config.sh {machine specific config}
```

#### Programs required
* blueman (bluetooth)
* pavucontrol (audio)
* rofi (dmenu alternative)
* i3blocks (i3 bar)
* i3lock (lock screen)

#### Dell XPS 15 dual setup
To get rid of massive cursor issues the following is required
~/.Xresources
 Xcursor.size: 16

~/.xinitrc
 xrdb ~/.Xresources
 exec i3
