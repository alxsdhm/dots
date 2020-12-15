" GUI
syntax enable
filetype on

" font
set encoding=utf-8

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" plugins
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
" colorscheme wal
call plug#end()

colorscheme wal
" clippy
set clipboard=unnamedplus

