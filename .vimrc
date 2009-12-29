set nocompatible
set ruler
set cindent
syntax on
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set mouse=a
set bs=2
set cursorline
nnoremap <C-K> <C-Y>
nnoremap <C-J> <C-E>
inoremap <C-J> <C-O><C-Y>
inoremap <C-K> <C-O><C-E>
inoremap <C-L> <Esc>
nnoremap <silent> <C-L> :noh<return>
nnoremap <C-S> 1z=
nnoremap <Tab> ==
filetype on
filetype indent on
filetype plugin on
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <silent> <F6> :TlistToggle<CR>
map Y y$
inoremap <C-Space> <C-X><C-O>
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
set pastetoggle=<F12>

let local = '~/.vimrclocal'
if filereadable(local)
    source local
endif
