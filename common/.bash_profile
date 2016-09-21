export PAGER=most

# Ruby Version Manager
source /usr/share/chruby/chruby.sh

# Node Version Manager
export NVM_DIR="/home/luiz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# GO path
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

export CDPATH=:$GOPATH/src/github.com/luizbranco/

# Set additional configs for git
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

# Work Work
export MITRE_WORKSPACE=$HOME/code

for file in $HOME/.{extra,bash_prompt,exports,bash_aliases,mitrerc,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
export CDPATH=$CDPATH:$GOPATH/src/github.com/MitreMedia

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
