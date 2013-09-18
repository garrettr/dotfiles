#!/bin/bash

# bash
cp bash_aliases ~/.bash_aliases
cat bashrc >> ~/.bashrc            # Don't clobber what the distro provides
echo "Don't forget to source ~/.bashrc."

# git
cp gitconfig ~/.gitconfig

# screen
cp screenrc ~/.screenrc

# tmux
cp tmux.conf ~/.tmux.conf

# vim
cp vimrc ~/.vimrc
mkdir -p ~/.vim
cp -r vim/* ~/.vim/
vim +BundleInstall +qall
