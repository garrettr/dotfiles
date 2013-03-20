" use regular copy/paste keyboard shortcuts
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" guioptions
" get rid of unnecessary crud
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=l
set guioptions-=R
set guioptions-=L
set guioptions-=m

" set font
"set guifont=Ubuntu\ Mono\ 11
"set guifont=Inconsolata-g:h12

" colorscheme
color Tomorrow-Night

" highlight long lines (must be called after loading color scheme)
highlight OverLength ctermbg=red ctermfg=white guibg=#805454
highlight OverLength ctermbg=red ctermfg=white guibg=#5C3C3C
match OverLength /\%81v.\+/

" clear long line highlighting
" (useful for SAM, and other text files with long lines)
nnoremap <leader>h :hi clear OverLength<cr>

" have Vim jump to the last position when reopening a file
" this is in .gvimrc because it was annoying to have vim jump to the last
" position in certain files, e.g. git commit messages
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
