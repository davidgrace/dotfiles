syntax on

filetype plugin on

set number
set incsearch
set hlsearch
set ignorecase
set smartcase

set laststatus=2

set tabstop=4
set shiftwidth=4
set expandtab

set lazyredraw

set showmatch

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
