# dotfiles

## X

    ln -s ~/dotfiles/x/Xdefaults ~/.Xdefaults
    ln -s ~/dotfiles/x/xinitrc ~/.xinitrc

## bash

    ln -s ~/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile
    ln -s ~/dotfiles/bash/bash_aliases ~/.bash_aliases

## git

    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

## tmux and tmuxinator

    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

    gem install tmuxinator
    ln -s ~/dotfiles/tmux/tmuxinator ~/.tmuxinator

## vim

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

### Adding other Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

### Updating Plugins

    git submodule init
    git submodule update
