syntax on

filetype plugin on

" Sets line numbers to relative, other than current line which shows absolute
" line number
set number relativenumber

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

" Set leader key to spacebar for ease of use
let mapleader = " "

" Install vim-plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')

" Syntax checking
Plug 'scrooloose/syntastic'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy finder
Plug 'junegunn/fzf'
nnoremap <silent> <leader>F :FZF<CR>

" File navigation
Plug 'scrooloose/nerdtree'
nnoremap <silent> <leader>P :NERDTreeToggle<CR>

call plug#end()

