" USABILITY CONFIGURATION
set nocompatible

" turn on syntax highlighting and show line numbers
syntax on
set number

" turn on wildmenu
set wildmenu

"" set map leader
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

" highlight current line
set cursorline

" enable hidden buffers
set hid

" indentation configuration
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" colors
" set t_Co=256
set termguicolors
set background=dark
colorscheme hybrid

" javascript
autocmd FileType typescript JsPreTmpl html

" ----------------------------- KEY MAPPINGS CONFIGURATION
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

nnoremap <C-o> :BufExplorer<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-g> :Rg

" turns off highlighting
nnoremap <silent> <leader><CR> :noh<CR>

" deletes the current buffer
nnoremap <Leader>q :Bdelete<CR>
nnoremap <Leader>Q :bdelete<CR>

" splits the current window
nnoremap <Leader>h :split<CR>
nnoremap <Leader>v :vsplit<CR>

" all about tabs
nnoremap <C-t>n :tabnew<CR>
nnoremap <C-t>c :tabclose<CR>
nnoremap <C-t>h :tabprevious<CR>
nnoremap <C-t>l :tabnext<CR>
nnoremap <C-t>d :tabclose<CR>

" ----------------------------- PLUGIN CONFIGURATION

call plug#begin('~/.vim/plugged')

" Meta plugins
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install.sh --all'  }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-bbye'

" Editor plugins
Plug 'jiangmiao/auto-pairs' " I: { O: {}
Plug 'tpope/vim-surround'

" Javascript plugins
Plug 'jelera/vim-javascript-syntax'

" Aesthetic
Plug 'w0ng/vim-hybrid'

" Plug 'alvan/vim-closetag'
" Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/vim-js-pretty-template'
" Plug 'Quramy/tsuquyomi'
" Plug 'Valloric/YouCompleteMe'
" Plug 'fcpg/vim-farout'
" Plug 'fortes/vim-escuro'

call plug#end()

" Airline configurations
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='hybrid'
