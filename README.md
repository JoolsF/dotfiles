# dotfiles
Linux config files

## Usage
* clone repo to home directory root
* Install stow
* Inside cloned directory run stow {dir-name} to create symlinks in home directory

## shell
The following files are in this directory
* .commonrc - Config common to all shells on all machines
* .bashcommonrc - Config common to bash on all machines.  This sources .commonrc
* {machine}rc - Config specific to a machine

The idea is that .bashrc is not in this directory.  Instead the following two lines need to be added to ~/.bashrc

```
source ~/.bashcommonrc
source ~/.thinkpad460rc
```

## dot-config
'stow dot-files' syncs to ~/.config/..

### i3
i3 contains config.base and machine-specific configs files e.g. config.tp460.  In ~/.config/i3 a config file needs to be composed from the base file and the machine-specific file e.g

```
cat config.base > config && config.tp460 >> config
```
