# dotfiles

## Configuring bash

    ln -s ~/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile
    ln -s ~/dotfiles/bash/bash_aliases ~/.bash_aliases

## Configuring tmux and tmuxinator

    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

    gem install tmuxinator
    ln -s ~/dotfiles/tmux/tmuxinator ~/.tmuxinator

## Configuring vim

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

### Adding other Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

### Updating Plugins

    git submodule init
    git submodule update
