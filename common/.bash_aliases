#Programs
alias vi='nvim'
alias vim='nvim'
alias open='xdg-open'
alias ctrlc='xclip -se c'
alias music='ncmpcpp'
alias be='bundle exec'
alias spec='find app lib spec -name "*.rb" | entr -c bundle exec rspec --no-profile --tag focus'

#System
alias off='poweroff'
alias eth='sudo systemctl start dhcpcd@enp0s25'
alias wifi='sudo systemctl start netctl@mitre'
alias sd='sudo systemctl'
alias sdu='systemctl --user'

#Shell
alias ls='ls -h --color --group-directories-first'
alias ll='ls --color -al --group-directories-first'
alias tree='tree -L 2'
alias q='exit'
alias please='sudo $(fc -ln -1)'
alias ..='cd ..'
alias ...='cd ../..'
alias ps?='ps aux | grep'
alias ping='ping -c4'
mcd() { mkdir -p "$1"; cd "$1";}

#Git
alias gs='git status'
alias gsu='git pull --recurse-submodules'
alias gb='git branch'
alias gp='git pull'
alias gpp='git push'
alias gcm='git checkout master'
alias gcp='git checkout production'
alias gfr='git fetch && git rebase'
alias gd='git diff .'
alias gdc='git diff --cached'
gbn() { # New branch from master
  gcm && git checkout -b $1
}
gbd() { # Delete branch local and remote
  git branch -D $1 && git push origin :$1
}
gri() { # Git rebase interactively last n commits
  git rebase -i HEAD~$1 && git commit --amend --reset-author
}
gpn() { # Push new branch
  git push --set-upstream origin $1
}

#Pacman
alias installed='comm -23 <((pacman -Qqe) | sort) <((pacman -Qqg base base-devel) | sort)'

#Tmux
tn() { # new named session
  if [ -z "$1" ]
  then
    tmux new
  else
    tmux new -s $1
  fi
}
ta() { # attach ession
  if [ -z "$1" ]
  then
    tmux attach
  else
    tmux attach -t $1
  fi
}
