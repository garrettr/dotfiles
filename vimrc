" Revised thoroughly thanks to http://stevelosh.com/blog/2010/09/coming-home-to-vim/

filetype off
call pathogen#runtime_append_all_bundles()
" Load Tim Pope's pathogen
"call pathogen#infect()
"call pathogen#helptags()
filetype plugin indent on

set nocompatible " no one uses vi

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
set relativenumber
"set undofile " creates .un~ files so you can undo/redo even after close

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
nnoremap <tab> %
vnoremap <tab> %

" long lines

set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=80

" do things the Vim Way, make j and k behave as you would expect

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
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

" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = ['supertab', 'delimitMate']

" Use j/k to navigate autocomplete list (this might suck)
"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" When using gq to reformat, don't add 2 spaces after each sentence
set nojoinspaces

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
