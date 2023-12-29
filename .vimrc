call plug#begin()
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'github/copilot.vim'
call plug#end()

set ts=8
set noai
set number
set ruler
set hlsearch
set mouse=a
set t_Co=256
set encoding=utf-8
set fileencoding=utf-8
set clipboard^=unnamed,unnamedplus

syntax on
filetype plugin indent on

au FileType go set ts=4
au FileType dockerfile set ts=4 expandtab
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix

noremap <C-n> :NERDTreeToggle<CR>
noremap <C-t> :tabnew<CR>
noremap <C-right> :tabnext<CR>
noremap <C-left> :tabprevious<CR>
