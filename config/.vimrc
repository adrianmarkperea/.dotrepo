" USABILITY CONFIGURATION
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

"if has('autocmd')
"  filetype plugin indent on
"endif
"
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

" enable ruler
set ruler

" enable hidden buffers
set hid

" indentation configuration
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Autocompletion
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

" ----------------------------- KEY MAPPINGS CONFIGURATION
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

nnoremap <C-o> :BufExplorer<CR>
nnoremap <C-b> :NERDTree<CR>
" nnoremap <C-p> :FZF!<CR>
nnoremap <C-p> :GFiles<CR>
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

" Install if not yet installed...
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Meta plugins
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-bbye'
Plug 'dense-analysis/ale'
" Note that YCM has a compiled component
" Check https://github.com/ycm-core/YouCompleteMe#installation
Plug 'ycm-core/YouCompleteMe' 

" Web Development
Plug 'pangloss/vim-javascript'
Plug 'larsbs/vimterial_dark'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'JulesWang/css.vim'
Plug 'genoma/vim-less'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'lepture/vim-jinja'

call plug#end()

" Airline configurations
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='fruit_punch'

" Auto Pairs config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion' }
