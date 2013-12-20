set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
let g:ctrlp_map='<Leader>t'
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'mileszs/ack.vim'
Bundle 'nvie/vim-flake8'

set autoindent
set backspace=indent,eol,start
set background=dark
set cindent
set expandtab
set formatoptions=tcrqn
set gdefault
set hidden
set hlsearch
set ignorecase
set incsearch
set mouse=a
set nojoinspaces
set pastetoggle=<F12>
set ruler
set shell=/bin/bash
set shiftround
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set softtabstop=4
set tabstop=4
set visualbell
set wildignore+=*.swp,*.pyc
set wildmenu
set wildmode=list:longest

syntax on

filetype plugin indent on

let mapleader=','

map Y y$

inoremap <C-J> <C-O><C-Y>
inoremap <C-K> <C-O><C-E>
inoremap <C-L> <Esc>
inoremap <C-Space> <C-X><C-O>

nnoremap / /\v
nnoremap ; :
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-Q> :set spell<CR>1z=:set nospell<CR>
nnoremap <Leader>w :w<CR>:!./%<CR>
nnoremap <Tab> ==
nnoremap <silent> <C-L> :nohlsearch<CR>

runtime macros/matchit.vim

function! GitMkSession()
    let branch=system("git rev-parse --abbrev-ref HEAD")
    exec 'mksession! ~/.vim/sessions/' . branch
endfunction
command! Gmksession :call GitMkSession()

function! GitSource()
    let branch=system("git rev-parse --abbrev-ref HEAD")
    exec 'source ~/.vim/sessions/' . branch
endfunction
command! Gsource :call GitSource()

let vimrclocal='~.vim/.vimrclocal'
if filereadable(vimrclocal)
    exec 'source ' . vimrclocal
endif
