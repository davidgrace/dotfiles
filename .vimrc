syntax on

filetype plugin on

set number
set incsearch
set hlsearch

set laststatus=2

set tabstop=4
set shiftwidth=4
set expandtab

set lazyredraw

set showmatch

call plug#begin('~/.vim/plugged')

" If this turns out to be buggy, there is an up to date fork available
Plug 'kien/ctrlp.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'vim-airline/vim-airline'

Plug 'joshdick/onedark.vim'

Plug 'elmcast/elm-vim'

call plug#end()

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

colorscheme onedark
let g:airline_theme='onedark'
