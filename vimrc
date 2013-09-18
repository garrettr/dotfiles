" Revised thoroughly thanks to
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set nocompatible               " be iMproved
filetype off                   " required!

" Vundle: https://github.com/gmarik/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'

" Git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

"Bundle 'Valloric/YouCompleteMe'
"YouCompleteMe requires Vim 7.3.584+ (build from source)
Bundle 'vim-scripts/AutoComplPop'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'

" Colorschemes
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'

filetype plugin indent on     " required!
syntax on

set modelines=0 " avoid possible security exploits in modelines

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" nice things
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
"set wildmode=longest:full
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set undofile " creates .un~ files so you can undo/redo even after close

if v:version >= 703
  set relativenumber
else
  set number
endif

" set the <leader> key
let mapleader = ","

" searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

" long lines
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=80

" do things the Vim Way, make j and k behave as you would expect
nnoremap j gj
nnoremap k gk

" semicolon instead of colon - one less key to press
nnoremap ; :

" re-hardwrap paragraphs of text
nnoremap <leader>q gqip

" save on losing focus - does this make sense without undofile?
"au FocusLost * :wa

" quicker escaping
inoremap jj <ESC>

" quick vertical split-and-switch
nnoremap <leader>w <C-w>v<C-w>l

" copy word to system register (for pasting in other programs)
nnoremap <leader>c "+yw
" TODO grep current word

" Nerdtree
nnoremap <leader>n :NERDTree<cr>
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore=['\.pyc$', '\.o$']

" switch between splits
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Use j/k to navigate autocomplete list (this might suck)
"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" When using gq to reformat, don't add 2 spaces after each sentence
set nojoinspaces

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
"let g:ctrlp_clear_cache_on_exit = 0

" Wild matching ignore
set wildignore+=*.so,*.o,*.pyc

" Make copy/paste in Terminal vim over SSH work
" Resize splits with the mouse in terminal vim
" makes gvim suck though
set mouse+=a

set t_Co=256
colorscheme hybrid

" highlight long lines (must be called after loading color scheme)
highlight OverLength ctermbg=red ctermfg=white guibg=#805454
"highlight OverLength ctermbg=red ctermfg=white guibg=#5C3C3C
match OverLength /\%81v.\+/

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
nnoremap <leader>gn :GitGutterNextHunk<cr>
nnoremap <leader>gp :GitGutterPrevHunk<cr>

set splitbelow
set splitright

" taglist.vim
let Tlist_WinWidth = 50
"let Tlist_Use_Right_Window = 1
map <F4> :TlistToggle<cr>

" Rebuild ctags libs for current working directory
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude="obj-*" .<CR>

" Mozilla
" vim: set ts=2 sw=2 et tw=78:
autocmd BufNewFile,BufRead /home/garrett/code/mozilla-central/* set ts=2 sw=2 et tw=78
au BufNewFile,BufRead *.jsm set filetype=javascript
au BufNewFile,BufRead *.sjs set filetype=javascript

# modula-2? really?
au BufNewFile,BufRead *.md set filetype=markdown
