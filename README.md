# dotfiles

## X

    ln -s ~/code/dotfiles/x/Xdefaults ~/.Xdefaults
    ln -s ~/code/dotfiles/x/xinitrc ~/.xinitrc

## bash

    ln -s ~/code/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/code/dotfiles/bash/bash_profile ~/.bash_profile
    ln -s ~/code/dotfiles/bash/bash_aliases ~/.bash_aliases

## git

    ln -s ~/code/dotfiles/git/gitconfig ~/.gitconfig

## tmux

    ln -s ~/code/dotfiles/tmux/tmux.conf ~/.tmux.conf

## vim

    ln -s ~/code/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/code/dotfiles/vim ~/.vim

### Adding other Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

### Updating Plugins

    git submodule init
    git submodule update
