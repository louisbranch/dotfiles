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

## git

    ln -s ~/code/dotfiles/git/gitconfig ~/.gitconfig
    ln -s ~/code/dotfiles/git/gitignore_global ~/.gitignore_global

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
