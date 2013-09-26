# Prompt
# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
PS1="\[$(tput setaf 4)\]\u\[$(tput sgr0)\]:\[$(tput setaf 2)\]\w/\[$(tput sgr0)\] \$ "

# so mach can be called from anywhere
export PATH=/home/garrett/mozilla-central:$PATH

# build firefox with notifications
alias buildfirefox="(mach -l /tmp/mach.log build && notify-send 'build successful') || notify-send 'build failed'"
