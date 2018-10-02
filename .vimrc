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

" Install vim-plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'

call plug#end()

