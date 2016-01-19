# dotfiles

On Linux:

    sudo pacman -S stow git
    git clone git@github.com:luizbranco/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    stow common
    stow linux


## Other Configurations

* Vim Plugins: [Plug](https://github.com/junegunn/vim-plug)
* Disable terminal beep: [Arch Wiki](https://wiki.archlinux.org/index.php/Disable_PC_speaker_beep#Globally)

### Weechat plugins

    /script install anotify.py buffers.pl buffer_autoset.py iset.pl
