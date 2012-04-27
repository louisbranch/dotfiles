# dotfiles

## Configuring vim

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

### Adding other Plugins

    git submodule add [plugin url] vim/bundle/[plugin name]

### Updating Plugins

    git submodule init
    git submodule update

## Configuring tmux

    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
