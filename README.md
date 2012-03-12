# dotfiles

## Configuring vim

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

## Adding other Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

## Updating Plugis

    git submodule init
    git submodule update
