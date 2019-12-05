"Plugins
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"Basic stuffs
set nocompatible
filetype plugin indent on
set clipboard=unnamed
syntax enable
syntax on
:filetype on
set incsearch
set ignorecase
set scrolloff=5
set smartcase
set number
set wildmode=longest,list
set fileformats=unix
set smartindent
set smarttab
set history=300
set backspace=2
set hlsearch
set ruler
set formatoptions=1
set linebreak
set autoindent
set mouse=a
set textwidth=80
set dir=/tmp
colorscheme nord

"Prepare tab/space indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"Cursor lines
set cul
set cursorline
highlight CursorLine term=underline guibg=#3b3b3b
hi StatusLine ctermbg=blue ctermfg=grey
set colorcolumn=80,81

"Set Invisibles
set list
set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¬

"Nerdtree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.swp$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='nord'
