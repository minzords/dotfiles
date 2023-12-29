call plug#begin()
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'github/copilot.vim'
Plug 'sheerun/vim-polyglot'
Plug 'LunarWatcher/auto-pairs'
Plug 'matze/vim-move'
Plug 'Valloric/MatchTagAlways'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
call plug#end()

set nocompatible
set ts=4
set noai
set number
set ruler
set hlsearch
set mouse=a
set t_Co=256
set encoding=utf-8
set fileencoding=utf-8
set laststatus=2
set noshowmode
set rtp+=~/.vim/plugged/fzf.vim

syntax on
filetype plugin indent on

au FileType go set ts=4
au FileType dockerfile set ts=4 expandtab
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix

noremap <C-n> :NERDTreeToggle<CR>
noremap <C-t> :tabnew<CR>
noremap <C-right> :tabnext<CR>
noremap <C-left> :tabprevious<CR>
noremap <C-p> :tabnew<CR>:FZF<CR>


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
