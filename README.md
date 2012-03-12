# dotfiles

## Configuring vim

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

## Adding nother Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

## Updating Plugings

    git submodule init
    git submodule update
