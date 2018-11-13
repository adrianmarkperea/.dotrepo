" ----------------------------- USABILITY CONFIGURATION
set nocompatible

" turn on syntax highlighting and show line numbers
syntax on
set number

" turn on wildmenu
set wildmenu

" set map leader
let mapleader = ","

" searching configuration
set ignorecase
set smartcase
set hlsearch
set incsearch

" make vim try to detect file types and load plugins for them
filetype on
filetype plugin on
filetype indent on

" reload files changed outside of vim
set autoread

" set encoding to utf-8
set encoding=utf-8
set fileencoding=utf-8

" set unix line endings
set fileformat=unix
set fileformats=unix,dos

" set no line wrap
set nowrap

" removing swap files
set nobackup
set nowb
set noswapfile

" ----------------------------- PERSONAL CONFIGURATION

" enable ruler
set ruler

" enable hidden buffers
set hid

" indentation configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent 

" colors
colorscheme fruidle
let g:airline_theme='papercolor'

" ----------------------------- KEY MAPPINGS CONFIGURATION
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

nnoremap <C-o> :BufExplorer<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-p> :FZF<CR>

" turns off highlighting
nnoremap <silent> <leader><CR> :noh<CR>

" deletes the current buffer
nnoremap <Leader>q :Bdelete<CR>
nnoremap <Leader>Q :bdelete<CR>

" splits the current window
nnoremap <Leader>h :split<CR>
nnoremap <Leader>v :vsplit<CR>

" ----------------------------- PLUGIN CONFIGURATION

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'moll/vim-bbye'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install.sh --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
