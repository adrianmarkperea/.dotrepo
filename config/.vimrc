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

" ----------------------------- CUSTOM COMMANDS
command -range=% Copy :<line1>,<line2>w !tee | xsel -bi

" ----------------------------- KEY MAPPINGS CONFIGURATION
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

nnoremap <C-o> :BufExplorer<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-p> :FZF!<CR>
nnoremap <C-g> :Rg!<CR>

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

" selects all occurrences of currently highlighted word
nnoremap <C-s> *N

" Copy range to xsel
vmap <C-c> :'<,'>Copy<CR><CR>

" ----------------------------- PLUGIN CONFIGURATION

call plug#begin('~/.vim/plugged')

" Meta plugins
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-bbye'

" Editor plugins
Plug 'jiangmiao/auto-pairs' " I: { O: {}
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" HTML plugins
Plug 'alvan/vim-closetag'

" Javascript plugins
Plug 'leafgarland/typescript-vim'
Plug 'jelera/vim-javascript-syntax'

" Elm plugins
Plug 'ElmCast/elm-vim'

" Aesthetic
Plug 'w0ng/vim-hybrid'
Plug 'chriskempson/base16-vim'

" Plug 'Quramy/tsuquyomi'

call plug#end()

" Airline configurations
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='hybrid'

" YCM Plugins
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

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
colorscheme base16-default-dark

" Makes the terminal background transluscent
hi Normal guibg=NONE ctermbg=NONE
