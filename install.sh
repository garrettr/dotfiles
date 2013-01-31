#!/bin/bash

# bash
cp bash_aliases ~/.bash_aliases
cat bashrc >> ~/.bashrc            # Don't clobber what the distro provides

# git
cp gitconfig ~/.gitconfig

# screen
cp screenrc ~/.screenrc

# vim
cp vimrc ~/.vimrc
mkdir ~/.vim
cp -r vim/* ~/.vim/
