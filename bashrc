# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Customizations

# Prompt
export PS1="\[\e[7;32m\]\W \$\[\e[m\] "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Generate core dumps
ulimit -c unlimited
