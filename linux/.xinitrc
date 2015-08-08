# Starts urxvt daemon
urxvtd -q -o -f

# Enable custom keys
if [ -s ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

# Active Numlock on boot, requires numlockx
numlockx &

# Load custom fonts (Terminus)
xset +fp /usr/share/fonts/local
xset fp rehash

# Disable system beep
xset -b

# Disable display sleep
xset dpms 0 0 0

# Run ssh-agent daemon
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

# Starts i3 tile window manager
exec i3
