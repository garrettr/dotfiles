This file contains configuration instructions and notes for various programs.

# Vim

Use Pathogen for Vim package management.

# inputrc

Although I am making more of an effort to use the built-in (emacs)
auto-completions, it is possible to make every program (that uses readline, 
anyway) use Vim bindings instead. In `~/.inputrc`:

    # Thanks: http://acg.github.com/2011/05/17/put-everything-in-vi-mode.html
    set keymap vi
    set editing-mode vi

The only reason I switched away is the escape key is kind of far away on my
work keyboard (and I don't know if you can remap it), and I couldn't figure out
how to get into the GUI mode in GDB (C-x o).

# Git

Basic settings needed to identify yourself in commits you make (git will prompt
you to set these if you make a commit and they are unset):

    git config --global user.name <your name>
    git config --global user.email <your email>

To change the default editor:

    git config --global core.editor <editor name>

## Tips/tricks

A nice tip from [the Git Book](http://gitref.org/basic/) is to add an "unstage"
alias for `git reset HEAD`.

    git config --global alias.unstage "reset HEAD"

Now you can `git unstage <file>` to remove it from the index.
