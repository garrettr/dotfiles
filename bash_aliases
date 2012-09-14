# Git
alias gst="git status"
alias gdf="git diff"
alias gco="git commit"
alias gca="git commit -a"

# Workaround for https://bugs.launchpad.net/ubuntu/+source/vim/+bug/776499
function gvim () { /usr/bin/gvim -f $* & }

# Grep for statmap source
alias smgrep='grep -In --exclude="tags"'

alias ll='ls -lF'
alias la='ls -lA'
