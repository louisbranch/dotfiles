export PAGER=most

# GO path
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# NPM
export PATH="$HOME/.node_modules/bin:$PATH"
#export PATH=$PATH:$HOME/.config/yarn/global
#export npm_config_prefix=~/.node_modules

# Set additional configs for git
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

for file in $HOME/.{extra,bash_prompt,exports,bash_aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
