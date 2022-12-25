call plug#begin()

call plug#end()

set ts=8
set noai
set number
syntax on
filetype plugin indent on

au FileType go set ts=4
au FileType dockerfile set ts=4 expandtab
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix

