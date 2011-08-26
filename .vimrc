set nocompatible

set autoindent
set bs=2
set cindent
set expandtab
set formatoptions=tcrqn
set hidden
set hlsearch
set ignorecase
set incsearch
set mouse=a
set number
set pastetoggle=<F12>
set ruler
set shiftround
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set softtabstop=4
set tabstop=4
set vb
set wildmenu
set wildmode=list:longest

syntax on

filetype on
filetype indent on
filetype plugin on

map Y y$

inoremap <C-J> <C-O><C-Y>
inoremap <C-K> <C-O><C-E>
inoremap <C-L> <Esc>
inoremap <C-Space> <C-X><C-O>

nnoremap ; :
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-S> 1z=
nnoremap <Tab> ==
nnoremap <silent> <C-L> :noh<CR>

runtime macros/matchit.vim

let vimrclocal=$HOME . '/.vimrclocal'
if filereadable(vimrclocal)
    exec 'source ' . vimrclocal
endif
