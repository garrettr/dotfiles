# Prompt
# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
PS1="\[$(tput setaf 7)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 4)\]\w/\[$(tput sgr0)\] [$?] \$ "

# Generate core dumps
ulimit -c unlimited
