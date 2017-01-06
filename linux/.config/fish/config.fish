set CDPATH $HOME/code $CDPATH
set PATH $GOPATH/bin $PATH
set PATH /usr/lib/smlnj/bin $PATH

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

function fish_prompt
        set last_status $status
        set_color $fish_color_cwd
        printf '%s' (prompt_pwd)
        set_color normal
        printf '%s ' (__fish_git_prompt)
       set_color normal
end

if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

fish_vi_key_bindings
set -g __fish_vi_mode 1

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

# Aliases

#Programs
alias vi='nvim'
alias vim='nvim'
alias open='xdg-open'
alias ctrlc='xclip -se c'
alias music='ncmpcpp'
alias be='bundle exec'
alias spec='find app lib spec -name "*.rb" | entr -c bundle exec rspec --no-profile --tag focus --next-failure'
alias cop='bundle exec rubocop -D --rails -a'
alias jspec='find app lib spec -name "*.js" | entr -c mocha --reporter dot spec/javascripts'
alias plex='sudo systemctl start plexmediaserver'
alias vpnny='sudo openvpn --config /etc/openvpn/US_New_York_City.conf'

#System
alias off='poweroff'
alias eth='sudo systemctl start dhcpcd@enp0s25'
alias wifi='sudo systemctl start netctl@mitre'
alias sd='sudo systemctl'
alias sdu='systemctl --user'
alias xmain='xrandr --output HDMI-1 --auto --output VGA-1 --off --output eDP-1 --off'
alias xdouble='xrandr --output HDMI-1 --auto --output VGA-1 --auto --right-of HDMI-1 --output eDP-1 --off'
alias xlaptop='xrandr --output eDP-1 --auto --output HDMI-1 -off --output VGA-1 --off'

#Shell
alias ls='ls -h --color --group-directories-first'
alias ll='ls --color -al --group-directories-first'
alias tree='tree -L 2'
alias q='exit'
alias ..='cd ..'
alias ...='cd ../..'
alias ping='ping -c4'

#Git
alias gs='git status'
alias gsu='git pull --recurse-submodules'
alias gb='git branch'
alias gp='git pull'
alias gpp='git push'
alias gcm='git checkout master'
alias gcp='git checkout production'
alias gcs='git checkout stable'
alias gfr='git fetch; and git rebase'
alias gd='git diff .'
alias gdc='git diff --cached'

# New branch from master
function gbn
  gcm; and git checkout -b $argv[1]
end

# Delete branch local and remote
function gbd
  git branch -D $argv[1]; and git push origin :$argv[1]
end

# Git rebase interactively last n commits
function gri
  git rebase -i HEAD~$argv[1]
end

# Push new branch
function gpn
  git push -u
end

function test_args
  echo $argv[1]
end

#Pacman
alias installed='comm -23 <((pacman -Qqe) | sort) <((pacman -Qqg base base-devel) | sort)'
