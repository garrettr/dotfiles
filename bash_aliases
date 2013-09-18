# Git
alias gst="git status"
alias gdf="git diff"
alias gco="git commit"
alias gca="git commit -a"

# ls
alias ll='ls -lF'
alias la='ls -lA'

# Quick lookup a command flag
manswitch () { man $1 | less -p "^ +$2"; }

# virtualenv
alias venv='. env/bin/activate'
alias denv='deactivate'
