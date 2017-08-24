syntax on

filetype plugin on

set number
set incsearch
set hlsearch

set laststatus=2

set tabstop=4
set shiftwidth=4
set noexpandtab

set lazyredraw

set showmatch

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'

Plug 'vim-airline/vim-airline'

Plug 'joshdick/onedark.vim'

Plug 'elmcast/elm-vim'

call plug#end()

colorscheme onedark
let g:airline_theme='onedark'
