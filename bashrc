#/bin/bash

export EDITOR="vim"
# Set up the PATH
# Add local node modules
export PATH=./node_modules/.bin:$PATH
# add dotfiles, and bin directories
export PATH=~/.dotfiles/bin:/usr/bin/:/usr/local/sbin:/usr/local/bin:/opt/local/bin:$PATH

export GREP_OPTIONS="--color=auto"
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export NODE_PATH=/usr/local/lib/node_modules
export GOPATH=$HOME/workspace/go

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# common aliases & functions

## Kudos to djanowski for this. Use ack to search files and open it in
## `vi` with the searched text as the last searched phrase in vi.
vack() {
  vi -p -c "/$1" $(ack -al $@)
}

## Search all files by default. This fixes the problem that *.css, *.less,
## *.sass files aren't usually seacrched.
alias ack="ack -a"

## Go up one dir.
alias ..="cd .."

# GIT
gush() {
  REMOTE_EXISTS=$(git branch -r | grep $(br))

  if [ -n "$REMOTE_EXISTS" ]; then
    git push origin $(br)
  else
    git push -u origin $(br)
  fi
}

gup() {
  git pull origin $(br)
}

br() {
  test -d .git && git symbolic-ref HEAD 2> /dev/null | sed 's/refs\/heads\///'
}

alias gc='git commit -v'
alias gca='git commit -v -a'
alias gpp='git pull && git push'
alias gco='git checkout'
alias gd='git diff'
alias gdm='git diff master'
alias gst='tig status'
alias g='git status -sb'
alias gpr='git pull --rebase'

source ~/.dotfiles/git-completion.bash

__git_complete gco _git_checkout
__git_complete gup _git_pull
