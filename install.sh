#!/bin/bash

# bash
cp bash_aliases ~/.bash_aliases
cat bashrc >> ~/.bashrc # don't clobber what the distro provides
#echo "Don't forget to source ~/.bashrc."

# git
# install git if it's not installed (need it to clone vundle later)
command -v git > /dev/null 2>&1 || \
    { echo "git not installed, running 'sudo apt-get install git'"; \
      sudo apt-get install git; }
cp gitconfig ~/.gitconfig

# mercurial
command -v hg > /dev/null 2>&1 || \
    { echo "mercurial not installed, running 'sudo apt-get install mercurial'"; \
      sudo apt-get install mercurial; }
cp hgrc ~/.hgrc

# screen
cp screenrc ~/.screenrc

# tmux
command -v tmux >/dev/null 2>&1 || \
    { echo "tmux not installed, running 'sudo apt-get install tmux'"; \
      sudo apt-get install tmux; }
cp tmux.conf ~/.tmux.conf

# vim
cp vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# terminus
dpkg -s xfonts-terminus >/dev/null 2>&1 || \
    { echo "xfonts-terminus not installed, running 'sudo apt-get install xfonts-terminus'";
      sudo apt-get install xfonts-terminus; }

# zsh
command -v zsh >/dev/null 2>&1 || \
    { echo "zsh not installed, running 'sudo apt-get install zsh'";
      sudo apt-get install zsh; }
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir -p ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp zshrc ~/.zshrc
chsh -s /bin/zsh

# final notice to user
echo
echo "/////////////////////////////////////////////////////"
echo "Your shell has been reconfigured! Open a new terminal to experience a subtle new richness and higher standard of living."
echo "/////////////////////////////////////////////////////"
