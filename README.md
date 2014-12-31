# dotfiles

## X

    ln -s ~/code/dotfiles/x/Xdefaults ~/.Xdefaults
    ln -s ~/code/dotfiles/x/xinitrc ~/.xinitrc
    ln -s ~/code/dotfiles/x/Xmodmap ~/.Xmodmap

## bash

    ln -s ~/code/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/code/dotfiles/bash/bash_profile ~/.bash_profile
    ln -s ~/code/dotfiles/bash/bash_aliases ~/.bash_aliases
    ln -s ~/code/dotfiles/bash/bash_prompt ~/.bash_prompt

## i3

    ln -s ~/code/dotfiles/i3/config ~/.i3/config
    ln -s ~/code/dotfiles/i3/i3status.conf ~/.i3status.conf

## ack

    ln -s ~/code/dotfiles/ack/ackrc ~/.ackrc

## ssh

    ln -s ~/code/dotfiles/ssh/config ~/.ssh/config

## git

    ln -s ~/code/dotfiles/git/gitconfig ~/.gitconfig
    ln -s ~/code/dotfiles/git/gitignore_global ~/.gitignore_global

## tmux

    ln -s ~/code/dotfiles/tmux/tmux.conf ~/.tmux.conf

## js

    ln -s ~/code/js/jshintrc ~/.jshintrc

## vim

    ln -s ~/code/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/code/dotfiles/vim ~/.vim

### Adding other Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

### Updating Plugins

    git submodule init
    git submodule update

## Other Configurations

* Disable terminal beep: [Arch Wiki](https://wiki.archlinux.org/index.php/Disable_PC_speaker_beep#Globally)
