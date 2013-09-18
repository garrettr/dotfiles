# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast mercurial history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
alias m-a="cd ~/code/mozilla-aurora/"
alias m-b="cd ~/code/mozilla-beta/"
alias m-c="cd ~/code/mozilla-central/"
alias m-c.hg="cd ~/code/mozilla-central-hg/"
alias mbuild="(mach -l /tmp/mach.log build && notify-send 'build successful') || notify-send 'build failed'"
alias venv=". env/bin/activate"
alias tmux="TERM=xterm-256color tmux"
alias jetpack=". ~/Downloads/addon-sdk-1.14/bin/activate"

alias buildfirefox="(mach -l /tmp/mach.log build && notify-send 'build successful') || notify-send 'build failed'"
alias buildb2g="(./build.sh && notify-send 'build success') || notify-send 'build failed'"

setopt HIST_IGNORE_SPACE

export B2G_HOME=~/code/B2G/
export XPCSHELL_DIR=~/code/mozilla-central/obj-ff-dbg/dist/bin/
export ANDROID_SDK_HOME=~/Downloads/adt-bundle-linux-x86_64-20130219/sdk/

export PATH=/home/garrett/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/garrett/code/mozilla-central/:/home/garrett/code/moz-git-tools/:/home/garrett/code/B2G/out/host/linux-x86/bin
export PATH=$ANDROID_SDK_HOME/platform-tools:$PATH

RPROMPT='[%*]'

# workaround for Bug 875864 in screen
export MACH_NO_TERMINAL_FOOTER=1

function ccmakeit {
export DISTCC_HOSTS='localhost/3 tanvi133t/8 sstamm-dell2/6 cviecco.mv.mozilla.com/6'
export CCACHE_PREFIX='distcc'
export CCACHE_HARDLINK=1
export CCACHE_NLEVELS=3
export CC='ccache gcc-4.6 '
export CCX='ccache g++-4.6'

ccache -M 10G
make -f client.mk build
}
