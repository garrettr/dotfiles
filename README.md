This file contains configuration instructions and notes for various programs.

# Vim

Use Pathogen for Vim package management.

## Plugins

* AutoComplPop
* autotag
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
* delimitMate
* FuzzyFinder
* L9
* molokai
* nerdtree
* scratch
* supertab
* taglist
* TaskList.vim
* tomorrow-theme
* vim-colors-solarized
* vim-fugitive
* vim-javascript
* vim-markdown
* vimroom
* vim-surround

I'm not using some of these. Should consolidate.

## Colorschemes

These are my favorite vim color schemes:

* [Tomorrow Theme](git://github.com/chriskempson/tomorrow-theme.git)
* [jellybeans](https://github.com/nanotech/jellybeans.vim)
* [xoria256 (customized)](http://oscar.morante.eu/blog/xoria/)
* [ir_black](https://github.com/wgibbs/vim-irblack)

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